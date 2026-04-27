# 1. Use the official Arch Linux image
FROM archlinux:latest

# 2. Update the package database and install 'ttyd' directly via pacman
RUN pacman -Syu --noconfirm ttyd

# 3. Set your working directory
WORKDIR /app

# 4. Start ttyd on the port Render assigns, protect it with a password, and launch bash.
# CHANGE "admin:password123" to a secure username and password of your choice!
CMD ttyd -c admin:password123 -p ${PORT:-8080} bash
