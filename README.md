# IBReusable

Xcode 4 removed support for Xcode 3 plugins, including visual components. Thankfully, Xcode 6 mostly brought them back when IB_DESIGNABLE was introduced. Unfortunately most of the posts on Stack Overflow and several blogs are suggesting extremely complicated approaches (inserting a content view as a subview, or doing gymnastics on -layoutSubviews) for something that should be trivial and built into Interface Builder, namely (re)using views designed as XIBs on storyboards (and other XIBs). Well, if you squint a little, it already is :stuck_out_tongue_winking_eye: but the documentation is not self-evident. Not anymore: this (spoiler alert: using -awakeAfterUsingCoder:) is The Right Way™ to do it :bowtie:

The actual code is implemented as a category in case you can't subclass IBReusableView (for instance if your are subclassing UIButton). Just use IBReusableView as guidance and adapt for your needs; the code is deceptively simple.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

ARC is required, Xcode 4.4+ is required.

It is probably compatible with any system version that supports ARC and compiler that supports literal array syntax. Other than guarded autolayout calls that are all iOS 6.0 compatible, only APIs introduced in iOS 4.0 are used.

## Installation

IBReusable is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "IBReusable"
```

## Author

André Braga, code@andrebraga.com

## License

IBReusable is available under the MIT license. See the LICENSE file for more info.
