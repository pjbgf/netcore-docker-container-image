FROM  microsoft/dotnet:sdk

RUN curl -fsSL get.docker.com -o get-docker.sh
RUN sh get-docker.sh