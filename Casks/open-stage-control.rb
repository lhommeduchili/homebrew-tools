cask "open-stage-control" do
  arch arm: "arm64", intel: "x64"

  version "1.30.3"
  sha256 arm:   "f9d209024d617767372568683b2c894e8f3756516b34c141d51c48f4f13a8394",
         intel: "900c9c6c4e9bb639fc6298d1c1fd2ec06b408c60e7e48042306ae7ff7efa8592"

  url "https://openstagecontrol.ammd.net/packages/open-stage-control_#{version}_osx-#{arch}.zip"
  name "Open Stage Control"
  desc "Libre and modular OSC bi-directional controller surface"
  homepage "https://openstagecontrol.ammd.net/"

  depends_on :macos

  app "open-stage-control-darwin-#{arch}/open-stage-control.app"

  zap trash: [
    "~/.openstagecontrol",
    "~/Library/Preferences/com.jean-emmanuel.open-stage-control.plist",
    "~/Library/Saved Application State/com.jean-emmanuel.open-stage-control.savedState",
  ]
end
