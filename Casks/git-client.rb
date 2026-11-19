cask "git-client" do
  version "4.1.0"
  sha256 "8633b11c509769c165f2d96a5f6f9105be70248aeb06ce29783ee344ede1e481"

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
