# setup-ubuntu18

setup for ubuntu 18.04

## Contents

### install_all.sh

Run all install shell scripts.

### 1_install_settings.sh

- Folder names is in English.
- Caps Lock Key become Ctrl key.
- apt server is setup.
- apt uptade & upgrade & autoremove.
- install vim & terminator.
- copy terminator config.
- paste symbolic links for vim, bash, and xmodmap.
- make a vimbackup directory.
- provide dotfailes.

### 2_install_ros2.sh

Install ros2 environment.

## Manually setup (optionally)

- Import keymap.txt from Mozc settings.  
The input type (Japanese or English) can be switched by Henkan or Muhenkan key.
- Put Win-key, input "session", and select the app. Then, set "startup.sh" in the app.  
	- Caps Lock key is changed into Ctrl key.
	- Muhenkan + hjkl move a cursor.
