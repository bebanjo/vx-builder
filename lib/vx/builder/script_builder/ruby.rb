module Vx
  module Builder
    class ScriptBuilder

      class Ruby < Base

        DEFAULT_RUBY = '1.9.3'

        def call(env)
          if enabled?(env)

            #vxvm_install(env, 'ruby', ruby_version(env))

            do_cache_key(env) do |i|
              i << "rvm-#{ruby_version env}"
              i << gemfile(env)
            end

            do_before_install(env) do |i|
              i << 'eval "$(rbenv init -)" || true'
              i << "rbenv shell #{make_rbenv_version_command env}"

              i << trace_sh_command("export BUNDLE_GEMFILE=${PWD}/#{gemfile(env)}")
              i << trace_sh_command('export GEM_HOME=~/.rubygems')
            end

            do_announce(env) do |i|
              i << trace_sh_command("ruby --version")
              i << trace_sh_command("gem --version")
              i << trace_sh_command("bundle --version")
            end

            do_install(env) do |i|
              bundler_args = env.source.bundler_args.first
              i << trace_sh_command("bundle install #{bundler_args}")
              i << trace_sh_command("bundle clean --force")
            end

            do_script(env) do |i|
              script = "if [ -f Rakefile ] ; then \n #{trace_sh_command "bundle exec rake"}\nfi"
              i << script
            end

            do_cached_directories(env) do |i|
              i << "~/.rubygems"
            end
          end

          app.call(env)
        end

        private

          def enabled?(env)
            env.source.rvm.first || env.source.language == 'ruby'
          end

          def ruby_version(env)
            env.source.rvm.first || DEFAULT_RUBY
          end

          def gemfile(env)
            env.source.gemfile.first || "Gemfile"
          end

          def make_rbenv_version_command(env)
            select_rbenv_version(env)
          end

          def select_rbenv_version(env)
            %{
               $(rbenv versions |
                sed -e 's/^\*/ /' |
                awk '{print $1}' |
                grep -v 'system' |
                grep '#{ruby_version env}' |
                tail -n1)
            }.gsub(/\n/, ' ').gsub(/ +/, ' ').strip
          end

        # FIXME for the moment don't use custom gem caching
        # def do_install(env)
        #   cache_scope = "#{env.task.name}/#{ruby(env)}"
        #
        #   env.install << "mkdir -p ~/.rubygems"
        #   env.install << "if [ -d ~/cache/#{cache_scope}/.rubygems ]; then rsync -a ~/cache/#{cache_scope}/.rubygems/ ~/.rubygems/ ; fi"
        #
        #   super(env)
        #
        #   env.install << trace_sh_command("if [ ! -d ~/cache/#{cache_scope}/.rubygems ]; then mkdir -p ~/cache/#{cache_scope}/.rubygems; fi")
        #   env.install << "if [ -d ~/.rubygems ]; then rsync -a ~/.rubygems/ ~/cache/#{cache_scope}/.rubygems/ ; fi"
        # end
      end
    end
  end
end
