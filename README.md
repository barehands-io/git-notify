# Git Notify

A native SwiftUI macOS menu-bar app for future GitHub mentions.

## Run

Requires macOS and full Xcode.

1. Open `Git Notify.xcodeproj` in Xcode.
2. Select the **Git Notify** scheme and **My Mac** destination.
3. Press **Command-R** to build and run.

The app displays a small monochrome bell-and-branch logo in the menu bar.
Click it to see the app's message.
Stop it using Xcode's Stop button.

The entry point is `Git Notify/GitNotifyApp.swift`, and the window's content is
defined in `Git Notify/ContentView.swift`. No third-party dependencies are used.

## App logo

`Git Notify/Assets.xcassets/AppLogo.imageset/logo.svg` is the original full-color
logo, available as `Image("AppLogo")` for in-app branding.
`Artwork/MenuBarIcon.svg` is the monochrome menu-bar artwork.
`MenuBarIcon.imageset` contains 18-pixel and 36-pixel PNGs at 1x and 2x, giving
the status item a native size of 18 points. It is a template image, so macOS
adapts its color to light and dark menu bars. The native image size matters here:
SwiftUI frame modifiers do not reliably constrain a `MenuBarExtra` image.
`Artwork/AppIcon.svg` is the smaller, centered monochrome variant: a white bell
with a transparent branch cutout and no background. `AppIcon.appiconset` contains PNGs
rendered from this variant at each macOS icon size for Finder, the Dock, and other
system surfaces. Both Debug and Release builds use this app icon. The app remains
menu-bar-only; adding an icon does not add a Dock window or change its lifecycle.
Rebuild and relaunch the app after changing its assets.

This first milestone does not connect to GitHub, read credentials, access the
network, monitor activity, store data, or send notifications.
