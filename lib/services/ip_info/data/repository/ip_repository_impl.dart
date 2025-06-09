import 'package:bloc_test/services/ip_info/data/datasource/ip_data_source.dart';
import 'package:bloc_test/services/ip_info/data/model/ip_model.dart';
import 'package:injectable/injectable.dart';
import '../../doman/repository/ip_repository.dart';

@Singleton(as: IpRepository)
class IpRepositoryImpl implements IpRepository {
  IpDataSource source;
  IpRepositoryImpl(this.source);
  @override
  Future<IpModel> getIp() {
    return source.getIp();
  }
}