# Use a base image with Node.js and Python
FROM node:20-bullseye

# Set the working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    curl \
    openjdk-17-jdk \
    npm \
    wget \
    tar

# Download and extract qb64 tarball manually
RUN wget https://github.com/QB64Team/qb64/releases/download/v2.0.2/qb64_2021-11-07-02-59-19_4d85302_lnx.tar.gz \
    && tar -xzf qb64_2021-11-07-02-59-19_4d85302_lnx.tar.gz \
    && rm qb64_2021-11-07-02-59-19_4d85302_lnx.tar.gz

# Copy your application files into the container
COPY . .

# Install nvm and Node.js LTS version
RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash \
    && . ~/.nvm/nvm.sh \
    && nvm install --lts \
    && npm install -g npm@latest

# Install npm packages (from installer.py)
RUN npm install url https https net crypto axios request header-generator

# Install Python dependencies (if any are required, add them here)
RUN pip3 install colorama httpx

# Ensure Node.js version 20
RUN node -v

# Default command to keep the container running or for executing the script
CMD ["bash"]
