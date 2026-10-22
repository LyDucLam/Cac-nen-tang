# Sử dụng Nginx Alpine nhẹ (chỉ khoảng ~10-15MB)
FROM nginx:alpine

# Xóa các file mã nguồn mặc định của Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy trang web của bạn vào thư mục chứa web static của Nginx
COPY ./public /usr/share/nginx/html

# Mở cổng 80 cho web server
EXPOSE 80

# Chạy Nginx ở chế độ foreground
CMD ["nginx", "-g", "daemon off;"]