Container resource limit berguna untuk membatasi penggunaan resource seperti CPU atau Memory terhadap suatu container. Hal ini berguna untuk mengatasi problem dari suatu container yang dianggap penggunaan resource nya besar daripada container lain dan akan mempengaruhi kinerja dari container lain tersebut.
--memory angka memori dan ukurannya semisal contoh penerapan perintahnya:
--memory 100M
--cpus angka cpu, contoh penerapan perintahnya:
--cpus 1.5
Perintah lengkapnya:
docker container create --name containernginxsmall --publish 8081:80 --memory 150m --cpus 0.3 nginx:latest
