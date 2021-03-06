cask 'intellij-idea-ce' do
  version '2017.1'
  sha256 '20acc55b4f6d9052576b71f23fa197c2a90b1ff33f27c1c8c59dbbadf88283cf'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release',
          checkpoint: '74a9753f2b55b62be5e1fb41691fc489c34457556b73383cec28a22752bef61c'
  name 'IntelliJ IDEA Community Edition'
  name 'IntelliJ IDEA CE'
  homepage 'https://www.jetbrains.com/idea/'

  auto_updates true

  app 'IntelliJ IDEA CE.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
                '~/Library/Preferences/com.jetbrains.intellij.ce.plist',
                '~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState',
              ]
end
