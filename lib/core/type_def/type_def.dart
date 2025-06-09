


import 'package:bloc_test/core/model/api_response.dart';
import 'package:fpdart/fpdart.dart';

import '../../network/call_request.dart';

typedef  EitherResponse<T> = Either<Failure, T>;
typedef  PageableResponse<T> = ApiResponse<List<T>>;