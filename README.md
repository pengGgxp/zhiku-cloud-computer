# Zhiku Cloud Computer

Standalone public image build repository. No application source, credentials or
user files belong here. Intended for Alibaba Agent Sandbox generation 2 in
cn-hangzhou; publication does not certify successful cloud startup.

## Scope and acceptance
Publish a linux/amd64 Docker schema2 image to GHCR and verify installed tools.
Do not change production templates or create paid cloud instances in this workflow.

Based on the currently deployed Alibaba image
`fc-e2b-registry.cn-hangzhou.cr.aliyuncs.com/runtime-v2/all-in-one:v0.1.5`.
Preserves its inherited entrypoint, command, existing user and sandbox runtime.
Adds Pillow, python-docx, pypdf, openpyxl, ReportLab, LibreOffice Writer, Poppler
and Chinese fonts; uses the base image's Python and Node.js rather than replacing
them. Build verification checks Python compatibility and inherited startup settings.

This revision only changes the image. The previous template build timeout is
not diagnosed here, and publishing does not replace the online template.

Images: ghcr.io/pengggxp/zhiku-cloud-computer, immutable sha tags and latest.
Use the verified digest for templates. Registry authentication for Alibaba must
be provided separately using a read:packages classic PAT, never committed here.

Per Alibaba support, supported generation-2 disk sizes are 512, 10240 and
15360 MB, including the unpacked image. Cloud startup and document conversion
acceptance are separate from image publication.
