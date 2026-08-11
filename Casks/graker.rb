cask "graker" do
  version "1.5.1"
  sha256 "5fbea2b1cf472cf30cabde584472eedc6c1c03895d17e8dde03b33fb54bbb6c6"

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
