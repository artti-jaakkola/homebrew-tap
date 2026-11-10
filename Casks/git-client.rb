cask "git-client" do
  version "4.0.0"
  sha256 "edcdc8d5e70dca8be63d4608c56ce0f2a75989f8ed6c36637bd8f0ce9c95366e"

  url "https://github.com/artti-jaakkola/git-client-releases/releases/download/v#{version}/Git.Client_#{version}_universal.dmg"
  name "Git Client"
  desc "Desktop Git client"
  homepage "https://github.com/artti-jaakkola/git-client-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Git Client.app"

  zap trash: [
    "~/Library/Application Support/dev.artti.gitclient",
    "~/Library/Caches/dev.artti.gitclient",
    "~/Library/Preferences/dev.artti.gitclient.plist",
    "~/Library/Saved Application State/dev.artti.gitclient.savedState",
    "~/Library/WebKit/dev.artti.gitclient",
  ]
end
