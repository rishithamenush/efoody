
// extension on String

extension NonNUllString on String?{
  String orEmpty(){
    if(this == null){
      return "";
    }
    else{
      return this!;
    }
  }
}


// extension on Integer

extension NonNUllInteger on int?{
  int orZero(){
    if(this == null){
      return 0;
    }
    else{
      return this!;
    }
  }
}