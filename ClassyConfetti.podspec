#
# Be sure to run `pod lib lint ClassyConfetti.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ClassyConfetti'
  s.version          = '0.1.0'
  s.summary          = 'Add beautiful confettti Animations to your iOS app'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC

'ClassyConfetti is a iOS Framework developed by Classy Inc.This Framework can be incorporated into other apps to decorate with beautiful confettti animations'
                       DESC

  s.homepage         = 'https://github.com/saihariG/ClassyConfetti'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'saihariG' => 'krishnansaihari@gmail.com' }
  s.source           = { :git => 'https://github.com/saihariG/ClassyConfetti.git', :tag => s.version.to_s }
  s.social_media_url = 'https://www.linkedin.com/in/saiharig'
  s.swift_version = '5.0'
  s.ios.deployment_target = '10.0'

  s.source_files = 'ClassyConfetti/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ClassyConfetti' => ['ClassyConfetti/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'MapKit', 'QuartzCore', 'GameKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
