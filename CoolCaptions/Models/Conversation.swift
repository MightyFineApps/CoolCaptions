struct Conversation {
    let lines: [String]

    func line(at index: Int) -> String {
        lines[index % lines.count]
    }
}

// MARK: -

extension Conversation {
    static let mock = Conversation(
        lines: [
            "Thanks for coming in today. How have you been since we last spoke?",
            "Mostly fine, although the headaches have come back a bit.",
            "How often would you say you're getting them?",
            "Maybe two or three times a week, usually in the afternoon.",
            "And are you still taking the tablets I prescribed?",
            "Yes, every morning, but I did miss a few days last month.",
            "That might explain it. Let's keep an eye on it for another few weeks.",
            "Should I come back if it gets worse?",
            "Yes, and call the surgery if you get any blurred vision.",
            "Okay, I will. Thanks, doctor.",
        ]
    )
}
