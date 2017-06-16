FROM alpine:3.4

RUN echo "http://dl-4.alpinelinux.org/alpine/v3.4/main" >> /etc/apk/repositories && \
	echo "http://dl-4.alpinelinux.org/alpine/v3.4/community" >> /etc/apk/repositories


RUN apk update && \
	apk add python py-pip curl unzip libexif udev chromium chromium-chromedriver xvfb && \
	pip install selenium && \
	pip install pyvirtualdisplay
