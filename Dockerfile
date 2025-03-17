# Gebruik de officiële Coturn-image
FROM coturn/coturn:latest

# Kopieer onze configuratie
COPY turnserver.conf /etc/turnserver.conf

# Stel poorten bloot (3478 voor STUN/TURN, UDP en TCP)
EXPOSE 3478 3478/udp

# Start Coturn met onze config
CMD ["turnserver", "-c", "/etc/turnserver.conf"]
