yum install -y openssl httpd-tools
openssl req -newkey rsa:4096 -nodes -sha256 -keyout auth/domain.key -x509 -days 365 -out auth/domain.crt
htpasswd -Bn ruser > auth/nginx.htpasswd
mkdir -p {registry-data,postgresql,gitlab-data,gitlab-logs,gitlab-config,gitlab-runner-config}
touch gitlab-runner-config/docker-runner.toml