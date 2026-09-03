//
//  LCNotificationCenter.swift
//
//  Created by DevLiuSir on 2022/8/11.
//
//


import Foundation


// MARK: - 普通通知管理 (NotificationCenter)
public class LCNotificationCenter {
    
    // MARK: - 发送通知
    public static func post(name: Notification.Name, object: Any? = nil, userInfo: [AnyHashable: Any]? = nil) {
        NotificationCenter.default.post(name: name, object: object, userInfo: userInfo)
    }
    
    // MARK: - 添加通知观察者
    public static func add(name: Notification.Name, observer: Any, selector: Selector, object: Any? = nil) {
        NotificationCenter.default.addObserver(observer, selector: selector, name: name, object: object)
    }
    
    
    /// 添加基于闭包的通知观察者。
    ///
    /// - Parameters:
    ///   - name: 要监听的通知名称。
    ///   - object: 指定通知发送对象，可选。
    ///   - queue: 指定回调执行的操作队列。传入 `nil` 时使用发送通知的线程。
    ///   - using: 收到通知后执行的闭包。
    ///
    /// - Returns: 通知观察者对象，可用于后续移除通知监听。
    @discardableResult
    public static func add(name: Notification.Name, object: Any? = nil, queue: OperationQueue? = nil,
                           using block: @escaping @Sendable (Notification) -> Void) -> any NSObjectProtocol {
        NotificationCenter.default.addObserver(forName: name, object: object, queue: queue, using: block)
    }
    
    
    
    // MARK: - 移除通知观察者
    public static func remove(name: Notification.Name, observer: Any, object: Any? = nil) {
        NotificationCenter.default.removeObserver(observer, name: name, object: object)
    }
    
    // MARK: - 移除所有通知
    public static func removeAllNotifications(observer: Any) {
        NotificationCenter.default.removeObserver(observer)
    }
    
    
    /// 移除通过闭包方式添加的通知观察者。
    ///
    /// - Parameter observer: 添加通知时返回的观察者对象。
    public static func remove(observer: any NSObjectProtocol) {
        NotificationCenter.default.removeObserver(observer)
    }
    
}

