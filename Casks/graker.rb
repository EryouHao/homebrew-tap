cask "graker" do
  version "1.5.2"
  sha256 "84d0aace224494f3965886221f3d82d41fa517346a04265ac0dfe386b3d7c33a"

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
