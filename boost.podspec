#
# Be sure to run `pod lib lint boost.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "boost"
  s.version          = "1.53.0"
  s.summary          = "Pre-built Boost C++ Library for ROSiOS"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
Pre-built Boost C++ Library
                       DESC

  s.homepage         = "https://github.com/ros-ios/boost"
  s.license          = 'Boost'
  s.author           = { "Furushchev" => "furushchev@jsk.imi.i.u-tokyo.ac.jp" }
  s.source           = { :git => "https://github.com/ros-ios/boost.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.requires_arc = true

  s.ios.source_files = "Pod/include/**/*.{h,hpp,ipp}"
  s.ios.header_mappings_dir = "Pod/include"
  s.ios.public_header_files = "Pod/include/**/*.{h,hpp,ipp}"

  s.ios.preserve_paths = "Pod/include/**/*.{h,hpp,ipp}", "Pod/lib/libboost.a"
  s.ios.vendored_libraries = "Pod/lib/libboost.a"
end
