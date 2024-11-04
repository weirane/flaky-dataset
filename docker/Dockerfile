FROM ubuntu:24.04
ENV TZ="America/New_York"
COPY ./files /files
RUN /files/install.sh
ENTRYPOINT ["/bin/bash"]
