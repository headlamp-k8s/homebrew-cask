cask "master-pdf-editor" do
  version "5.9.90"
  sha256 :no_check

  url "https://code-industry.net/public/MasterPDFEditor.dmg"
  name "Master PDF Editor"
  desc "PDF editor"
  homepage "https://code-industry.net/masterpdfeditor/"

  livecheck do
    url "https://code-industry.net/get-masterpdfeditor/"
    regex(%r{>Version\s(\d+(?:\.\d+)+).*?macOS.*?</h}i)
  end

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Master PDF Editor.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.code-industry.masterpdfeditor3.sfl*",
    "~/Library/Application Support/Master PDF Editor",
    "~/Library/Preferences/net.code-industry.Master PDF Editor.plist",
    "~/Library/Saved Application State/net.code-industry.MasterPDFEditor3.savedState",
  ]
end
