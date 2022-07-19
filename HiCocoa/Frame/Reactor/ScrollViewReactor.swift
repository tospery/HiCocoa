//
//  ScrollViewReactor.swift
//  HiCocoa
//
//  Created by 杨建祥 on 2022/7/19.
//

import Foundation
import URLNavigator

open class ScrollViewReactor: BaseViewReactor {
    
    open var pageStart: Int { UIApplication.shared.pageStart }
    open var pageIndex = UIApplication.shared.pageStart
    open var pageSize = UIApplication.shared.pageSize
    
    public required init(_ provider: ProviderType, _ parameters: [String: Any]?) {
        super.init(provider, parameters)
    }
    
}
