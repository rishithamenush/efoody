
// extension on String

import 'package:efoody/data/mapper/mapper.dart';

extension NonNUllString on String? {
  String orEmpty(){
    if(this == null){
      return EMPTY;
    }
    else{
      return this!;
    }
  }
}


// extension on Integer

extension NonNUllInteger on int? {
  int orZero() {
    if(this == null){
      return ZERO;
    }
    else{
      return this!;
    }
  }
}