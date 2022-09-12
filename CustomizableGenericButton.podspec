Pod::Spec.new do |spec|

  spec.name         = "CustomizableGenericButton"
  spec.version      = "0.0.2"
  spec.summary      = "CustomizableGenericButton library written in swift"

  spec.description  = <<-DESC
CustomizableGenericButton library written in swift for customize buttons
                   DESC

  spec.homepage     = "https://github.com/itx-zeeshan/CustomizableGenericButton.git"
  spec.license = { :type => 'MIT', :text => <<-LICENSE
                   Copyright 2022
                   Permission is granted to...
                 LICENSE
               }
  spec.author       = { "Zeeshan Habib" => "zesbox6@gmail.com" }

  spec.platform = :ios
  spec.ios.deployment_target = "13.0"
  spec.swift_version = "4.2"

  spec.source        = { :git => "https://github.com/itx-zeeshan/CustomizableGenericButton.git", :tag => "#{spec.version}" }
  spec.source_files  = "CustomizableGenericButton/**/*.{h,m,swift}"

end
