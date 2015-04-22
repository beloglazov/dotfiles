This is my (supposedly cross-platform) system configuration managed with
[rcm](https://github.com/thoughtbot/rcm). This is an updated and consolidated
version of my previous configs:
[arch](https://github.com/beloglazov/arch-config),
[mac](https://github.com/beloglazov/mac-config),
[xmonad](https://github.com/beloglazov/xmonad-config),
[fish](https://github.com/beloglazov/fish-config),
[vim](https://github.com/beloglazov/vimrc),
[arch-xmonad-zsh](https://github.com/beloglazov/arch-xmonad-zsh).

If you are using Ubuntu, first execute the following to install the required
software:

```Bash
./.install/ubuntu
```

Then, use `rcup` from `rcm` to setup the configs you need using tags, for
example:

```Bash
rcup -t xmonad -t shell -t vim
```

To uninstall the configs, run:

```Bash
rcdn -t xmonad -t shell -t vim
```
