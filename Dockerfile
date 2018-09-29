FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install mono-mcs nunit git python3 python3-pip  -y 
RUN pip3 install redis

RUN git clone https://github.com/mariosky/sandbox.git /home/sandbox
RUN ln -s /usr/lib/cli/nunit.framework-2.6.3/nunit.framework.dll /home/nunit.framework.dll 





