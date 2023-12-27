!#/bin/bash
base_dir="$HOME/Games/final-fantasy-xi-online/drive_c/Windower4"
echo "Copying Windower config files..."

mkdir -p "Windower4"
cd Windower4
cp -v "$base_dir/settings.xml" .

standard_addons=(
  "autojoin"
  "equipviewer"
  "GearSwap"
  "plugin_manager"
  "shortcuts"
  "Treasury"
  "Trusts"
  "Yush"
)

# Generic handling for any addon that stores its config files in a /data folder
for addon in "${standard_addons[@]}"; do
  mkdir -p "./addons/$addon/data"
  cp "$base_dir/addons/$addon/data/"*.lua "$base_dir/addons/$addon/data/"*.xml "./addons/$addon/data"
done

# Special snowflakes

# SellNPC stores its config in a lua at the root level
sellnpc_path="addons/SellNPC/data"
mkdir -p "./$sellnpc_path"
cp "$base_dir/$sellnpc_path/profiles.lua" "./$sellnpc_path"

# XIPivot has a config xml and a DATs folder
xipivot_path="addons/XIPivot/data"
mkdir -p "./$xipivot_path"
cp -r "$base_dir/$xipivot_path/" "./$xipivot_path"
