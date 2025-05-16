Port Forwading yang terdapat dalam docker container berfungsi dengan tujuan akan melakukan ekspos terhadap port dalam suatu container di luar melalui sistem Hostnya.
docker container create --name namacontainer --publish posthost:portcontainer image:tag
- --publish digunakan untuk mempublish port forwarding yang terdapat di dalam docker containernya
- publish juga dapat disingkat dengan -p
