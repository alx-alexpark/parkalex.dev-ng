---
pubDatetime: 2024-3-5T20:00:00Z
title: Reverse DDoS Attacks?
postSlug: reverse-ddos
featured: false
draft: false
tags:
  - cybersecurity
  - networking
description: How easy it is to take down a network from inside, and why.
---

It was early January, and school was closed due to a “cold day”. I was pretty bored, and thought it would be pretty funny to scan the entire internet on port 25565 to find some Minecraft servers. After all, it seemed to be a cool thing computer nerds did. Using a tool called [masscan](https://github.com/robertdavidgraham/masscan), I started sending out millions of packets a second, reducing the scan time to a matter of hours.

As it turns out, for my measly little EdgeRouter X, I was opening too many concurrent connections for it to handle. Within seconds, I had effectively stopped the flow of traffic through my home’s primary router.

I was surprised, but honestly, I felt stupid for not anticipating this. I reduced the packet rate, but quickly found out that it was simply way too easy to exhaust the amount of memory dedicated to tracking open TCP connections.

Eventually, I did a proper scan using a VPS, and I didn’t put much thought into it.

Recently, I traveled to San Francisco for [Summit](https://summit.hackclub.com), a meetup of Hack Clubbers. It was a life-changing experience where I met so many cool people. One of the funniest stories I remember from an friend is him accidentally shutting down the school WiFi during an important exam.

I was intrigued, since I had never thought of an attack like that from the inside, but suddenly I remembered the time I crashed my home network. I thought to myself, could there be such a thing as a reverse DDoS attack?

## Why does this work?

Generally, most routers trust the LAN network as trusted, and don’t apply any of the protections routers have available from traffic origination from the LAN.

However, on public networks, this security model falls apart. The seemingly trustworthy LAN becomes a playground for anyone with physical access to the network.

Many routers and firewalls don’t apply the same DoS protections from traffic originating from the LAN network, and this is why this attack is so powerful.

## Closing thoughts

Personally, I’m not too sure of any fixes, but it generally isn’t too hard to limit the number of concurrent connections initiated per device. Potentially, enabling TCP SYN attack protection on the LAN side could work. Unfortunately, many SOHO routers might not support this.

In the end, I thought this was pretty interesting, so I wanted to make a quick post about it. Sadly, I started writing this blog post about 2 months ago, and never got around to finishing it until now. From now on, I'm gonna hold the mindset that a blog post doesn't need to be super well thought out and expansive, and short posts detailing an interesting thought or idea are completely fine.

Meanwhile, check out some of my other blog posts, and special thanks to [Ajith](https://github.com/NalinPlad/) for giving me the inspiration and helping me scan the entire internet.

~ Alex
