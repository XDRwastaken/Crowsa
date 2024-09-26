require "base64"

macro encode(contents)
  {% if contents.is_a?(StringLiteral) %}
    %file_content = File.read({{contents}})
    "data:text/javascript;base64,#{Base64.strict_encode(%file_content)}"
  {% else %}
    "data:text/javascript;base64,#{Base64.strict_encode({{contents}})}"
  {% end %}
end
