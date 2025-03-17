# Gebruik de officiële Coturn-image
FROM coturn/coturn:latest

# Kopieer configuratie
COPY turnserver.conf /etc/turnserver.conf

# Stel poorten bloot (3478 UDP/TCP en 10000 TCP als fallback)
EXPOSE 3478 3478/udp 10000 10000/udp

# Start Coturn
CMD ["turnserver", "-c", "/etc/turnserver.conf"]
