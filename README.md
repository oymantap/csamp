# ⚡ CSAMP (Compiler for SA-MP & open.mp)

<p align="center">
  <img src="https://github.com/oymantap/csamp/icon.jpg" alt="CSAMP Logo" width="200" style="border-radius: 15px; box-shadow: 0px 4px 10px rgba(0,0,0,0.5);"/>
</p>

<p align="center">
  <img src="https://img.shields.io/github/v/release/oymantap/csamp?style=for-the-badge&color=00f0ff" alt="Release">
  <img src="https://img.shields.io/github/stars/oymantap/csamp?style=for-the-badge&color=2ecc71" alt="Stars">
  <img src="https://img.shields.io/badge/Platform-Termux%20(Android)-orange?style=for-the-badge" alt="Platform">
</p>

---

**CSAMP** adalah proyek *recompile* resmi dari core Pawn Compiler (`pawncc`) agar dapat berjalan secara native dan optimal di lingkungan **Termux (Android)**. Proyek ini dirancang khusus untuk para developer SA-MP (*San Andreas Multiplayer*) dan open.mp yang ingin melakukan *coding* dan *compiling* Gamemode atau Filterscript langsung dari HP Android tanpa ketergantungan pada PC/Laptop.

Untuk melihat source code compiler original dari komunitas, silakan kunjungi [Official Pawn Compiler Repository](https://github.com/pawn-lang/compiler).

---

## 🚀 Fitur Unggulan

* **Native Termux Support**: Berjalan super cepat langsung di arsitektur ARM/ARM64 Android tanpa emulasi Linux chroot/proot yang berat.
* **Modern Interactive Installer**: Dilengkapi dengan tampilan instalasi berbasis *Cyberpunk ASCII Art* yang estetik dan informatif.
* **Full AMX Output**: Mendukung penuh pembuatan file `.amx` dari gamemode berskala besar (*Heavy Script*).
* **Fix Missing Library Error**: Menyertakan `libpawnc.so` yang sudah disesuaikan dengan path internal Termux (`$PREFIX/lib/`).

---

## 🛠️ Panduan Instalasi (Lengkap & Detail)

Pilih salah satu metode instalasi di bawah ini yang paling sesuai dengan kebutuhanmu.

### Metode 1: Instalasi Otomatis (Sangat Direkomendasikan)

Metode ini akan otomatis membersihkan compiler lama (jika ada), mengunduh binary terbaru, mengatur hak akses (`chmod`), dan menempatkan file ke folder sistem yang tepat.

Buka Termux kamu, lalu copas perintah sakti ini:
```bash
rm -f install.sh && wget [https://raw.githubusercontent.com/oymantap/csamp/main/install.sh](https://raw.githubusercontent.com/oymantap/csamp/main/install.sh) && chmod +x install.sh && ./install.sh
