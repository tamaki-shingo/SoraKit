#
# Be sure to run `pod lib lint SoraKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SoraKit'
  s.version          = '0.0.1'
  s.summary          = 'Sora API for iOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Client Library of Sora (ShangriLa Anime API Server) for iOS
                       DESC

  s.homepage         = 'https://github.com/tamaki-shingo/SoraKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Shingo Tamaki' => 'tamaki.shingo@gmail.com' }
  s.source           = { :git => 'https://github.com/tamaki-shingo/SoraKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SoraKit/Classes/**/*'

  s.dependency 'APIKit', '~> 3.0'
  s.dependency 'ObjectMapper', '~> 2.2'
end
