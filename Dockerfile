# LABEL version="3.0"
ARG IMAGE_TAG=20.04
FROM ubuntu:$IMAGE_TAG
WORKDIR /root
RUN echo 'we are running some # of cool things'
#COPY pip_requirements.txt /home/pip_requirements.txt
# RUN pip install -r /home/pip_requirements.txt
COPY require_softwares.sh /home/require_softwares.sh
COPY startup.sh .
RUN bash /home/require_softwares.sh
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV HOME=/home/ubuntu
ENV SHELL=/bin/bash
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
ENTRYPOINT /root/startup.sh && bash
CMD ["bash"]
