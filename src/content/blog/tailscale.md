---
pubDatetime: 2025-2-19T20:10:00Z
title: Tailscale is a Actually a Great Censorship Circumvention Tool
postSlug: tailscale
featured: false
draft: false
tags:
  - networking
  - sysadmin
  - cybersecurity
description: Tailscale will actually beat most DPI-based censorship, while also being easy to setup and also a great overlay network.
---

If you’re anything like me, you likely spend a lot of time in places with exceedingly strict website filtering. You’ve probably already tried the classic tricks such as changing your DNS, or even using a VPN. But with the advent of DPI (deep packet inspection), VPN protocols have become trivial to detect and block. While there are tools designed to specifically circumvent DPI such as [PowerTunnel](https://github.com/krlvm/PowerTunnel), which spoofs the `Host` header, those tools only work for http/web and can also be unreliable.

I’ve actually used Tailscale for about 2 or 3 years now, but I’ve been frustrated by how it never works on those aforementioned networks where DPI is in use. This is because Tailscale at its core is just WireGuard, one of the easiest VPN protocols to detect. But unbeknownst to many, Tailscale actually has a utility for just this usecase.

Tailscale allows the use of [DERP (Designated Encrypted Relay for Packets](https://tailscale.com/blog/how-tailscale-works#encrypted-tcp-relays-derp)) servers, which are essentially a way to tunnel your WireGuard traffic fully over HTTPS. This will get you around most DPI based blocks, given that your the Tailscale coordination server and DERP servers themselves are not blocked. For me, they were blocked, so I used [Headscale](https://headscale.net/stable/) to run both a coordination and DERP server on an unblocked domain that I controlled. If you do host your own, keep in mind that your DERP server cannot be behind NAT, and must have direct access to the internet.

Now, this method isn’t perfect, as network administrators or even advanced DPI software can detect the unusual traffic patterns of only sending traffic to a single host. However, it works well enough for most needs. I’ll end this post by saying that you should never bypass network restrictions with malicious intent. I decided to do this because I had many resources I wanted to access over Tailscale anyway, and network restrictions became a significant hinderance to my productivity.
