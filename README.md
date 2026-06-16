# lhommeduchili's homebrew tools

A custom [Homebrew](https://brew.sh) tap for installing personal tools and applications.

## Usage

### 1. Add the Tap
Tap the repository into your local Homebrew installation:
```bash
brew tap lhommeduchili/tools https://github.com/lhommeduchili/homebrew-tools
```

### 2. Install a Cask or Formula
Once tapped, you can install any of the available packages:
```bash
brew install --cask open-stage-control
```

Alternatively, you can install it directly without tapping first:
```bash
brew install --cask lhommeduchili/tools/open-stage-control
```

## Available Packages

### Casks
| Cask | Description |
| ---- | ----------- |
| [`open-stage-control`](Casks/open-stage-control.rb) | Libre and modular OSC bi-directional controller surface |

## Continuous Integration

This repository is configured with standard Homebrew GitHub Actions. All pull requests and pushes to `main` run through `brew test-bot` to ensure syntax formatting (`brew style`) and adherence to Homebrew audit standards (`brew audit`). 

## Development and Contributions

1. Clone this repository locally.
2. Ensure you have the `pr-pull` label available for triggering bottle building (if you later add formula).
3. Use `brew style --cask <cask_name>` and `brew audit --cask <cask_name>` to verify any new packages before pushing.
