cask "paste" do
    version "4.1.2"
    sha256 "0e673d24307325e4cf997b03a390cd4812d479ee2cf1011c81c35f7896b55515"

    url "file://#{ENV["HOME"]}/aDrive/app/Paste/Paste_4.1.2.dmg"
    name "Paste"
    desc "The clipboard as it should be. Paste is a new way to keep, search, and organize everything you copy on your Mac, iPhone, and iPad."
    homepage "https://pasteapp.io/"

    depends_on macos: ">= :mojave"

    app "Paste.app"
  end
