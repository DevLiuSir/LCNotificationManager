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


> [中文](README_CN.md)


---
`LCNotificationManager` is a lightweight notification management framework that aims to simplify and unify notification management in iOS/macOS projects. It encapsulates common notification types, such as normal notifications (`NotificationCenter`), distributed notifications (`Distributed`), Darwin notifications (`CFNotification`), and workspace notifications (`NSWorkspace`), and provides a simple and consistent API for developers to use.

## Features

- **Normal notification management**: Simplifies the use of `NotificationCenter` and supports sending, adding, and removing observers.
- **Distributed notification**: Supports broadcasting notifications between different sessions and allows the delivery of additional information.
- **Darwin notification**: Low-level notifications for the macOS system, supporting the sending and receiving of specific system notifications.
- **Workspace notification**: Facilitates the sharing of status between applications and supports the sending and receiving of workspace-related notifications.



## Directory Structure

```
Sources/
├── LCNotificationManager/
│   └── Helpers/
│       ├── LCDistributedNotificationManager.swift   # Helper class for distributed notifications
│       ├── LCCFNotificationManager.swift           # Helper class for Darwin CF notifications
│       ├── LCWorkspaceNotificationManager.swift     # Helper class for workspace-related notifications
│       └── LCNotificationCenterManager.swift       # Helper class for NotificationCenter notifications

```


## Installation
### CocoaPods
LCNotificationManager is available through [CocoaPods](https://cocoapods.org). To install it, simply add the following line to your Podfile:

```swift

pod 'LCNotificationManager'

```




## License

MIT License

Copyright (c) 2022 Marvin


## Author

| [<img src="https://avatars2.githubusercontent.com/u/11488337?s=460&v=4" width="120px;"/>](https://github.com/DevLiuSir)  |  [DevLiuSir](https://github.com/DevLiuSir)<br/><br/><sub>Software Engineer</sub><br/> [<img align="center" src="https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/twitter.svg" height="20" width="20"/>][1] [<img align="center" src="https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/github.svg" height="20" width="20"/>][2] [<img align="center" src="https://raw.githubusercontent.com/iconic/open-iconic/master/svg/globe.svg" height="20" width="20"/>][3]|
| :------------: | :------------: |

[1]: https://twitter.com/LiuChuan_
[2]: https://github.com/DevLiuSir
[3]: https://devliusir.com/

