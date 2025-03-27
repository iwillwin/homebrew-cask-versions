cask "bettermouse" do
    version "1.6,6830"
    sha256 "5bf08b4332648abba0b43aab0d14e08d33defa758cf3a4a9d4f4c2dbd3c0b946"

    url "file:///Volumes/qing/aDrive/app/BetterMouse/BetterMouse.#{version.csv.first}.#{version.csv.second}.zip"
    name "BetterMouse"
    desc "Utility improving 3rd party mouse performance and functionalities"
    homepage "https://better-mouse.com/"

    livecheck do
      url "https://api.appcenter.ms/v0.1/public/sparkle/apps/7079cb7c-52de-42cf-ac1f-a0d99cdd12f2"
      strategy :sparkle
    end

    auto_updates true
    depends_on macos: ">= :big_sur"

    app "BetterMouse.app"

    uninstall quit: bundle_id = "com.naotanhaocan.BetterMouse"

    zap trash: [
      "~/Library/Application Support/BetterMouse",
      "~/Library/Caches/#{bundle_id}",
      "~/Library/HTTPStorages/#{bundle_id}*",
      "~/Library/Preferences/#{bundle_id}.plist",
      "~/Library/Saved Application State/#{bundle_id}.savedState",
    ]
  end
