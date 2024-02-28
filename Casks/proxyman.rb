cask "proxyman" do
    version "4.16.0,49700"
    sha256 "b01c533f720e306a956908a8610bf63cb2c5ed4d43cd8bb04b84f0e8ee9f8746"

    # url "https://download.proxyman.io/#{version.csv.second}/Proxyman_#{version.csv.first}.dmg"
    url "file://#{ENV["HOME"]}/aDrive/app/Proxyman/Proxyman_#{version.csv.first}.dmg"
    name "Proxyman"
    desc "HTTP debugging proxy"
    homepage "https://proxyman.io/"

    livecheck do
      url "https://proxyman.io/osx/version.xml"
      strategy :sparkle
    end

    app "Proxyman.app"
    binary "#{appdir}/Proxyman.app/Contents/MacOS/proxyman-cli"

    uninstall_postflight do
      stdout, * = system_command "/usr/bin/security",
                                 args: ["find-certificate", "-a", "-c", "Proxyman", "-Z"],
                                 sudo: true
      hashes = stdout.lines.grep(/^SHA-256 hash:/) { |l| l.split(":").second.strip }
      hashes.each do |h|
        system_command "/usr/bin/security",
                       args: ["delete-certificate", "-Z", h],
                       sudo: true
      end
    end

    uninstall launchctl: "com.proxyman.NSProxy.HelperTool",
              quit:      "com.proxyman.NSProxy",
              delete:    "/Library/PrivilegedHelperTools/com.proxyman.NSProxy.HelperTool"

    zap trash: [
      "~/.proxyman*",
      "~/Library/Application Support/com.proxyman",
      "~/Library/Application Support/com.proxyman.NSProxy",
      "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.proxyman.NSProxy",
      "~/Library/Caches/com.proxyman.NSProxy",
      "~/Library/Caches/Proxyman",
      "~/Library/Cookies/com.proxyman.binarycookies",
      "~/Library/Cookies/com.proxyman.NSProxy.binarycookies",
      "~/Library/HTTPStorages/com.proxyman.NSProxy",
      "~/Library/Preferences/com.proxyman.NSProxy.plist",
      "~/Library/Preferences/com.proxyman.iconappmanager.userdefaults.plist",
      "~/Library/Preferences/com.proxyman.plist",
      "~/Library/Saved Application State/com.proxyman.NSProxy.savedState",
      "~/Library/WebKit/com.proxyman.NSProxy",
    ]
  end
