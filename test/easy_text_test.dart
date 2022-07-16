import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:easy_text/easy_text.dart';

void main() {
  testWidgets(
    'Test if all the factory methods extract the correct text style from the theme',
    (widgetTester) async {
      var theme = ThemeData.light();
      var textTheme = theme.textTheme;
      //Text widget merges the theme passed to it with the default -1
      var defaultTheme = theme.typography.englishLike;
      await widgetTester.pumpWidget(
        MaterialApp(
          theme: theme,
          home: Column(
            children: [
              EasyText.bodyLarge(
                "test data",
                textKey: const Key("bodyLarge"),
              ),
              EasyText.bodyMedium(
                "test data",
                textKey: const Key("bodyMedium"),
              ),
              EasyText.bodySmall(
                "test data",
                textKey: const Key("bodySmall"),
              ),
              EasyText.displayLarge(
                "test data",
                textKey: const Key("displayLarge"),
              ),
              EasyText.displayMedium(
                "test data",
                textKey: const Key("displayMedium"),
              ),
              EasyText.displaySmall(
                "test data",
                textKey: const Key("displaySmall"),
              ),
              EasyText.headlineLarge(
                "test data",
                textKey: const Key("headlineLarge"),
              ),
              EasyText.headlineMedium(
                "test data",
                textKey: const Key("headlineMedium"),
              ),
              EasyText.headlineSmall(
                "test data",
                textKey: const Key("headlineSmall"),
              ),
              //////////////////////////
              EasyText.labelLarge(
                "test data",
                textKey: const Key("labelLarge"),
              ),
              EasyText.labelMedium(
                "test data",
                textKey: const Key("labelMedium"),
              ),
              EasyText.labelSmall(
                "test data",
                textKey: const Key("labelSmall"),
              ),
              EasyText.titleLarge(
                "test data",
                textKey: const Key("titleLarge"),
              ),
              EasyText.titleMedium(
                "test data",
                textKey: const Key("titleMedium"),
              ),
              EasyText.titleSmall(
                "test data",
                textKey: const Key("titleSmall"),
              ),
            ],
          ),
        ),
      );
      Finder finder;
      Text text;
      //test bodyLarge
      finder = find.byKey(const Key("bodyLarge"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style,
        defaultTheme.bodyLarge?.merge(textTheme.bodyLarge),
      );
      //test bodyMedium
      finder = find.byKey(const Key("bodyMedium"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style,
        defaultTheme.bodyMedium?.merge(textTheme.bodyMedium),
      );
      //test bodySmall
      finder = find.byKey(const Key("bodySmall"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style,
        defaultTheme.bodySmall?.merge(textTheme.bodySmall),
      );

      //test displayLarge
      finder = find.byKey(const Key("displayLarge"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style,
        defaultTheme.displayLarge?.merge(textTheme.displayLarge),
      );
      //test displayMedium
      finder = find.byKey(const Key("displayMedium"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style,
        defaultTheme.displayMedium?.merge(textTheme.displayMedium),
      );
      //test displaySmall
      finder = find.byKey(const Key("displaySmall"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style,
        defaultTheme.displaySmall?.merge(textTheme.displaySmall),
      );
      //test headlineLarge
      finder = find.byKey(const Key("headlineLarge"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style,
        defaultTheme.headlineLarge?.merge(textTheme.headlineLarge),
      );
      //test headlineMedium
      finder = find.byKey(const Key("headlineMedium"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style,
        defaultTheme.headlineMedium?.merge(textTheme.headlineMedium),
      );
      //test headlineSmall
      finder = find.byKey(const Key("headlineSmall"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style,
        defaultTheme.headlineSmall?.merge(textTheme.headlineSmall),
      );
      //test titleLarge
      finder = find.byKey(const Key("titleLarge"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style,
        defaultTheme.titleLarge?.merge(textTheme.titleLarge),
      );
      //test titleMedium
      finder = find.byKey(const Key("titleMedium"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style,
        defaultTheme.titleMedium?.merge(textTheme.titleMedium),
      );
      //test titleSmall
      finder = find.byKey(const Key("titleSmall"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style,
        defaultTheme.titleSmall?.merge(textTheme.titleSmall),
      );
      //test labelLarge
      finder = find.byKey(const Key("labelLarge"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style,
        defaultTheme.labelLarge?.merge(textTheme.labelLarge),
      );
      //test labelMedium
      finder = find.byKey(const Key("labelMedium"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style,
        defaultTheme.labelMedium?.merge(textTheme.labelMedium),
      );
      //test labelSmall
      finder = find.byKey(const Key("labelSmall"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style,
        defaultTheme.labelSmall?.merge(textTheme.labelSmall),
      );
    },
  );
  testWidgets(
    "Test copyWith example to change text color",
    (widgetTester) async {
      var theme = ThemeData.light();
      Color expectedColor = Colors.red;
      await widgetTester.pumpWidget(
        MaterialApp(
          theme: theme,
          home: EasyText.bodyLarge(
            "test data",
            textKey: const Key("bodyLarge"),
            modifyStyle: (style) => style.copyWith(color: expectedColor),
          ),
        ),
      );
      Finder finder;
      Text text;
      //test bodyLarge
      finder = find.byKey(const Key("bodyLarge"));
      expect(finder, findsOneWidget);
      text = widgetTester.firstWidget(finder);
      expect(
        text.style?.color,
        expectedColor,
      );
    },
  );
}
