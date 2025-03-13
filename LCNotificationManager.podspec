Pod::Spec.new do |spec|

  spec.name         = "LCNotificationManager"
  
  spec.version      = "1.0.0"
  
  spec.summary      = "LCNotificationManager is a lightweight notification management framework!"
  
  spec.description  = <<-DESC
  LCNotificationManager is a lightweight notification management framework that aims to simplify and unify notification management in iOS/macOS projects. It encapsulates common notification types, such as normal notifications (NotificationCenter), distributed notifications (Distributed), Darwin notifications (CFNotification), and workspace notifications (NSWorkspace), and provides a concise and consistent API for developers to use.
                   DESC

  spec.homepage     = "https://github.com/DevLiuSir/LCNotificationManager"

  spec.license      = { :type => "MIT", :file => "LICENSE" }
  
  spec.author                = { "Marvin" => "93428739@qq.com" }
  
  spec.swift_versions        = ['5.0']
  
  spec.platform              = :osx
  
  spec.osx.deployment_target = "10.14"

  spec.source       = { :git => "https://github.com/DevLiuSir/LCNotificationManager.git", :tag => "#{spec.version}" }

  spec.source_files = "Sources/LCNotificationManager/Helpers/**/*.{h,m,swift}"

end
