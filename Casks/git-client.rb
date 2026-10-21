cask "git-client" do
  version "3.3.0"
  sha256 "5a043672a0b3d3e519d0fbeca17daa0a96a78c7c7e76ef3a3300ee96f5d83ed6"

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
