<img src="CoolCaptions/Assets.xcassets/AppIcon.appiconset/CoolCaptionsIcon.png" alt="Cool Captions App Icon" width="128" height="128">

# Cool Captions

*A take-home exercise for senior product engineers.*

- **Time** — 6 hours.
- **Format** — Take-home research + coding task.
- **Deliverable** — Zip file with your report + code.

## The Scenario

You’re the senior product engineer on a live captioning app used mostly by deaf and hard-of-hearing people. The transcript shown on screen is usually the user’s *only* way of following a conversation.

Captions come from a cloud transcription service. Sometimes the connection to it slows down, drops out, or comes back after a gap. The app reliably detects and reports when this happens using its `Connection` service.

Over the last quarter, support has seen a rise in messages like *"the app just stopped"* and *"I lost part of the conversation."* The team have a hunch: users don’t understand what’s happening when the connection changes, and they lose trust in the app as a result.

## Your Task

1. **Find the problem** — Use the provided research and data to work out which part of this is worth solving first. The team’s hunch is a starting point, not a conclusion.
2. **Propose one change** — A single, well-scoped treatment to the captioning screen that addresses the problem you found. Say what you’re not doing and why.
3. **Implement it** — Show us how you’d make your change in the sample codebase. The connection status is provided — treat it as accurate and don’t build out real detection.
4. **Say how you’d know it worked** — Write a plan detailing how you’d release this, what you’d measure, and what would make you roll it back.

You own the scope. We’re evaluating what you choose to solve as much as how you build it.

## What’s in the Box

### Code

A deliberately minimal sample app that just presents a captioning screen. Press start to see a canned conversation appear, one line at a time. Use the debug button to open a sheet where you can override the app’s connection status.

- `Captioner` stands in for a real transcription service, delivering canned captions based on connection status.
- `Connection` provides a model of the current network connection state. Treat it as a real source of truth.
- `Analytics` stands in for a real reporting service, and is the source of events in the analytics data file.

### Research & Data

- Five short excerpts from recent customer interviews.
- Twelve weeks of analytics data for 500 users. Expect to spend some time here before you decide what to build.

## What You’ll Deliver

Please send us a zip file containing the following:

- The sample project, with your changes implemented.
- A short report detailing the problem you chose, the evidence for it, and your measurement plan.

## Ground Rules

- Stick to the project’s structure. It’s a demo app. The task isn’t to turn it into a production codebase.
- Don’t build out real connection detection, audio, or persistence unless they’re essential to your treatment.
- Use whatever tools you normally use — AI or otherwise. But be prepared to explain everything you’ve produced.
- 6 hours is a target, not a hard cap or deadline from when you received the task.

## What We’re Looking For

- You identify a real user risk from the evidence, and scope a coherent response.
- You build a reliable flow with sensible state management and edge case handling.
- You make product and technical decisions without needing to be prompted.
- You treats accessibility, failure states, and instrumentation as part of the product.
- You explain tradeoffs clearly and can communicate what you’ve done in writing.

A beautiful interface with weak reasoning doesn’t pass. Producing a large amount of code is a non-goal.
