Fitur inspect digunakan untuk melihat setiap detail dari suatu image, ataupun suatu network, volume dan container yang telah kita buat sebelumnya.
Semisal, kita ingin melihat detail dari image. Perintah apa saja yang telah digunakan oleh image tersebut? Environment variable apa saja yang telah digunakan? Atau port apa saja yang digunakan?
Lalu, pada container. Kita semisal ingin melihat volume apa saja yang digunakan dalam container tersebut? Environment variable apa saja yang digunakan? Port forwarding apa saja yang digunakan? Dan lain-lain.
Dengan fitur inspect ini, kita dapat melihat setiap detail dari bagian-bagian docker tersebut.
Fitur inspect ini dapat digunakan pada :
- image
- container
- volume
- network

Perintah untuk menggunakan inspect:
- detail image: docker image inspect namaimage
- detail container : docker container inspect namacontainer
- detail volume : docker volume inspect namavolume
- detail network : docker network inspect namanetwork
