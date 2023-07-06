#!/bin/sh
# 检查~/.zshrc文件是否存在"source ~/shprofile/bash_aliases"这行
grep -q "source ~/shprofile/bash_aliases" ~/.zshrc

# 检查上一条命令的退出状态
if [[ $? -ne 0 ]]; then
    # 如果没有找到目标行，则将它追加到文件末尾
    echo "source ~/shprofile/bash_aliases" >> ~/.zshrc
    echo "已添加到~/.zshrc文件中"
else
    echo "已经存在于~/.zshrc文件中"
fi
