FROM  microsoft/dotnet:sdk

ENV DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1

# INSTALL DOCKER CE
RUN curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
