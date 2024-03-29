#
# Be sure to run `pod lib lint TwoWayBondage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TwoWayBondage'
  s.version          = '2.2.0'
  s.summary          = 'TwoWayBondage adds binding between UIControls and Observables'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TwoWayBondage adds binding between UIControls and Observables Using https://github.com/manishkkatoch/SimpleTwoWayBindingIOS
                       DESC

  s.homepage         = 'https://github.com/scalefocus/TwoWayBondage'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Scalefocus" => "ios@scalefocus.com" }
  s.source           = { :git => 'https://github.com/scalefocus/TwoWayBondage.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'

  s.source_files = 'TwoWayBondage/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TwoWayBondage' => ['TwoWayBondage/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
