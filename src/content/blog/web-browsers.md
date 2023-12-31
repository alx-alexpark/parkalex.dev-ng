---
pubDatetime: 2023-12-31T19:00:00Z
title: My opinionated take on choosing a Web Browser
postSlug: web-browsers
featured: true
draft: false
tags:
  - cybersecurity
  - web
  - privacy
description: Today, there are too many options for web browsers. Here's my take.
---

## TL;DR:

Use [ungoogled-chromium](https://github.com/ungoogled-software/ungoogled-chromium) with the extension [uBlock Origin](https://github.com/gorhill/uBlock).

## Thinking broadly

**When choosing a browser, there really are only 2 options.** The major browser engines as of the moment are Blink/Chromium, Gecko/Firefox, and WebKit/Apple. If you are using WebKit, you are probably forced to because you are using an Apple device, so let's pretend that option doesn’t exist.

I evaluate browsers in 3 basic categories: privacy, security, and utility. Firefox and Chromium in the end are web browsers and can do exactly the same stuff, so utility is the same for both. Yes, feature disparity is a thing, but Chromium and Firefox’s individual strengths and disadvantages all level out in the end. So how do these browsers compare in security and privacy?

### Security

[To put it simply, Firefox is not as secure as Chromium](https://madaidans-insecurities.github.io/firefox-chromium.html). Firefox was weaker sandboxing and lacks exploit mitigations. The developers of GrapheneOS even chose Chromium to be their default browser due to [having much stronger exploit protection and sandboxing than other options.](https://grapheneos.org/usage#web-browsing)

### Privacy

In most cases, Firefox has better privacy by default. Firefox is backed by an organization that fights for privacy and freedom on the internet, in stark contrast to Chromium being backed by Google, a company known for numerous privacy violations.

However, a massive caveat in the above statement is that Chromium is open source. Although proprietary Chromium based browsers such as Chrome may be spyware, the open source browser engine itself is perfectly fine.

## Narrowing down on our choices

In my opinion, Chromium is the better browser engine. But Chromium based browsers are plentiful. Which one do I choose? Answering this is very straightforward.

Let's list the common Chromium based browsers and eliminate them one by one:

- ~~Chrome~~ (spyware)
- ~~Opera GX~~ (spyware)
- ~~Edge~~ (spyware)
- ungoogled-chromium ✓

My personal favorite Chromium based browser is [ungoogled-chromium](https://github.com/ungoogled-software/ungoogled-chromium). It retains the security advantage of Chromium based browsers and strips the Google (or other companies’) spyware.

******\*\*******\*\*******\*\*******Other nice Chromium based browsers:******\*\*******\*\*******\*\*******

- [Arc](https://arc.net/) — Despite being proprietary, I think it's still a great browser, and the people running it have made it clear they respect your privacy.
- [Brave](https://brave.com/) — Similar to ungoogled-chromium, with additional privacy improvements. If you choose Brave, I would disable the sketchy crypto things. **Disclaimer: I do not support the actions of Brave’s CEO**

## Browser extensions

If you are using ungoogled-chromium, [follow this guide to be able to install extensions](https://github.com/NeverDecaf/chromium-web-store) from the Chrome Web Store. Most of these extensions should also Firefox.

**Must-haves:**

- [uBlock Origin](https://github.com/gorhill/uBlock)
- Your password manager’s browser extension

**Nice to have:**

- [Privacy Redirect](https://github.com/SimonBrazell/privacy-redirect)
- [LanguageTool](https://github.com/languagetool-org/languagetool)
- [EFF Privacy Badger](https://github.com/EFForg/privacybadger)
