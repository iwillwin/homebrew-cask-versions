cask 'navicat-premium12' do
  version '12.1.27'
  sha256 '8d73599a2f3480318db792ccea935e76d4252aa4a788953b31283bbe591248c8'

  url "file://#{ENV["HOME"]}/Documents/Other/Navicat%20Premium/navicat12130_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
