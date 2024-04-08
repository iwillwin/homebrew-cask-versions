cask "paste" do
    version "4.1.3"
    sha256 "f9a52fa35b8383161d6cd3d4849e1d830d496a08fde6de40e692036ba8437f65"

    url "file://#{ENV["HOME"]}/aDrive/app/Paste/Paste_4.1.3.dmg"
    name "Paste"
    desc "The clipboard as it should be. Paste is a new way to keep, search, and organize everything you copy on your Mac, iPhone, and iPad."
    homepage "https://pasteapp.io/"

    depends_on macos: ">= :mojave"

    app "Paste.app"
  end
