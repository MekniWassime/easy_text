import 'package:flutter/material.dart';

class EasyText extends StatelessWidget {
  const EasyText(
    this.data, {
    Key? key,
    this.modifyStyle,
    this.styleSelector,
    this.maxLines,
    this.locale,
    this.overflow,
    this.semanticsLabel,
    this.softWrap,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.textHeightBehavior,
    this.textScaleFactor,
    this.textWidthBasis,
    this.textKey,
  }) : super(key: key);

  final String data;
  final TextStyle Function(TextStyle style)? modifyStyle;
  final TextStyle? Function(TextTheme theme)? styleSelector;
  final int? maxLines;
  final Key? textKey;
  final Locale? locale;
  final TextOverflow? overflow;
  final String? semanticsLabel;
  final bool? softWrap;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextHeightBehavior? textHeightBehavior;
  final double? textScaleFactor;
  final TextWidthBasis? textWidthBasis;

  @override
  Widget build(BuildContext context) {
    TextStyle? style;
    if (styleSelector != null) {
      style = styleSelector!(Theme.of(context).textTheme);
    }
    if (modifyStyle != null && style != null) {
      style = modifyStyle!(style);
    }
    return Text(
      data,
      style: style,
      key: textKey,
      maxLines: maxLines,
      locale: locale,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  factory EasyText.displayLarge(
    String data, {
    TextStyle Function(TextStyle style)? modifyStyle,
    Key? key,
    Key? textKey,
    int? maxLines,
    Locale? locale,
    TextOverflow? overflow,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) {
    return EasyText(
      data,
      modifyStyle: modifyStyle,
      styleSelector: (theme) => theme.displayLarge,
      key: key,
      textKey: textKey,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  factory EasyText.displayMedium(
    String data, {
    TextStyle Function(TextStyle style)? modifyStyle,
    Key? key,
    Key? textKey,
    int? maxLines,
    Locale? locale,
    TextOverflow? overflow,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) {
    return EasyText(
      data,
      modifyStyle: modifyStyle,
      styleSelector: (theme) => theme.displayMedium,
      key: key,
      textKey: textKey,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  factory EasyText.displaySmall(
    String data, {
    TextStyle Function(TextStyle style)? modifyStyle,
    Key? key,
    Key? textKey,
    int? maxLines,
    Locale? locale,
    TextOverflow? overflow,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) {
    return EasyText(
      data,
      modifyStyle: modifyStyle,
      styleSelector: (theme) => theme.displaySmall,
      key: key,
      textKey: textKey,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  factory EasyText.bodyLarge(
    String data, {
    TextStyle Function(TextStyle style)? modifyStyle,
    Key? key,
    Key? textKey,
    int? maxLines,
    Locale? locale,
    TextOverflow? overflow,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) {
    return EasyText(
      data,
      modifyStyle: modifyStyle,
      styleSelector: (theme) => theme.bodyLarge,
      key: key,
      textKey: textKey,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  factory EasyText.bodyMedium(
    String data, {
    TextStyle Function(TextStyle style)? modifyStyle,
    Key? key,
    Key? textKey,
    int? maxLines,
    Locale? locale,
    TextOverflow? overflow,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) {
    return EasyText(
      data,
      modifyStyle: modifyStyle,
      styleSelector: (theme) => theme.bodyMedium,
      key: key,
      textKey: textKey,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  factory EasyText.bodySmall(
    String data, {
    TextStyle Function(TextStyle style)? modifyStyle,
    Key? key,
    Key? textKey,
    int? maxLines,
    Locale? locale,
    TextOverflow? overflow,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) {
    return EasyText(
      data,
      modifyStyle: modifyStyle,
      styleSelector: (theme) => theme.bodySmall,
      key: key,
      textKey: textKey,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  factory EasyText.labelLarge(
    String data, {
    TextStyle Function(TextStyle style)? modifyStyle,
    Key? key,
    Key? textKey,
    int? maxLines,
    Locale? locale,
    TextOverflow? overflow,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) {
    return EasyText(
      data,
      modifyStyle: modifyStyle,
      styleSelector: (theme) => theme.labelLarge,
      key: key,
      textKey: textKey,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  factory EasyText.labelMedium(
    String data, {
    TextStyle Function(TextStyle style)? modifyStyle,
    Key? key,
    Key? textKey,
    int? maxLines,
    Locale? locale,
    TextOverflow? overflow,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) {
    return EasyText(
      data,
      modifyStyle: modifyStyle,
      styleSelector: (theme) => theme.labelMedium,
      key: key,
      textKey: textKey,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  factory EasyText.labelSmall(
    String data, {
    TextStyle Function(TextStyle style)? modifyStyle,
    Key? key,
    Key? textKey,
    int? maxLines,
    Locale? locale,
    TextOverflow? overflow,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) {
    return EasyText(
      data,
      modifyStyle: modifyStyle,
      styleSelector: (theme) => theme.labelSmall,
      key: key,
      textKey: textKey,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  factory EasyText.titleLarge(
    String data, {
    TextStyle Function(TextStyle style)? modifyStyle,
    Key? key,
    Key? textKey,
    int? maxLines,
    Locale? locale,
    TextOverflow? overflow,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) {
    return EasyText(
      data,
      modifyStyle: modifyStyle,
      styleSelector: (theme) => theme.titleLarge,
      key: key,
      textKey: textKey,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  factory EasyText.titleMedium(
    String data, {
    TextStyle Function(TextStyle style)? modifyStyle,
    Key? key,
    Key? textKey,
    int? maxLines,
    Locale? locale,
    TextOverflow? overflow,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) {
    return EasyText(
      data,
      modifyStyle: modifyStyle,
      styleSelector: (theme) => theme.titleMedium,
      key: key,
      textKey: textKey,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  factory EasyText.titleSmall(
    String data, {
    TextStyle Function(TextStyle style)? modifyStyle,
    Key? key,
    Key? textKey,
    int? maxLines,
    Locale? locale,
    TextOverflow? overflow,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) {
    return EasyText(
      data,
      modifyStyle: modifyStyle,
      styleSelector: (theme) => theme.titleSmall,
      key: key,
      textKey: textKey,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  factory EasyText.headlineLarge(
    String data, {
    TextStyle Function(TextStyle style)? modifyStyle,
    Key? key,
    Key? textKey,
    int? maxLines,
    Locale? locale,
    TextOverflow? overflow,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) {
    return EasyText(
      data,
      modifyStyle: modifyStyle,
      styleSelector: (theme) => theme.headlineLarge,
      key: key,
      textKey: textKey,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  factory EasyText.headlineMedium(
    String data, {
    TextStyle Function(TextStyle style)? modifyStyle,
    Key? key,
    Key? textKey,
    int? maxLines,
    Locale? locale,
    TextOverflow? overflow,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) {
    return EasyText(
      data,
      modifyStyle: modifyStyle,
      styleSelector: (theme) => theme.headlineMedium,
      key: key,
      textKey: textKey,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }

  factory EasyText.headlineSmall(
    String data, {
    TextStyle Function(TextStyle style)? modifyStyle,
    Key? key,
    Key? textKey,
    int? maxLines,
    Locale? locale,
    TextOverflow? overflow,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) {
    return EasyText(
      data,
      modifyStyle: modifyStyle,
      styleSelector: (theme) => theme.headlineSmall,
      key: key,
      textKey: textKey,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }
}
