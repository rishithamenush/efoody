import 'package:dartz/dartz.dart';
import 'package:efoody/domain/model.dart';

import '../data/network/failure.dart';
import '../data/request/request.dart';
import '../data/responses/responses.dart';

abstract class Repository{
  Future<Either<Failure, Authentication>> login (LoginRequest lgoinRequest);
}