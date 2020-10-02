## Bashtop

Resource monitor that shows usage and stats for processor, memory, disks, network and processes.

Source: https://github.com/aristocratos/bashtop

#### Mac
Install
```
python3 -m pip install psutil
brew install bash coreutils gnu-sed git
brew install osx-cpu-temp
git clone https://github.com/aristocratos/bashtop.git
cd bashtop
sudo make install
```

Uninstall
```
sudo make uninstall
```