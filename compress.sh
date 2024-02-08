#!/bin/bash

if [ -z "$VERSION" ]; then
    VERSION='2.0.6'
fi
export VERSION

rm terraform-provider-ansible_"$VERSION"_linux_amd64/* || mkdir -p terraform-provider-ansible_"$VERSION"_linux_amd64
rm terraform-provider-ansible_"$VERSION"_windows_amd64/* || mkdir -p terraform-provider-ansible_"$VERSION"_windows_amd64

mv terraform-provider-ansible_v"$VERSION" terraform-provider-ansible_"$VERSION"_linux_amd64/
mv terraform-provider-ansible_v"$VERSION".exe terraform-provider-ansible_"$VERSION"_windows_amd64/

cp LICENSE terraform-provider-ansible_"$VERSION"_linux_amd64/
cp LICENSE terraform-provider-ansible_"$VERSION"_windows_amd64/

cp README.md terraform-provider-ansible_"$VERSION"_linux_amd64/
cp README.md terraform-provider-ansible_"$VERSION"_windows_amd64/

cd terraform-provider-ansible_"$VERSION"_linux_amd64
zip -r terraform-provider-ansible_"$VERSION"_linux_amd64.zip .

cd ..

cd terraform-provider-ansible_"$VERSION"_windows_amd64
zip -r terraform-provider-ansible_"$VERSION"_windows_amd64.zip .

cd ..
