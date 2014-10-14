require 'vx/common'

module Vx
  module Builder
    class ScriptBuilder

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
