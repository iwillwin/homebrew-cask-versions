cask 'istatistica-pro' do
  version '5.2'
  sha256 'd9188412d8651b06e8b6a517e4a98774fa8b15344d836275b117a832184819ad'

  url "file:///Volumes/qing/aDrive/app/iStatistica%20Pro/iStatistica%20Pro_#{version.major_minor}.dmg"
  name "iStatistica Pro"
  desc "System Monitor Reinvented"
  homepage "https://www.imagetasks.com/istatistica/pro/"

  depends_on macos: ">= :mojave"

  app "iStatistica Pro.app"
end
