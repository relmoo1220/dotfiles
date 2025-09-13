```
chmod +x install-brews.sh
./install-brews.sh
```

Also need to add some stuff into like .zshrc

```
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias cdd='cd ~/Desktop'
alias ll='ls -lh'
alias la='ls -lha'
```
