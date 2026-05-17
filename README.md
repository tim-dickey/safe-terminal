# safe-terminal

A minimal repository for building and publishing a `ttyd`-based terminal image.

## Container image

The GitHub Actions workflow publishes this image to GitHub Container Registry:

- `ghcr.io/tim-dickey/safe-terminal:latest` (default branch)
- `ghcr.io/tim-dickey/safe-terminal:<tag>` (release tags)
- `ghcr.io/tim-dickey/safe-terminal:sha-<commit>` (commit SHA)

## Build locally

```bash
docker build -t safe-terminal:local .
```

## Security

⚠️ This image serves an interactive shell over HTTP. Never expose it publicly without authentication and network controls.

By default, the container requires `TTYD_CREDENTIALS` (`user:password`) and will exit if it is not set.

## Run locally

```bash
docker run --rm -e TTYD_CREDENTIALS=admin:change-me -p 7681:7681 safe-terminal:local
```

Then open `http://localhost:7681` in your browser.

## Pull and run from GHCR

```bash
docker pull ghcr.io/tim-dickey/safe-terminal:latest
docker run --rm -e TTYD_CREDENTIALS=admin:change-me -p 7681:7681 ghcr.io/tim-dickey/safe-terminal:latest
```
