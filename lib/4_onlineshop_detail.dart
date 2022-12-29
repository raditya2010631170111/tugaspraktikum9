import 'package:flutter/material.dart';
import 'package:uts/1_onlineshop_model.dart' as model;

class OnlineshopDetail extends StatelessWidget {
  final model.Onlineshop onlineshop;

  const OnlineshopDetail({super.key, required this.onlineshop});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          onlineshop.merek,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    onlineshop.onlineshopCustomers[0].fotoProfil,
                    height: 370,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Handphone dan Customer',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(height: 10),
                      Text("ID : ${onlineshop.idHp}"),
                      const SizedBox(height: 10),
                      Text('Harga: ${onlineshop.harga}'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                'Spesifikasi',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Divider(color: Colors.black),
              ),
              const SizedBox(height: 10),
              Text(onlineshop.spesifikasi),
              const SizedBox(height: 10),
              Text(
                'Market Price',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Divider(color: Colors.black),
              ),
              // const SizedBox(height: 4),
              // ...List.generate(
              //   onlineshop.onlineshopTransaksis.length,
              //   (index) {
              //     return SingleChildScrollView(
              //       scrollDirection: Axis.horizontal,
              //       child: Row(
              //         children: [
              //           TransaksiOnlineshop(
              //             leading: Icon(
              //               Icons.shopping_cart,
              //               color: Theme.of(context).primaryColor,
              //             ),
              //             label: onlineshop.onlineshopTransaksis[index].idHp
              //                 .toString(),
              //           ),
              //           TransaksiOnlineshop(
              //             leading: Text(
              //               'QTY',
              //               style:
              //                   Theme.of(context).textTheme.bodyLarge!.copyWith(
              //                         fontWeight: FontWeight.w900,
              //                         color: Theme.of(context).primaryColor,
              //                       ),
              //             ),
              //             label: onlineshop.onlineshopTransaksis[index].qty
              //                 .toString(),
              //           ),
              //           TransaksiOnlineshop(
              //             leading: Text(
              //               'Biaya',
              //               style:
              //                   Theme.of(context).textTheme.bodyLarge!.copyWith(
              //                         fontWeight: FontWeight.w900,
              //                         color: Theme.of(context).primaryColor,
              //                       ),
              //             ),
              //             label: onlineshop.onlineshopTransaksis[index].biaya
              //                 .toString(),
              //           ),
              //           TransaksiOnlineshop(
              //             leading: Text(
              //               'Tanggal Transaksi',
              //               style:
              //                   Theme.of(context).textTheme.bodyLarge!.copyWith(
              //                         fontWeight: FontWeight.w900,
              //                         color: Theme.of(context).primaryColor,
              //                       ),
              //             ),
              //             label: onlineshop
              //                 .onlineshopTransaksis[index].tglTransaksi
              //                 .toString(),
              //           ),
              //           TransaksiOnlineshop(
              //             leading: Text(
              //               'ID Transaksi',
              //               style:
              //                   Theme.of(context).textTheme.bodyLarge!.copyWith(
              //                         fontWeight: FontWeight.w900,
              //                         color: Theme.of(context).primaryColor,
              //                       ),
              //             ),
              //             label: onlineshop
              //                 .onlineshopTransaksis[index].idTransaksi
              //                 .toString(),
              //           ),
              //         ],
              //       ),
              //     );
              //   },
              // ),
              // const SizedBox(height: 10),
              // const SizedBox(height: 10),
              // Text(
              //   'Customer',
              //   style: Theme.of(context).textTheme.headline6,
              // ),
              // const SizedBox(height: 4),
              // SizedBox(
              //   width: MediaQuery.of(context).size.width,
              //   child: const Divider(color: Colors.black),
              // ),
              // const SizedBox(height: 4),
              ...(onlineshop.onlineshopCustomers != null)
                  ? List.generate(onlineshop.onlineshopCustomers.length,
                      (index) {
                      final set = onlineshop.onlineshopCustomers[index];

                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(child: Text(set.nama)),
                          title: Text(set.email),
                          subtitle: Text(set.alamat),
                          trailing: Text('\$${set.jk}'),
                        ),
                      );
                    })
                  : [const Text('Customer tidak ditemukan')],
              ...(onlineshop.onlineshopSellers != null)
                  ? List.generate(onlineshop.onlineshopSellers.length, (index) {
                      final set = onlineshop.onlineshopSellers[index];

                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(child: Text(set.namaSeller)),
                          title: Text(set.alamat),
                          trailing: Text('\$${set.noHp}'),
                          subtitle: Text(set.email),
                        ),
                      );
                    })
                  : [const Text('Seller tidak ditemukan')],
              ...(onlineshop.onlineshopTransaksis != null)
                  ? List.generate(onlineshop.onlineshopTransaksis.length,
                      (index) {
                      final set = onlineshop.onlineshopTransaksis[index];

                      return Card(
                        child: ListTile(
                          leading:
                              CircleAvatar(child: Text('\$${set.idTransaksi}')),
                          title: Text('\$${set.idHp}'),
                          subtitle: Text('\$${set.idCust}'),
                          trailing: Text('\$${set.idSeller}'),
                        ),
                      );
                    })
                  : [const Text('Transaksi gagal')],
              ...(onlineshop.onlineshopTransaksis != null)
                  ? List.generate(onlineshop.onlineshopTransaksis.length,
                      (index) {
                      final set = onlineshop.onlineshopTransaksis[index];

                      return Card(
                        child: ListTile(
                          title: Text('\$${set.qty}'),
                          subtitle: Text('\$${set.tglTransaksi}'),
                          trailing: Text('\$${set.biaya}'),
                        ),
                      );
                    })
                  : [const Text('Transaksi gagal')],
            ],
          ),
        ),
      ),
    );
  }
}
