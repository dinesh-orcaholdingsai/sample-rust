FROM gitpod/workspace-full

USER gitpod

# Install AWS CLI
RUN sudo apt-get update && \
    sudo apt-get install -y unzip && \
    curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    sudo ./aws/install && \
    rm awscliv2.zip
