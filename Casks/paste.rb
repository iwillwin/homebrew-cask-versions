cask "paste" do
  version "4.4.2"
  sha256 "487d3a52388300a93522ad89aa89f7af73375eba7cf924ee9d029e53f8069c60"

  url "file:///Volumes/qing/aDrive/app/Paste/Paste_4.4.2.dmg"
  name "Paste"
  desc "The clipboard as it should be. Paste is a new way to keep, search, and organize everything you copy on your Mac, iPhone, and iPad."
  homepage "https://pasteapp.io/"

  depends_on macos: ">= :mojave"

  app "Paste.app"
end
