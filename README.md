# SatisfactoryDedicatedServer
SatisfactoryDedicatedServer，One-click start server code

This code is suitable for Windows Only, win 10 1803+ is needed.

# Stable version server
Since the release of beta 1.0, the game server crashes when it starts and cannot automatically restart. When the server is detected to be offline, UDP port 7777 is lost. So I wrote a little code to monitor whether UDP port 8888 is online. If it is online, it means that the server is working properly. If it is not online, shut down the current server and restart it.
Detection interval 30s

# Experimental Server
Since the release of Beta 1.1, the experimental server no longer needs to monitor whether UDP port 8888 is online, so the code for monitoring whether UDP port 8888 is online has been deleted and replaced with detecting whether the server program is working.
Detection interval 30s

# Instructions

First start server update.bat

After the update is completed, there will be an additional GameServers folder in the folder

Finally, start start.bat

Enjoy your game!

### 中英文对照表 Chinese-English comparison table

| 中文 | English |
|:---:|:---:|
| 实验性服务器更新.bat | Experimental Server Updates.bat |
| 稳定版本服务器更新.bat | Stable version server updates.bat |
| 打开存档位置 | Open saves folder.CMD |
| 实验版本启动程序| Experimental version launcher.bat |
| 稳定版本启动程序| Stable version launcher.bat |

# SatisfactoryDe​​dicatedServer，一键启动服务器代码

此代码适用于Windows，需要win10 1803及以上版本

# 稳定版服务器
自 Beta 1.0 发布以来，游戏服务器启动时会崩溃，并且无法自动重启。当检测到服务器离线时，UDP 端口 7777 会丢失。因此，我编写了一小段代码来监控 UDP 端口 8888 是否在线。如果在线，则表示服务器运行正常。如果未在线，则关闭当前服务器并重启。
检测间隔 30 秒

# 实验版服务器
自 Beta 1.1 发布以来，实验版服务器不再需要监控 UDP 端口 8888 是否在线，所以删除了监控 UDP 端口 8888 是否在线的代码，改成检测服务器程序是否工作

## 使用说明 Instructions

| 步骤step | 中文| English |
|---|---|---|
| 1 |先启动 Stable version server updates/Experimental Server Updates.bat|First start Stable version server updates/Experimental Server Updates.bat|
| 2 |待更新完成后文件夹内会多出一个Servercore7777/Servercore8888文件夹|After the download completed, there will be Servercore7777/Servercore8888 folder in the folder|
| 3 | 最后启动 Experimental version launcher/Stable version launcher.bat|Finally start Experimental version launcher/Stable version launcher.bat|
| 4 | 开玩！ | Enjoy your game |

## QQ群（群内有服务器）

点击加入[【幸福工厂/异星工厂建造群】](https://qm.qq.com/q/8fPrHJ44G4)

## 维护者联系方式 Maintainer contact information

冰霜蘑菇 [QQ](https://wpa.qq.com/msgrd?v=3&uin=1056484009&site=qq&menu=yes) Simple Chinese Only
