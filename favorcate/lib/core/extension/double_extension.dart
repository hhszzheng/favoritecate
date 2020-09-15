import 'package:favorcate/ui/shared/size_fit.dart';

extension DoubleFit on double {
  double get px {
    return YFSizeFit.setPx(this);
  }

  double get rpx {
    return YFSizeFit.setRpx(this);
  }
}
