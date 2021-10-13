# coding: utf-8
Pod::Spec.new do |s|
  s.name         = "ErosPluginWXPay"
  s.version      = "1.1.6"
  s.summary      = "ErosPluginWXPay Source ."
  s.homepage     = 'https://github.com/dodododooo/eros-plugin-ios-wxpay'
  s.license      = "MIT"
  s.authors      = { "xionghuayu" => "18601949015@163.com" }
  s.platform     = :ios
  s.ios.deployment_target = "8.0"
  s.source = { :git => 'https://github.com/dodododooo/eros-plugin-ios-wxpay.git', :tag => s.version.to_s }
  s.source_files = "Source/*.{h,m,mm}"
  s.requires_arc = true

end
