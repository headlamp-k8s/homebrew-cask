cask "lasso-app" do
  version "1.8.0"
  sha256 :no_check

  url "https://f003.backblazeb2.com/file/lasso-app/Lasso.dmg",
      verified: "f003.backblazeb2.com/file/lasso-app/"
  name "Lasso"
  desc "Move and resize windows with mouse"
  homepage "https://thelasso.app/"

  livecheck do
    url "https://f003.backblazeb2.com/file/lasso-app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Lasso.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.heavylightapps.lassolaunchhelper.sfl*",
    "~/Library/Application Support/com.heavylightapps.lasso",
    "~/Library/Application Support/Lasso",
    "~/Library/Caches/com.heavylightapps.lasso",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.heavylightapps.lasso",
    "~/Library/HTTPStorages/com.heavylightapps.lasso",
    "~/Library/HTTPStorages/com.heavylightapps.lasso.binarycookies",
    "~/Library/Preferences/com.heavylightapps.lasso.plist",
    "~/Library/Preferences/group.com.heavylightapps.lasso.firebase.plist",
  ]
end
