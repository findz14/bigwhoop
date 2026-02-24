#!/usr/bin/env bash

USER="${USER:-$(id -un 1000)}"   # fallback: default user is UID 1000

# Add user to extra groups
usermod -aG libvirt "$USER"
usermod -aG docker "$USER"

# Disable service after running once
systemctl disable add-user-groups.service
