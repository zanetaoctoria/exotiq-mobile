# Dokumentasi Proyek Flutter

## 1. Stateless Widget vs Stateful Widget
- **Stateless Widget** adalah widget yang tampilannya tetap dan tidak berubah karena tidak memiliki state yang bisa berubah. 
- **Stateful Widget** memiliki state internal yang bisa berubah, memungkinkan pembaruan tampilan saat ada perubahan data.  
**Perbedaan utama**: Stateful Widget dapat merespons perubahan dan memperbarui UI, sedangkan Stateless Widget tidak bisa.

## 2. Widget yang Digunakan
Berikut adalah widget yang saya gunakan dalam proyek ini beserta fungsinya masing-masing:

- **Scaffold**: Menyediakan struktur dasar aplikasi dengan AppBar dan body.
- **AppBar**: Menampilkan bar di bagian atas untuk judul.
- **Padding**: Memberikan jarak di sekitar widget anaknya.
- **Column** dan **Row**: Menyusun widget secara vertikal (Column) dan horizontal (Row).
- **Card**: Menampilkan kotak dengan sudut melengkung dan bayangan.
- **Container**: Membungkus widget lain dan memungkinkan pengaturan ukuran, padding, dan dekorasi.
- **Text**: Menampilkan teks di layar.
- **SizedBox**: Memberikan jarak vertikal antara widget.
- **Center**: Memposisikan widget di tengah parent-nya.
- **GridView.count**: Menampilkan widget dalam bentuk grid dengan jumlah kolom tertentu.
- **Material**: Menyediakan efek material seperti bayangan dan warna latar belakang.
- **InkWell**: Menangani interaksi sentuhan pada widget dan memberikan efek ripple.
- **Icon**: Menampilkan ikon.
- **SnackBar**: Menampilkan pesan sementara di bagian bawah layar.

## 3. Fungsi `setState()`
`setState()` digunakan pada **Stateful Widget** untuk memberi tahu Flutter bahwa ada perubahan pada state internal, sehingga UI perlu diperbarui. Variabel yang terpengaruh adalah semua variabel state yang didefinisikan dalam kelas `State`.  
Pada proyek ini, `setState()` tidak digunakan karena hanya menggunakan **StatelessWidget** yang tidak memiliki state.

## 4. Perbedaan `const` dan `final`
- **const**: Digunakan untuk mendefinisikan nilai konstan pada waktu kompilasi (compile-time constant) yang bersifat tetap dan tidak berubah.
- **final**: Digunakan untuk variabel yang nilainya hanya dapat ditetapkan satu kali, namun nilainya bisa ditentukan saat runtime (tidak harus pada waktu kompilasi).
