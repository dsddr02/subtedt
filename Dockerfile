# 指定基础镜像（会自动选择适合平台的版本）
FROM --platform=$BUILDPLATFORM xream/sub-store:latest

# 这里可以做一些修改，比如创建一个文件证明是你改的
RUN echo "This is modified by GitHub Actions" > /built-by-github.txt

# 如果需要安装特定架构的包，可以使用 TARGETARCH 变量
# RUN if [ "$TARGETARCH" = "amd64" ]; then \
#       echo "AMD64 specific setup"; \
#     elif [ "$TARGETARCH" = "arm64" ]; then \
#       echo "ARM64 specific setup"; \
#     fi
