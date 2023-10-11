/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-24 11:00:29
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-11 19:20:05
 * @FilePath: /phoenix_empty/lib/extension/empty_total_config.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
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

extension BaseEmptyTotalConfig on BaseTotalConfig {
  static AbnormalStateConfig? _emptyConfig;
  AbnormalStateConfig get abnormalStateConfig =>
      _emptyConfig ?? BaseEmptyConfigUtils.defaultAbnormalStateConfig;
  set abnormalStateTotalConfig(EmptyTotalConfig config) {
    _emptyConfig = config.emptyConfig;
  }
}
