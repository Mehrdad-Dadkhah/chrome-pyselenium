FROM alpeware/chrome-headless-trunk:latest

MAINTAINER Mehrdad Dadkhah <mehrdad@dadkhah.me>

RUN apt update && apt install -y \
    python \
    python-pip \
    python3-pip


RUN apt install -y libglib2.0-0/bionic-updates \
    libnss3 \
    libnss3-dbg \
    libnss3-tools \
    libgconf-2-4 \
    libfontconfig1 \
    libxml2-dev \
    vim \
    curl

RUN pip install nltk
RUN pip3 install nltk
RUN pip install selenium
RUN pip3 install selenium
RUN pip3 install BeautifulSoup4
RUN pip3 install lxml
RUN pip3 install html5lib


RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && apt install -y ./google-chrome-stable_current_amd64.deb

# RUN wget https://chromedriver.storage.googleapis.com/85.0.4183.38/chromedriver_linux64.zip && tar -xf chromedriver_linux64.zip
RUN curl 'https://chromedriver.storage.googleapis.com/85.0.4183.38/chromedriver_linux64.zip' -H 'authority: chromedriver.storage.googleapis.com' -H 'upgrade-insecure-requests: 1' -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36' -H 'sec-fetch-dest: document' -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' -H 'x-client-data: CJe2yQEIprbJAQipncoBCJesygEIy67KAQjQr8oBCLywygEIhrXKAQiXtcoBCJm1ygEI7bXKAQiOusoB' -H 'sec-fetch-site: none' -H 'sec-fetch-mode: navigate' -H 'accept-language: en-US,en;q=0.9,fa;q=0.8' -H 'range: bytes=710446-710446' -H 'if-range: "856c69ea0e6c71b04119167e1b72e4bf"' --compressed
RUN tar -xf chromedriver_linux64.zip