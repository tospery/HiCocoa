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
  	ss.dependency 'HiCocoa/Core'
	ss.dependency 'RxSwift', '~> 6.0'
	ss.dependency 'RxCocoa', '~> 6.0'
	ss.dependency 'URLNavigator', '2.3.0'
  end
  
  s.subspec 'Cache' do |ss|
    ss.source_files = 'HiCocoa/Cache/**/*'
  	ss.dependency 'HiCocoa/Core'
  	ss.dependency 'Cache', '6.0.0'
  end
  
  s.subspec 'Theme' do |ss|
    ss.source_files = 'HiCocoa/Theme/**/*'
  	ss.dependency 'HiCocoa/Core'
  	ss.dependency 'RxTheme', '6.0.0'
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
  
  s.subspec 'Frame' do |ss|
    ss.source_files = 'HiCocoa/Frame/**/*'
	ss.dependency 'HiCocoa/Core'
	ss.dependency 'HiCocoa/Cache'
  	ss.dependency 'HiCocoa/Theme'
	ss.dependency 'HiCocoa/Router'
	ss.dependency 'HiCocoa/Network'
  	ss.dependency 'HiCocoa/Resources'
  	ss.dependency 'HiCocoa/Components/JSBridge'
  	ss.dependency 'RxDataSources', '5.0.0'
  	ss.dependency 'NSObject+Rx', '5.2.2'
  	ss.dependency 'ReactorKit', '3.2.0'
  	ss.dependency 'BonMot', '6.0.0'
  	ss.dependency 'SwifterSwift', '5.2.0'
  	ss.dependency 'Kingfisher', '6.3.1'
  	ss.dependency 'DZNEmptyDataSet', '1.8.1'
  	ss.dependency 'MJRefresh', '3.7.5'
  end
  
end
