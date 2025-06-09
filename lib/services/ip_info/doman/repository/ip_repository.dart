
import 'package:bloc_test/services/ip_info/data/model/ip_model.dart';

abstract class IpRepository {
  Future<IpModel> getIp();
}