FROM microsoft/dotnet:2-sdk

ENV DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1

# INSTALL DOCKER CE
RUN curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh

# AZURE CLI DEPENDENCIES
RUN apt-get update && apt-get install python-pip -y && pip install scandir

# INSTALL AZURE-CLI-PYTHON
RUN curl -L https://aka.ms/InstallAzureCli | bash
