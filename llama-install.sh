#!/data/user/0/com.termux/files/usr/bin/bash
echo 安装 llama。
read -p "按下 Enter 以修改镜像服务器。"
termux-change-repo
echo 更新软件包列表。
pkg update && pkg upgrade -y
echo 安装构建工具。
pkg install git cmake -y
echo 克隆源代码。
git clone https://github.com/ggerganov/llama.cpp
cd llama.cpp
echo 开始编译。
cmake -B build
cmake --build build --config Release -j $(nproc)
echo 为下载镜像做准备。
pkg install python -y
pip install huggingface_hub
echo 接下来，请粘贴您的 Huggingface 访问令牌，并在接下来的询问中填写 n。
huggingface-cli login
echo 配置完了。