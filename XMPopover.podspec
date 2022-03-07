#
# Be sure to run `pod lib lint XMPopover.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XMPopover'
  s.version          = '1.0.0'
  s.summary          = '可以直接弹出Controller的一款弹窗.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'XMPopover可以直接弹出Controller的一款弹窗.'

  s.homepage         = 'https://github.com/ningxiaomo0516/XMPopover'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '宁小陌y' => '136769890@qq.com' }
  s.source           = { :git => 'https://github.com/ningxiaomo0516/XMPopover.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'XMPopover/Classes/**/*'
  
  # s.resource_bundles = {
  #   'XMPopover' => ['XMPopover/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
