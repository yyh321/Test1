#
# Be sure to run `pod lib lint Test1.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Test1'
  s.version          = '0.1.33'
  s.summary          = 'Test1.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/yyh321/Test1'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yunhaoyu@gmail.com' => 'yuyunhao@tvmining.com' }
  s.source           = { :git => 'https://github.com/yyh321/Test1.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Test1/Classes/**/*.{h,m}'
  s.vendored_libraries = 'Test1/Classes/libAdViewSDK.a'
  # non_arc_files = 'Test1/Classes/Libs/TouchJSON/**/*.m','Test1/Classes/Libs/JSONKit/*.m'
  non_arc_files = 'Test1/Classes/Libs/TouchJSON/Extensions/NSDictionary_JSONExtensions.m',
  'Test1/Classes/Libs/TouchJSON/Experimental/CJSONSerialization.m',
  'Test1/Classes/Libs/TouchJSON/Experimental/CJSONDeserializer_BlocksExtensions.m',
  'Test1/Classes/Libs/TouchJSON/Extensions/CDataScanner_Extensions.m',
  'Test1/Classes/Libs/JSONKit/JSONKit.m',
  'Test1/Classes/Libs/TouchJSON/CDataScanner.m',
  'Test1/Classes/Libs/TouchJSON/JSON/CJSONScanner.m',
  'Test1/Classes/Libs/TouchJSON/Experimental/CFilteringJSONSerializer.m',
  'Test1/Classes/Libs/TouchJSON/Experimental/CJSONSerializedData.m',
  'Test1/Classes/Libs/TouchJSON/JSON/CJSONSerializer.m',
  'Test1/Classes/Libs/TouchJSON/JSON/CJSONDeserializer.m'
  s.exclude_files = non_arc_files
  s.subspec 'noarc' do |sp|
    sp.source_files = non_arc_files
    sp.requires_arc = false
    # sp.compiler_flags = '-fno-objc-arc'
  end
  s.public_header_files = 'Test1/Classes/**/*.h'
  #,'UIKit','Foundation'
  s.frameworks = 'AdSupport','CoreLocation','AddressBook','QuartzCore'
  s.libraries = 'c++','sqlite3','xml2','z'
  s.xcconfig = {'LIBRARY_SEARCH_PATHS' => '$(PROJECT_DIR)/Test1/Classes/libAdViewSDK'}

  # s.dependency 'JSONKit'
  # s.dependency 'Reachability'
  # s.dependency 'TouchJSON'


  # s.source_files = 'Test1/Classes/*.{h,m}', 'Test1/Classes/ThirdParty/*.{h}'

  # s.vendored_libraries  = [
  #   'Test1/Classes/ThirdParty/libWeChatSDK.a'
  #   ]
  #   # ,'CoreGraphics','Security','CoreLocation','JavaScriptCore'
  # s.frameworks = 'SystemConfiguration','CoreTelephony'
  # s.libraries  = 'iconv','sqlite3','stdc++','z'

end
