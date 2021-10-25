Pod::Spec.new do |s|
  s.cocoapods_version = '>= 1.10.0'
  s.name                = 'GRDB-xcframework'
  
  s.module_name         = 'GRDB'
  s.version             = '5.6.0'

  s.summary             = 'A toolkit for SQLite databases, with a focus on application development.'
  s.description         = <<-DESC
                          xcframework for GRDB.swift from https://github.com/groue/GRDB.swift
                          DESC
  s.homepage            = 'https://github.com/groue/GRDB.swift'
  s.license             = 'MIT'
  s.author              = { 'Gwendal Roué' => 'gr@pierlis.com' }

  s.source              = { :http => 'https://github.com/WW-Digital/ios-GRDB/releases/download/5.6.0/GRDB.xcframework.zip', :sha256 => 'e0c133bb6b4f32167d5cc8c3dceaefa79b1a264a6e79d588a3703f5819ef0797' }
  s.requires_arc        = true
  
  s.vendored_frameworks = 'GRDB.xcframework'

  s.swift_versions = ['5.2']
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '2.0'
  #s.tvos.deployment_target = '9.0'
end
