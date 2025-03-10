#!/bin/bash

# create variables with container and image name
ctn_name="keeprun_angular_ctn";
img_name="angular_node:lts-alpine";

# display variables values
echo "CTN Name: "$ctn_name;
echo "IMG Name: "$img_name;

# Start image download and container creation
docker run -d --name $ctn_name \
-p 0.0.0.0:80:4200 \
-v $(pwd)/app:/app \
$img_name /bin/sh -c "sleep infinity";

exit 0;