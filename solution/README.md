
bash-3.2$ date
```Wed 10 Jul 2024 18:54:58 BST```
bash-3.2$ docker login
```Authenticating with existing credentials...
Login Succeeded```
bash-3.2$ docker pull prom/prometheus:v2.45.2
v2.45.2: Pulling from prom/prometheus
Digest: sha256:8cf63a779c484564428c8ab5aa61899f41b72e92232d930b2b001661d978bed8
Status: Image is up to date for prom/prometheus:v2.45.2
docker.io/prom/prometheus:v2.45.2

What's next:
    View a summary of image vulnerabilities and recommendations → docker scout quickview prom/prometheus:v2.45.2
bash-3.2$ docker images
REPOSITORY             TAG       IMAGE ID       CREATED        SIZE
satsarode/demoserver   1.0       a0d0b3482829   4 hours ago    298MB
satsarode/demoserver   latest    a0d0b3482829   4 hours ago    298MB
prom/prometheus        v2.45.2   8cf63a779c48   6 months ago   325MB
bash-3.2$ cd demoserver/
bash-3.2$ ls -l
total 16608
-rwxr-xr-x@ 1 sarode  staff      100 10 Jul 14:07 Dockerfile
-rwxr-xr-x@ 1 sarode  staff  8499200 10 Jul 14:07 demoserver
bash-3.2$ cat Dockerfile 
FROM almalinux:9.3-20231124
WORKDIR /demoserver
COPY . .
EXPOSE 9300
CMD ["/demoserver/demoserver"]
bash-3.2$ docker build -t satsarode/demoserver:1.0 .
[+] Building 1.0s (9/9) FINISHED                                                                                                                                                                                                                                                                         docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                                                                                                                                                                                                                     0.0s
 => => transferring dockerfile: 358B                                                                                                                                                                                                                                                                                     0.0s
 => [internal] load metadata for docker.io/library/almalinux:9.3-20231124                                                                                                                                                                                                                                                0.9s
 => [auth] library/almalinux:pull token for registry-1.docker.io                                                                                                                                                                                                                                                         0.0s
 => [internal] load .dockerignore                                                                                                                                                                                                                                                                                        0.0s
 => => transferring context: 2B                                                                                                                                                                                                                                                                                          0.0s
 => [1/3] FROM docker.io/library/almalinux:9.3-20231124@sha256:d7f8aa1c5ff918565fa1114d16e27b03fe10944a422e2943a66f6f4a275fa22c                                                                                                                                                                                          0.0s
 => => resolve docker.io/library/almalinux:9.3-20231124@sha256:d7f8aa1c5ff918565fa1114d16e27b03fe10944a422e2943a66f6f4a275fa22c                                                                                                                                                                                          0.0s
 => [internal] load build context                                                                                                                                                                                                                                                                                        0.0s
 => => transferring context: 505B                                                                                                                                                                                                                                                                                        0.0s
 => CACHED [2/3] WORKDIR /demoserver                                                                                                                                                                                                                                                                                     0.0s
 => CACHED [3/3] COPY . .                                                                                                                                                                                                                                                                                                0.0s
 => exporting to image                                                                                                                                                                                                                                                                                                   0.0s
 => => exporting layers                                                                                                                                                                                                                                                                                                  0.0s
 => => exporting manifest sha256:6ffbd23884a559abc12d1207519d27d1da3eaab15aa2a707a95de36fa994a796                                                                                                                                                                                                                        0.0s
 => => exporting config sha256:6d0814df79378e546b8ac92e4bfda5048b2574a5a81f279a94558c89fad93dea                                                                                                                                                                                                                          0.0s
 => => exporting attestation manifest sha256:6b02c66db490626cda8dcb8a8b25ef707ff962551c98ec154ab52e57696bc0d3                                                                                                                                                                                                            0.0s
 => => exporting manifest list sha256:83b6ac89cb356199264f27d99179dc5ca1a8fcc493ca986142146aedf6e555bb                                                                                                                                                                                                                   0.0s
 => => naming to docker.io/satsarode/demoserver:1.0                                                                                                                                                                                                                                                                      0.0s
 => => unpacking to docker.io/satsarode/demoserver:1.0                                                                                                                                                                                                                                                                   0.0s

View build details: docker-desktop://dashboard/build/desktop-linux/desktop-linux/fk4y2zlyoqvbt3pmowamtia5l

What's next:
    View a summary of image vulnerabilities and recommendations → docker scout quickview 
bash-3.2$ docker tag satsarode/demoserver:1.0 satsarode/demoserver:latest
bash-3.2$ docker images
REPOSITORY             TAG       IMAGE ID       CREATED        SIZE
satsarode/demoserver   1.0       83b6ac89cb35   4 hours ago    298MB
satsarode/demoserver   latest    83b6ac89cb35   4 hours ago    298MB
<none>                 <none>    a0d0b3482829   4 hours ago    298MB
prom/prometheus        v2.45.2   8cf63a779c48   6 months ago   325MB
bash-3.2$ docker push satsarode/demoserver:1.0
The push refers to repository [docker.io/satsarode/demoserver]
4870dc0ed758: Layer already exists 
aaa095746eb7: Pushed 
0e2fd1d058ef: Layer already exists 
c1500036e99b: Layer already exists 
1.0: digest: sha256:83b6ac89cb356199264f27d99179dc5ca1a8fcc493ca986142146aedf6e555bb size: 855
bash-3.2$ docker images
REPOSITORY             TAG       IMAGE ID       CREATED        SIZE
<none>                 <none>    a0d0b3482829   4 hours ago    298MB
satsarode/demoserver   1.0       83b6ac89cb35   4 hours ago    298MB
satsarode/demoserver   latest    83b6ac89cb35   4 hours ago    298MB
prom/prometheus        v2.45.2   8cf63a779c48   6 months ago   325MB
bash-3.2$ pwd
/Users/sarode/Documents/csvserver/demoserver
bash-3.2$ cd ..
bash-3.2$ touch csvserver/inputdata
bash-3.2$ ls -l
total 24
-rw-r--r--@ 1 sarode  staff  6987 10 Jul 14:07 README.md
drwxr-xr-x@ 4 sarode  staff   128 10 Jul 14:07 demoserver
-rw-r--r--  1 sarode  staff    49 10 Jul 18:05 inputdata
drwxr-xr-x@ 7 sarode  staff   224 10 Jul 18:47 solution
bash-3.2$ docker run -d --name demoserver1 -v /Users/sarode/Documents/csvserver/solution:/csvserver satsarode/demoserver:1.0 
6c9c56d76a0190525103351a456f5b6975f8c5f1fd03d55836800a91140ca642
bash-3.2$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
bash-3.2$ cp /Users/sarode/Documents/csvserver/solution/inputFile /Users/sarode/Documents/csvserver/solution/inputdata
bash-3.2$ docker run -d --name demoserver1 -v /Users/sarode/Documents/csvserver/solution:/csvserver satsarode/demoserver:1.0 
8b5cb941a550385ea05b1dbab69d45e399bd9c55953be56173b60494bc844eb9
bash-3.2$ docker ps
CONTAINER ID   IMAGE                      COMMAND                  CREATED         STATUS         PORTS      NAMES
8b5cb941a550   satsarode/demoserver:1.0   "/demoserver/demoser…"   3 seconds ago   Up 3 seconds   9300/tcp   demoserver1
bash-3.2$ docker stop demoserver1
demoserver1
bash-3.2$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
bash-3.2$ docker run -d --name demoserver1 -p 9300:9393 -e CSVSERVER_BORDER=Orange -v /Users/sarode/Documents/csvserver/solution:/csvserver satsarode/demoserver:1.0 
docker: Error response from daemon: Conflict. The container name "/demoserver1" is already in use by container "8b5cb941a550385ea05b1dbab69d45e399bd9c55953be56173b60494bc844eb9". You have to remove (or rename) that container to be able to reuse that name.
See 'docker run --help'.
bash-3.2$ docker run -d --name demoserver1 -p 9300:9393 -e CSVSERVER_BORDER=Orange -v /Users/sarode/Documents/csvserver/solution:/csvserver satsarode/demoserver:1.0 
e14ae66f4e2bb4ce1a69cf444ead6d02a3e810b07e6308b762983006d7bef5a7
bash-3.2$ docker ps
CONTAINER ID   IMAGE                      COMMAND                  CREATED         STATUS         PORTS                              NAMES
e14ae66f4e2b   satsarode/demoserver:1.0   "/demoserver/demoser…"   3 seconds ago   Up 2 seconds   9300/tcp, 0.0.0.0:9300->9393/tcp   demoserver1
bash-3.2$ 
