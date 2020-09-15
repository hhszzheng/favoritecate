import 'package:favorcate/ui/shared/size_fit.dart';

extension IntFit on int {
  double get px {
    return YFSizeFit.setPx(this.toDouble());
  }

  double get rpx {
    return YFSizeFit.setRpx(this.toDouble());
  }
}