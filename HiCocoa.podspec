Pod::Spec.new do |s|
  s.name             = 'HiCocoa'
  s.version          = '1.0.0'
  s.summary          = 'iOS App Framework.'
  s.description      = <<-DESC
						iOS App Framework using Swift.
                       DESC
  s.homepage         = 'https://github.com/tospery/HiCocoa'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'YangJianxiang' => 'tospery@gmail.com' }
  s.source           = { :git => 'https://github.com/tospery/HiCocoa.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.swift_version = '5.0'
  s.ios.deployment_target = '11.0'
  s.frameworks = 'Foundation', 'UIKit', 'CoreGraphics'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'HiCocoa/Core/**/*'
	ss.dependency 'QMUIKit/QMUICore', '4.4.3'
	ss.dependency 'FCUUID', '1.3.1'
	ss.dependency 'SwiftyBeaver', '1.9.5'
	ss.dependency 'ObjectMapper-JX', '4.2.0-v1'
	ss.dependency 'SwifterSwift/SwiftStdlib', '5.2.0'
  end
end
