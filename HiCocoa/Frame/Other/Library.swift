//
//  Library.swift
//  HiCocoa
//
//  Created by liaoya on 2022/7/19.
//

import UIKit
import RxSwift
import RxCocoa
import SwiftyBeaver

public protocol LibraryCompatible {
    func mySetup()
}

final public class Library {
    
    public static var shared = Library()
    
    public init() {
    }
    
    public func setup() {
        if let compatible = self as? LibraryCompatible {
            compatible.mySetup()
        } else {
            self.setupReachability()
            self.setupSwiftyBeaver()
        }
    }
    
    public func setupReachability() {
        ReachManager.shared.start()
    }

    public func setupSwiftyBeaver() {
        logType.addDestination(ConsoleDestination.init())
        logType.addDestination(FileDestination.init())
    }
    
}
