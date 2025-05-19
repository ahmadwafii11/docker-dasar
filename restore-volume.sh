Restore volume merupakan fitur untuk menyimpan file archive backup kita ke tempat yang lebih aman, seperti contohnya di cloud storage.
Ataupun, bisa juga kita menyimpan file archive backup data kita ke volume baru.

Tahapan dalam melakukan restore volume:
1) Buat volume baru untuk lokasi restore data file archive backup
2) Buat container baru dengan dua parameter --mount, volume baru untuk restore backup file archive, dan bind mount folder dari sistem host (local penyimpanan) yang menjadi tempat file archive backup.
3) Melakukan restore menggunakan container dengan cara mengekstrak isi file archive backup ke dalam volume
4) Mengisi file backup yang akan digunakan dalam melakukan restore
5) Menghapus (delete) container yang kita gunakan dalam melakukan restore
6) Volume baru yang berisikan data backup file archive siap digunakan oleh container baru

Perintah lengkapnya:
docker volume create restoremongobackup
docker container run --rm --name backupdataubuntu --mount "type=bind,source=/home/ahmadwafii11/learning-wafi/docker/backup-volume,destination=/backup-volume" --mount "type=volume,source=restoremongobackup,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup-volume/backup-volume-lagi.tar.gz --strip 1"

perintah run digunakan untuk menjalankan langsung si containernya
perintah --rm digunakan untuk menghapus container secara otomatis apabila telah selesai melakukan apa yang diperintahkan (backup data volumemongo).

Perintah cek di robomongo:
docker container create --name containermongo3restore --mount "type=volume,source=restoremongobackup,destination=/data/db" --publish 27020:27017 --env MONGO_INITDB_ROOT_USERNAME=wafi --env MONGO_INITDB_ROOT_PASSWORD=wafi1234 mongo:latest
docker container start containermongo3restore
