require "blueprint/html"
require "crowsa/gui/run"
require "crowsa/gui/macro"
require "crowsa/cli"
require "./css"
require "./javascript"

Crowsa::CLI.new.arguments

class App
  include Blueprint::HTML

  private def blueprint
    meta charset: "UTF-8"
    style { LocalCSS }
    script src: encode(LocalJavascipt)

    div class: "container" {
      h1 { "Hello World!" }
      button(id: "greetButton") { "Click Me" }
      div id: "message"
    }
  end
end

run_app("config.json")
