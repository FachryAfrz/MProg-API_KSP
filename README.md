# REST API Koperasi Simpan Pinjam - CodeIgniter 4

API ini bertujuan untuk memenuhi tugas UAS Semester 4 pada mata kuliah Mobile Programming di Universitas Bina Sarana Informatika.

## Method & Fitur-fitur

- Akun

  - Daftar Akun

    `POST` - `http://(IPv4)/MProg-API_KSP/public/registrasi`

  - Login

    `POST` - `http://(IPv4)/MProg-API_KSP/public/login`

- Simpan

  - Menambah Simpanan

    `POST` - `http://(IPv4)/MProg-API_KSP/public/simpan`

  - Menampilkan Simpanan

    `GET` - `http://(IPv4)/MProg-API_KSP/public/simpan`

  - Total Simpanan

    `GET` - `http://(IPv4)/MProg-API_KSP/public/total_simpanan`

  - Detail Simpanan

    `GET` - `http://(IPv4)/MProg-API_KSP/public/simpan/(id)`

  - Tarik Simpanan

    `PUT` - `http://(IPv4)/MProg-API_KSP/public/simpan/(id)`

  - Tarik Seluruh Nominal Simpanan

    `DELETE` - `http://(IPv4)/MProg-API_KSP/public/simpan/(id)`

- Pinjam

  - Menambah Pinjaman

    `POST` - `http://(IPv4)/MProg-API_KSP/public/pinjam`

  - Menampilkan Pinjaman

    `GET` - `http://(IPv4)/MProg-API_KSP/public/pinjam`

  - Total Pinjaman

    `GET` - `http://(IPv4)/MProg-API_KSP/public/total_pinjaman`

  - Detail Pinjaman

    `GET` - `http://(IPv4)/MProg-API_KSP/public/pinjam/(id)`

  - Mengangsur Pinjaman

    `PUT` - `http://(IPv4)/MProg-API_KSP/public/pinjam/(id)`

- Informasi Selisih

  `GET` - `http://(IPv4)/MProg-API_KSP/public/selisih`

- Informasi Transaksi

  `GET` - `http://(IPv4)/MProg-API_KSP/public/transaksi`

> Ya gitu aja udah 😴.
