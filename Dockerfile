# 指定你要基于谁（别人的镜像）
FROM xream/sub-store:latest

# 这里可以做一些修改，比如创建一个文件证明是你改的
RUN echo "This is modified by GitHub Actions" > /built-by-github.txt

# 其他配置...
