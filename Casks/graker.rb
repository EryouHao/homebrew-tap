cask "graker" do
  version "1.6.1"
  sha256 "0ab7cec50d30bb760fce9bd1e3de463076d078c9adbda0d09666ce37f551692d"

  url "https://dl.graker.fehey.com/Graker-#{version}.dmg"
  name "Graker"
  desc "Menu bar grammar checker for Chinese English learners"
  homepage "https://graker.fehey.com/"

  livecheck do
    url "https://dl.graker.fehey.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Graker.app"

  zap trash: [
    "~/Library/Application Support/Graker",
    "~/Library/Caches/com.graker.app",
    "~/Library/HTTPStorages/com.graker.app",
    "~/Library/Preferences/com.graker.app.plist",
    "~/Library/Saved Application State/com.graker.app.savedState",
  ]
end
