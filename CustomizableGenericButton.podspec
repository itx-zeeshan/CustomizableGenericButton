Pod::Spec.new do |spec|

  spec.name         = "CustomizableGenericButton"
  spec.version      = "0.0.1"
  spec.summary      = "CustomizableGenericButton library written in swift"

  spec.description  = <<-DESC
CustomizableGenericButton library written in swift
                   DESC

  spec.homepage     = "https://github.com/itx-zeeshan/CustomizableGenericButton"
  spec.license      = { :type => "GNU", :file => "LICENSE" }
  spec.author       = { "Zeeshan Habib" => "zesbox6@gmail.com" }

  spec.ios.deployment_target = "13.0"
  spec.swift_version = "4.2"

  spec.source        = { :git => "https://github.com/itx-zeeshan/CustomizableGenericButton", :tag => "#{spec.version}" }
  spec.source_files  = "CustomizableGenericButton/**/*.{h,m,swift}"

end
