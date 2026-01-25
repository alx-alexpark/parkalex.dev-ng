---
pubDatetime: 2026-01-25T18:00:00Z
title: Alex's Guide to Basic OPSEC
postSlug: opsec
featured: true
draft: false
tags:
  - privacy
  - cybersecurity
description: For those of us who are paranoid
---

Most people are aware that their personal data is being harvested and sold at mass for profit, but very few know what steps they can take to minimize their risk. Of course, It's impossible to fully avoid being tracked online in this day and age without running off into the woods with no technology, but there are still many things you can do to take matters into your own hands.

That being said, this is my personal, opinionated guide to modern OPSEC. This post is also in-part a reflection on what has worked for me, and what I need to work on. As such, your mileage may vary when following this guide.

## Don't give your real name or email to websites

Something simple that most people overlook is that most websites you sign up for don't have a a reason to have your real name or email. Make up a fake name or just smash your keyboard for a few seconds. And obviously, don't do this on websites where giving a false name could get you in legal trouble.

It's also wise to use email aliases so advertisers can't use your email to link your activity across different services. [Simplelogin](https://simplelogin.io/) is a good way to create one-time email addresses for each website you sign up for. It's open-source and I'd recommend hosting it yourself if you have the time and knowledge.

## Opt out of personalized ads and tracking

On popular websites like Google, Facebook, Instagram, etc... there are often options to opt-out of data collection for personalized ads. On Google specifically, you can also turn off saving of search and Youtube history. Of course, I don't really trust that opting out actually does anything, but it's better to opt-out than not.

## Don't use Google for search

Google has a horrible privacy track record. Instead, you can use DuckDuckGo or [SearXNG](https://docs.searxng.org/). What's SearXNG? It's basically a search engine that combines multiple search engines into one, all while anonymizing your searches with other users.

## Use secure messaging apps

When talking to your friends, family, and whoever else you talk to, use secure messaging apps. [Signal](https://signal.org/#signal) is basically the best private messenger out there, it's easy enough that anybody could use, and it's pretty much as secure as a messaging app can get. If you have Apple devices, iMessage is also a decently secure option, especially if you use [Contact Key Verification](https://support.apple.com/en-us/118246). Keep in mind that using any messaging app that is not fully end-to-end encrypted means that it is possible for your messages to be trivially intercepted.

## Choose privacy-respecting websites & cloud services

Cloud services are great and convenient, but also come with their fair share of privacy risks. For example: if you upload your files to Google Drive, Google is able to see those files and potentially collect and sell data based on them.

But on the bright side, there are cloud services (ex: email, file storage), that respect your privacy. [Proton](https://proton.me/) provides a fairly decent email and drive service, and is a great alternative over something like Gmail (although i'm not the biggest fan of the direction they're going right now). [Tuta](https://tuta.com/) is also pretty nice for email. And if you're using iCloud, be sure to enable Advanced Data Protection to enable end-to-end encryption for the stuff you have stored in iCloud (ex: photos, backups, drive, etc....).

You can also use a program like [Cryptomator](https://github.com/cryptomator/cryptomator) or [rclone](https://rclone.org/crypt/) to setup an encrypted overlay filesystem on top of a cloud storage provider, so they can't see your files.

If you have the infrastructure and time to do so, consider selfhosting things you would usually use cloud services for. You don't have to trust your files with a cloud provider if you setup a storage server in your house.

This tip might be one be the single most important one, given how much society as a whole relies on 3rd party internet services.

## Use a password manager and Yubikeys/passkeys

Everyone should be using a password manager by now. Passwords get leaked in data breaches pretty much every day, so if you're reusing passwords across different websites, it's only a matter of time until you get hacked. By using a password manager, you'll be able to generate random passwords for each site and not need to worry about remembering them. My personal recommendations for a password manager are [Bitwarden](https://bitwarden.com/) (free/open source) or [1Password](https://1password.com/) (paid/propietary).

It's also good to use a Yubikey or passkey for 2FA whenever possible, as it's the undoubtedly the most secure 2FA method. (I personally LOVE Yubikeys and I would recommend them to everyone)

## Hardening your browser

Having an ad and tracker blocker like uBlock Origin installed is an ABSOLUTE MUST. Not only will you not see ads, hundreds of trackers will be silently blocked in the background.

Beyond cookies and tracking pixels, the single biggest threat to your privacy when using the internet is browser fingerprinting. Essentially, browser fingerprinting creates a unique fingerprint of your browser, which lets advertisers track you regardless of cookies or IP address. To defend against browser fingerprinting, you can use a [Firefox user.js](https://github.com/arkenfox/user.js) or use a browser like [Librewolf](https://librewolf.net/) that is hardened out of the box. A comparison of various browsers' privacy features can be found [here](https://privacytests.org/?lang=en).

## Lock down your devices

Make sure to secure your physical devices themselves as well. Have a strong pin/password on all your devices, and enable the option to wipe all data after 10 failed attempts. Locking certain apps behind Face ID/biometrics is also advisable.

If you're on an iPhone, you can enable "Lockdown Mode", although personally I find that a little excessive. If you need the most private/secure phone possible, I'd recommend nothing other than getting a pixel with [GrapheneOS](https://grapheneos.org/) on it.

Be very careful with granting permissions to apps. Especially sensitive ones like location, photos, files, and contacts. If possible, avoid giving full access to your photos or contacts to apps, giving limited access instead.

Always encrypt your disks on all your devices. This makes it so if your devices are either lost, stolen, or confiscated, the data on it cannot be read. If you're on Linux or Mac, it should be a trivial task, although on Windows it is more difficult. For portable devices such as laptops, disk encryption is non-negotiable, as laptops get lost or stolen all the time.

And finally, follow good cybersecurity practices in general. The specific details of such go beyond the scope of this guide, but searching online will return plenty of resources for securing any device you have.

## Prefer open-source software

Open source software is amazing because they seldom have the spyware and other sketchy things that come included with many proprietary apps. Overall, they're often a lot more secure and privacy-respecting, and you should make an effort to use open source software if possible.

I highly recommend running Linux on your computer, as it doesn't have all the telemetry and tracking that is so common in other OSes like Windows and MacOS. Using Linux also makes using primarily open-source software effortless as most packages on repos are open-source. My personal recommendations for distros are NixOS, Fedora, and Pop!\_OS. If you want to be super super paranoid, you can try Qubes OS.

If you're on Android, get F Droid (open-source-only app store), and try to get most of your apps from there.

## Further reading

Obviously, this guide is not all-inclusive. It highlights my personal recommendations, but if you want to go further in protecting your privacy and security, these are websites I would check out.

[www.privacyguides.org](https://www.privacyguides.org/)
[ssd.eff.org](https://ssd.eff.org) (Intended mostly for a non-technical audience)

Thanks for reading my blog post! Share it with your friends if you found it helpful.
