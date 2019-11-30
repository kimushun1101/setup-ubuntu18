# setup-ubuntu18

setup for ubuntu 18.04

## Contents

### install_all.sh

Run all install shell scripts.

### 1_install_settings.sh

- Folder names is in English.
- Caps Lock Key becomes Ctrl key.
- apt server is setup.
- apt uptade & upgrade & autoremove.
- Install vim & terminator.
- Paste symbolic links for vim and bash.
- Make a vimbackup directory.
- Provide dotfiles.

### set_git_config.sh

To edit this file for GIT global setting.
Replace User Name and the email address infomation for you.
Then, run it.

### 3_install_ros.sh

Install ros environment.

### 4_install_ros2.sh

Install ros2 environment.

## Manually setup (optionally)

- Import keymap.txt from Mozc settings.  
The input type (Japanese or English) can be switched by Henkan or Muhenkan key.  
"keymap.txt" exists in ~/.setup/keymap.txt after running "1_install_settings.sh." If ".setup" directory is not appeared, press Ctrl-h.
- Put Win-key, input "session", and select the app. Then, set "startup.sh" in the app.
