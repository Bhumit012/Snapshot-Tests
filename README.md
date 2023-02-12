# SnapshotTest Demo

The SnapshotTest Demo is a demonstration of how to perform snapshot tests in a Swift project. To get started:

## Getting started

Install Snapshot Testing in the Swift Package Manager (https://github.com/pointfreeco/swift-snapshot-testing).

To add your files:

Add the target for the Package to the test target (not the UI test target, as this is not a traditional UI test library).

The SnapshotTest Demo tests the user interface to ensure that no unintended changes go unnoticed by the developers. The tests are currently performed on an iPhone 12, but this may change in the future.

The visual output of the tests should be a series of PNG files for each new screen. To use the SnapshotTest Demo, make any changes to the color or font of the screen and run the test. If the test fails, turn on recording in the test file to update the image.
