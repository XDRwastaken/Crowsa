require "option_parser"
require "json"
require "./installer/windows/main"

module Crowsa
  class CLI
    def arguments
      OptionParser.parse do |parser|
        parser.on "--package", "Creates an installer for your application" do
          package_app
          exit
        end
      end
    end

    def package_app
      config = JSON.parse(File.read("config.json"))
      app_name = config["main"]["name"].as_s
      app_target = config["main"]["target"].as_s
      icon_path = config["package"]["icon"].as_s

      Windows.package(app_name, app_target, icon_path)
    end
  end
end
