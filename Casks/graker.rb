cask "graker" do
  version "1.5.0"
  sha256 "33502ca7ea9796b242f89ae5c7fff3506976bb41902f0c64beb873e040e01ec4"

  url "https://dl.graker.fehey.com/Graker-#{version}.dmg"
  name "Graker"
  desc "Menu bar grammar checker for Chinese English learners"
  homepage "https://graker.fehey.com/"

  livecheck do
    url "https://dl.graker.fehey.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Graker.app"

  zap trash: [
    "~/Library/Application Support/Graker",
    "~/Library/Caches/com.graker.app",
    "~/Library/HTTPStorages/com.graker.app",
    "~/Library/Preferences/com.graker.app.plist",
    "~/Library/Saved Application State/com.graker.app.savedState",
  ]
end
