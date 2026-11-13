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

smm_b1ac1d7e67e5314684a71c638457d1e325b625b196d682d37d3da9b5ee499cdb80f01481c66df31a0b9a3dee6a9c5d49
