set bg_color white
~bond #0
bond #0:0
bond #0:1
bond #0:2
bond #0:3
bond #0:4
bond #0:5
bond #0:6
bond #0:7
bond #0:8
bond #0:9
bond #0:10
bond #0:11
bond #0:12
bond #0:13
bond #0:14
bond #0:15
bond #0:16
bond #0:17
bond #0:18
bond #0:19
bond #0:20
bond #0:21
bond #0:22
bond #0:23
bond #0:24
bond #0:25
bond #0:26
bond #0:27
bond #0:28
bond #0:29
bond #0:30
bond #0:31
bond #0:32
bond #0:33
bond #0:34
bond #0:35
bond #0:36
bond #0:37
bond #0:38
bond #0:39
bond #0:40
bond #0:0.A,1.A
bond #0:1.A,2.A
bond #0:2.A,3.A
bond #0:3.A,4.A
bond #0:4.A,5.A
bond #0:5.A,6.A
bond #0:6.A,7.A
bond #0:7.A,8.A
bond #0:8.A,9.A
bond #0:9.A,10.A
bond #0:10.A,11.A
bond #0:11.A,12.A
bond #0:12.A,13.A
bond #0:13.A,14.A
bond #0:14.A,15.A
bond #0:15.A,16.A
bond #0:16.A,17.A
bond #0:17.A,18.A
bond #0:18.A,19.A
bond #0:19.A,20.A
bond #0:20.A,21.A
bond #0:21.A,22.A
bond #0:22.A,23.A
bond #0:23.A,24.A
bond #0:24.A,25.A
bond #0:25.A,26.A
bond #0:26.A,27.A
bond #0:27.A,28.A
bond #0:28.A,29.A
bond #0:29.A,30.A
bond #0:30.A,31.A
bond #0:31.A,32.A
bond #0:32.A,33.A
bond #0:33.A,34.A
bond #0:34.A,35.A
bond #0:35.A,36.A
bond #0:36.A,37.A
bond #0:37.A,38.A
bond #0:38.A,39.A
bond #0:39.A,40.A
color sandy brown #0:ALA
col cyan #0:ALA@O
col coral #0:ALA@S
col yellow #0:ALA@K
col cornflower blue #0:ALA@P
bondcolor sandy brown #0:ALA
color blue #0:GLY
col cyan #0:GLY@O
col coral #0:GLY@S
col yellow #0:GLY@K
col cornflower blue #0:GLY@P
bondcolor blue #0:GLY
color red #0:CYS
col cyan #0:CYS@O
col coral #0:CYS@S
col yellow #0:CYS@K
col cornflower blue #0:CYS@P
bondcolor red #0:CYS
color green #0:TYR
col cyan #0:TYR@O
col coral #0:TYR@S
col yellow #0:TYR@K
col cornflower blue #0:TYR@P
bondcolor green #0:TYR
color yellow #0:ARG
col cyan #0:ARG@O
col coral #0:ARG@S
col yellow #0:ARG@K
col cornflower blue #0:ARG@P
bondcolor yellow #0:ARG
color plum #0:PHE
col cyan #0:PHE@O
col coral #0:PHE@S
col yellow #0:PHE@K
col cornflower blue #0:PHE@P
bondcolor plum #0:PHE
color sandy brown #0:LYS
col cyan #0:LYS@O
col coral #0:LYS@S
col yellow #0:LYS@K
col cornflower blue #0:LYS@P
bondcolor sandy brown #0:LYS
color sandy brown #0:SER
col cyan #0:SER@O
col coral #0:SER@S
col yellow #0:SER@K
col cornflower blue #0:SER@P
bondcolor sandy brown #0:SER
color blue #0:PRO
col cyan #0:PRO@O
col coral #0:PRO@S
col yellow #0:PRO@K
col cornflower blue #0:PRO@P
bondcolor blue #0:PRO
color red #0:VAL
col cyan #0:VAL@O
col coral #0:VAL@S
col yellow #0:VAL@K
col cornflower blue #0:VAL@P
bondcolor red #0:VAL
color green #0:ASN
col cyan #0:ASN@O
col coral #0:ASN@S
col yellow #0:ASN@K
col cornflower blue #0:ASN@P
bondcolor green #0:ASN
color yellow #0:ASP
col cyan #0:ASP@O
col coral #0:ASP@S
col yellow #0:ASP@K
col cornflower blue #0:ASP@P
bondcolor yellow #0:ASP
aniso scale 0.75 smoothing 4
setattr m stickScale 0.6 #0
