FROM  microsoft/dotnet:sdk

# INSTALL DOCKER CE
RUN curl -fsSL get.docker.com -o get-docker.sh
RUN sh get-docker.sh
