Sampai saat ini, belum terdapat cara otomatis dalam melakukan backup data suatu volume. 
Namun, dalam melakukan backup data suatu volume dapat memanfaatkan container dalam melakukan backup data yang terdapat di dalam volume dengan bentuk archive seperti zip atau tar.gz

Tahapan dalam melakukan backup data suatu volume melalui suatu container:
1) Matikan terlebih dahulu container yang menggunakan volume yang ingin dilakukan backup datanya, agar tidak dapat merubah isi dari data volume saat proses backup data berlangsung.
2) Membuat sebuah container baru dengan dua mount,volume yang ingin datanya kita backup, dan bind mount folder dari sistem host (localhost penyimpanan kita).
3) Melakukan backup dengan menggunakan container dengan cara meng-archive isi dari suatu volume, lalu disimpan di bind mount folder localhost penyimpanan kita.
4) Isi file backup sekarang dengan yang ada di folder sistem host.
5) Delete container yang kita gunakan untuk melakukan backup.

Contoh perintah lengkapnya:
1) docker container stop containermongo2
1) mkdir backup-volume
1) pwd /home/ahmadwafii11/learning-wafi/docker/backup-volume
2) docker container create --name containernginx1backup --mount "type=bind,source=/home/ahmadwafii11/learning-wafi/docker/backup-volume,destination=/backup-volume" --mount "type=volume,source=volumemongo,destination=/data" nginx:latest
2) docker container start containernginx1backup
2) docker container exec -i -t containernginx1backup /bin/bash
3) ls -l
3) cd /data
3) cd /backup-volume
3,4) tar cvf /backup-volume/backup-volume.tar.gz /data
5) docker container stop containernginx1backup
5) docker container rm containernginx1backup
5) docker container start containermongo2

Menjalankan container secara langsung dapat digunakan dengan cara melakukan perintah run dan parameter --rm untuk melakukan otomatis remove container setelah perintahnya selesai berjalan.

Contoh perintah lengkapnya:
1) docker container stop volumemongo
2) docker container run --rm --name backupdataubuntu --mount "type=bind,source=/home/ahmadwafii11/learning-wafi/docker/backup-volume,destination=/backup-volume" --mount "type=volume,source=volumemongo,destination=/data" ubuntu:latest tar cvf /backup-volume/backup-volume-lagi.tar.gz /data

Kenapa menggunakan image ubuntu bukan nginx? karena dalam perintah tersebut membutuhkan image yang apabila selesai melakukan perintah, maka container akan secara otomatis terhapus. Salah satu image yang sesuai untuk digunakan adalah ubuntu. Kalau menggunakan nginx, walaupun perintah telah selesai akan terus berjalan.

perintah run digunakan untuk menjalankan langsung si containernya
perintah --rm digunakan untuk menghapus container secara otomatis apabila telah selesai melakukan apa yang diperintahkan (backup data volumemongo).
