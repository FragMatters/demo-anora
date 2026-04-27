# 1. Use the official Arch Linux image
FROM archlinux:latest

# 2. Update the package database and install 'curl' so we can download ttyd
RUN pacman -Syu --noconfirm curl

# 3. Download the ttyd binary from GitHub and make it executable
RUN curl -sLo /usr/local/bin/ttyd https://github.com/tsl0922/ttyd/releases/latest/download/ttyd.x86_64 && \
    chmod +x /usr/local/bin/ttyd

# 4. Set your working directory
WORKDIR /app

# 5. Start ttyd on the port Render assigns, protect it with a password, and launch bash.
# CHANGE "admin:password123" to a secure username and password of your choice!
CMD ttyd -c admin:password123 -p ${PORT:-8080} bash
