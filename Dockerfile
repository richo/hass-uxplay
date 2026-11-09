ARG BUILD_FROM=ghcr.io/hassio-addons/base:21.0.8
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Copy root filesystem
COPY rootfs /

# Setup base
RUN apk add --no-cache \
	uxplay

# Build arguments
ARG BUILD_ARCH
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.version=${BUILD_VERSION}
