After making all changes to a cask, verify:

- [ ] `brew audit --cask <cask>` is error-free.
- [ ] `brew style --fix <cask>` reports no offenses.

Additionally, **if adding a new cask**:

- [ ] `brew audit --new-cask <cask>` worked successfully.
- [ ] `brew install --cask <cask>` worked successfully.
- [ ] `brew uninstall --cask <cask>` worked successfully.
