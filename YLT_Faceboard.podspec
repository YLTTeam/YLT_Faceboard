#
# Be sure to run `pod lib lint YLT_Faceboard.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YLT_Faceboard'
  s.version          = '0.0.3'
  s.summary          = 'A short description of YLT_Faceboard.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/YLTTeam/YLT_Faceboard'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xphaijj0305@126.com' => 'xiangph@qtec.cn' }
  s.source           = { :git => 'https://github.com/YLTTeam/YLT_Faceboard.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YLT_Faceboard/Classes/**/*'
  
  s.resource_bundles = {
    'YLT_Faceboard' => ['YLT_Faceboard/Assets/*.png', 'YLT_Faceboard/Assets/*.plist']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'YLT_BaseLib'
  s.dependency 'YLT_Kit'
  s.dependency 'Masonry'
  s.dependency 'YYImage'
  s.dependency 'YYText'
end
