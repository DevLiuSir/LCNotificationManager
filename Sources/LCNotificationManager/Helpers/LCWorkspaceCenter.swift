//
//  LCWorkspaceCenter.swift
//
//  Created by DevLiuSir on 2022/8/11.
//
//

import Foundation
import AppKit


// MARK: - 工作区通知管理 (Workspace Notifications)
public class LCWorkspaceCenter {
    
    /// 发送通知
    public static func post(name: NSNotification.Name, userInfo: [AnyHashable: Any]? = nil) {
        NSWorkspace.shared.notificationCenter.post(name: name, object: nil, userInfo: userInfo)
    }
    
    /// 接收通知
    public static func addObserver(observer: Any, selector: Selector, name: NSNotification.Name) {
        NSWorkspace.shared.notificationCenter.addObserver(observer, selector: selector, name: name, object: nil)
    }
    
    /// 移除通知
    public static func removeObserver(observer: Any, name: NSNotification.Name) {
        NSWorkspace.shared.notificationCenter.removeObserver(observer, name: name, object: nil)
    }
    
    /// 移除所有通知
    public static func removeAllWorkspaceNotifications() {
        NSWorkspace.shared.notificationCenter.removeObserver(self)
    }
    
}
