# Fruitiger Jello
A modernized Frutiger Aero inspired Icon Theme.

# Core Ideas
Icons should look tasty again.
If I don't want to put an icon into my mouth, its failed as an icon.
It should welcome me into my glorious computer world.

This is also why it's called Fru**i**tiger Jello, not Frutiger Jello.
Icons should look like they taste like yummy fruits!

# How to install
**Note**: This whole install process has only been tested on Linux Mint 22.1, and may require slightly altered steps or commands on other distros.

Install dependencies
```bash
sudo apt install git imagemagick
```

Clone the repo
```bash
git clone https://github.com/OfficialPixelBrush/FruitigerJello.git
cd FruitigerJello
```

Run `prep_release.sh`
```bash
chmod +x prep_release.sh
./prep_release.sh
```

Copy it to your icons directory
```bash
cp -r FruitigerJello ~/.local/share/icons
```

And you're set!
You can now select it from the themes menu.

# TODO
These are all icons I currently plan to remake
- Folders
    - [x] Empty
    - [ ] Photo Folder
    - [ ] Video Folder
    - [ ] Downloads Folder
    - [ ] Desktop Folder
    - [ ] Music Folder
    - [ ] Trash (Empty & Full)
- Filetypes
    - [x] Generic File
    - [ ] Image File
- Applications
    - [ ] Firefox
    - [ ] Mail
    - [x] Terminal
    - [ ] VS Code
    - [ ] Blender
    - [x] Steam
    - [x] Discord
    - [ ] Explorer

Anyone can go ahead and add their own icons and submit them via a Pull Request.

# Credits
- A friend of mine who loves Windows 7 for the inspiration
- [HDRi: Meadow 2 by Sergej Majboroda](https://polyhaven.com/a/meadow_2)
- [Windows 7 Icon Guidelines by Microsoft](https://learn.microsoft.com/en-us/windows/win32/uxguide/vis-icons)
- [Blender for 3D Modelling](https://www.blender.org/download/)
