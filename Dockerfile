# sử dụng image ruby version 2.7 từ docker repository 
# khi cài docker thì sẽ có repository mặc định là hub.docker.com 
# khi vào công ty có thể sẽ sử dụng repository khác, 
# tìm hiểu thêm với keyword "docke repository"

FROM ruby:2.7 

# set cái folder để chứa dữ liệu mà chúng sẽ sẽ tương tác "bên trong" container
# là /app 
# cái này cần tìm hiểu thêm về "cây thư mục trong linux"

WORKDIR /app

# vì cái image ruby:2.7 của chúng ta được build trên nền Debian nên mình sẽ dùng
# apt-get để cài thêm các package khác vào 
RUN apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y build-essential libssl-dev libreadline-dev libyaml-dev \
      default-libmysqlclient-dev gnupg2 nodejs

# sau đó cài rails (một framework của ngôn ngữ Ruby) 
RUN gem install rails --no-document; rails new .

# set biến môi trường cho RAILS
ENV RAILS_ENV="development"

# "expose" port 3000 với host 
EXPOSE 3000

# truyền lệnh để khởi động rails app trong container 
CMD ["bundle", "exec", "rails", "server"]
