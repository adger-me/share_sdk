#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint share_sdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'share_sdk'
  s.version          = '0.0.1'
  s.summary          = 'share sdk for flutter'
  s.description      = <<-DESC
share sdk for flutter
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  # s.dependency 'mob_sharesdk'
  s.dependency 'mob_sharesdk/ShareSDKExtension'
  s.dependency 'mob_sharesdk/ShareSDKUI'
  s.dependency 'mob_sharesdk/ShareSDKPlatforms/QQ'
  s.dependency 'mob_sharesdk/ShareSDKPlatforms/SinaWeibo'
  s.dependency 'mob_sharesdk/ShareSDKPlatforms/WeChat'
  # s.dependency 'mob_sharesdk/ShareSDKPlatforms/Douyin'

  #分享闭环
  s.dependency 'mob_sharesdk/ShareSDKRestoreScene'
  s.static_framework = true
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
