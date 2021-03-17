FROM ubuntu:20.10

RUN apt-get update && apt-get install --yes --no-install-recommends \
    texlive-xetex \
    lmodern

COPY CV .

ENTRYPOINT [ "/entrypoint.sh" ]