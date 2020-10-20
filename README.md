# PrimaryFlightDisplay

This fork is a Swift Package Manager implementation, with the bare minimum files.

[![License MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://github.com/kouky/MavlinkPrimaryFlightDisplay/blob/master/LICENSE)


PrimaryFlightDisplay is a Mac + iOS framework for use in ground control station and telemetry systems for [micro UAVs](https://en.wikipedia.org/wiki/Miniature_UAV) (unmanned aerial vehicles).

The framework enables convenient embedding and animation of a primary flight display. Styles and colors are easily tuned whilst maintaining crisp graphics for any screen resolution.

![Screenshot](http://kouky.org/assets/primary-flight-display/default-screenshot.png)

## Features

- [x] Artificial horizon
- [x] Pitch ladder
- [x] Bank indicator
- [x] Heading tape indicator
- [x] Airspeed / Groundspeed tape indicator
- [x] Altitude tape indicator
- [x] Crisp procedurally generated graphics
- [x] Highly configurable colors, sizes, and tape indicator scales
- [x] No library dependenices other than Apple's SpriteKit
- [x] Flight stack and protocol agnostic
- [x] Compatible with MAVLink

## Requirements

- iOS 9.0+ / Mac OS X 10.10+
- Xcode 9.3+

## Installation


## Usage

Construct a new `PrimaryFlightDisplayView` with default styles, and add it to your view hierarchy.


```swift
let flightView = PrimaryFlightDisplayView(frame: frame)
flightView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
addSubview(flightView)
```

Send flight data to the primary flight display using the following API methods. The new flight data values will be animated immediately.

```swift
    flightView.setAttitude(rollRadians: Double(1), pitchRadians: Double(1.5))
    flightView.setHeadingDegree(Double(300))
    flightView.setAirSpeed(Double(20))
    flightView.setAltitude(Double(165))
```

### Custom Styles

The styles for the default primary flight display are easily tuned, see [Settings.swift](https://github.com/kouky/PrimaryFlightDisplay/blob/master/Sources/Settings.swift) for all tuneable styles.

[See the blog post](http://kouky.org/blog/2016/03/20/primary-flight-display-mavlink-ios-mac.html) and example project [MavlinkPrimaryFlightDisplay](https://github.com/kouky/MavlinkPrimaryFlightDisplay) which demonstrate how to create the primary flight display in the screenshot below.

![Screenshot](http://kouky.org/assets/primary-flight-display/alternative-screenshot.png)


## Contributing

Pull requests are welcome on the `master` branch.
