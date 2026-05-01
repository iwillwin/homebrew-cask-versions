cask "sogou-input" do
  version "620a"

  # sha256

  url "file:///Volumes/qing/aDrive/app/sogou-input/sogou_mac_new_guanwang_#{version}.zip"
  name "Sogou Input Method"
  name "搜狗输入法"
  desc "Input method supporting full and double spelling"
  homepage "https://pinyin.sogou.com/mac/"

  auto_updates true

  installer manual: "sogou_mac_#{version}.app"

  uninstall launchctl: "com.sogou.SogouServices",
            delete:    [
              "/Library/Input Methods/SogouInput.app",
              "/Library/QuickLook/SogouSkinFileQuickLook.qlgenerator",
            ]

  zap trash: [
        "~/.sogouinput",
        "~/Library/Application Support/Sogou/EmojiPanel",
        "~/Library/Application Support/Sogou/InputMethod",
        "~/Library/Caches/com.sogou.inputmethod.sogou",
        "~/Library/Caches/com.sogou.SGAssistPanel",
        "~/Library/Caches/com.sogou.SogouPreference",
        "~/Library/Caches/SogouServices",
        "~/Library/Cookies/com.sogou.inputmethod.sogou.binarycookies",
        "~/Library/Cookies/com.sogou.SogouPreference.binarycookies",
        "~/Library/Cookies/SogouServices.binarycookies",
        "~/Library/Preferences/com.sogou.SogouPreference.plist",
        "~/Library/Saved Application State/com.sogou.SogouInstaller.savedState",
      ],
      rmdir: "~/Library/Application Support/Sogou"
end
