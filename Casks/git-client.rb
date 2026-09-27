cask "git-client" do
  version "1.4.0"
  sha256 "b9d74b1d2913d84917a872c266c2ce61ea97229ab268e295325dbd96b02395bd"

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
