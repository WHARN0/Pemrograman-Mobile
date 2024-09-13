void main () {
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': '1', 
  'nama': 'Bagus Arnovario Wibowo', 
  'nim': '2241720225' 
};

var nobleGases = {
  2: 'helium',
    10: 'neon',
    18: '2',
    20: 'Bagus Arnovario Wibowo', 
    22: '2241720225' 
};
  
print('Output gifts : $gifts');
print('Output nobleGases : $nobleGases');
  
  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';
  mhs1['nama'] = 'Bagus Arnovario Wibowo'; 
  mhs1['nim'] = '123456789'; 

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';
  mhs2[20] = 'Bagus Arnovario Wibowo'; 
  mhs2[22] = '2241720225'; 
  
print('Output mhs1 : $mhs1');
print('Output mhs2 : $mhs2');
}