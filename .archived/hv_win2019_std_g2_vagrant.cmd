set PACKER_LOG=0
packer validate .\templates\hv_win2019_std_g2_vagrant.json
packer build --force .\templates\hv_win2019_std_g2_vagrant.json