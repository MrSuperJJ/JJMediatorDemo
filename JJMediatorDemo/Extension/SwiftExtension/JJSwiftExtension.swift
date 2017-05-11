//
//  JJSwiftExtension.swift
//  JJMediator
//
//  Created by yejiajun on 2017/5/11.
//  Copyright © 2017年 yejiajun. All rights reserved.
//

import Foundation

// Target名称
let swiftTargetName = "Swift";
// Action名称
let swiftModuleMethodName = "swiftModuleMethod";
let swiftFetchNameFromModuleMethodName = "swiftFetchNameFromModuleMethod";
let swiftModuleMethodWithParametersName = "swiftModuleMethodWithParameters";
let swiftFetchNumberFromModuleMethodWithParametersName = "swiftFetchNumberFromModuleMethodWithParameters";

extension JJMediator {

    // 无入参无返回值
    public func JJMediator_swiftModuleMethod() {
        _ = self.performSwift(targetName: swiftTargetName, actionName: swiftModuleMethodName, parameters: nil)
    }
    
    // 无入参返回对象类型
    public func JJMediator_swiftFetchNameFromModuleMethod() -> String? {
        return self.performSwift(targetName: swiftTargetName, actionName: swiftFetchNameFromModuleMethodName, parameters: nil) as? String
    }
    
    // 有入参无返回值
    public func JJMediator_swiftModuleMethod(withName name: String?, callback: ((String?) -> Void)?) {
        var parameters = JJDictionary()
        parameters["name"] = name
        parameters["callback"] = callback
        _ = self.performSwift(targetName: swiftTargetName, actionName: swiftModuleMethodWithParametersName, parameters: parameters)
    }
    
    // 有入参返回基本类型
    public func JJMediator_swiftFetchNumberFromModuleMethod(withNumber number: Int) -> Int {
        var parameters = JJDictionary()
        parameters["number"] = number
        return self.performSwift(targetName: swiftTargetName, actionName: swiftFetchNumberFromModuleMethodWithParametersName, parameters: parameters) as! Int
    }
}
