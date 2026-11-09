# Zhiku Cloud Computer

Standalone public image build repository. No application source, credentials or
user files belong here. Intended for Alibaba Agent Sandbox generation 2 in
cn-hangzhou; publication does not certify successful cloud startup.

## Scope and acceptance
Publish a linux/amd64 Docker schema2 image to GHCR and verify installed tools.
Do not change production templates or create paid cloud instances in this workflow.

Includes Python 3.12, Node.js, Pillow, python-docx, pypdf, openpyxl, ReportLab,
LibreOffice Writer, Poppler, Chinese fonts and required init/SSH/FUSE packages.

Images: ghcr.io/pengggxp/zhiku-cloud-computer, immutable sha tags and latest.
Use the verified digest for templates. Registry authentication for Alibaba must
be provided separately using a read:packages classic PAT, never committed here.

Per Alibaba support, supported generation-2 disk sizes are 512, 10240 and
15360 MB, including the unpacked image. Cloud startup and document conversion
acceptance are separate from image publication.
