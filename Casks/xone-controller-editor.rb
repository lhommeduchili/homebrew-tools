cask "xone-controller-editor" do
  version "1.0.1"
  sha256 "5b970c5567e6ba0157eb505cfdb83e3b614b632719b799c915e560c76d1272d1"

  url "https://www.allen-heath.com/content/uploads/2025/10/Xone-Controller-Editor-#{version}-macOS-Installer.zip"
  name "Xone Controller Editor"
  desc "Software to customize settings for the Allen & Heath Xone:K3 MIDI controller"
  homepage "https://www.allen-heath.com/hardware/xone-series/xonek3/resources/"

  container nested: "Xone Controller Editor #{version}.dmg"

  app "Xone Controller Editor #{version}.app", target: "Xone Controller Editor.app"

  zap trash: [
    "~/Library/Preferences/com.allen-heath.XoneControllerEditor.plist",
    "~/Library/Saved Application State/com.allen-heath.XoneControllerEditor.savedState",
  ]
end
