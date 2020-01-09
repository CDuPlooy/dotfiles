#!/bin/bash

# Run stow recursively
for dir in $(ls -d */)
do
	stow -v -R $dir -t ~
done
