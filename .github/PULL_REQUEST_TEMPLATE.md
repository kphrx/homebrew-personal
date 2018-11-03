After making all changes to the cask:

- [ ] `brew cask audit --download {{cask_file}}` is error-free.
- [ ] `brew cask style --fix {{cask_file}}` reports no offenses.
- [ ] The commit message includes the cask’s name and version.

Additionally, if **adding a new cask**:

- [ ] `brew cask install {{cask_file}}` worked successfully.
- [ ] `brew cask uninstall {{cask_file}}` worked successfully.
