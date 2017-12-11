FROM kalilinux/kali-linux-docker
MAINTAINER steev@kali.org

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get clean
RUN apt-get -y install libnl-3-dev libnl-genl-3-dev pkg-config libssl-dev net-tools git sysfsutils python-scapy python-pycryptodome wpasupplicant rfkill git make g++ kali-linux kali-linux-wireless kali-linux-top10
RUN git clone https://github.com/vanhoefm/krackattacks-scripts /tmp/krackattack/
RUN /tmp/krackattack/krackattack/disable-hwcrypto.sh

CMD ["/bin/bash"]
