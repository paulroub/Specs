Pod::Spec.new do |s|
  s.name         = "ZumeroSync"
  s.version      = "1.0.0.a"
  s.summary      = "Objective C wrappers for Zumero for SQL Server (ZSS) sync operations."
  s.description  = <<-DESC
                    Includes all sync and quarantine functions of the Zumero API.

                    Zumero syncs local (SQLite) databases bidirectionally with backend SQL Server databases.
                   DESC
  s.homepage     = "http://zumero.com/"
  #  s.screenshots  = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license      = 'Apache'
  s.author       = { "Zumero LLC" => "support@zumero.com" }
  s.source       = { :git => "https://github.com/paulroub/ZumeroSync.git", :tag => s.version.to_s }

  # s.platform     = :ios, '5.0'
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true

  s.ios.vendored_library = 'Libraries/ios/zumero_client_api.a'
  s.osx.vendored_library = 'Libraries/osx/zumero_client_api.a'

  s.libraries = 'z'
  s.frameworks = 'CFNetworking'

  s.source_files = 'Classes'
#  s.resources = 'Assets'

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'
  # s.dependency 'JSONKit', '~> 1.4'
end
