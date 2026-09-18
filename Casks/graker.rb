cask "graker" do
  version "1.6.0"
  sha256 "a6a228757c0690e9ce068ccdb11988f01b4c49efbe8897d390a4a5833829910d"

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
