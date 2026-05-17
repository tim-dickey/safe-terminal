FROM tsl0922/ttyd:1.7.7

EXPOSE 7681

ENTRYPOINT ["ttyd"]
CMD ["-W", "-p", "7681", "sh"]
