#
# Be sure to run `pod lib lint FluxCocoa.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "FluxCocoa"
  s.version          = "0.1.0"
  s.summary          = "Flux for iOS."
  s.description      = <<-DESC
                       Flux for iOS

                       DESC
  s.homepage         = "https://github.com/yifeic/FluxCocoa"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "yifeic" => "yifei.chen@outlook.com" }
  s.source           = { :git => "https://github.com/yifeic/FluxCocoa.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'FluxCocoa' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation'
  s.dependency 'ReactiveCocoa', '~> 2.3'
end
