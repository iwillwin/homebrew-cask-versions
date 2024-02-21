cask "paste" do
    version "3.1.5"
    sha256 "430113957dd64a505908a0c72d2152eaecd6b71f2affa2e6fb73fcc8cdd0323e"

    url "file://#{ENV["HOME"]}/Documents/Other/Paste/Paste_3.1.5.dmg"
    name "Paste"
    desc "The clipboard as it should be. Paste is a new way to keep, search, and organize everything you copy on your Mac, iPhone, and iPad."
    homepage "https://pasteapp.io/"

    depends_on macos: ">= :mojave"

    app "Paste.app"
  end
