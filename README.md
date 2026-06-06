# ⚡ CSAMP (Compiler for SA-MP & open.mp)

<p align="center">
  <img src="./icon.png" alt="CSAMP Logo" width="200"/>
</p>

<p align="center">
  <img src="https://img.shields.io/github/v/release/oymantap/csamp?style=for-the-badge&color=00f0ff">
  <img src="https://img.shields.io/github/stars/oymantap/csamp?style=for-the-badge&color=2ecc71">
  <img src="https://img.shields.io/badge/Platform-Termux%20(Android)-orange?style=for-the-badge">
</p>

---

## 🚀 CSAMP

CSAMP adalah recompile dari Pawn Compiler (`pawncc`) agar bisa jalan native di **Termux (Android)** untuk development SA-MP / open.mp langsung dari HP.

---

## 🚀 Fitur

- Native ARM / ARM64 Android (Termux)
- Installer otomatis
- Support full `.amx` build
- Fix library `libpawnc.so`
- Optimized path Termux `$PREFIX`

---

## 🛠️ Instalasi

### 🔹 Auto Install (Recommended)

```bash
rm -f install.sh && wget https://raw.githubusercontent.com/oymantap/csamp/main/install.sh && chmod +x install.sh && ./install.sh


---

🔹 Manual Install

Download file dari Releases:

pawncc

pawndisasm

libpawnc.so



---

1. Pindahkan binary

mv /sdcard/Download/pawncc $PREFIX/bin/
mv /sdcard/Download/pawndisasm $PREFIX/bin/


---

2. Kasih permission

chmod +x $PREFIX/bin/pawncc
chmod +x $PREFIX/bin/pawndisasm


---

3. Pindahkan library

mv /sdcard/Download/libpawnc.so $PREFIX/lib/


---

4. Test install

pawncc

Kalau keluar banner CSAMP, berarti sukses.


---

📖 Cara Compile

pawncc -Z+ -i/sdcard/include -w239 -w214 gamemodes/main.pwn


---

📌 Penjelasan Flag

Flag	Fungsi

-Z+	mode kompatibilitas SA-MP
-i	path include
-w	disable warning tertentu
-d3	debug mode



---

📂 Contoh Penggunaan

Single Gamemode

pawncc -Z+ -i/sdcard/GM/include -w239 /sdcard/GM/gamemodes/main.pwn

Modular Project

pawncc -Z+ -i/sdcard/GM/include -i./ -w239 /sdcard/GM/gamemodes/main.pwn


---

🚨 Troubleshooting

❌ fatal error 100

Path salah / storage belum diizinkan

termux-setup-storage


---

❌ input line too long

Baris kode terlalu panjang
→ pecah string jadi beberapa baris


---

🤝 Kontribusi

Fork repo

Buat branch fitur

Commit perubahan

Pull request



---

📇 Kontak

Maintainer: RYCL / oymantap


---

<p align="center">
Made with ❤️ for SA-MP & open.mp Android community
</p>
