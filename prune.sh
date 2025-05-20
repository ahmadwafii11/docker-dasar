Fitur prune digunakan untuk menghapus atau membersihkan beberapa hal yang sudah tidak digunakan lagi di dalam Docker tersebut. 
Semisal, sebuah container yang telah di stop, image yang sudah tidak digunakan lagi oleh container, atau volume yang tidak digunakan lagi oleh container.
Hampir semua perintah di Docker mendukung fitur prune.
Singkatnya, fitur prune dapat digunakan ketika ingin menghapus secara keseluruhan suatu image, volume, container dan network yang tidak sedang digunakan

Perintah untuk melakukan fitur prune sebagai berikut.
- Untuk menghapus semua container yang telah di stop : docker container prune
- Untuk menghapus semua image yang tidak digunakan oleh container : docker image prune
- Untuk menghapus semua network yang tidak digunakan oleh container : docker network prune
- Untuk menghapus semua volume yang tidak digunakan oleh container : docker volume prune
- Untuk menghapus semua container, network, dan image yang tidak digunakan (dengan satu perintah) : docker system prune


