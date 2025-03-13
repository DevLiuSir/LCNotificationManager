//
//  LCNotificationCenterManager.swift
//
//  Created by DevLiuSir on 2022/8/11.
//
//


import Foundation


// MARK: - 普通通知管理 (NotificationCenter)
public class LCNotificationCenterManager {
    
    // MARK: - 发送通知
    public static func postNotification(name: Notification.Name, userInfo: [AnyHashable: Any]? = nil) {
        NotificationCenter.default.post(name: name, object: nil, userInfo: userInfo)
    }
    
    // MARK: - 添加通知观察者
    public static func addNotification(name: Notification.Name, observer: Any, selector: Selector) {
        NotificationCenter.default.addObserver(observer, selector: selector, name: name, object: nil)
    }
    
    // MARK: - 移除通知观察者
    public static func removeNotification(name: Notification.Name, observer: Any) {
        NotificationCenter.default.removeObserver(observer, name: name, object: nil)
    }
    
    // MARK: - 移除所有通知
    public static func removeAllNotifications(observer: Any) {
        NotificationCenter.default.removeObserver(observer)
    }
    
}

