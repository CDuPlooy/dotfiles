#!/bin/bash

# Run stow recursively
for fp in $(ls -d */)
do
	stow -v -R "$fp" -t ~
done
