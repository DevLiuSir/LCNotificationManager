<p align="center">
<img src="./Design/LCNotificationManager.png">

<p align="center">    
<img src="https://badgen.net/badge/icon/apple?icon=apple&label">
<img src="https://img.shields.io/badge/language-swift-orange.svg">
<img src="https://img.shields.io/badge/macOS-10.14+-blue.svg">
<img src="https://img.shields.io/badge/build-passing-brightgreen">
<img src="https://img.shields.io/github/languages/top/DevLiuSir/LCNotificationManager?color=blueviolet">
<img src="https://img.shields.io/github/license/DevLiuSir/LCNotificationManager.svg">
<img src="https://img.shields.io/badge/platform-osx-lightgrey.svg">
<img src="https://img.shields.io/github/languages/code-size/DevLiuSir/LCNotificationManager?color=ff69b4&label=codeSize">
<img src="https://img.shields.io/github/repo-size/DevLiuSir/LCNotificationManager">
<img src="https://img.shields.io/github/last-commit/DevLiuSir/LCNotificationManager">
<img src="https://img.shields.io/github/commit-activity/m/DevLiuSir/LCNotificationManager">
<img src="https://img.shields.io/github/stars/DevLiuSir/LCNotificationManager.svg?style=social&label=Star">
<img src="https://img.shields.io/github/forks/DevLiuSir/LCNotificationManager?style=social">
<img src="https://img.shields.io/github/watchers/DevLiuSir/LCNotificationManager?style=social">
<a href="https://twitter.com/LiuChuan_"><img src="https://img.shields.io/twitter/follow/LiuChuan_.svg?style=social"></a>
</p>


> [English](README.md)


---

`LCNotificationManager` 是一个轻量级的通知管理框架，旨在简化和统一 iOS/macOS 项目中的通知管理。它封装了常见的通知类型，如普通通知 (`NotificationCenter`)、分布式通知 (`Distributed`)、Darwin 通知 (`CFNotification`)、以及工作区通知 (`NSWorkspace`) 等，提供简洁且一致的 API 供开发者使用。

## 功能

- **普通通知管理**：简化 `NotificationCenter` 的使用，支持发送、添加、移除观察者。
- **分布式通知**：支持在不同会话间广播通知，允许传递附加信息。
- **Darwin 通知**：用于 macOS 系统的低层次通知，支持发送和接收特定的系统通知。
- **工作区通知**：便于在应用程序间共享状态，支持发送和接收工作区相关通知。

## 目录结构

```
Sources/
├── LCNotificationManager/
│   └── Helpers/
│       ├── LCDistributedCenter.swift   # 用于分布式通知的帮助类
│       ├── LCCFNotificationCenter.swift           # Darwin CF通知的帮助类
│       ├── LCWorkspaceCenter.swift     # 处理工作空间相关通知的帮助类
│       └── LCNotificationCenter.swift       # 处理 NotificationCenter 通知的帮助类

```




## 安装
### CocoaPods
LCNotificationManager 可通过 [CocoaPods](https://cocoapods.org) 获取。要安装它，只需将以下行添加到您的 Podfile 中：

```swift

pod 'LCNotificationManager'

```




## 许可证

MIT License

Copyright (c) 2022 Marvin


## 作者

| [<img src="https://avatars2.githubusercontent.com/u/11488337?s=460&v=4" width="120px;"/>](https://github.com/DevLiuSir)  |  [DevLiuSir](https://github.com/DevLiuSir)<br/><br/><sub>Software Engineer</sub><br/> [<img align="center" src="https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/twitter.svg" height="20" width="20"/>][1] [<img align="center" src="https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/github.svg" height="20" width="20"/>][2] [<img align="center" src="https://raw.githubusercontent.com/iconic/open-iconic/master/svg/globe.svg" height="20" width="20"/>][3]|
| :------------: | :------------: |

[1]: https://twitter.com/LiuChuan_
[2]: https://github.com/DevLiuSir
[3]: https://devliusir.com/
