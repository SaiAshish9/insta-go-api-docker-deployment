## Configuration Step's :

```
go run main.go
curl http://localhost:9000
ngrok http 9000
```

## Postgres

```
\l \d \du \c \q

sudo -u postgres psql

sudo -u postgres createdb instagram

\c instagram

create table status(
    ID serial primary key,
    NAME text not null,
    URL text not null
);

\d status

grant all privileges on database instagram to saiashish;
```

## Connect To Postgres

```
host : localhost
port : 5432
username : saiashish
password: saiashish
database: instagram
```

## Insert first row via terminal or add corresponding rows via vstudio

```
insert into status(name,url) values('Sarthak','https://cdn.pixabay.com/photo/2016/08/24/23/08/cristiano-ronaldo-1618341__340.jpg');
```

## Select \* command shortcut

```
TABLE status;
```

```
SELECT current_database();
\d
\d status
TABLE status;
```

```
select * from status order by id desc limit 3;
\q
```

## Posts table

```
create table posts(
    ID serial primary key,
    NAME text not null,
    URL text not null,
    PROFILE_URL text not null,
    TITLE text not null,
    DESCRIPTION text not null,
    COMMENTS_COUNT text not null,
    TIME text not null
);

```

## ALTER TABLE COMMAND

```
sudo -u postgres psql
\c instagram
\d status
alter table status add msg text ;
```

## MEDIA

```
instagram=# create table media(
ID serial primary key,
url text,
is_video int,
is_gallery int DEFAULT 0);

alter table media alter column is_video set  default 0 ;

```

## Suggestions

```
create table suggestions(
instagram(# id serial primary key,
instagram(# image text,
instagram(# title text,
instagram(# desc1 text,
instagram(# desc2 text);

```

## Status

```
instagram=# alter table status add statusImg text;
ALTER TABLE
instagram=# alter table status add statusVideo text;
ALTER TABLE
instagram=# alter table status add statusMsg text;
ALTER TABLE
instagram=# alter table status add time text;
ALTER TABLE
instagram=# alter table status add colors text;
ALTER TABLE


```

## Docker Deployment

```
 sudo docker  build -t  insta-api  .
  docker ps
  sudo docker ps
  sudo docker images
  sudo docker rmi 7e7
  sudo docker rmi 7e7 23e 320 f84 d9e 250 135
   sudo docker rmi 7e7 23e 320 f84 d9e 250 135 -f
   sudo docker images
   sudo docker rmi 7e7
   sudo docker images
   docker run -d -p 80:80 golang-first
   sudo docker run -d -p 80:80 insta-api
   sudo docker ps
  sudo docker ps -a
   sudo docker rm 9ec ce7 b7a d2b 6d7 ccc
   sudo docker ps -a
   sudo docker run -d -p 80:80 insta-api
   sudo docker ps -a
   sudo docker rm a07
   sudo docker logs
   sudo docker logs c3d
  history
  go get -u "github.com/saiashish9/insta-go-api-docker-deployment"

```
