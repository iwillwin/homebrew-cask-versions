cask 'navicat-premium15' do
  version '15.0.4'

  language 'zh', 'CN' do
    sha256 '34cf1089335f7c1e48b293218f3cc980f9be0fab77f2637090936bc77aca89cb'
    url "file://#{ENV["HOME"]}/Documents/Other/Navicat%20Premium/navicat1504_premium_en.dmg"
    homepage 'https://www.navicat.com.cn/products/navicat-premium'
  end

  language 'en', default: true do
    sha256 '34cf1089335f7c1e48b293218f3cc980f9be0fab77f2637090936bc77aca89cb'
    url "file://#{ENV["HOME"]}/Documents/Other/Navicat%20Premium/navicat1504_premium_en.dmg"
    appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
    homepage 'https://www.navicat.com/products/navicat-premium'
  end

  name 'Navicat Premium'

  app 'Navicat Premium.app'
end
