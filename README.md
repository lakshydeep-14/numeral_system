# Flutter Numeral System Both in International and Indian/ Hindu-Arabic System

This plugin helps you to display number as per International or Indian Numeral System. Internation Numeral System means the system that counts number in the form of ONES, TENS, HUNDREDS, THOUSANDS, TEN THOUSANDS, HUNDRED THOUSANDS, MILLION, etc. Indian or Hindu-Arabic System means the system that counts number in the form of ONES, TENS, HUNDREDS, THOUSANDS, TEN THOUSANDS, LAKH , TEN LAKH, CRORE, etc.

## Table of contents

- [Features](#features)
- [Installation](#installation)
- [Support and feedback](#support-and-feedback)


## Features

* You can use any of the numeral system.
* You can add textstyle.
* You can choose the numbers of digit to be displayed after decimal.


## Installation

Add package to the the pubspec.yaml.

```dart
numeral_system:
```

Import the package.

```dart
import 'package:numeral_system/numeral_system.dart';
```

Add NumeralSystem to the widget tree

```dart
Scaffold(
    body: Center(
        child:
            //By Default i.e INTERNATIONAL and two digits after decimal
            NumeralSystem(digit: 934023),
        )
    )
```

For Indian System

```dart
NumeralSystem(
    numberSystem: NumberSystem.indian,
    digit: 987387659876,
    digitAfterDecimal: DigitAfterDecimal.one,
    ),
```

For 3 digits after decimal

```dart
NumeralSystem(
    digit: 195659876,
    numberSystem: NumberSystem.indian,
    digitAfterDecimal: DigitAfterDecimal.three,
    ),
```

For adding textstyle

```dart
 NumeralSystem(
    digit: 987654,
    digitAfterDecimal: DigitAfterDecimal.three,
    textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.red)),
    ),
```


## Support and feedback

If I had missed anything to add, feel free to open a ticket or contribute!
You can reach me here:
[LinkedIn](https://www.linkedin.com/in/lakshydeep-14/) |
[GitHub](https://github.com/lakshydeep-14) |
[Medium](https://lakshydeep-14.medium.com/) |
[Google DevLibrary](https://devlibrary.withgoogle.com/authors/lakshydeep-14)
