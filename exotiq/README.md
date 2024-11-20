<details> <summary>Tugas 7</summary>
  
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
```
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

</details> <details> <summary>Tugas 8</summary>
  
# TUGAS 8

### 1. Penggunaan `const` di Flutter

`const` digunakan di Flutter untuk mendefinisikan objek yang bersifat immutable (tidak dapat diubah) dan mengubahnya menjadi konstanta saat kompilasi (compile-time constant). Nilai dari objek tersebut sudah ditentukan ketika kompilasi, sehingga tidak berubah di saat runtime. Ini menghemat memori karena Flutter tidak perlu membuat ulang objek tersebut setiap kali widget di-render ulang. Keuntungan menggunakan `const` adalah peningkatan performa karena objek hanya dibuat sekali. Gunakan `const` pada widget yang sifatnya statis dan tidak berubah (misalnya teks, ikon, atau padding yang tetap), serta elemen-elemen yang sering dipakai dengan nilai tetap seperti warna atau margin. Hindari `const` jika widget tersebut harus berubah berdasarkan `state` atau kondisi tertentu.

### 2. Perbandingan `Column` dan `Row` di Flutter

`Column` dan `Row` adalah widget layout di Flutter untuk mengatur widget lain dalam bentuk vertikal atau horizontal.

- **Column**: Menyusun widget secara vertikal (dari atas ke bawah), umumnya dipakai untuk menumpuk elemen dalam satu kolom di layar.
- **Row**: Menyusun widget secara horizontal (dari kiri ke kanan), biasa digunakan untuk menempatkan elemen secara berdampingan.

Contoh implementasi `Column`:
```dart
Column(
  children: [
    Text("Item 1"),
    Text("Item 2"),
  ],
);
```

Contoh implementasi `Row`:
```dart
Row(
  children: [
    Icon(Icons.star),
    Text("Rating"),
  ],
);
```

### 3. Elemen Input pada Halaman Form

Elemen input yang digunakan pada halaman form:
- **TextFormField**: Digunakan untuk mengisi data teks pada form seperti `Item`, `Amount`, dan `Description`.

Elemen input Flutter lain yang tidak digunakan pada tugas ini:
- **Checkbox**: memilih antara dua opsi (on/off).
- **Switch**: Untuk opsi aktif/non-aktif.
- **Slider**: memilih nilai dalam rentang tertentu.
- **DropdownButton**: memilih satu opsi dari beberapa pilihan dalam bentuk dropdown.
- **DatePicker/TimePicker**  memilih tanggal atau waktu.
- **Radio**: memilih salah satu dari beberapa opsi yang ada.

### 4. Pengaturan Tema dalam Aplikasi Flutter

Flutter menyediakan `ThemeData` di dalam `MaterialApp` untuk mengatur tema aplikasi secara konsisten. Dengan `ThemeData`, kita bisa mendefinisikan warna, font, dan gaya yang akan diterapkan di seluruh aplikasi. Pada aplikasi Exotiq,  `ThemeData` digunakan untuk mengatur skema warna utama agar seragam di setiap halaman. Contoh implementasi dalam kode (pada `main.dart`):

```dart
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Exotiq',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.deepPurple,
      ).copyWith(secondary: Colors.deepPurple[400]),
      useMaterial3: true,
    ),
    home: MyHomePage(),
  );
}
```

### 5. Penanganan Navigasi dalam Aplikasi dengan Banyak Halaman

Untuk menangani navigasi dalam aplikasi Flutter yang memiliki banyak halaman, terdapat beberapa pendekatan. Salah satunya menggunakan `Navigator` dan `MaterialPageRoute`. `Navigator.push()` digunakan untuk membuka halaman baru, sedangkan `Navigator.pop()` untuk kembali ke halaman sebelumnya. Jika ingin menggantikan halaman saat ini dengan halaman baru, kita bisa menggunakan `Navigator.pushReplacement()`.

</details> <details> <summary>Tugas 9</summary>

## 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Membuat model untuk data JSON penting untuk memetakan data ke struktur yang terorganisir, memudahkan pengelolaan, validasi, dan manipulasi, serta mengurangi risiko kesalahan saat format data berubah. Tanpa model, pengelolaan data menjadi lebih rumit dan rawan error.

## 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library `http` digunakan untuk:
- Mengirim permintaan HTTP seperti `GET` dan `POST` ke server backend.
- Menerima dan memproses respons dari server, termasuk parsing data JSON.
- Menghubungkan aplikasi Flutter dengan API backend untuk pertukaran data.

Library ini mempermudah komunikasi antara aplikasi dan server, sehingga menjadi komponen penting dalam pengelolaan data melalui API.


## 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
`CookieRequest` digunakan untuk:

- Menyimpan cookie sesi pengguna guna mempertahankan status autentikasi, seperti login.
- Mengirimkan cookie secara otomatis pada setiap request HTTP yang memerlukan autentikasi.
- Memastikan seluruh komponen aplikasi dapat mengakses status sesi yang sama tanpa pengelolaan ulang.

Dengan berbagi instance `CookieRequest`, fitur autentikasi dapat berjalan konsisten di seluruh aplikasi.


## 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
1. **Pengisian Data oleh Pengguna**  
   Pengguna mengisi data melalui form di aplikasi Flutter.

2. **Pengiriman ke Backend**  
   Data dikirim ke backend (misalnya, Django) melalui request HTTP, seperti `POST`.

3. **Proses Backend**  
   Backend memproses data, seperti menyimpannya ke database atau menghasilkan respons.

4. **Penerimaan Respons**  
   Respons dari backend, biasanya dalam format JSON, diterima oleh Flutter.

5. **Menampilkan Hasil**  
   Data respons diproses di Flutter dan hasilnya ditampilkan di antarmuka aplikasi.

Mekanisme ini memastikan komunikasi yang efisien antara frontend Flutter dan backend Django.

## 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
### 1. Login
- Pengguna memasukkan kredensial di Flutter.
- Kredensial dikirim ke Django melalui request `POST`.
- Django memverifikasi kredensial dan, jika valid, mengembalikan cookie atau token sesi.
- Cookie atau token disimpan di `CookieRequest` untuk mengakses fitur yang memerlukan autentikasi.

### 2. Register
- Data akun dikirim dari Flutter ke Django melalui request `POST`.
- Django memverifikasi data dan menyimpannya ke database jika valid.
- Django mengirimkan konfirmasi kembali ke Flutter.

### 3. Logout
- Flutter mengirimkan request ke Django untuk menghapus sesi atau token.
- Django memastikan sesi pengguna dihapus.
- Flutter menghapus data sesi lokal dan mengarahkan pengguna kembali ke halaman login.

Proses ini memastikan keamanan dan konsistensi autentikasi di seluruh aplikasi.


## 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! 

### 1. Registrasi Akun
- **Django**: 
  - Membuat aplikasi `authentication` dan menambahkan fungsi `register` di `views.py` untuk memvalidasi input, seperti memeriksa kesesuaian password dan ketersediaan username.
  - Menambahkan path di `urls.py`.
- **Flutter**: 
  - Membuat file `register.dart` dengan form registrasi menggunakan widget seperti `TextField`.
  - Menggunakan package `pbp_django_auth` untuk menghubungkan form dengan endpoint Django.
  - Menampilkan pesan kesalahan jika registrasi gagal atau mengarahkan ke halaman login jika berhasil.

### 2. Login
- **Django**: 
  - Menambahkan fungsi `login` di `views.py` untuk memverifikasi kredensial pengguna.
  - Menambahkan path di `urls.py`.
- **Flutter**: 
  - Membuat file `login.dart` dengan form login.
  - Menggunakan `CookieRequest` dari `pbp_django_auth` untuk mengirim data login ke server.

### 3. Integrasi Autentikasi
- **Django**: 
  - Mengatur `CorsMiddleware` di `settings.py` untuk mendukung komunikasi lintas domain.
  - Menambahkan konfigurasi `CORS_ALLOW_ALL_ORIGINS` dan `ALLOWED_HOSTS`.
- **Flutter**: 
  - Menambahkan `Provider` di `main.dart` untuk menyediakan objek `CookieRequest` secara global agar session dapat digunakan di seluruh aplikasi.

### 4. Model Produk
- **Django**: Membuat model `Product` dengan atribut `name`, `price`, `description`, dan `quantity`.
- **Flutter**: Menggunakan *Quicktype* untuk membuat model Dart dari data JSON yang dihasilkan oleh endpoint Django.

### 5. Halaman Daftar Item
- **Flutter**: 
  - Membuat file `list_item.dart` dengan `FutureBuilder` untuk mengambil data dari endpoint Django menggunakan `CookieRequest.get`.
  - Menampilkan data dengan `ListView.builder` dan atribut seperti `name`, `price`, `description`, dan `quantity`.
- **Django**: Menambahkan view JSON untuk memfilter item berdasarkan pengguna login menggunakan `request.user`.

### 6. Logout
- **Django**: 
  - Menambahkan fungsi `logout` di `views.py` dengan memanggil `auth_logout` untuk menghapus sesi pengguna.
- **Flutter**: 
  - Mengubah aksi tombol logout untuk mengarahkan pengguna kembali ke halaman login setelah logout.

### 7. Form Input
- **Django**: 
  - Membuat path `create-flutter/` untuk menerima data dari Flutter dan menyimpannya ke database.
- **Flutter**: 
  - Membuat form input di Flutter menggunakan `pbp_django_auth` untuk mengirim data form ke Django.



