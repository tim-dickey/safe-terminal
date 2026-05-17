FROM tsl0922/ttyd@sha256:9a058c087bca6df456cb728514eafe778ea384369a622b3604c8b5256b67237d

EXPOSE 7681

ENTRYPOINT ["sh", "-c"]
CMD ["test -n \"$TTYD_CREDENTIALS\" || { echo \"ERROR: set TTYD_CREDENTIALS=user:pass\" >&2; exit 1; }; exec ttyd -W -p 7681 -c \"$TTYD_CREDENTIALS\" sh"]
