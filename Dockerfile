FROM wakuorg/nwaku:latest

# Render dynamically assigns a PORT environment variable.
# We must use a startup script to pass this variable to the nwaku binary.
CMD ["sh", "-c", "/usr/bin/nwaku --relay=true --lightpush=true --filter=true --store=true --websocket-support=true --listen-address=0.0.0.0 --websocket-port=${PORT:-8000} --rln-relay=false"]
