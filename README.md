# monitor-profile-switcher
## Installation
- **install via [chocolatey](https://chocolatey.org/)**

    ``
    choco install monitorswitcher -y
    ``

- **download Zip File**

    [v0700 Download from Sourceforge.net](https://sourceforge.net/projects/monitorswitcher/files/MonitorProfileSwitcher_v0700.zip/download)

## Folders

**Monitor Profile Switcher Path**

- after install via chocolatey

    ``
    %ChocolateyInstall%/lib/monitorswitcher/tools
    ``

- after downloading Zip File

    ``
    <extracted-zip-folder>/
    ``

**Profiles**

``
%USERPROFILE%\AppData\Roaming\MonitorSwitcher\Profiles
``

## Usage

#### 1. Create Profiles

If you have more than one monitor, sometimes you need a different setting for your current usage.

Example with two Monitors:
- Monitor-1
- Monitor-2
- Monitor-1+2

Save these different profiles with the MonitorProfileSwitcher.

#### 2. Create Batch Files

1. Change the path in `example/Monitor-1.bat` when you download the zip file.

    `cd "%ChocolateyInstall%\lib\monitorswitcher\tools"`
    
    `cd "<extracted-zip-folder>"`

2. Copy `example/Monitor-1.bat` and duplicate the batch-file anywhere you want.
3. Name the files like the profiles

In the batch script there is a placeholder `%~n0` = this will be replaced with the filename of the batch script

`MonitorSwitcher.exe -load:%USERPROFILE%\AppData\Roaming\MonitorSwitcher\Profiles\%~n0.xml`

`MonitorSwitcher.exe -load:%USERPROFILE%\AppData\Roaming\MonitorSwitcher\Profiles\Monitor-1.xml`

#### 3. Create Shortcuts
I use a Stream Deck for fast profile switching

![StreamDeck Preview](assets/images/streamdeck-monitors.png?raw=true)

1. Create a new Button
2. Open File > App/File > Monitor-1.bat

Maybe this will help you!
