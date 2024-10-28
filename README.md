# Storyteller Brightcove Collector

This package is a utility to record player events from an `AVPlayer` and feed them into Brightcove analytics.

## Setup

At app launch, setup Brightcove Module with your data by creating `StorytellerBrightcoveModuleConfiguration`:

```swift
let brightcoveConfiguration = StorytellerBrightcoveModuleConfiguration(
    account: "<account ID>", 
    playerName: "Video Player", // optional
    source: "<source>", 
    destination: "<destination>"
)
```

Next step is to create a `StorytellerBrightcoveModule` and pass it to the `modules` array on the `Storyteller` object:

```swift
Storyteller.modules = [StorytellerBrightcoveModule(configuration: brightcoveConfiguration)]
```
