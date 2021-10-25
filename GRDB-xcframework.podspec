Pod::Spec.new do |s|
  s.cocoapods_version = '>= 1.10.0'
  s.name                = 'GRDB-xcframework'
  
  s.module_name         = 'GRDB'
  s.version             = '5.7.2'

  s.summary             = 'A toolkit for SQLite databases, with a focus on application development.'
  s.description         = <<-DESC
                          xcframework for GRDB.swift from https://github.com/groue/GRDB.swift
                          DESC
  s.homepage            = 'https://github.com/groue/GRDB.swift'
  s.license             = 'MIT'
  s.author              = { 'Gwendal Roué' => 'gr@pierlis.com' }

  s.source              = { :git => 'git@github.com:WW-Digital/ios-GRDB.git', :tag => "#{s.version}" }

  s.requires_arc        = true
  
  s.vendored_frameworks = 'GRDB.xcframework'

  s.swift_versions = ['5.2']
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '2.0'
  #s.tvos.deployment_target = '9.0'
end
