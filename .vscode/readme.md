# 1.软件支持

必选:
YDWE
w3x2lni (最新版本 v2.5.1)
VSCode
AlexWeManager (项目管理指导)

可选:
VSCode插件: LuaDebug(actboy168), Lua(sumneko)



# 2.项目结构
│   test.w3x		MAP
├─.vscode		包含关键配置文件 tasks.json
├─backup		在使用lni2w3x之前,备份原来的test.w3x
├─script		Lua脚本文件:触发器等
├─src			w3x2lni生成的文件夹,可编写物编/导入资源
│  ├─map		
│  ├─resource	资源文件夹
│  ├─table		物编文件夹
│  └─w3x2lni
│      └─locale
└─tasks		tasks.json需要用到的其他脚本文件



# 3.开发流程
a.使用 AlexWeManager init 新建一个项目 test
b.启动 WE,新建地图然后保存至 test 文件夹
c.启动 VSCode,打开 test 文件夹
d.启动任务 w3x2lni ,生成 src 文件夹
e.编辑 src\item.ini 等物编文件
f.添加资源文件至 src\resouce 文件夹,注意路径
g.Ctrl+B 运行默认生成任务 lni2w3x
f.重新生成w3x后可以使用WE编辑地图,如果要继续使用lni请重新运行 w3x2lni
h.Ctrl+/ 可以在VSCode中快速启动魔兽,即实现了w3x文件的右键功能"使用ydwe测试地图"