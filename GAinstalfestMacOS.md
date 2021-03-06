# macOS installfest (including M1 Apple Silicon)

## Installation steps

1. [Check terminal mode ( for M1 only )](#terminal-for-m1-only)
1. [Homebrew](#homebrew)
1. [Git installation and configuration](#git-installation-and-configuration)
1. [Volta](#volta)
1. [Fonts](#fonts)
1. [Starship](#starship)
1. [Visual Studio Code](#visual-studio-code)
3. [Slack](#slack)
4. [Google Chrome](#google-chrome)

---

### Terminal for M1 only

If you are on an M1 Mac, make sure Terminal is NOT Rosetta mode.
You can check by running this command inside your terminal:

```bash
uname -m
```

It should say arm64 if you are on an M1 Mac. If it says x86_64, that means Terminal is in Rosetta mode.

<details>
    <summary>To turn off, Rosetta, follow these instructions:</summary>
        <ol>
            <li>
                Quit Terminal if it’s running
            </li>
            <li>
                Go to the Finder
            </li>
            <li>
                Go to the Utilities folder by pressing shift-command-U (or select “Go” from the menu bar, then select Utilities)
            </li>
            <li>
                Select Terminal, but don’t launch it. Just click once to select it.
            </li>
            <li>
                Press command-i (or from the menu bar: “File”, then “Get Info”)
            </li>
            <li>
                Uncheck the checkbox that says “Open using Rosetta”
            </li>
            <li>
                Close the Terminal Info window
            </li>
            <li>
                Launch Terminal
            </li>
            <li>
                Run `uname -m`. It should now say arm64 and you can proceed with the rest of this guide.
            </li>
        </ol>
    </summary>
</details>

---

### Homebrew

Homebrew is a package manager that we will use to install various command line tools in our class.

Open up terminal, and paste the following command to install Homebrew. You might be prompted to install XCode Command Line Tools during the install process.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

You may be prompted to installed XCode command line tools. When prompted, click and install through that, and you're homebrew installation will continue. You can also install XCode command line tools by running `xcode-select --install` in your terminal.

On Apple Silicon Macs, Homebrew might tell you to run a few commands after the installation:

```bash
echo "eval $(/opt/homebrew/bin/brew shellenv)" >> ~/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)
```

Quit and restart Terminal, then check if everything is working so far:

```bash
brew doctor
```

If any warnings or errors are displayed, we will need to resolve them before proceeding with the rest of the install fest.

---

### Git installation and configuration

Before we do this process, please make sure you have signed up for an account on [Github](http://www.github.com). We will be installing a version of GIT from home brew and also configuring it.

### To install GIT

To install GIT run the following command inside the terminal: 
```bash
brew install git
```

### To congifure GIT

```bash
git config --global user.name YOUR-USERNAME
git config --global user.email YOUR_EMAIL@ADDRESS
git config --global push.default simple
git config --global credential.helper osxkeychain
```

---

## Volta

To install Volta run the following commands inside the temrinal

```bash
curl https://get.volta.sh | bash
```

and then
```bash
volta install node
```

To confirm everything worked use the following command
```bash
which node
```

The output should be something like this => `/Users/<currentUser>/.volta/bin/node`

You can also check what version of node you're currently running with `node --version` - it should be `v16.13.0`

---

## Fonts

```bash
brew tap homebrew/cask-fonts

brew install --cask font-fira-code-nerd-font
```

---

## Starship

```bash
brew install starship
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
```
After completed installation navigate to top left corner and select `Terminal/Preferences/Profile/Font/Change/Search => FiraCode Nerd Font` 

*IMPORTANT - make sure you quit and reopen your terminal for changes to take effect*

If successful your terminal should look like this:

<img src="https://raw.githubusercontent.com/starship/starship/master/media/demo.gif" width=375 height=225 >

---

## Visual Studio Code

We'll be running Visual Studio Code (_not Visual Studio_), as the text editor of choice.

```bash
brew install --cask visual-studio-code
```

[Follow Installation instructions and set up Launching from command line.](https://code.visualstudio.com/docs/setup/mac)

---

## Slack

We will be using slack to communicate throughout the course. You should've received an invite to our channels via e-mail. You can login via the web browser, but downloading / installing the app is highly recommended.

```bash
brew install --cask visual-studio-code
```

---

## Google Chrome

```bash
brew install --cask google-chrome
```

##

Hurray!! You have completed installfesst!
 
