
# 准备工作： 检查网络是否正常（无线网络通过wifi-menu命令进行扫描和连接）

# 更新系统时间
timedatectl set-ntp true

# 分配磁盘（默认256GB）
objDisk=/dev/sda
# 分配swap
echo -e "n\np\n1\n2048\n8390656\nw\n" | fdisk $objDisk
# 配系统磁盘
echo -e "n\np\n2\n\n\nw\n" | fdisk $objDisk

# 格式化磁盘