# homebrew-qlarchives

Homebrew Tap for [QLArchives](https://github.com/relikd/QLArchives), a blazing fast QuickLook plugin for macOS archive formats.

## Installation

You can install QLArchives via Homebrew with the following commands:

```bash
brew tap relikd/qlarchives
brew install --cask qlarchives --no-quarantine
```

## Updates

Once installed, you can update QLArchives normally through Homebrew:

```bash
brew update
brew upgrade qlarchives
```

## Note to Maintainers (Why this repo exists)

Because QLArchives bundles a QuickLook extension inside an Application wrapper (`.app`), it must be distributed as a **Homebrew Cask**. 

Homebrew's official main repository (`homebrew/cask`) requires strict popularity metrics (e.g. 75+ stars, 30+ forks) before they accept a new application. To bypass this restriction and still offer users a clean installation experience with full `brew upgrade` support, we maintain this dedicated `homebrew-*` repository.

This exact method is widely used by developers across the Homebrew ecosystem (for instance, by the `Browserino` app, which maintains `AlexStrNik/homebrew-Browserino`).

### Releasing a new version
When you publish a new release of `QLArchives` on GitHub:
1. Update `Casks/qlarchives.rb` in this repository with the new `version` number.
2. Update the `sha256` checksum with the hash of your new release `.zip` file.
3. Commit and push the changes. Users will immediately be able to upgrade.
