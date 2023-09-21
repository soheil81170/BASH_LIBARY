#!/bin/bash

# Get the list of running container IDs
container_ids=$(docker ps -q)

# Iterate over the container IDs
for container_id in $container_ids; do
    # Get the container name
    container_name=$(docker inspect --format='{{.Name}}' $container_id | sed 's/\///')

    # Generate a unique tag for the new image based on the container name
    new_image_tag="${container_name}_image"

    # Name for the tar.gz file
    tar_file_name="${container_name}_output.tar.gz"

    # Commit the container to a new image
    docker commit $container_id $new_image_tag

    # Save the new image to a tar file
    docker save $new_image_tag | gzip > $tar_file_name

    echo "Docker container $container_name committed and saved to $tar_file_name"
done
