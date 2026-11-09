FROM fc-e2b-registry.cn-hangzhou.cr.aliyuncs.com/runtime-v2/all-in-one:v0.1.5
USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    bash ca-certificates curl git file findutils coreutils build-essential \
    libreoffice-writer poppler-utils fonts-noto-cjk fontconfig \
    && rm -rf /var/lib/apt/lists/*
RUN PIP_BREAK_SYSTEM_PACKAGES=1 python3 -m pip install --no-cache-dir \
    pillow==12.0.0 python-docx==1.1.2 pypdf==5.1.0 \
    openpyxl==3.1.5 reportlab==4.4.5 \
    && id user \
    && mkdir -p /skills /home/user/workspace /home/user/.cloud-computer \
    && chown user:user /home/user/workspace /home/user/.cloud-computer \
    && fc-cache -f
ENV PYTHONUNBUFFERED=1 PIP_DISABLE_PIP_VERSION_CHECK=1 LANG=C.UTF-8
WORKDIR /home/user/workspace
