# 用dockerfile搭建基于ubuntu的lnmp环境镜像

## 一、下载
```
git clone https://github.com/turtleliangzi/lnmp.git
```

## 二、build

```
docker build -t 镜像名:版本号 .

```

## 三、运行

```
docker run -id -p 80:80 -v /var/www/html:/var/www/html 镜像名:版本号

```

## 四、添加文件

在本地/var/www/html目录中添加html或php文件，然后访问localhost/文件名即可

