import './flavor_config.dart';
import './main.dart';

void main() async {
  await FlavorConfig.instance.init(flavor: Flavor.stg);
  await mainCommon();
}
