# CloudHouse_interview_dual_axis_gimbal_control_system_yzcraft
这是一个简易双轴云台控制系统,为大云屋-众创空间三轮面试考核题,使用STM32平台
## 核心模式及功能
### 串口通信
机器接收并回复以下指令:(大小写不敏感) 
    AT -> OK
    STATUS -> OK MODE=<n>
    YAW <param> -> OK
    PITCH <param> -> OK
错误的指令 -> ERR
### LED
####  LED1:
    上电自检循环闪烁,稳定后常亮,
    置错误标识将闪烁
####  LED2:
    MODE 1 常亮;
    MODE 2 熄灭; 
    MODE 3 闪烁;
####  LED3:
    每接收一帧完整的指令翻转一次
### **01 MODE 1 : CMD** 
    指令控制
    接收串口YAW / PITCH指令 参数[0,180]
    对应横滚轴 / 俯仰轴转动到相应角度
### **02 MODE 2 : FOLLOW**
    姿态随动
    使舵机跟随MPU6050姿态板转动
### **03 MODE 3 : TRACK**
    自动追光
    自动锁定舵机头部视角内的一定距离的光源 容差 2%
**注意:**
      这里的舵机头部的四路光敏电阻为正放,需要手动加十字遮光片或者用热缩管/制作光栅来限制单个光敏电阻的视角  
### 按键
#### <= 50ms 视为抖动
####  (50,1000]ms 短按
####  > 1000ms 长按
    此处,长按往回切换模式,短按向前切换模式
    按键按下后,串口上会显示相应信息.
### OLED
    首行常显CLOUDHOUSE 
    第二行    M:<MODE> K: <KEY>
    第三行, CMD : 上一次接收到的cmd
    第四行 MODE1 : YAW PITCH MODE2 : 姿态板
    MODE3: 四路光敏电阻读数和对准状况以便调试
## 文件目录
    主要源码在:Users/ 下
    分层为
    Dev1ce/
    Bsp/
    Logic/
    App/
    Ultils/
    接口定义在.h中,注释齐全
    自行根据需要查阅,调用
## 其他
    整机可PCB打载板或主控板
    引脚分配等细项在
    /User/README.txt下    /User/README.txt下
## 开发环境

本项目使用 CMake 构建，推荐 Visual Studio Code + clangd。

依赖（安装任一即可）：

- STM32CubeCLT
- STM32CubeIDE（首次启动后会在 %LOCALAPPDATA%\STM32Cube\bundles 部署 Cube bundles）

命令行构建：

    cmake --preset Debug
    cmake --build --preset Debug

产物位于 build/Debug/dual-axis_gimbal_control_system.elf。

VSCode 中可直接使用全局任务：

    Ctrl+Shift+B                     编译
    Tasks: Run Task -> STM32: Build + Flash   编译并下载到开发板

代码跳转（F12）由 clangd 提供，读取 build/Debug/compile_commands.json，首次使用前需先编译一次。

## 提交约定

- build/、Debug/、*.elf / *.hex / *.bin / *.map 等构建产物不提交，已在 .gitignore 中忽略
- 建议启用提交钩子，自动拦截误提交的构建产物：

      git config core.hooksPath .githooks

  启用后，任何包含 build/ 或编译产物的提交都会被拒绝，并列出具体文件。