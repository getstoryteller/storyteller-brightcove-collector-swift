# Storyteller Brightcove Collector

This package is a utility to record player events from an `AVPlayer` and feed them into Brightcove analytics.

## Setup

At app launch, set up the Brightcove Module with your data by creating `StorytellerBrightcoveModuleConfiguration`:

```swift
import StorytellerBrightcoveIntegration

let brightcoveConfiguration = StorytellerBrightcoveModuleConfiguration(
    account: "<account ID>", 
    playerName: "Video Player", // optional
    source: "<source>", 
    destination: "<destination>"
)
```

The next step is to create a `StorytellerBrightcoveModule` and add it to the `modules` array on the `Storyteller` object:

```swift
Storyteller.modules.append(StorytellerBrightcoveModule(configuration: brightcoveConfiguration))
```
