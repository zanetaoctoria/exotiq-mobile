# TUGAS 7

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


## Fungsi `setState()` dan Variabel yang Terdampak

Fungsi `setState()` digunakan untuk memperbarui tampilan pada widget `StatefulWidget` ketika terjadi perubahan pada data yang mempengaruhi tampilan aplikasi. Saat `setState()` dipanggil, Flutter akan melakukan *rebuild* pada widget terkait untuk menampilkan data terbaru.

Contoh penggunaan:

```dart
class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0; // Variabel yang terdampak oleh setState
  final String value = 'PBP Asik'; // Variabel yang tidak terdampak oleh setState

  void incrementCounter() {
    setState(() {
      counter++; // Variabel counter diubah dalam setState
    });
  }
  // Kode lainnya
}
</br>

## 4. Perbedaan `const` dan `final`
- **const**: Digunakan untuk mendefinisikan nilai konstan pada waktu kompilasi (compile-time constant) yang bersifat tetap dan tidak berubah.
- **final**: Digunakan untuk variabel yang nilainya hanya dapat ditetapkan satu kali, namun nilainya bisa ditentukan saat runtime (tidak harus pada waktu kompilasi).

## 5. Langkah-langkah
- Membuat proyek baru dengan perintah flutter create exotiq dan menghubungkan proyek ke repositori GitHub.
- Membuat file menu.dart di dalam direktori exotiq/lib dan menambahkan import yang diperlukan.
- Merapikan struktur proyek dengan memindahkan sebagian kode dari main.dart ke menu.dart.
- Mengubah widget halaman menu menjadi stateless widget.
- Membuat kartu sederhana untuk menampilkan NPM, nama, dan kelas, serta menambahkan kelas InfoCard untuk tampilannya.
- Membuat tombol kartu dengan ikon di tengah, menambahkan kelas ItemCard, dan menyesuaikan tampilannya.
- Mengintegrasikan InfoCard dan ItemCard agar ditampilkan di halaman utama.
- Mengatur tampilan aplikasi secara keseluruhan, memperhatikan padding, row, column, ikon, dan lainnya.
- Menambahkan atribut color pada kelas ItemHomePage untuk mengubah warna kartu "Lihat Daftar Produk", "Tambah Produk", dan "Logout".
- Mengkustomisasi warna ketiga kartu agar berbeda satu sama lain.
- Menyimpan perubahan ke GitHub dengan menjalankan perintah add, commit, dan push.
