Container volume merupakan pengintegrasian volume yang telah dibuat dapat digunakan di dalam suatu container.
Keuntungan dari menggunakan volume adalah jika suatu container kita terhapus, maka data akan tetap aman di dalam suatu volume.

Contoh perintah penggunaan container volume:
1) docker volume create volumemongo (membuat sebuah volume yang bernama "volumemongo")
2) docker container create --name containermongo2 --mount "type=volume,source=volumemongo,destination=/data/db" --publish 27019:27017 --env MONGO_INITDB_ROOT_USERNAME=wafi --env MONGO_INITDB_ROOT_PASSWORD=wafi1234 mongo:latest

Perbedaannya dengan bind mount terletak di type = volume (yang sebelumnya type=bind) dan source = volumemongo yang sebelumnya telah membuat sebuah volume bernama "volumemongo" (pada bind mounts source=direktori localhost computer).

3) docker container start containermongo2 (menjalankan container containermongo2)
