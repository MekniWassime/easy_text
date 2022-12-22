Easy text is a package that aims to reduce boilerplate code needed to use Material ThemeData while also allowing you to easily override properties like the color for example

## Usage

```dart
EasyText.bodyLarge("your text here")

EasyText.displayMedium(
    "your text here",
    modifyStyle: (style) => style.copyWith(color: Colors.red),
)
```

## Additional information

textKey property could be used for testing purposes to select the displayed Text widget