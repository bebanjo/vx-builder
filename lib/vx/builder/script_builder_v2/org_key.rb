module Vx
  module Builder
    class ScriptBuilderV2

      class OrgKey < Base

        def call(env)
          if env.task.name =~ /\Abebanjo\//
            env.organization_key = true
          end

          app.call(env)
        end

      end
    end
  end
end
