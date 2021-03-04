//
//  BPage_Extension.swift
//
//  Created by casa on 2020/2/21.
//  Copyright © 2020 casa. All rights reserved.
//

import CTMediator

fileprivate let ModuleName = "DesignPattern"

public extension CTMediator {
    func DesignPattern_demo(name:String, callback:@escaping (String)->Void) -> UIViewController? {
        let params:[AnyHashable:Any] = [
            "name": name,
            "callback": callback,
            kCTMediatorParamsKeySwiftTargetModuleName: ModuleName
        ]
        if let viewController = performTarget(ModuleName, action: "demo", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
}
