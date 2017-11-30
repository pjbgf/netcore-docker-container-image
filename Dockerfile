FROM  microsoft/dotnet:sdk

RUN curl -fsSL get.docker.com -o get-docker.sh
RUN sh get-docker.sh

RUN su

RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ wheezy main" | \
     tee /etc/apt/sources.list.d/azure-cli.list 
RUN apt-key adv --keyserver packages.microsoft.com --recv-keys 52E16F86FEE04B979B07E28DB02C46DF417A0893
RUN apt-get install apt-transport-https -y
RUN apt-get update && apt-get install azure-cli -y

RUN apt-get install gcc -y
RUN apt-get install make -y
RUN apt-get install --reinstall zlibc zlib1g zlib1g-dev -y

RUN wget https://www.python.org/ftp/python/3.6.2/Python-3.6.2.tgz
RUN tar xf Python-3.6.2.tgz
RUN cd Python-3.6.2/
RUN ./configure
RUN make altinstall

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
