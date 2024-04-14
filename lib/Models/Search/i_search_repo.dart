import 'package:dartz/dartz.dart';

import '../../core/failures/mainFailure.dart';

abstract class I_Search_Repo {
  Future<Either<mainFailure,  List<Map<String, dynamic>>>> searchitem({required String searchquery});
}