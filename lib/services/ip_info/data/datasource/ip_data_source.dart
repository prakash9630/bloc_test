import 'package:bloc_test/services/ip_info/data/model/ip_model.dart';
import 'package:injectable/injectable.dart';
import '../../../../network/call_request.dart';

abstract class IpDataSource{
  Future<IpModel> getIp();
}
@Singleton(as: IpDataSource)
class IpDataSourceImpl extends RequestCall implements IpDataSource{
  IpDataSourceImpl(super.dio);

  @override
  Future<IpModel> getIp() async {
    final result= await checkNetworkAndCallRequest(request: (dio)=>dio.get("https://ipinfo.io/161.185.160.93/geo"),
        onResponse: (data)=>data,
    );
    return IpModel.fromJson(result);
  }

}