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
  
  s.subspec 'Network' do |ss|
    ss.source_files = 'HiCocoa/Network/**/*'
  	ss.dependency 'HiCocoa/Core'
  	ss.dependency 'RxRelay', '6.2.0'
  	ss.dependency 'Moya/RxSwift', '15.0.0'
  	ss.dependency 'SwifterSwift/Foundation', '5.2.0'
  end
  
  s.subspec 'Router' do |ss|
    ss.source_files = 'HiCocoa/Router/**/*'
  	ss.dependency 'SWFrame/Core'
  	ss.dependency 'URLNavigator', '2.3.0'
  end
  
  s.subspec 'Cache' do |ss|
    ss.source_files = 'HiCocoa/Cache/**/*'
  	ss.dependency 'SWFrame/Core'
  	ss.dependency 'Cache', '6.0.0'
  end
  
  s.subspec 'Resources' do |ss|
    ss.resource_bundles = {'Resources' => ['HiCocoa/Resources/*.*']}
  end
  
  s.subspec 'Components' do |ss|
    ss.subspec 'JSBridge' do |sss|
      sss.source_files = 'HiCocoa/Components/JSBridge/**/*'
  	  sss.frameworks = 'WebKit'
    end
  end
  
end
