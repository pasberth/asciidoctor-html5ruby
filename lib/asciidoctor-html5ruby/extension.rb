require 'asciidoctor'
require 'asciidoctor/extensions'

include ::Asciidoctor

class HTML5RubyMacro < Extensions::InlineMacroProcessor
  option :pos_attrs, ['rt']

  def process parent, target, attributes
    rt = attributes['rt']
    rt ||= ""

    %(<ruby>#{target}<rt>#{rt}</rt></ruby>)
  end
end
