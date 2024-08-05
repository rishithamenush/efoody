// to convert the response into a non nullable object (model)

import 'package:efoody/app/extensions.dart';
import 'package:efoody/data/responses/responses.dart';
import 'package:efoody/domain/model.dart';

const EMPTY = "";
const ZERO = 0;

extension CustomerRespnseMapper on CustomerResponse? {
  Customer toDomain(){
    return Customer(this?.id?.orEmpty() ?? EMPTY,
        this?.name?.orEmpty() ?? EMPTY,
        this?.numOfNotifications?.orZero() ?? ZERO);
  }
}

extension ContactResponseMapper on ContactsResponse? {
  Contacts toDomain(){
    return Contacts(this?.email?.orEmpty() ?? EMPTY,
        this?.phone?.orEmpty() ?? EMPTY,
        this?.link.orEmpty() ?? EMPTY);
  }
}
extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain(){
    return Authentication(
        this?.customer?.toDomain() ?? Customer(EMPTY, EMPTY, ZERO),
        this?.contacts?.toDomain() ?? Contacts(EMPTY, EMPTY, EMPTY)
    );
  }
}