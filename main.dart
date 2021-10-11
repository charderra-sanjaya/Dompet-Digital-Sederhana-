void main() {
  
  RekeningBank dompetUser = new RekeningBank("Charderra Eka Bagas S");
  dompetUser.request(10000);
  dompetUser.request(100000);
  dompetUser.transfer(20000);
  print("---------- DOMPET ANDA ------------");
  print("Nama Pemilik: " + dompetUser.getNamaPemilik);
  print("Saldo anda: " + dompetUser.getSaldo.toString() );
  print("Riwayat Mutasi: " + dompetUser.getMutasi.toString());
}

class RekeningBank {
  String namaPemilik;
  int saldo = 0;
  List mutasi = [];
  
//   Setter & Getter
  set setNamaPemilik (String nama){
    this.namaPemilik = nama;
  }
  
  set setSaldo(int saldoBaru){
    this.saldo = saldoBaru;
  }
  
  set setMutasi(List mutasiTransaksi){
    this.mutasi = mutasiTransaksi;
  }
  
  get getSaldo{
    return saldo;
  }
  
  get getNamaPemilik{
    return namaPemilik;
  }
  get getMutasi{
    return mutasi;
  }
  
//   Constructer
  RekeningBank(this.namaPemilik);
  
//   Method
  transfer(int nominal){
    saldo = saldo - nominal;
    addMutasi("Transfer sejumlah $nominal");
  }
  
  addMutasi(String transaksi){
    mutasi.add(transaksi);
  }
  
  request(int nominal){
    saldo = saldo + nominal;
    addMutasi("Meminta Saldo Sebesar $nominal");
  }
}
