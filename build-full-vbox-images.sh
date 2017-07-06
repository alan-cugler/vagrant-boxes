vagrant box list | cut -f 1 -d ' ' | xargs -L 1 vagrant box remove -f

vagrant plugin install vagrant-vbguest

cp -r box-creation/full-image-dependencies tl-debian-jessie-64bit-2tb-gui-full/.full-image-dependencies
cp -r box-creation/full-image-dependencies tl-debian-jessie-64bit-2tb-full/.full-image-dependencies

cp -r box-creation/full-image-dependencies tl-debian-jessie-64bit-20gb-full/.full-image-dependencies
cp -r box-creation/full-image-dependencies tl-debian-jessie-64bit-30gb-full/.full-image-dependencies
cp -r box-creation/full-image-dependencies tl-debian-jessie-64bit-40gb-full/.full-image-dependencies
cp -r box-creation/full-image-dependencies tl-debian-jessie-64bit-60gb-full/.full-image-dependencies
cp -r box-creation/full-image-dependencies tl-debian-jessie-64bit-80gb-full/.full-image-dependencies

mkdir -p build

mv tl-debian-jessie-64bit-2tb-gui-full/Vagrantfile tl-debian-jessie-64bit-2tb-gui-full/Vagrantfile.old
cp tl-debian-jessie-64bit-2tb-gui/Vagrantfile tl-debian-jessie-64bit-2tb-gui-full/Vagrantfile
cp build/tl-debian-jessie-64bit-2tb-gui.box tl-debian-jessie-64bit-2tb-gui-full/tl-debian-jessie-64bit-2tb-gui.box
cd tl-debian-jessie-64bit-2tb-gui-full
vagrant up
vagrant ssh -c "cd /vagrant/.full-image-dependencies;sudo bash install-packages.sh"
vagrant package --output ../build/tl-debian-jessie-64bit-2tb-gui-full.box
vagrant destroy -f
rm -rf .full-image-dependencies
rm -rf .vagrant
cd -
rm tl-debian-jessie-64bit-2tb-gui-full/Vagrantfile.old

mv tl-debian-jessie-64bit-2tb-full/Vagrantfile tl-debian-jessie-64bit-2tb-full/Vagrantfile.old
cp tl-debian-jessie-64bit-2tb/Vagrantfile tl-debian-jessie-64bit-2tb-full/Vagrantfile
cp build/tl-debian-jessie-64bit-2tb.box tl-debian-jessie-64bit-2tb-full/tl-debian-jessie-64bit-2tb.box
cd tl-debian-jessie-64bit-2tb-full
vagrant up
vagrant ssh -c "cd /vagrant/.full-image-dependencies;sudo bash install-packages.sh"
vagrant package --output ../build/tl-debian-jessie-64bit-2tb-full.box
vagrant destroy -f
rm -rf .full-image-dependencies
rm -rf .vagrant
cd -
rm tl-debian-jessie-64bit-2tb-full/Vagrantfile.old

mv tl-debian-jessie-64bit-20gb-full/Vagrantfile tl-debian-jessie-64bit-20gb-full/Vagrantfile.old
cp tl-debian-jessie-64bit-20gb/Vagrantfile tl-debian-jessie-64bit-20gb-full/Vagrantfile
cp build/tl-debian-jessie-64bit-20gb.box tl-debian-jessie-64bit-20gb-full/tl-debian-jessie-64bit-20gb.box
cd tl-debian-jessie-64bit-20gb-full
vagrant up
vagrant ssh -c "cd /vagrant/.full-image-dependencies;sudo bash install-packages.sh"
vagrant package --output ../build/tl-debian-jessie-64bit-20gb-full.box
vagrant destroy -f
rm -rf .full-image-dependencies
rm -rf .vagrant
cd -
rm tl-debian-jessie-64bit-20gb-full/Vagrantfile.old

mv tl-debian-jessie-64bit-30gb-full/Vagrantfile tl-debian-jessie-64bit-30gb-full/Vagrantfile.old
cp tl-debian-jessie-64bit-30gb/Vagrantfile tl-debian-jessie-64bit-30gb-full/Vagrantfile
cp build/tl-debian-jessie-64bit-30gb.box tl-debian-jessie-64bit-30gb-full/tl-debian-jessie-64bit-30gb.box
cd tl-debian-jessie-64bit-30gb-full
vagrant up
vagrant ssh -c "cd /vagrant/.full-image-dependencies;sudo bash install-packages.sh"
vagrant package --output ../build/tl-debian-jessie-64bit-30gb-full.box
vagrant destroy -f
rm -rf .full-image-dependencies
rm -rf .vagrant
cd -
rm tl-debian-jessie-64bit-30gb-full/Vagrantfile.old

mv tl-debian-jessie-64bit-40gb-full/Vagrantfile tl-debian-jessie-64bit-40gb-full/Vagrantfile.old
cp tl-debian-jessie-64bit-40gb/Vagrantfile tl-debian-jessie-64bit-40gb-full/Vagrantfile
cp build/tl-debian-jessie-64bit-40gb.box tl-debian-jessie-64bit-40gb-full/tl-debian-jessie-64bit-40gb.box
cd tl-debian-jessie-64bit-40gb-full
vagrant up
vagrant ssh -c "cd /vagrant/.full-image-dependencies;sudo bash install-packages.sh"
vagrant package --output ../build/tl-debian-jessie-64bit-40gb-full.box
vagrant destroy -f
rm -rf .full-image-dependencies
rm -rf .vagrant
cd -
rm tl-debian-jessie-64bit-40gb-full/Vagrantfile.old

mv tl-debian-jessie-64bit-60gb-full/Vagrantfile tl-debian-jessie-64bit-60gb-full/Vagrantfile.old
cp tl-debian-jessie-64bit-60gb/Vagrantfile tl-debian-jessie-64bit-60gb-full/Vagrantfile
cp build/tl-debian-jessie-64bit-60gb.box tl-debian-jessie-64bit-60gb-full/tl-debian-jessie-64bit-60gb.box
cd tl-debian-jessie-64bit-60gb-full
vagrant up
vagrant ssh -c "cd /vagrant/.full-image-dependencies;sudo bash install-packages.sh"
vagrant package --output ../build/tl-debian-jessie-64bit-60gb-full.box
vagrant destroy -f
rm -rf .full-image-dependencies
rm -rf .vagrant
cd -
rm tl-debian-jessie-64bit-60gb-full/Vagrantfile.old

mv tl-debian-jessie-64bit-80gb-full/Vagrantfile tl-debian-jessie-64bit-80gb-full/Vagrantfile.old
cp tl-debian-jessie-64bit-80gb/Vagrantfile tl-debian-jessie-64bit-80gb-full/Vagrantfile
cp build/tl-debian-jessie-64bit-80gb.box tl-debian-jessie-64bit-80gb-full/tl-debian-jessie-64bit-80gb.box
cd tl-debian-jessie-64bit-80gb-full
vagrant up
vagrant ssh -c "cd /vagrant/.full-image-dependencies;sudo bash install-packages.sh"
vagrant package --output ../build/tl-debian-jessie-64bit-80gb-full.box
vagrant destroy -f
rm -rf .full-image-dependencies
rm -rf .vagrant
cd -
rm tl-debian-jessie-64bit-80gb-full/Vagrantfile.old

rm -rf packer/builds

bash clean-up.sh
