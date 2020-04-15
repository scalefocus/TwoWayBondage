
# TwoWayBondage

[![Swift Version][swift-image]][swift-url] [![License][license-image]][license-url] [![Build Status](https://travis-ci.com/scalefocus/TwoWayBondage.svg?branch=master)](https://travis-ci.com/scalefocus/TwoWayBondage) [![CocoaPods Compatible](https://img.shields.io/cocoapods/v/TwoWayBondage)](https://img.shields.io/cocoapods/v/TwoWayBondage) [![Platform](https://img.shields.io/cocoapods/p/TwoWayBondage)](http://cocoapods.org/pods/TwoWayBondage)


Easy to use two way binding Library. Simpliest way to bind values from ViewModels to Views. Based on  [SimpleTwoWayBinding](https://cocoapods.org/pods/SimpleTwoWayBinding)

Table of contents
=================  

* [Requirements](#requirements)
* [Installation](#installation)
* [Usage example](#usage-example)


## Requirements
- iOS 10.0+
- Swift 4

## Installation

TwoWayBondage is available through [CocoaPods](https://cocoapods.org/pods/TwoWayBondage). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TwoWayBondage'
```

To get the full benefits import `TwoWayBondage` at the start of the source file:

```swift
import TwoWayBondage
```

## Usage Example

#### Create ViewModel
All of the bindable properties should be declared as Observable in ViewModel.
```swift
import TwoWayBondage

struct ExampleViewModel {
    let name: Observable<String> = Observable<String>()
    let isBroccoliLover: Observable<Bool> = Observable<Bool>()
    let isIceCreamLover: Observable<Bool> = Observable<Bool>(true)
}
```

#### Create ViewController 
To bind an Observable with UIControls and vise versa - bind or bindAndFire should be called in ViewController. 
```swift
@IBOutlet private weak var nameTextField: UITextField!
@IBOutlet private weak var welcomeLabel: UILabel!
@IBOutlet private weak var iceCreamSwitch: UISwitch!

override viewDidLoad() {
    ...
    bindEvents()
}

private func bindEvents() {
    nameTextField.bind(viewModel.name)

    viewModel.name.bind { [weak self] name in
        self?.welcomeLabel.text = name
    }
    
    vieModel.isIceCreamLover.bindAndFire { [weak self] value in
        self?.iceCreamSwitch.setOn(value, animated: true)
    }
}
```

## License

TwoWayBondage is available under the MIT license. See the LICENSE file for more info.

[swift-image]:https://img.shields.io/badge/swift-5-green.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
