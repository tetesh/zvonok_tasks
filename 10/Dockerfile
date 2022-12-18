FROM ubuntu:23.04
WORKDIR /opt/coolproject
ADD ./code /opt/coolproject/code
RUN apt update && apt install -y haproxy ssh nodejs ruby-full rubygems && apt autoclean
CMD ["code/start.sh"]