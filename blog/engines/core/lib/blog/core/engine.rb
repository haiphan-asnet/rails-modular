module Blog
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Blog

      config.to_prepare do
        # Bower asset paths
        Blog::Core::Engine.root.join('vendor', 'assets', 'bower_components').to_s.tap do |bower_path|
          Rails.application.config.sass.load_paths << bower_path
          Rails.application.config.assets.paths << bower_path
        end

        # Precompile Bootstrap fonts
        Rails.application.config.assets.precompile << %r(bootstrap-sass/assets/fonts/bootstrap/[\w-]+\.(?:eot|svg|ttf|woff2?)$)
        # Minimum Sass number precision required by bootstrap-sass
        ::Sass::Script::Value::Number.precision = [8, ::Sass::Script::Value::Number.precision].max
      end
    end
  end
end