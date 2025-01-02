#!/data/user/0/com.termux/files/usr/bin/bash
echo 启动服务。
read -p "请确定脚本无误。按下 Enter 以启动。"
./llama.cpp/build/bin/llama-server -m ../qwen2.5-3b/qwen2.5-3b-instruct-fp16-00001-of-00002.gguf -p "You are Qwen, created by Alibaba Cloud. You are a helpful assistant." -n 1024 -t $(nproc)
echo 服务已停止。
exit