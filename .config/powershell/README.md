# Ivan's Powershell

![image](https://user-images.githubusercontent.com/117252369/201470205-97d86472-9580-4377-94f0-3257bd71e7f0.png)

***

1. Install `Powershell` in microsoft store
2. Download and Install [Hack Nerd Mono Windows Compatibility](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Hack.zip)
3. Configure Windows Terminal

Go to `Settings`

![image](https://user-images.githubusercontent.com/117252369/201173909-9c88ed02-980d-4868-a5ee-836adf0c345b.png)

Change the `Default profile` to `Powershell` and the `Default terminal application` to `Windows Terminal` in `Startup`

![image](https://user-images.githubusercontent.com/117252369/201173995-0b2c136b-5124-451d-9965-d79966b5dd98.png)

Also follow my settings on `Appearance`

![image](https://user-images.githubusercontent.com/117252369/201175304-556cc0fe-7402-4b26-9747-625ac8e5c4fa.png)

Now go to `Defaults > Appearance` change `Color scheme` to `Solarized Dark` and `Font face` to `Hack NFM`

![image](https://user-images.githubusercontent.com/117252369/201176301-911a3ae4-3875-4e4a-8ecf-f0d533469e30.png)

Also change `Background opacity` to `50%` and enabled `Enable acrylic material`

![image](https://user-images.githubusercontent.com/117252369/201176409-bb6d5599-7599-41e8-a113-dd4b72c28464.png)

4. Install `scoop` by typing this command line in `Powershell`

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex
```

5. Install [Git](https://git-scm.com/downloads)
6. Install Requirements Module:
   - Terminal Icons: `Install-Module -Name Terminal-Icons -Repository PSGallery`
   - PSReadLine: `Install-Module PSReadLine -AllowPrerelease -Force`
   - PSFzf: `Install-Module -Name PSFzf`
   - Z: `Install-Module -Name z`
7. Install `Oh-My-Posh` theme manager: `scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json`
8. Copy all my files to your `.config` folder

***

## PowerShell Modules

- [Scoop](https://scoop.sh/) - A command-line installer
- [Git for Windows](https://gitforwindows.org/)
- [Oh My Posh](https://ohmyposh.dev/) - Prompt theme engine
- [Terminal Icons](https://github.com/devblackops/Terminal-Icons) - Folder and file icons
- [PSReadLine](https://docs.microsoft.com/en-us/powershell/module/psreadline/) - Cmdlets for customizing the editing environment, used for autocompletion
- [z](https://www.powershellgallery.com/packages/z) - Directory jumper
- [PSFzf](https://github.com/kelleyma49/PSFzf) - Fuzzy finder

***

## Powershell Keybind

ctrl + shift + v - Split pane right
ctrl + shift + s - Split pane down
ctrl + shift + w / a / s / d - Resize pane
ctrl + alt - w / a / s / d - Switch pane
ctrl + shift + w - Close pane

***

### Special Thanks: [Takuya Matsuyama](https://www.youtube.com/c/devaslife)

### You can watch the full video here: [How to set up PowerShell prompt with Oh My Posh on Windows 11](https://www.youtube.com/watch?v=5-aK2_WwrmM&list=PLmMocGWXmbd_MTRMJTTK8lCxmBcjYZvF_&index=5&t=987s)
