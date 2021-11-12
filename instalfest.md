# OSX Instalfest (including M1 Apple Silicon)

### If you are on an M! Mac, make sure Terminal is NOT Rosetta mode.
You can check by running this command inside your terminal:
- `uname -m`

It should say arm64 if you are on an M1 Mac. If it says x86_4, that means Terminal is in Rosetta mode.

<details>
    <summary>To turn off, Rosetta, follow these instructions:</summary>
    1. Quit Terminal if it’s running
    1. Go to the Finder
    1. Go to the Utilities folder by pressing shift-command-U (or select “Go” from the menu bar, then select Utilities)
    1. Select Terminal, but don’t launch it. Just click once to select it.
    1. Press command-i (or from the menu bar: “File”, then “Get Info”)
    1. Uncheck the checkbox that says “Open using Rosetta”
    1. Close the Terminal Info window
    1. Launch Terminal
    1. Run uname -m. It should now say arm64 and you can proceed with the rest of this guide.
</details> 
