#
# Be sure to run `pod lib lint GeonuUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GeonuUIKit'
  s.version          = '0.2.1'
  s.summary          = 'GeonuUIKit is library that makes it easier to implement iOS views with UIKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
GeonuUIKit is library that makes it easier to implement iOS views with UIKit.
It contains extensions of components of UIKit and UIKit components builder.
                       DESC

  s.homepage         = 'https://github.com/geonu1109/GeonuUIKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Geonu Jeon' => 'geonu1109@gmail.com' }
  s.source           = { :git => 'https://github.com/geonu1109/GeonuUIKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'GeonuUIKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GeonuUIKit' => ['GeonuUIKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.swift_version = '5.0'
end
