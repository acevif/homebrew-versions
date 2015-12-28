cask 'unity45' do
  version '4.5.5'
  sha256 'e42d3b8e3bc3fbc7448bb06b5210c1c0687ba3f784eb947b4586b9f129c6b0d4'

  url "http://download.unity3d.com/download_unity/unity-#{version}.dmg"
  homepage 'https://unity3d.com/unity/'
  license :commercial

  pkg 'Unity.pkg'

  uninstall :pkgutil => 'com.unity3d.*'
end