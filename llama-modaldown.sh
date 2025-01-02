#!/data/user/0/com.termux/files/usr/bin/bash
echo 下载模型。
read -p "请事先确认已通过更改脚本的方式选择了你需要的模型。按下 Enter 以继续。"
huggingface-cli download Qwen/Qwen2.5-3B-Instruct-GGUF qwen2.5-3b-instruct-fp16-00001-of-00002.gguf --local-dir ../qwen2.5-3b
huggingface-cli download Qwen/Qwen2.5-3B-Instruct-GGUF qwen2.5-3b-instruct-fp16-00002-of-00002.gguf --local-dir ../qwen2.5-3b
echo 下载好了。