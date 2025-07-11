cask "ksnip" do
  version "1.10.1"
  sha256 "a029364951e0377f3e625a7af70313d1266145a62185e8e127286b5564b11e08"

  url "https://github.com/ksnip/ksnip/releases/download/v#{version}/ksnip-#{version}.dmg"
  name "ksnip"
  desc "Screenshot and annotation tool"
  homepage "https://github.com/ksnip/ksnip"

  no_autobump! because: :requires_manual_review

  app "ksnip.app"

  zap trash: [
    "~/Library/Preferences/org.ksnip.*.plist",
    "~/Library/Saved Application State/org.ksnip.ksnip.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
