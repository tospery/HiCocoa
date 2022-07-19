//
//  NormalCollectionItem.swift
//  HiCocoa
//
//  Created by 杨建祥 on 2022/7/19.
//

import Foundation
import RxSwift
import RxCocoa
import ReactorKit

open class NormalCollectionItem: BaseCollectionItem, ReactorKit.Reactor {
    
    public typealias Action = NoAction
    
    public struct State {
        public var showIndicator = true
        public var title: String?
        public var detail: String?
        public var avatar: ImageSource?
    }
    
    public var initialState = State()
    
//    required public init(_ model: ModelType) {
//        super.init(model)
//    }
    
    required public init(_ model: ModelType) {
        super.init(model)
    }
    
    open func transform(state: Observable<State>) -> Observable<State> {
        return state
    }
    
}
