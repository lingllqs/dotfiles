## 先决条件

```bash
pacman -S joshuto perl-image-exiftool
```
## 使用

```bash
git clone https://github.com/lingllqs/dotfiles
cd dotfiles
cp -r joshuto ~/.config/
注意赋予权限
sudo cp ueberzugpp /usr/bin/ueberzugpp # 复制 ueberzugpp 命令到 PATH (/usr/bin 或者 ~/.local/bin 等)
./run_joshuto.sh # 启动 joshuto (建议 sudo cp run_joshuto.sh /usr/bin/j, 然后使用命令 j 启动 joshuto)
```
