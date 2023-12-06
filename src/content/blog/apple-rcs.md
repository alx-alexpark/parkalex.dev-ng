---
pubDatetime: 2023-12-06T16:10:00Z
title: Why Apple supporting RCS actually means Nothing
postSlug: apple-rcs
featured: false
draft: false
tags:
  - android
description: The flaws of the RCS protocol and the alternatives that are just so much better.
---

On the 16th of November, 2023, Apple announced that they would support RCS, or the Rich Communication Services protocol on their devices. A lot of people rejoiced at this announcement, but as I looked further, I realized that this change actually is pretty meaningless from the perspective of an Android user.

When I first heard of the announcement, I thought this was a pretty good thing. But, since I haven’t heard about RCS in several years, I wanted to get a little refresher on it’s capabilities, and maybe even try it out on my phone. That’s when I saw the first extremely significant drawback of RCS.

## Its a proprietary protocol

If you want an widely-supported, interoperable chat protocol, the foundation for that is for the protocol to be open and allow anyone to write an implementation of it. When I learned that one of the only few messaging apps that supports RCS was Google Messages, I knew that this protocol had already failed. For context, I run a degoogled phone and I don’t wish to install Google Messages as my primary SMS app. Although not everyone thinks this way, a proprietary communication protocol like RCS will have limited reach because being propietary interferes with widespread adoption.

## Its a carrier based protocol

Unfortunately, RCS is a protocol that relies on the mobile carrier to work. This is bad for several reasons.

### It puts trust in the carrier

To put it simply, nobody wants to do this. Ideally, carriers should be a dumb pipe that simply conveys the message ciphertext, but unfortunately RCS is built with carrier reliance.

### It makes chances to the protocol difficult

Carrier based protocols generally are very hard to improve upon, in contrast to internet based protocols. Think about SMS, it has received little to no improvements. Coordinating an update to the protocol across hundreds of carriers across many countries is a difficult task.

## There won’t even be E2EE support with Apple devices

Unfortunately, the end to end encryption capabilities of RCS won’t even work if you are talking to an Apple device. This means that your messages will remain green bubbles; being insecure. So what’s the point? RCS is just green bubbles, but with typing indicators and read receipts, which aren’t even that important.

## There are too many good alternatives.

There are so many good alternatives, such as the Signal messenger, which just works. You could also use the Matrix protocol or any other secure messenger. 

So... I procrastinated a week on publishing this article, and I discovered [pypush](https://github.com/JJTech0130/pypush) (written by a genius high schooler) and Beeper mini, which are basically just near-perfect reverse engineered versions of iMessage. After seeing this, it was pretty clear what the best way to enable interoperability between iOS and Android was. The only problem is that Beeper mini was propietary and paid, but once a open source Android app implementing iMessage is available, it is clear that this will enable full interoperability with iMessage. I think it is safe to say that now, RCS compatability on Apple is truly useless, because if Android users can just use the standard iMessage protocol, there is no use for RCS between Android and Apple devices.