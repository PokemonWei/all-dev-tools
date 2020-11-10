#! /bin/bash

work_path=$(dirname $(readlink -f "$0"))

echo "export ALL_DEV_ENV=$1" >> ~/.bashrc
echo "export ALL_DEV_TOOL=$work_path" >> ~/.bashrc
echo 'source $ALL_DEV_TOOL/init.sh' >> ~/.bashrc

if [ ! -f "~/ADT_user.json" ]; then
	cp $work_path/ADT_default.json ~/ADT_user.json
fi

exec /bin/bash

