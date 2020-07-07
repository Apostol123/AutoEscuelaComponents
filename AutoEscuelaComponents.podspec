#
# Be sure to run `pod lib lint AutoEscuelaComponents.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AutoEscuelaComponents'
  s.version          = '1.0.19'
  s.summary          = 'A short description of AutoEscuelaComponents.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Apostol123/AutoEscuelaComponents'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Apostol123' => 'apostol516@gmail.com' }
  s.source           = { :git => 'https://github.com/Apostol123/AutoEscuelaComponents.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'Classes/**/*.*'
  
  s.swift_version = '5.0'
  s.platforms = {
      "ios": "11.0"
  }
  
   s.resource_bundles = {
    'AutoEscuelaComponents' => ['AutoEscuelaComponents/**/*.xib']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'Reusable', '~> 4.1.1'
end
