
Pod::Spec.new do |spec|

  spec.name         = "Wheeler"
  spec.version      = ENV['LIB_VERSION'] || '0.0.2'
  spec.summary      = "A high-level general purpose language featuring intuitive semantics"

  spec.homepage     = "https://github.com/timo-cmd/Wheeler"

  spec.license      = { :type => "CC0", :file => "LICENSE" }

  spec.author             = { "Timo Sarkar" => "sartimo10@gmail.com" }

  spec.platform     = :ios, "13.7"

  spec.swift_versions = "5.2"

  spec.source       = { :git => "https://github.com/timo-cmd/Wheeler.git", :branch => "master" }

  spec.source_files  = "Sources", "Sources/**/*.{h,m,swift}"
  spec.exclude_files = "Sources/Exclude"

  spec.dependency "ZIPFoundation", "~>0.9"
  spec.dependency 'SwiftProtobuf', '~> 1.6'
  spec.dependency 'SwiftJWT', '~> 3.5'
end
