# use the base AWS amazonlinux 2 docker image
FROM public.ecr.aws/amazonlinux/amazonlinux:2

    # Install Node 14
RUN curl -fsSL https://rpm.nodesource.com/setup_14.x | bash && \
    yum install -y nodejs && \
    # Install Yarn
    npm install --global yarn && \
    # Update remaining packages
    yum update -y && yum upgrade -y && \
    # Clean Yum Cache
    yum clean all && \
    rm -rf /var/cache/yum

# -------------------
# fix vulnerabilities
# https://alas.aws.amazon.com/alas2.html
# -------------------

# ALAS2-2022-1801
RUN yum install openssl-devel -y

# ALAS2-2022-1802
RUN yum update python

# ALAS-2022-1805
RUN yum install vim -y
