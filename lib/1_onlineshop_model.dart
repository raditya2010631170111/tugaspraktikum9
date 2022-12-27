class Onlineshop {
  final int? idHp; //final or lates=form
  final String merek;
  final String spesifikasi;
  final String harga; //double
  final String gambar;
  // final String? password;
  final List<OnlineshopCustomer> onlineshopCustomers;
  final List<OnlineshopSeller>? onlineshopSellers;
  final List<OnlineshopTransaksi> onlineshopTransaksis;
  Onlineshop({
    this.idHp,
    required this.merek,
    required this.spesifikasi,
    required this.gambar,
    required this.harga,
    // this.password,
    required this.onlineshopCustomers,
    required this.onlineshopSellers,
    required this.onlineshopTransaksis,
  });

//JSON
  factory Onlineshop.fromJson(Map<String, dynamic> json) {
    return Onlineshop(
      idHp: json['Id_hp'],
      merek: json['Merek'],
      spesifikasi: json['Spesifikasi'],
      gambar: json['Gambar'],
      harga: json['Harga'].toDouble(),
      onlineshopCustomers: (json['onlineshop_customer'] as List)
          .map((e) => OnlineshopCustomer.fromJson(e))
          .toList(),
      onlineshopSellers: (json['onlineshop_seller'] == null)
          ? null
          : (json['onlineshop'] as List)
              .map((e) => OnlineshopSeller.fromJson(e))
              .toList(),
      onlineshopTransaksis: (json['onlineshop_transaksi'] as List)
          .map((e) => OnlineshopTransaksi.fromJson(e))
          .toList(),
    );
  }

//Asset JSON
  // Map<String, dynamic> toJson() => {
  //       "Id_hp": idHp,
  //       "Merek": merek,
  //       "Spesifikasi": spesifikasi,
  //       "Gambar": gambar,
  //       "Harga": harga.toJson(),
  //     };

//FORM
  // Map<String, dynamic> toMap() {
  //   var map = Map<String, dynamic>();
  //   if (idHp != null) {
  //     map['Id_hp'] = idHp;
  //   }
  //   map['Merek'] = merek; //<'id' = String = "key", id = dynamic = "value">
  //   map['Spesifikasi'] = spesifikasi;
  //   map['Gambar'] = gambar;
  //   map['Harga'] = harga;
  //   // map['tipe'] = tipe;
  //   map['password'] = password;
  //   return map;
  // }

  // OnlineShop.fromMap(Map<String, dynamic> map) {
  //   //constructor
  //   this.idHp = map['Id_hp'];
  //   this.merek = map['Merek'];
  //   this.spesifikasi = map['Spesifikasi'];
  //   this.gambar = map['Gambar'];
  //   this.harga = map['Harga'];
  //   //this.tipe = map['tipe'];
  //   this.password = map['password'];
  // }
}

class OnlineshopCustomer {
  final int idCust;
  final String nama;
  final int noHp;
  final String email;
  final String alamat;
  Jk jk;
  final String fotoProfil;
  OnlineshopCustomer({
    required this.idCust,
    required this.nama,
    required this.noHp,
    required this.email,
    required this.alamat,
    required this.jk,
    required this.fotoProfil,
  });
  factory OnlineshopCustomer.fromJson(Map<String, dynamic> json) {
    return OnlineshopCustomer(
      idCust: json['Id_cust'],
      nama: json['nama'].toString(),
      noHp: json['no_hp'],
      email: json['email'].toString(),
      alamat: json['alamat'].toString(),
      jk: Jk.fromJson(json["jk"]),
      fotoProfil: json['foto_profil'],
    );
  }
}

class OnlineshopSeller {
  final int idSeller;
  final String namaSeller;
  final String alamat;
  final int noHp;
  final String email;
  final int contactPerson;
  OnlineshopSeller({
    required this.idSeller,
    required this.namaSeller,
    required this.alamat,
    required this.noHp,
    required this.email,
    required this.contactPerson,
  });
  factory OnlineshopSeller.fromJson(Map<String, dynamic> json) {
    return OnlineshopSeller(
      idSeller: json['Id_seller'],
      namaSeller: json['nama_seller'].toString(),
      alamat: json['alamat'].toString(),
      noHp: json['no_hp'],
      email: json['email'].toString(),
      contactPerson: json['contact_person'],
    );
  }
}

class OnlineshopTransaksi {
  final int idTransaksi;
  final int tglTransaksi; //date
  final int idHp;
  final int idCust;
  final int idSeller;
  final int qty;
  final int biaya; //(qty * harga)+ppn //10%
  OnlineshopTransaksi({
    required this.idTransaksi,
    required this.tglTransaksi,
    required this.idHp,
    required this.idCust,
    required this.idSeller,
    required this.qty,
    required this.biaya,
  });

  factory OnlineshopTransaksi.fromJson(Map<String, dynamic> json) {
    return OnlineshopTransaksi(
      idTransaksi: json['Id_transaksi'],
      tglTransaksi: json['tgl_transaksi'],
      idHp: json['Id_hp'],
      idCust: json['Id_customer'],
      idSeller: json['Id_seller'],
      qty: json['qty'],
      biaya: json['biaya'],
    );
  }
}

class Jk {
  Jk({
    required this.man,
    required this.woman,
  });
  List<Man> man;
  List<Man> woman;
  factory Jk.fromJson(Map<String, dynamic> json) => Jk(
        man: List<Man>.from(json["man"].map((x) => Man.fromJson(x))),
        woman: List<Man>.from(json["woman"].map((x) => Man.fromJson(x))),
      );
  Map<String, dynamic> toJson() => {
        "man": List<dynamic>.from(man.map((x) => x.toJson())),
        "woman": List<dynamic>.from(woman.map((x) => x.toJson())),
      };
}

class Man {
  Man({
    required this.nama,
  });
  String nama;
  factory Man.fromJson(Map<String, dynamic> json) => Man(
        nama: json["nama"],
      );
  Map<String, dynamic> toJson() => {
        "nama": nama,
      };
}

//Asset JSON
//List<Onlineshop> parse(String? json) {
//  if (json == null) {
//    return [];
//  }
//  final List parsed = jsonDecode(json)['data'];
//  return parsed.map((data) => Onlineshop.fromJson(data)).toList();
//}

