FROM wakuorg/nwaku:latest

# Render dynamically assigns a PORT environment variable.
# Override the default entrypoint so we can evaluate the $PORT variable in the shell
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/bin/nwaku --relay=true --lightpush=true --filter=true --store=true --websocket-support=true --listen-address=0.0.0.0 --websocket-port=${PORT:-8000} --rln-relay=false"]
