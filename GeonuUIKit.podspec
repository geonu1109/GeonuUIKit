#
# Be sure to run `pod lib lint GeonuUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  # Root specification
  s.name = 'GeonuUIKit'
  s.version = '0.3.5'
  s.swift_version = '5.0'
  s.author = { 'Geonu Jeon' => 'geonu1109@gmail.com' }
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://github.com/geonu1109/GeonuUIKit'
  s.source = { :git => 'https://github.com/geonu1109/GeonuUIKit.git', :tag => s.version.to_s }
  s.summary = 'GeonuUIKit is library that makes it easier to implement iOS views with UIKit.'
  s.description = <<-DESC
                    GeonuUIKit is library that makes it easier to implement iOS views with UIKit.
                    It contains extensions of components of UIKit and UIKit components builder.
                  DESC

  # Platform
  s.ios.deployment_target = '11.0'
  
  # Build settings
  s.ios.framework = 'UIKit'
  
  # File patterns
  s.source_files = 'GeonuUIKit/Classes/**/*'
end
