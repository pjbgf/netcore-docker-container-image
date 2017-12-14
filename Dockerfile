FROM microsoft/dotnet-nightly:2.1-sdk

ENV DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1

# INSTALL DOCKER CE
RUN curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh

# INSTALL AZURE-CLI-PYTHON
RUN curl -L https://aka.ms/InstallAzureCli | bash
