# Storyteller Brightcove Collector

This package is a utility to record player events from an `AVPlayer` and feed them into Brightcove analytics.

## Setup

At app launch, set your Brightcove account and optionally your player name:

```swift
Brightcove.Collector.account = "<account ID>"
// optional
Brightcove.Collector.playerName = "<player name>"
```

## Usage

When you have an `AVPlayer` you want to track events for, just create a collector and pass it the player and some metadata for the video.

Brightcove events for several videos are grouped via a session, which depends on your use cases but is basically a screen that plays multiple videos. You don't have to do anything to start a session, the Collector will do that for you. Just feed it `AVPlayers` whenever you show a new video. But to end a session, you have to call `Collector.endSession()`.

To illustrate how all this comes together in the context of Storyteller videos and players, here's an example using our Storyteller delegate method:

```swift
var brightcoveCollector: Brightcove.Collector?

func onUserActivityOccurred(type: UserActivity.EventType, data: UserActivityData) {
    if type == .CurrentPlayerChanged {
        let videoData = Brightcove.VideoData(
            source: "<enter source>",
            destination: "<enter destination",
            videoDuration: String(data.contentLength ?? 0),
            video: data.metadata["brightcoveVideoId"] ?? data.pageId ?? data.clipId ?? "unknown",
            videoName: data.metadata["brightcoveVideoTitle"] ?? data.storyTitle ?? data.clipTitle ?? "unknown"
        )

        // Store the collector in a property, and overwrite it each time you have a new player
        brightcoveCollector = data.player.flatMap { Brightcove.Collector(player: $0, videoData: videoData) }
    }

    if type == .DismissedStory || type == .DismissedClip || type == .DismissedAd {
        Brightcove.Collector.endSession()
    }
}
```
