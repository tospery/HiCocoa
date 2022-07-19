//
//  TabBarController.swift
//  HiCocoa
//
//  Created by 杨建祥 on 2022/7/19.
//

import UIKit
import RxSwift
import RxCocoa
import URLNavigator

open class TabBarController: UITabBarController {

    public let navigator: NavigatorType
    public var disposeBag = DisposeBag()

    required public init(_ navigator: NavigatorType, _ reactor: BaseViewReactor) {
        self.navigator = navigator
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bind(reactor: TabBarReactor) {
    }

}
