#
# Be sure to run `pod lib lint IBReusable.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IBReusable'
  s.version          = '0.2.0'
  s.summary          = 'Reusable, Interface Builder designed views, done right'

  s.description      = <<-DESC
Xcode 4 removed support for Xcode 3 plugins, including visual components. Thankfully, Xcode 6 mostly brought them back when IB_DESIGNABLE was introduced. Unfortunately most of the posts on Stack Overflow and several blogs are suggesting extremely complicated approaches for something that should be trivial, namely (re)using views designed as XIBs on storyboards (and other XIBs). This (spoiler alert: using -awakeAfterUsingCoder:) is The Right Way™ to do it.
                       DESC

  s.homepage         = 'https://github.com/andrebraga/IBReusable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'André Braga' => 'code@andrebraga.com' }
  s.source           = { :git => 'https://github.com/andrebraga/IBReusable.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'

  s.source_files = 'IBReusable/Classes/**/*'
end
