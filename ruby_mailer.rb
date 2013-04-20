

class RubyMailer < Sinatra::Base
  
  
  configure do
    set :app ,self.name.to_s.split("::").first
    file_path = File.expand_path("config/"+settings.environment.to_s+".yml", File.dirname(__FILE__))
    config = YAML.load_file(file_path)
    set :env , config[settings.app]
  end
 
    get '/' do
      erb :index
    end
end

