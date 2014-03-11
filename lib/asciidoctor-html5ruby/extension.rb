require 'asciidoctor'
require 'asciidoctor/extensions'

include ::Asciidoctor

class HTML5RubyMacro < Extensions::InlineMacroProcessor
  option :pos_attrs, ['rpbegin', 'rt', 'rpend']

  def process parent, target, attributes
    if attributes.size == 2 and attributes.key?(1) and attributes.key?("rpbegin")
      # for example, html5ruby:楽聖少女[がくせいしょうじょ]
      rt = attributes[1]
      rt ||= ""
      rpbegin = '('
      rpend = ')'
    else
      rpbegin = attributes['rpbegin']
      rt = attributes['rt']
      rpend = attributes['rpend']
    end

    %(<ruby>#{target}<rp>#{rpbegin}</rp><rt>#{rt}</rt><rp>#{rpend}</rp></ruby>)
  end
end
