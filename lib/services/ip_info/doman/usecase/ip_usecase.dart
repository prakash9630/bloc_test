import 'package:bloc_test/services/ip_info/doman/repository/ip_repository.dart';
import 'package:injectable/injectable.dart';
import '../../data/model/ip_model.dart';

@singleton
class IpUseCase{
  IpRepository repository;
  IpUseCase(this.repository);
  Future<IpModel> call() async {
    return repository.getIp();
  }
}