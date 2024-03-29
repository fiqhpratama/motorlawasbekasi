<p class='sidebar-title text-danger produk-title'> Laporan Data Pesanan Anda</p>
              <?php 
                if ($this->uri->segment(3)=='success'){
                  echo "<div class='alert alert-success'><b>SUCCESS</b> - Terima kasih telah Melakukan Konfirmasi Pembayaran!</div>";
                }elseif($this->uri->segment(3)=='orders'){
                  echo "<div class='alert alert-success'><b>SUCCESS</b> - Orderan anda sukses terkirim, silahkan melakukan pembayaran ke rekening reseller pesanan anda dan selanjutnya lakukan konfirmasi pembayaran!</div>";
                }
              ?>
              <table class='table table-hover table-condensed'>
                <thead>
                  <tr>
                    <th width="20px">No</th>
                    <th>Kode Transaksi</th>
                    <th>Nama Lapak</th>
                    <th>Subtotal</th>
                    <th>Ongkir</th>
                    <th>Status</th>
                    <th>Total + Ongkir</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record->result_array() as $row){
                      if ($row['proses']=='0'){ 
                        $proses = '<i class="text-danger">Menunggu Pembayaran</i>'; $status = 'Proses'; $icon = 'star-empty'; $ubah = 1; 
                      }elseif($row['proses']=='1'){ 
                        $proses = '<i class="text-success">Diproses</i>'; $status = 'Pending'; $icon = 'star text-yellow'; $ubah = 0; 
                      }elseif($row['proses']=='3'){ 
                        $proses = '<i class="text-success">Transaksi Selesai</i>'; $status = 'Selesai'; $icon = 'star text-success'; $ubah = 3; 
                      }else{ 
                        $proses = '<i class="text-info">Pembayaran Dikonfirmasi</i>'; $status = 'Proses'; $icon = 'star'; $ubah = 1; 
                      }
                      $total = $this->db->query("SELECT sum((a.harga_jual*a.jumlah)-a.diskon) as total FROM `rb_penjualan_detail` a where a.id_penjualan='$row[id_penjualan]'")->row_array();
                    echo "<tr><td rowspan='2'>$no</td>
                              <td><span class='text-success'>$row[kode_transaksi]</span></td>
                              <td><a href='".base_url()."members/detail_reseller/$row[id_reseller]'><b>$row[nama_reseller]</b></a></td>
                              <td><span style='color:blue;'>Rp ".rupiah($total['total'])."</span></td>
                              <td><i style='color:green;'><b style='text-transform:uppercase'>$row[kurir]</b> - Rp ".rupiah($row['ongkir'])."</i></td>
                              <td>$proses</td>
                              <td style='color:red;'>Rp ".rupiah($total['total']+$row['ongkir'])."</td>
                              <td width='130px'>";
                if ($row['proses']=='0'){
                  echo "<a style='margin-right:3px' class='btn btn-success btn-xs' title='Konfirmasi Pembayaran' href='".base_url()."konfirmasi?kode=$row[kode_transaksi]'>Konfirmasi</a>";
                }else{
                  echo "<a style='margin-right:3px' class='btn btn-default btn-xs' href='#'  onclick=\"return confirm('Maaf, Pembayaran ini sudah di konfirmasi!')\">Konfirmasi</a>";
                }
              
              echo "<a class='btn btn-info btn-xs' title='Detail data pesanan' href='".base_url()."members/keranjang_detail/$row[id_penjualan]'><span class='glyphicon glyphicon-search'></span></a></td>
                          </tr>

                          <tr class='info'>
                            <td colspan='6' class='text-right'><small><i>Transaksi ini dilakukan ".cek_terakhir($row['waktu_transaksi'])." yang lalu, Pilihan Pengiriman <b style='text-transform:uppercase'>$row[kurir]</b> - $row[service]</i></small></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                </tbody>
              </table>
