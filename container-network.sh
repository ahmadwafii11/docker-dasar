Setelah berhasil membuat Network, kita dapat menambahkan container ke dalam Network.
Container yang terdapat di dalam Network yang sama, dapat saling berkomunikasi (tergantung jenis driver network yang dibuat).
Container dapat mengakses container lain dengan cara menyebutkan hostname dari containernya, yakni nama containernya.

Perintah membuat container bersamaan dengan Network nya, sebagai berikut.
docker container create --name namacontainer --network namanetwork image:tag

Contoh implementasi perintah lengkapnya:
1) docker network create --driver bridge networkmongo (membuat network baru)
2) docker container create --name containermongonetwork --network networkmongo --env MONGO_INITDB_ROOT_USERNAME=wafi --env MONGO_INITDB_ROOT_PASSWORD=wafi1234 mongo:latest (membuat container baru dengan network yang telah dibuat sebelumnya)
3) docker image pull mongo-express:latest (membuat image baru yang bernama "mongo-express" untuk megkases mongo tanpa melalui publish hostnya).
4) docker container create --name containermongoexpressnetwork --network networkmongo --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://wafi:wafi1234@containermongonetwork:27017/" --env ME_CONFIG_BASICAUTH_USERNAME=wafi --env ME_CONFIG_BASICAUTH_PASSWORD=wafi1234 mongo-express:latest 
(membuat network baru yang bernama "containermongoexpressnetwork" dengan image "mongo-express" untuk mengkomunikasikan dengan container yang telah dibuat sebelumnya yakni container "containermongonetwork").
Catatan: --env config basicauth perlu digunakan karena secara default untuk membuka localhost:8081 memerlukan username dan password (versi mongodb-express sekarang).
5) docker container start containermongonetwork (menjalankan container pertama yakni container "containermongonetwork").
6) docker container start containermongoexpressnetwork (menjalankan container kedua yakni container "containermongoexpressnetwork").
7) buka localhost:8081 (membuka localhost untuk mengakses container dari "containermongonetwork" melalui satu network dengan container "containermongoexpressnetwork").

Perintah menghapus container dari dalam Networknya sebagai berikut.
docker network disconnect namanetwork namacontainer

Contoh implementasinya:
docker network disconnect networkmongo containermongonetwork

Perintah membuat container dari dalam Networknya sebagai berikut.
docker network connect namanetwork namacontainer
Catatan: perintah ini juga bisa dilakukan untuk membuat ulang sebuah container yang telah dibuat sebelumnya namun terhapus di dalam network (seperti perintah menghapus container dari dalam Networknya).

