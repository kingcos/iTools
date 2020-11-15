# iTools for Computers

## macOS

### Apps

#### App Store

|App Name|Usage|DTK|
|:-:|:-:|:-:|
|Final Cut Pro|视频剪辑|✅|
|Motion|动效制作|✅|
|The Unarchiver|解压缩 RAR|
|Wechat|微信||
|Window Tidy|窗口管理|❎|
|Xcode|iOS / macOS 开发|✅|

#### Manual

|App Name|Usage|Free|DTK|
|:-:|:-:|:-:|:-:|
|Alfred|替代 Spotlight|❎|✅|
|Chrome|浏览器|✅|
|GitHub Desktop|git 客户端|✅|
|IINA|本地视频播放器|✅|
|iStat Menus 6|电脑状态监控|❎|✅|
|iTerm|替代 Terminal|✅|✅|
|Pycharm CE|Python IDE|✅|✅|
|ShadowsocksX-NG-R8|SSR|✅|✅|
|SF Mono|字体|✅|✅|
|[1Password 6](https://app-updates.agilebits.com/download/OPM4)|密码管理|❎|✅|

### Development Environment

|Name|Usage|DTK|
|:-:|:-:|:-:|
|CocoaPods|iOS / macOS 开发第三方库依赖管理|✅|
|golang|Hugo 博客|❎|
|Python|脚本|✅|
|Ruby|脚本|✅|

### shell

```shell
# ~/.zshrc

proxy () {
  export https_proxy=http://127.0.0.1:1087 http_proxy=http://127.0.0.1:1087 all_proxy=socks5://127.0.0.1:1086
  echo "HTTP Proxy on"
}

noproxy () {
  unset http_proxy
  unset https_proxy
  unset all_proxy
  echo "HTTP Proxy off"
}
```

## Reference

- [Does it ARM?](https://doesitarm.com)
