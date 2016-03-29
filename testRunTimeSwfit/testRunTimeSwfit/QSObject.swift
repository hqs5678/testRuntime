//
//  QSObject.swift
//  testRunTimeSwfit
//
//  Created by hqs on 16/3/25.
//  Copyright © 2016年 hqs. All rights reserved.
//

import Foundation

class QSObject: NSObject {
    
//    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
//        objc_setAssociatedObject(self, (key as NSString).UTF8String, value, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
//    }
//    
//
//    
//    override func valueForKey(key: String) -> AnyObject? {
//        return objc_getAssociatedObject(self, (key as NSString).UTF8String)
//    }
    
    private struct AssociatedKeys { static var DescriptiveName = "nsh_DescriptiveName" }
    
    var descriptiveName: String? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.DescriptiveName) as? String
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(
                    self,
                    &AssociatedKeys.DescriptiveName,
                    newValue as NSString?,
                    objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC
                )
            }
        }
    }
}
