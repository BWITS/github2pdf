# This is a comment
FROM ubuntu:12.04
MAINTAINER Bill Wang <ozbillwang@gmail.com>
RUN apt-get -qq update
RUN apt-get -qqy install apt-utils
RUN apt-get -qqy install ruby ruby-dev
RUN apt-get -qqy install git-core
RUN apt-get -qqy install pandoc 
RUN apt-get -qqy install texlive
#RUN apt-get install language-support-fonts-zh-hans
