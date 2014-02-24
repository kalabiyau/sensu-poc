Gem::Specification.new do |s|
  s.name        = 'sensu-check-dns'
  s.version     = '0.0.1'
  s.date        = Date.today
  s.summary     = 'Check allowing you to check ur dns'
  s.description = 'yes, this can check dns'
  s.authors     = %w{ Humble Author }
  s.email       = 'beast@example.com'
  s.executables << 'check-dns.rb'
  s.homepage    = 'http://sensuapp.org/'
  s.license     = 'MIT'

  # TODO: extract to sensu-check-testing gem

  s.add_runtime_dependency 'sensu-plugin', '~> 0.2.2'
  s.add_development_dependency 'rspec', '~> 3.0.0.beta1'

end
