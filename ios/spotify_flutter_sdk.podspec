#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint spotify_flutter_sdk.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'spotify_flutter_sdk'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin.'
  s.description      = <<-DESC
A new Flutter plugin.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  s.preserve_paths = 'ios-sdk/SpotifyiOS.framework'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework SpotifyiOS' }
  s.vendored_frameworks = 'ios-sdk/SpotifyiOS.framework'
  s.prepare_command = './prepare-iOS-SDK.sh'
end
