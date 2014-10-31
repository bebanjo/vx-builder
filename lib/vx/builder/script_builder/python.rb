module Vx
  module Builder
    class ScriptBuilder

      class Python < Base

        DEFAULT_PYTHON = '2.7'

        def call(env)
          if enabled?(env)

            py_v = python_version(env)

            vxvm_install(env, 'python', py_v)

            do_init(env) do |i|
              i << "export TRAVIS_PYTHON_VERSION=#{py_v}" # for tornado
            end

            do_cache_key(env) do |i|
              i << "python-#{py_v}"
            end

            do_announce(env) do |i|
              i << trace_sh_command("python --version")
              i << trace_sh_command("pip --version")
            end

            do_install(env) do |i|
              i << "if [ -f Requirements.txt ] ; then \n #{trace_sh_command "sudo pip install -r Requirements.txt"}\nfi"
              i << "if [ -f requirements.txt ] ; then \n #{trace_sh_command "sudo pip install -r requirements.txt"}\nfi"
              i << "if [ -f setup.py ] ; then \n #{trace_sh_command "sudo python setup.py install"}\nfi"
            end

            do_script(env) do |i|
              script =<<EOF
              if [[ -f manage.py ]] ; then
                #{trace_sh_command 'python manage.py test'}
              elif [[ -f setup.py ]] ; then
                #{trace_sh_command 'python setup.py test'}
              else
                #{trace_sh_command 'nosetest'}
              fi
EOF
              i << script
            end
          end

          app.call(env)
        end

        private

          def enabled?(env)
            env.source.python.first || env.source.language == 'python'
          end

          def python_version(env)
            v = env.source.python.first
            v || DEFAULT_PYTHON
          end

      end
    end
  end
end
