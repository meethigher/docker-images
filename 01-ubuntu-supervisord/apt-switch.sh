cp /etc/apt/sources.list /etc/apt/sources.list.bak
cat>/etc/apt/sources.list<<EOF
# https://www.debian.org/mirror/list
deb [trusted=yes] https://mirror.lzu.edu.cn/debian/ bookworm main contrib non-free non-free-firmware
deb [trusted=yes] https://mirror.nju.edu.cn/debian/ bookworm main contrib non-free non-free-firmware
deb [trusted=yes] https://mirrors.163.com/debian/ bookworm main contrib non-free non-free-firmware
deb [trusted=yes] https://mirrors.bfsu.edu.cn/debian/ bookworm main contrib non-free non-free-firmware
deb [trusted=yes] https://mirrors.jlu.edu.cn/debian/ bookworm main contrib non-free non-free-firmware
deb [trusted=yes] https://mirrors.neusoft.edu.cn/debian/ bookworm main contrib non-free non-free-firmware
deb [trusted=yes] https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm main contrib non-free non-free-firmware
deb [trusted=yes] https://mirrors.ustc.edu.cn/debian/ bookworm main contrib non-free non-free-firmware
deb [trusted=yes] https://mirrors.zju.edu.cn/debian/ bookworm main contrib non-free non-free-firmware
deb [trusted=yes] http://ftp.cn.debian.org/debian/ bookworm main contrib non-free non-free-firmware
EOF