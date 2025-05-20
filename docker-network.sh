Fitur docker network dapat digunakan untuk membuat jaringan (network) di dalam Docker yang dimana secara default saat membuat container di docker, akan saling terisolasi satu sama lain, sehingga kita memerlukan sebuah jaringan (network) untuk mengkoneksikan container satu dengan container lain di dalam satu network yang sama.
Jika beberapa container terdapat dalam satu network yang sama, maka secara otomatis container tersebut bisa saling berkomunikasi.
Saat ingin membuat suatu network dalam docker, kita perlu menentukan driver network yang ingin digunakan.
Dalam driver network, terdapat beberapa syarat yang perlu dipenuhi sebelum digunakan.
Adapun beberapa network driver sebagai berikut.

1) bridge = yakni driver yang digunakan untuk membuat network secara virtual yang memungkinkan container terkoneksi di dalam bridge network yang sama dan saling berkomunikasi.
2) host = yakni driver yang digunakan untuk membuat network yang sama dengan sistem host (local penyimpanan). Host hanya jalan di docker Linux, tidak dapat digunakan di OS seperti Mac ataupun Windows.
3) None = yakni driver yang digunakan untuk membuat network yang tidak bisa berkomunikasi.

Perintah untuk melihat network di Docker sebagai berikut.
docker network ls
Secara default, perintah diatas akan memunculkan output dari network bawaan dari docker, yakni bridge, host, dan none.

Perintah untuk membuat network baru di Docker sebagai berikut.
docker network create --driver namadriver namanetwork

Perintah untuk menghapus suatu network di Docker sebagai berikut.
docker network rm namanetwork
Catatan: Network tidak dapat dihapus jika telah digunakan oleh suatu container. Jika ingin menghapus, maka kita harus menghapus containernya terlebih dahulu yang terdapat di dalam Network.
