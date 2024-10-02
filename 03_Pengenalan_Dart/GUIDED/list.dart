void main() {
 // Membuat fixed-length list dengan panjang 3
 List<int> fixedList = List.filled(3, 0); // List dengan 3 elemen, semua diinisialisasi ke 0

 // Mengubah elemen dalam list
 fixedList[0] = 10;
 fixedList[1] = 20;
 fixedList[2] = 30;
 print('Fixed Length List: $fixedList'); 
 // Menambah atau menghapus elemen tidak diperbolehkan
 // fixedList.add(30); // Ini akan menimbulkan error


 //Growable List
 // Membuat growable list (panjangnya bisa berubah)
 List<int> growableList = [];
 // Menambahkan elemen baru ke dalam list
 growableList.add(10);
 growableList.add(20);
 growableList.add(30);
 print('Growable List setelah menambah elemen: $growableList'); 
 // Menambahkan lebih banyak elemen
 growableList.add(40);
 growableList.add(50);
 print(growableList); 
 // Menghapus elemen dari list
 growableList.remove(20);
 print('Growable List setelah menghapus elemen: $growableList'); 

}
