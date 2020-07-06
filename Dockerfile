FROM debian:10.1

LABEL "version"="0.0.1"
LABEL "com.github.actions.name"="Debug APK Publisher"
LABEL "com.github.actions.description"="Build & Publish Debug APK on Github"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/yhkl-dev/realease-code-version"
LABEL "maintainer"="yhkl"

RUN apt update \
	&& apt -y upgrade \
	&& apt install -y hub \
	&& apt install -y wget \
	&& apt autoremove \
	&& apt autoclean \
	&& apt clean

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
