import 'package:phoenix_base/phoenix.dart';
import 'package:phoenix_empty/extension/empty_total_config.dart';

import '../extension/empty_default_config_utils.dart';

/// 描述: 空页面配置类
class AbnormalStateConfig extends BaseConfig {
  AbnormalStateConfig({
    BaseTextStyle? titleTextStyle,
    BaseTextStyle? contentTextStyle,
    BaseTextStyle? operateTextStyle,
    double? btnRadius,
    BaseTextStyle? singleTextStyle,
    BaseTextStyle? doubleTextStyle,
    double? singleMinWidth,
    double? doubleMinWidth,
    String configId = GLOBAL_CONFIG_ID,
  })  : _titleTextStyle = titleTextStyle,
        _contentTextStyle = contentTextStyle,
        _operateTextStyle = operateTextStyle,
        _btnRadius = btnRadius,
        _singleTextStyle = singleTextStyle,
        _doubleTextStyle = doubleTextStyle,
        _singleMinWidth = singleMinWidth,
        _doubleMinWidth = doubleMinWidth,
        super(configId: configId);

  /// 文案区域标题
  ///
  /// BaseTextStyle(
  ///   color: [BrnCommonConfig.colorTextBase],
  ///   fontSize: [BrnCommonConfig.fontSizeSubHead],
  ///   fontWeight: FontWeight.w600,
  /// )
  BaseTextStyle? _titleTextStyle;

  /// 文案区域内容
  ///
  /// BaseTextStyle(
  ///   color: [BrnCommonConfig.colorTextHint],
  ///   fontSize: [BrnCommonConfig.fontSizeBase],
  /// )
  BaseTextStyle? _contentTextStyle;

  /// 操作区域文本样式
  ///
  /// BaseTextStyle(
  ///   color: [BrnCommonConfig.brandPrimary],
  ///   fontSize: [BrnCommonConfig.fontSizeBase],
  /// )
  BaseTextStyle? _operateTextStyle;

  /// 圆角
  /// default value is [BrnCommonConfig.radiusSm]
  double? _btnRadius;

  /// 单按钮文本样式
  ///
  /// BaseTextStyle(
  ///   color: [BrnCommonConfig.colorTextBaseInverse],
  ///   fontSize: [BrnCommonConfig.fontSizeSubHead],
  /// )
  BaseTextStyle? _singleTextStyle;

  /// 双按钮文本样式
  ///
  /// BaseTextStyle(
  ///   color: [BrnCommonConfig.brandPrimary],
  ///   fontSize: [BrnCommonConfig.fontSizeSubHead],
  /// )
  BaseTextStyle? _doubleTextStyle;

  /// 单按钮的按钮最小宽度
  /// 默认值为 160
  double? _singleMinWidth;

  /// 多按钮的按钮最小宽度
  /// 默认值为 120
  double? _doubleMinWidth;

  BaseTextStyle get titleTextStyle =>
      _titleTextStyle ??
      BaseEmptyConfigUtils.defaultAbnormalStateConfig.titleTextStyle;

  BaseTextStyle get contentTextStyle =>
      _contentTextStyle ??
      BaseEmptyConfigUtils.defaultAbnormalStateConfig.contentTextStyle;

  BaseTextStyle get operateTextStyle =>
      _operateTextStyle ??
      BaseEmptyConfigUtils.defaultAbnormalStateConfig.operateTextStyle;

  double get btnRadius =>
      _btnRadius ?? BaseEmptyConfigUtils.defaultAbnormalStateConfig.btnRadius;

  BaseTextStyle get singleTextStyle =>
      _singleTextStyle ??
      BaseEmptyConfigUtils.defaultAbnormalStateConfig.singleTextStyle;

  BaseTextStyle get doubleTextStyle =>
      _doubleTextStyle ??
      BaseEmptyConfigUtils.defaultAbnormalStateConfig.doubleTextStyle;

  double get singleMinWidth =>
      _singleMinWidth ??
      BaseEmptyConfigUtils.defaultAbnormalStateConfig.singleMinWidth;

  double get doubleMinWidth =>
      _doubleMinWidth ??
      BaseEmptyConfigUtils.defaultAbnormalStateConfig.doubleMinWidth;

  @override
  void initThemeConfig(
    String configId, {
    BaseCommonConfig? currentLevelCommonConfig,
  }) {
    super.initThemeConfig(
      configId,
      currentLevelCommonConfig: currentLevelCommonConfig,
    );

    /// 用户全局组件配置
    AbnormalStateConfig abnormalStateConfig = BaseThemeConfig.instance
        .getConfig(configId: configId)
        .abnormalStateConfig;

    _titleTextStyle = abnormalStateConfig.titleTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.colorTextBase,
        fontSize: commonConfig.fontSizeSubHead,
      ).merge(_titleTextStyle),
    );
    _contentTextStyle = abnormalStateConfig.contentTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.colorTextHint,
        fontSize: commonConfig.fontSizeSubHead,
      ).merge(_contentTextStyle),
    );
    _operateTextStyle = abnormalStateConfig.operateTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.brandPrimary,
        fontSize: commonConfig.fontSizeBase,
      ).merge(_operateTextStyle),
    );
    _singleTextStyle = abnormalStateConfig.singleTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.colorTextBaseInverse,
        fontSize: commonConfig.fontSizeSubHead,
      ).merge(_singleTextStyle),
    );
    _doubleTextStyle = abnormalStateConfig.doubleTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.brandPrimary,
        fontSize: commonConfig.fontSizeSubHead,
      ).merge(_doubleTextStyle),
    );
    _btnRadius ??= abnormalStateConfig._btnRadius;
    _singleMinWidth ??= abnormalStateConfig._singleMinWidth;
    _doubleMinWidth ??= abnormalStateConfig._doubleMinWidth;
  }

  AbnormalStateConfig copyWith({
    BaseTextStyle? titleTextStyle,
    BaseTextStyle? contentTextStyle,
    BaseTextStyle? operateTextStyle,
    double? btnRadius,
    BaseTextStyle? singleTextStyle,
    BaseTextStyle? doubleTextStyle,
    double? singleMinWidth,
    double? doubleMinWidth,
  }) {
    return AbnormalStateConfig(
      titleTextStyle: titleTextStyle ?? _titleTextStyle,
      contentTextStyle: contentTextStyle ?? _contentTextStyle,
      operateTextStyle: operateTextStyle ?? _operateTextStyle,
      btnRadius: btnRadius ?? _btnRadius,
      singleTextStyle: singleTextStyle ?? _singleTextStyle,
      doubleTextStyle: doubleTextStyle ?? _doubleTextStyle,
      singleMinWidth: singleMinWidth ?? _singleMinWidth,
      doubleMinWidth: doubleMinWidth ?? _doubleMinWidth,
    );
  }

  AbnormalStateConfig merge(AbnormalStateConfig? other) {
    if (other == null) return this;
    return copyWith(
      titleTextStyle: titleTextStyle.merge(other._titleTextStyle),
      contentTextStyle: contentTextStyle.merge(other._contentTextStyle),
      operateTextStyle: operateTextStyle.merge(other._operateTextStyle),
      btnRadius: other._btnRadius,
      singleTextStyle: singleTextStyle.merge(other._singleTextStyle),
      doubleTextStyle: doubleTextStyle.merge(other._doubleTextStyle),
      singleMinWidth: other._singleMinWidth,
      doubleMinWidth: other._doubleMinWidth,
    );
  }
}
