//if else
  void main() {
  
  var open = 8;  
  var close = 16;
  var now = 12;
  if(now >= open && now < close){
    print('Toko buka');
  }else if(now == 12) {
    print('Sedang istirahat');
  }else {
    print('Toko tutup');
  }


  //switch case
  var nilai = 'b';

  switch(nilai){
    case 'a':
      print('Niali Sangat Bagus');
      break;
    case 'b':
      print('Nilai Bagus');
      break;
    case 'c':
      print('Nilai Cukup');
      break;
    default:
      print('Nilai tidak tersedia');
  }
  }  