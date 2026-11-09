FROM python:3.12.12-bookworm
RUN apt-get update && apt-get install -y --no-install-recommends \
    bash ca-certificates curl git file findutils coreutils build-essential \
    nodejs npm libreoffice-writer poppler-utils fonts-noto-cjk \
    systemd systemd-sysv openssh-server sudo chrony fuse3 iptables \
    && rm -rf /var/lib/apt/lists/*
RUN python -m pip install --no-cache-dir \
    pillow==12.0.0 python-docx==1.1.2 pypdf==5.1.0 \
    openpyxl==3.1.5 reportlab==4.4.5 \
    && useradd --create-home --uid 1000 --shell /bin/bash user \
    && mkdir -p /skills /home/user/workspace /home/user/.cloud-computer \
    && chown -R user:user /home/user
ENV PYTHONUNBUFFERED=1 PIP_DISABLE_PIP_VERSION_CHECK=1 XDG_CACHE_HOME=/home/user/.cache LANG=C.UTF-8
WORKDIR /home/user/workspace
STOPSIGNAL SIGRTMIN+3
CMD ["/sbin/init"]
