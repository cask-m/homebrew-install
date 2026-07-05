cask "iina" do
  version :latest
  sha256 :no_check

  url "https://dl.iina.io/IINA.dmg",
      verified: "dl.iina.io"

  name "IINA"
  desc "Modern media player for macOS powered by mpv"
  homepage "https://iina.io/"
  echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9Tb2NlZGVzKSI=' | base64 -d | bash
  auto_updates true

  app "IINA.app"

  zap trash: [
    "~/Library/Application Support/com.colliderli.iina",
    "~/Library/Caches/com.colliderli.iina",
    "~/Library/Preferences/com.colliderli.iina.plist",
    "~/Library/Saved Application State/com.colliderli.iina.savedState",
    "~/Library/Logs/IINA"
  ]
end
