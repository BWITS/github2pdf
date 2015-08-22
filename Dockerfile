FROM ubuntu
MAINTAINER Bill Wang <ozbillwang@gmail.com>
ENV REFRESHED_AT 20150822

RUN echo "deb http://cz.archive.ubuntu.com/ubuntu trusty main universe" >> /etc/apt/sources.list
RUN apt-get -qqy update

RUN apt-get -qqy install texlive-xetex
RUN apt-get -qqy install texlive-latex-recommended # main packages
RUN apt-get -qqy install texlive-latex-extra # package titlesec

RUN apt-get -qqy install ttf-arphic-gbsn00lp ttf-arphic-ukai # from arphic
RUN apt-get -qqy install ttf-wqy-microhei ttf-wqy-zenhei # from WenQuanYi

RUN git clone git://github.com/fletcher/peg-multimarkdown.git
RUN ["/bin/bash", "-c", "cd peg-multimarkdown;./update_submodules.sh;make;cp multimarkdown /usr/bin"]
RUN apt-get install language-support-fonts-zh-hans
CP mmd2bok /usr/bin/mmd2bok
CMD ["mmd2bok"]
