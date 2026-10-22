# Git Notify

A native SwiftUI macOS app, starting with a simple window.
The eventual goal is a menu-bar app for GitHub mentions.

## Run

Requires macOS and full Xcode.

1. Open `Git Notify.xcodeproj` in Xcode.
2. Select the **Git Notify** scheme and **My Mac** destination.
3. Press **Command-R** to build and run.

The app opens a window displaying **Hello, Bare!**.
Stop it using Xcode's Stop button or **Command-Q** in the app.

The entry point is `Git Notify/GitNotifyApp.swift`, and the window's content is
defined in `Git Notify/ContentView.swift`. No third-party dependencies are used.

This first milestone does not connect to GitHub, read credentials, access the
network, monitor activity, store data, or send notifications.
