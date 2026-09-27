cask "git-client" do
  version "1.5.0"
  sha256 "d329d3a32bb7959f254a6add1a1338f1243bc9f1018141dba4a0c80ed625143a"

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
