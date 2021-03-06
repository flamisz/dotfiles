#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Better do it by hand, it can have some errors
# Set default MySQL root password and auth type.
# mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'password'; FLUSH PRIVILEGES;"

# Better do it by hand, it can have some errors
# brew install libmemcached ?maybe
# Install PHP extensions with PECL
#pecl install memcached imagick
#pecl install pcov

# Install global Composer packages
/opt/homebrew/bin/composer global require laravel/installer laravel/valet

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Create sites directory
mkdir $HOME/dev
mkdir $HOME/dev/sites

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
# ln -s $HOME/.dotfiles/.jsbeautifyrc $HOME/.jsbeautifyrc

# Add global gitignore
git config --global core.excludesfile $HOME/.dotfiles/.gitignore_global
