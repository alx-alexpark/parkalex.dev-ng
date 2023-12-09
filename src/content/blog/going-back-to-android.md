---
pubDatetime: 2023-12-09T21:15Z
title: Why I Went Back to Android
postSlug: homelab
featured: false
draft: false
tags:
  - android
  - cybersecurity
description: After being an Android user for life, I switched to iPhone for a period of 2~ years. However I switched back to Android and heres why.
---

The first electronic device I remember using, was an Android. So was my first phone, a handed-down Samsung Galaxy S8 with light cracks on the screen. After using that for a few years, I got tired of it, and eventually wanted to switch to iOS. But after using iOS for a few years, I wanted to go back to Android.

I decided to give my current iPhone 13 to one of my other family members and got a Google Pixel 6a used in mint condition for a little over $210~, which was a really good deal. Although due to shipping delays, the phone arrived over 2 weeks late, it still was a great phone when it arrived.

After unboxing it and inspecting it, I installed GrapheneOS on it to replace the stock os. [GrapheneOS](https://grapheneos.org/) is a private and secure open-source Android custom ROM which I will explain more in depth later.

in this blog post, I will document my experiences with the switch back and why I got pushed to do it. Also, before you yell at me for being an Apple hater, I literally use Apple products on a daily basis. I simply don’t like the iPhone in particular.

## But why?

### Privacy and Security

Although Apple claims that their devices have top-notch privacy, that claim isn’t auditable because they don’t open source their OSes. This is clearly shown in the modern development of the iMessage protocol being reverse engineered. Although it was initially a success, Apple quickly blocked them. The co-founder of Beeper Mini, an app with a reverse-engineered iMessage implementation said, [“if Apple truly cares about the privacy and security of their own iPhone users, why would they try to kill a service that enables iPhones to send encrypted chats to Android users?”](https://arc.net/l/quote/aayxoewd), showing how Apple cares about financial initiatives more than user privacy. However, privacy on Android can be arguably worse due to the prevalence of Google tracking. Luckily, GrapheneOS is fully degoogled by default, but you can run a sandboxed Google Play Services to retain functionality for certain apps.

Furthermore, the largely held belief that Android is largely more insecure than iOS is no longer true. In the early days of Android, carrier delay caused security updates to rarely be delivered, exposing a large amount of attack surface. However nowadays, security updates can be delivered within hours, and Android posses one of the most advanced security models in existence. This is even more exaggerated since GrapheneOS applies countless patches to defend against known and unknown vulnerabilities. I’m not saying that iPhones are not secure, it’s just that Androids implement security in more verifiable and auditable ways. Also, with apps like Wasted or Sentry, Android allows third party apps to increase the security of a device, unlike iOS.

### Customizability and Sideloading

iOS for years has had a reputation for being heavily locked down. However, on Android, you can customize pretty much anything to your needs. You can also install apps that are not available on the official Google Play Store, which has been criticized for taking down apps in the past.

It is hard to find open-source apps on the Apple’s App store, and nothing like F-Droid exists on iOS. In my experience, apps from F-Droid generally are more high quality and have nicer UX. It feels good knowing that the apps you are using are not filled with trackers and ads. Currently, the ability to use alternative app stores is only present on Android.

## My experience after the switch

At first I was worried that downgrading from a flagship phone to a budget phone would be a stark difference, but the truth it is not that bad. Although I did notice worse camera quality and GPS reception, I still found the phone useable in daily life.

The nice part of GrapheneOS is that most of the privacy and security enhancements are designed to not interfere at all with daily usage. My phone still feels like a normal phone. It can do everything you would expect a normal phone to do. Thats why I would recommend GrapheneOS even to normal people, since it rarely interferes with usage.

Overall, i’m satisfied with the switch. I feel like I made the right choice and I would recommend others to convert as well.
