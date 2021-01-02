# Dotfiles

I get inspired by Dries Vints:

His blog post: https://driesvints.com/blog/getting-started-with-dotfiles
His screencast on Laracasts: https://laracasts.com/series/guest-spotlight/episodes/1

## Before re-install

- Did you commit and push any changes/branches to your git repositories?
- Did you remember to save all important documents from non-iCloud directories?
- Did you save all of your work from apps which aren't synced through iCloud?
- Did you remember to export important data from your local database?
- Did you save your ssh files?

### Installing macOS cleanly

After going to our checklist above and making sure you backed everything up, we're going to cleanly install macOS with the latest release. Follow [this article](https://www.imore.com/how-do-clean-install-macos) to cleanly install the latest macOS version.

### Setting up your Mac

If you did all of the above you may now follow these install instructions to setup a new Mac.

1. Update macOS to the latest version: System Preferences/Software Update 
2. Install Xcode from the App Store, open it and accept the license agreement
3. Install macOS Command Line Tools by running `xcode-select --install`
4. Copy your public and private SSH keys to `~/.ssh` and make sure they're set to `600`
5. Clone this repo to `~/.dotfiles`
6. Install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh#getting-started)
7. Run `install.sh` to start the installation
8. Restart your computer to finalize the process

Your Mac is now ready to use!

:elephant: :gorilla: 🦬
