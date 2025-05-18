Docker volume mirip seperti dengan fitur bind mounts, yang dimana kita dapat membuat, melihat daftar, dan menghapus volume.
Docker volume dapat dianggap seperti storage yang digunakan untuk menyimpan sebuah data dari berbagai container.
Perbedaannya dengan fitur bind mounts adalah pada fitur bind mounts data container disimpan melalui sistem host (localhost, port, dll). 
Sedangkan pada docker volume, data container dimanage langsung oleh Docker.
Saat membuat sebuah container, secara default semua data container akan disimpan di dalam docker volume.

Untuk perintah melihat daftar docker volume sebagai berikut:
docker volume ls

Untuk perintah membuat docker volume sebagai berikut:
docker volume create namavolume

Untuk perintah menghapus docker volume sebagai berikut:
docker volume rm namavolume
