//
//  DataType.swift
//  HiCocoa
//
//  Created by 杨建祥 on 2022/7/18.
//

import Foundation

// MARK: - 联合类型
public typealias KVTuple = (key: Any, value: Any?)
public typealias SectionData = (header: ModelType?, items: [ModelType])
public typealias CustomLoginResult = (handled: Bool, result: Bool)
