1. Daftar tugas dan UI responsif
halaman daftar tugas itu dibuat untuk menampilkan judul tugas, matakuliah, status penyelesaian, dan jumlah tugas. pada halaman ini berhasil di tampilkan. awal awal menjalankan flutternya yg tampil ialah kosongan. ketika dilakukan tambahan tugas itu baru terisi. Karna saya memakai hp jadi tampilan 360px sama 700px nya itu harus di custome dan hasilnya ialah bisa tidak ada tampilan yang terpotong. nah ketika saya menyambungkan menggunakan hp ternyata ada hal hal yang perlu diubah yakni gradle saya perlu melakukan penyesuaian gradle untuk mengatadi masalah kompatibilitas antara graddle wrapper, android gradle plugin, kotlin gradle plugin, dan java development kit.
2. Form, Validasi, dan Navigasi
pada form tambah tugas saya bisa menambahkan tugas ketika nama tugas dan matakuliah di isi, tetapi ketika nama tugas dan matakuliah hanya di isi dengan spasi yang terjadi ialah tidak dapat menambahkan tugas
3. State dan Interaksi Daftar
pada bagian ini saya bisa menampilkan detail tugasnya dan mengubah statusnya tetapi ketika saya telah menambahkan tugas itu dan saya kembali dia tidak bisa menyimpan nya tampilannya akan kembali ke awal yaitu tidak ada daftar tugas 
4. Operasi asynchronous dan state UI
nahhh pada proses ini ketika saya mengklik simulasikan eror saat memuat itu bisa muncul 'simulasi data tersimpan yang rusak' dan logo 'coba lagi' nah pada posisi ini juga tugas yang sudah saya tambahkan itu tidak bisa tersimpan dia akan kembali ke halaman awal tidak ada daftar tugas itulo...
5. Penyimpanan lokal dan verifikasi
nah pada proses ini saya berhasil mengubah TODO 2a yakni yang sharedPreferences dalam bentuk JSON tapi di waktu ini saya bingung apakah intruksinya hanya 2A saja atau dengan 2B dan 2C yang dikerjakan jadi.. saya hanya mengisi TODO 2A menjadi SharedPreferences untuk 2B dan 2C tetap pakai _memory. dengan ini ketika saya flutter analyze muncul eror tentang _memory...
