module Blorgh
  class Engine < ::Rails::Engine
    isolate_namespace Blorgh

    # Ensure engine assets are precompiled
    initializer "blorgh.assets.precompile" do |app|
      app.config.assets.precompile += %w( blorgh/application.css )
    end
  end
end
