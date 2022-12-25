import 'package:feedtheneed/api/donate_api.dart';
import 'package:feedtheneed/model/donate_model.dart';

class DonateRepository {
  Future<bool> donation(DonateModel donateModel) async {
    return await DonateApi().donationData(donateModel);
  }
}
