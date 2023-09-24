import 'package:flutter/widgets.dart';
import 'package:phoenix_base/phoenix.dart';

import '../config/abnormal_state_config.dart';

/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-24 10:52:35
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-09-24 10:55:04
 * @FilePath: /phoenix_empty/lib/extension/empty_default_config_utils.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
/// 空页面配置
extension BaseEmptyConfigUtils on BaseDefaultConfigUtils {
  //
  static AbnormalStateConfig defaultAbnormalStateConfig = AbnormalStateConfig(
    titleTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.colorTextBase,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeSubHead,
      fontWeight: FontWeight.w600,
    ),
    contentTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.colorTextHint,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeBase,
    ),
    operateTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.brandPrimary,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeBase,
    ),
    btnRadius: 4,
    doubleTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.brandPrimary,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeSubHead,
    ),
    singleTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.colorTextBaseInverse,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeSubHead,
    ),
    singleMinWidth: 160.0,
    doubleMinWidth: 120.0,
  );
}
