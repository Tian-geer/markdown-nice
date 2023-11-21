FROM nginx:1.21.5
MAINTAINER tian_yi1994@163.com

# 解决中文文件名乱码问题
ENV LANG C.UTF-8
# 设置东八区
ENV TZ Asia/Shanghai
# 复制需要的文件
COPY md-nice /usr/share/nginx/md-nice
COPY md-nice.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080
