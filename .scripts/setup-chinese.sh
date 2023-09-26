#! /bin/sh

sudo echo "zh_CN.UTF-8 UTF-8" >> /etc/locale.gen
sudo locale-gen

yay -S adobe-source-han-sans-cn-fonts electronic-wechat-uos-bin ibus-pinyin

sudo echo "GTK_IM_MODULE=ibus" >> /etc/environment
sudo echo "QT_IM_MODULE=ibus" >> /etc/environment
sudo echo "XMODIFIERS=@im=ibus" >> /etc/environment

