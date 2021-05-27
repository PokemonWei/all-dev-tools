term_dir=$(dirname $(readlink -f "$0"))

ln -s -f "$term_dir/.tmux.conf"  ~/.tmux.conf

git clone https://github.com/tmux-plugins/tpm /root/.tmux/plugins/tpm && /root/.tmux/plugins/tpm/bin/install_plugins

echo "source $term_dir/zshrc.zsh" >> ~/.zshrc

git clone https://github.com/zdharma/zinit.git ~/.zinit

nohup zsh ~/.zshrc > ～/zsh_ini.log 2>&1 &