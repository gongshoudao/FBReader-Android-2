#!/bin/bash -xeuo pipefail

echo "1. Copy the ~/Books_with_HowTO (howto image incorporated) to the ~/Books folder (which we use)"
cp -rp ~/Books_with_HowTO/* ~/Books/

echo "2. Going to start build one by one:"

for app in BibliaOrtodoxa VietileSfintilor BibliotecaOrtodoxa Pidalion; do
  echo "Building $app"
  git reset --hard HEAD
  ./molitfelnic_to_any_app.sh $app && ./dockerbuild.sh $app
done


