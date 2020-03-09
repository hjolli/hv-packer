# Build images

$template_file="./templates/hv-ubuntu-18.04.json"
$var_file="./variables/variables_ubuntu1804.json"
$machine="Ubuntu 18.04 Vagrant"
$packer_log=0

if ((Test-Path -Path "$template_file") -and (Test-Path -Path "$var_file")) {
  Write-Output "Template and var file found"
  Write-Output "Building: $machine"
  try {
    $env:PACKER_LOG=$packer_log
    packer validate -var-file="$var_file" "$template_file"
  }
  catch {
    Write-Output "Packer validation failed, exiting."
    exit (-1)
  }
  try {
    $env:PACKER_LOG=$packer_log
    packer build --force -var-file="$var_file" "$template_file"
  }
  catch {
    Write-Output "Packer build failed, exiting."
    exit (-1)
  }
}
else {
  Write-Output "Template or Var file not found - exiting"
  exit (-1)
}

