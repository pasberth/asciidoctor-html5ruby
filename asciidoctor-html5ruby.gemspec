Gem::Specification.new do |s|
  s.name        = 'asciidoctor-html5ruby'
  s.version     = '0.0.1'
  s.licenses    = ['MIT']
  s.summary     = "First release for me."
  s.description = "This package provides a macro of the ruby element of html5 for asciidoctor."
  s.author      = "Pasberth"
  s.email       = 'pasberth@gmail.com'
  s.files       = ["lib/asciidoctor-html5ruby.rb",
                    "lib/asciidoctor-html5ruby/extension.rb",
                    "lib/asciidoctor-html5ruby/sample.adoc",
                    "README.adoc",
                    "LICENSE"]
  s.homepage    = 'https://github.com/pasberth/asciidoctor-html5ruby'
  s.add_runtime_dependency "asciidoctor"
end