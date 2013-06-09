require 'rspec'

def fixture_app app_name, &block
  Middleman::Application.server.inst do
    set :root, File.join( Dir.pwd, "spec/fixture_apps", app_name )
    set :environment, :test
    set :show_exceptions, false

    instance_eval(&block) if block
  end
end


class Browser

  def initialize app
    app_on_rack = app.class.to_rack_app
    @browser = ::Rack::Test::Session.new(::Rack::MockSession.new(app_on_rack))
  end

  def get path
    @browser.get(URI.escape(path)).body
  end

end