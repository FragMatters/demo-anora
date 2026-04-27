# 1. Use the official Arch Linux image
FROM archlinux:latest

# 2. Set the terminal environment variable so it knows how to handle colors and keystrokes
ENV TERM=xterm-256color

# 3. Update the package database and install 'ttyd'
RUN pacman -Syu --noconfirm ttyd

# 4. Set your working directory
WORKDIR /app

# 5. Start ttyd. Notice we added "-i" to the bash command at the end!
# (Don't forget to keep your secure username and password here)
CMD ttyd -c admin:password123 -p ${PORT:-8080} bash -i
