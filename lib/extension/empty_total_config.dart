import 'package:phoenix_base/phoenix.dart';

import '../config/abnormal_state_config.dart';
import 'empty_default_config_utils.dart';

class EmptyTotalConfig extends BaseTotalConfig {
  EmptyTotalConfig({AbnormalStateConfig? emptyConfig})
      : _emptyConfig = emptyConfig;

  AbnormalStateConfig? _emptyConfig;

  AbnormalStateConfig get emptyConfig =>
      _emptyConfig ?? BaseEmptyConfigUtils.defaultAbnormalStateConfig;

  @override
  void initThemeConfig(String configId) {
    super.initThemeConfig(configId);
    _emptyConfig ??= AbnormalStateConfig();
    emptyConfig.initThemeConfig(
      configId,
      currentLevelCommonConfig: commonConfig,
    );
  }
}

extension BaseAppBarTotalConfig on BaseTotalConfig {
  static AbnormalStateConfig? _emptyConfig;
  AbnormalStateConfig get abnormalStateConfig =>
      _emptyConfig ?? BaseEmptyConfigUtils.defaultAbnormalStateConfig;
  set buttonTotalConfig(EmptyTotalConfig config) {
    _emptyConfig = config.emptyConfig;
  }
}
