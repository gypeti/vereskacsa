FROM mcr.microsoft.com/windows/servercore:1803

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]


RUN Install-PackageProvider -Name chocolatey -RequiredVersion 2.8.5.130 -Force; \
    Install-Package -Name microsoft-visual-cpp-build-tools -RequiredVersion 14.0.25420.1 -Force; \
    Install-Package -Name netfx-4.5.2-devpack -RequiredVersion 4.5.5165101 -Force; \
    Install-Package -Name vcredist2015 -RequiredVersion 14.0.24215.20170201 -Force;
    
RUN mkdir C:\\work
ADD build.bat C:\\work
WORKDIR C:\\work



