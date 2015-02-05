require 'vx/common'

module Vx
  module Builder
    class ScriptBuilderV2

      Clone = Struct.new(:app) do

        def call(env)

          env.stage("clone").tap do |e|
            # TODO aquí las claves viene ya serializadas o es una ruta?
            e.add_task "ssh_agent", "key" => env.task.ssh_keys, "org_key" => env.organization_key?

            clone = {}
            clone["org_key"] = env.organization_key?
            clone["repo"] = env.task.src
            clone["dest"] = "${VX_ROOT}/code/#{env.task.name}" #"~/#{env.task.name}"
            clone["branch"] = branch_name(env)
            clone["sha"] = env.task.sha
            if pr = env.task.pull_request_id
              clone["pr"] = pr
            end
            e.add_task "git_clone", clone
          end

          env.stage("init").chdir!("~/#{env.task.name}")

          app.call(env)
        end

        private

          def branch_name(env)
            b = env.task && env.task.branch
            if b && b != 'HEAD'
              b
            end
          end

          def organization_key?(env)
            @organization_key ||= !!env.organization_key
          end

      end
    end
  end
end
