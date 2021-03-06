FROM debian:jessie

RUN mkdir -p /src
WORKDIR /src

RUN apt-get update && apt-get install --yes --force-yes \
    python \
    python-pip \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

CMD [ "/usr/bin/make", "html" ]

