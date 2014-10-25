# This is a comment
FROM ubuntu:12.04
MAINTAINER Bill Wang <ozbillwang@gmail.com>
RUN apt-get -qq update
RUN apt-get -qqy install apt-utils
RUN apt-get -qqy install build-essential
RUN apt-get -qqy install ruby ruby-dev
RUN apt-get -qqy install git-core
RUN apt-get -qqy install apt-utils
RUN apt-get -qqy install texlive-xetex
RUN apt-get -qqy install texlive-latex-recommended # main packages
RUN apt-get -qqy install texlive-latex-extra # package titlesec
RUN apt-get -qqy install ttf-arphic-gbsn00lp ttf-arphic-ukai # from arphic
RUN apt-get -qqy install ttf-wqy-microhei ttf-wqy-zenhei # from WenQuanYi
RUN git clone git://github.com/fletcher/peg-multimarkdown.git
RUN ["/bin/bash", "-c", "cd peg-multimarkdown;./update_submodules.sh;make;cp multimarkdown /usr/bin"]
#RUN apt-get install language-support-fonts-zh-hans
