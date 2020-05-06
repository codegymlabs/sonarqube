# sonarqube

dockerized sonarqube server

## Usage

Trên host phải có cài đặt sẵn docker executable và docker-compose executable, mở sẵn một `$PORT` ở firewall.

Clone repository này về, tạo file `.env` với thông số `PORT` là port sẽ dành cho sonarqube server, trong ví dụ dưới đây là 80:

```bash
git clone https://github.com/codegymlabs/sonarqube
cd sonarqube
echo 'PORT=80' > .env
```
## Chạy service:

```bash
docker-compose up -d
```

## Xem logs:

```
docker-compose logs
```
## Backup:

Backup các thư mục trong `/srv/docker/sonarqube/`
