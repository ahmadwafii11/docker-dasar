docker container ls -a <=====> melihat list docker container secara keseluruhan yang telah dibuat melalui docker image
docker container create --name contohcontainer redis:latest <==========> membuat docker container melalui suatu docker image yang telah diinstall sebelumnya
docker container ls <===========> melihat list docker container yang statusnya berjalan (running)
docker container start containerId/namacontainer <===============> menjalankan docker container yang telah dibuat sebelumnya melalui suatu docker image
docker container stop containerId/namacontainer <================> menghentikan docker container yang telah dijalankan sebelumnya
docker container rm containerId/namacontainer <=================> menghapus docker container yang sudah tidak dibutuhkan lagi
docker container logs containerId/namacontainer <=================> melihat log dalam docker container yang telah dibuat. hal ini dilakukan untuk melihat apabila terjadi error yang terdapat di dalam suatu container tersebut
docker container logs -f containerId/namacontainer <===============> melihat log dalam docker container secara real time.
docker container exec -i -t containerId/namacontainer /bin/bash <===============> masuk ke dalam suatu container yang berguna untuk mengeksekusi suatu program di dalam container dengan bantuan fitur Container Exec.
-i adalah argumen interaktif yang berfungsi untuk tetap menjaga input tetap aktif
-t adalah argumen untuk alokasi pseudo-TTY (terminal akses)
-/bin/bash adalah contoh kode program yang terdapat didalam suatu container
