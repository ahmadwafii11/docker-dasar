Bind mounts merupakan kemampuan melakukan mounting (sharing) file atau folder yang terdapat di sistem host container yang terdapat di docker.
Fitur bind mounts berguna untuk mengirim konfigurasi dari luar container, atau semisal menyimpan data yang dibuat di suatu aplikasi di dalam container ke dalam folder di sistem host.
Selain itu, fitur ini juga berguna untuk mengatasi permasalahan apabila container terhapus namun masih terdapat backup data dalam container tersebut di local data computer. Untuk menjalankan ulang container tersebut, cukup gunakan perintah yang sama seperti pada saat awal pembuatan.
Jika file atau folder yang dibuat tidak ada di dalam sistem host, maka secara otomatis akan dibuatkan oleh Docker.
Perintah mount dapat dilakukan dengan parameter berikut:
--mount

Parameter --mount memiliki beberapa aturan sebagai berikut:
- type = tipe mount, bind atau volume
- source = Lokasi file atau folder di sistem host
- destination = Lokasi file atau folder di container
- readonly = Agar saat sharing, tidak dapat diedit atau hanya mode readonly saja.

Contoh perintah lengkapnya:
docker container create --name namacontainer --mount "type=bind,source=folder, destination=folder,readonly" image:tag
docker container create --name containermongo1 --publish 27018:27017 --mount "type=bind,source=/home/ahmadwafii11/learning-wafi/docker/containermongo1,destination=/data/db,readonly" --env MONGO_INITDB_ROOT_USERNAME=wafi --env MONGO_INITDB_ROOT_PASSWORD=wafi1234 mongo:latest
