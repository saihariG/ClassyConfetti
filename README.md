# ClassyConfetti

[![CI Status](https://img.shields.io/travis/saihariG/ClassyConfetti.svg?style=flat)](https://travis-ci.org/saihariG/ClassyConfetti)
[![Version](https://img.shields.io/cocoapods/v/ClassyConfetti.svg?style=flat)](https://cocoapods.org/pods/ClassyConfetti)
[![MIT License](https://img.shields.io/apm/l/atomic-design-ui.svg?)](https://github.com/tterb/atomic-design-ui/blob/master/LICENSEs)
[![Platform](https://img.shields.io/cocoapods/p/ClassyConfetti.svg?style=flat)](https://cocoapods.org/pods/ClassyConfetti)

# ScreenShots / Gif


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 10.0 or later
- Swift 5+
- Xcode 10+

## Installation

ClassyConfetti is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ClassyConfetti'
```
### Manual Installation

Place the ```Confetti.swift``` file in your project 

## Usage

import the module in your viewcontroller
- ```import ClassyConfetti```

create an instance of the class
- ```let confetti = classyConfetti```

make the confetti animation by calling the ```emit(in view : UIView,with position : Position,for duration : CFTimeInterval = 1)``` function
- ```confetti.emit(in: view, with: .fromTop)``` 

emit function has an optional duration paramater which specifies the time duration of the animation
- ```confetti.emit(in: view, with: .fromTop, for: 2)```

### Constants 

with: Position

- fromTop 
- fromBeyondTop 
- fromTopLeft 
- fromTopRight 
- fromBottom 
- fromBottomLeft 
- fromBottomRight 
- fromCenter 

## Author

saihariG, krishnansaihari@gmail.com

## License

ClassyConfetti is available under the MIT license. See the LICENSE file for more info.
