FROM ubuntu:20.10

RUN apt-get update && apt-get install --yes --no-install-recommends \
    texlive-xetex \
    texlive-lang-cyrillic \
    lmodern

COPY . .

RUN chmod +x entrypoint.sh
CMD [ "/entrypoint.sh" ]
