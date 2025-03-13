//
//  LCDistributedNotificationManager.swift
//
//  Created by DevLiuSir on 2022/8/11.
//
//


import Foundation


// MARK: - 分布式通知管理 (Distributed Notifications)
public class LCDistributedNotificationManager {
    
    // MARK: 发送通知
    
    /// `发送`分布式通知的方法。
    /// - Parameters:
    ///   - name: 通知的名称。
    ///   - object: 通知的对象。默认值为 `nil`。
    ///   - userInfo: 包含通知的附加信息的字典。默认值为 `nil`。
    ///   - deliverImmediately: 控制通知是否立即发送到远程观察者。默认值为 `false`，即将通知放入队列，并在稍后发送。  `true` 立即发送
    public class func postNotification(name: NSNotification.Name, object: String? = nil, userInfo: [AnyHashable: Any]? = nil) {
        // 获取分布式通知中心的默认实例
        let notificationCenter = DistributedNotificationCenter.default()
        
        // 使用通知中心发送通知
        notificationCenter.postNotificationName(name, object: object, userInfo: userInfo, deliverImmediately: true)
    }
    
    // MARK: 接收通知
    
    /// `添加`观察者, 以监听分布式通知。
    ///
    /// - Parameters:
    ///   - observer: 要添加的观察者对象。
    ///   - selector: 用于处理通知的选择器方法。
    ///   - name: 通知的名称。
    ///   - object: 要监听的通知的对象。默认值为 `nil`。
    ///   - suspensionBehavior: 触发通知时的行为。
    public class func addObserver(observer: Any, selector: Selector, name: NSNotification.Name? = nil, object: String? = nil) {
        // 获取分布式通知中心的默认实例
        let notificationCenter = DistributedNotificationCenter.default()
        
        // 使用通知中心添加观察者
        notificationCenter.addObserver(observer, selector: selector, name: name, object: object, suspensionBehavior: .deliverImmediately)
    }
    
    // MARK: 移除通知
    
    /// 从分布式通知中心中 `移除`观察者。
    ///
    /// - Parameters:
    ///   - observer: 要移除的观察者对象。
    ///   - name: 要移除的通知的名称。
    ///   - object: 要移除的通知的对象。默认值为 `nil`。
    public class func removeObserver(name: NSNotification.Name, object: String? = nil) {
        // 获取分布式通知中心的默认实例
        let notificationCenter = DistributedNotificationCenter.default()
        
        // 使用通知中心移除观察者
        notificationCenter.removeObserver(self, name: name, object: object)
    }
    
    // MARK: 移除所有通知
    public class func removeAllDistributedNotifications() {
        DistributedNotificationCenter.default().removeObserver(self)
    }
    
}

