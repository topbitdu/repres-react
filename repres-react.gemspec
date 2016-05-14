$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'repres/react/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'repres-react'
  spec.version     = Repres::React::VERSION
  spec.authors     = [ 'Topbit Du' ]
  spec.email       = [ 'topbit.du@gmail.com' ]
  spec.homepage    = 'https://github.com/topbitdu/repres-react'
  spec.summary     = 'Repres React Resource Presentation Engine React资源表现引擎'
  spec.description = 'Repres (REsource PRESentation) is a series of resource presentation engines. The React resource presentation engine includes React-based resource presentation templates & snippets. Repres (资源表现)是一系列的资源表现引擎。React 资源表现引擎包括基于React的资源表现模版和片段。'
  spec.license     = 'MIT'

  spec.files         = Dir[ '{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md' ]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = [ 'lib' ]

  spec.add_dependency 'rails',             '~> 4.2'
  spec.add_dependency 'repres-hyper_text', '>= 1.0'

end
