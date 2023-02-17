# Demo Docker 

repo này chưa một đoạn Dockerfile đơn giản cho buổi demo ở FUDN ngày 2023-02-18

src lấy từ bài viết gốc https://viblo.asia/p/docker-for-beginner-ByEZkp3ElQ0

## 1. cài docker theo hướng dẫn ở trang chủ 

https://docs.docker.com/engine/install/

## 2. Build Docker Image  

2.1. Windows 

```pwsh 
Get-Content Dockerfile | docker build - -t demo01:1.0

# hoặc đơn giản hơn 

docker build -t demo01:1.0 .

# trong đó cái dấu . là file Dockerfile ở folder ngữ cảnh dòng lệnh 
```

2.2. Linux (chắc MacOS cũng tương tự)

```
docker build - < Dockerfile -t demo01:1.0 
```

## 3. Run Docker Image 

```
docker run -p 3000:3000 demo01:1.0
```

## Quản lý container bằng dòng lệnh 

```
docker ps
docker exec -it my-container-id-here /bin/sh
```
