#!/bin/bash

# Warna untuk estetika terminal (ANSI Escape Codes)
CYAN='\033[0;36m'
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Bersihkan layar sebelum pamer ASCII Art
clear

# ASCII Art Modern buat RYCL / CSAMP
echo -e "${CYAN}====================================================${NC}"
echo -e "${GREEN}  ____   __   __  ____ _       ____    _              ____  "
echo -e " |  _ \  \ \ / / / ___| |     / ___|  / \   _ __ ___ |  _ \ "
echo -e " | |_) |  \ V / | |   | |     \___ \ / _ \ | '_ \` _ \| |_) |"
echo -e " |  _ <    | |  | |___| |___   ___) / ___ \| | | | | |  __/ "
echo -e " |_| \_\   |_|   \____|_____| |____/_/   \_\_| |_| |_|_|    "
echo -e "${CYAN}====================================================${NC}"
echo -e "${PURPLE}       Pawn Compiler Recompiled for Termux${NC}"
echo -e "${YELLOW}           Maintained by: oymantap / RYCL${NC}"
echo -e "${CYAN}====================================================${NC}"
echo ""

# URL Baru (Akun oymantap)
BASE_URL="https://github.com/oymantap/csamp/releases/download/v1"
PAWNCC_URL="${BASE_URL}/pawncc"
LIBPAWNC_URL="${BASE_URL}/libpawnc.so"
PAWNDISASM_URL="${BASE_URL}/pawndisasm"

# Lokasi tujuan sistem Termux
BIN_DIR="$PREFIX/bin"
LIB_DIR="$PREFIX/lib"

# Fungsi download estetik
download_with_progress() {
  local url=$1
  local output=$2
  
  echo -e "${YELLOW}[*] Downloading:${NC} ${GREEN}$output${NC}..."
  
  # Menggunakan curl dengan bar progress yang rapi
  curl -# -L "$url" -o "$output"

  if [ $? -ne 0 ]; then
    echo -e "${PURPLE}[!] Error:${NC} Gagal mendownload $output. Periksa koneksi internet!"
    exit 1
  fi
}

# Proses Eksekusi
echo -e "${CYAN}[+] Memulai instalasi komponen CSAMP...${NC}"
echo ""

# Download semua komponen ke folder temporary sementara
download_with_progress $PAWNCC_URL "pawncc"
download_with_progress $LIBPAWNC_URL "libpawnc.so"
download_with_progress $PAWNDISASM_URL "pawndisasm"

echo ""
echo -e "${CYAN}[+] Memasang file ke dalam sistem Termux...${NC}"

# Pindahkan pawncc
if [ -d "$BIN_DIR" ]; then
  mv pawncc "$BIN_DIR/"
  chmod +x "$BIN_DIR/pawncc"
  echo -e "${GREEN}[✓] pawncc berhasil dipasang ke $BIN_DIR${NC}"
fi

# Pindahkan libpawnc.so
if [ -d "$LIB_DIR" ]; then
  mv libpawnc.so "$LIB_DIR/"
  echo -e "${GREEN}[✓] libpawnc.so berhasil dipasang ke $LIB_DIR${NC}"
fi

# Pindahkan pawndisasm
if [ -d "$BIN_DIR" ]; then
  mv pawndisasm "$BIN_DIR/"
  chmod +x "$BIN_DIR/pawndisasm"
  echo -e "${GREEN}[✓] pawndisasm berhasil dipasang ke $BIN_DIR${NC}"
fi

# Selesai dengan Banner Penutup Keren
echo ""
echo -e "${CYAN}====================================================${NC}"
echo -e "${GREEN}        INSTALLATION COMPLETED SUCCESSFULLY!${NC}"
echo -e "${YELLOW}   Ketik 'pawncc' untuk mencoba compiler barumu.${NC}"
echo -e "${CYAN}====================================================${NC}"

