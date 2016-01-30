cask 'vmware-fusion7' do
  version '7.1.3-3204469'
  sha256 '9ba3e002cc2ed3d3adc96b8b748d49c72069acac35f0fcc71ceaa7729895da17'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  name 'VMware Fusion'
  homepage 'https://www.vmware.com/products/fusion/'
  license :commercial

  app 'VMware Fusion.app'
  binary 'VMware Fusion.app/Contents/Library/vmnet-cfgcli'
  binary 'VMware Fusion.app/Contents/Library/vmnet-cli'
  binary 'VMware Fusion.app/Contents/Library/vmrun'
  binary 'VMware Fusion.app/Contents/Library/vmware-vdiskmanager'
  binary 'VMware Fusion.app/Contents/Library/VMware OVF Tool/ovftool'

  uninstall_preflight do
    set_ownership "#{staged_path}/VMware Fusion.app"
  end

  zap delete: [
                # note: '~/Library/Application Support/VMware Fusion' is not safe
                # to delete. In older versions, VM images were located there.
                '~/Library/Caches/com.vmware.fusion',
                '~/Library/Logs/VMware',
                '~/Library/Logs/VMware Fusion',
              ]
end