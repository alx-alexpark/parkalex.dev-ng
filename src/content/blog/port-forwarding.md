---
pubDatetime: 2024-03-12T21:00:00Z
title: Port Forwarding Safety
postSlug: port-forwarding
featured: true
draft: false
tags:
  - homelab
  - cybersecurity
  - networking
description: Why you should reconsider forwarding that port.
---

Everyone has that moment when they have just set up their first server. It could be a website on a Raspberry Pi, or a Minecraft server for friends. Many people get an understandable desire to share whatever they set up with their friends or the internet.

Searching up guides, a common solution is to port forward. Many people, including myself, have forwarded ports, turning a blind eye to the potential security issues. I’m writing this blog post to reflect on my experiences, and to offer advice to other aspiring sysadmins and programmers.

The simple reality is that in most cases, port forwarding and uPnP is rather unsafe. Luckily, there are better alternatives, and ways to reduce your risk.

## The risk

To put it simply, exposing anything to the internet comes with a great deal of risk. You will encounter a flood of random port scans, or bots attempting automated attacks as a given. Getting an internet exposed machine hacked is really easy, if you don’t keep things up to date and misconfigure systems.

Personally, I think the risk of DDoS is negligible, it’s generally not a big deal with dynamic IPs, and it’s a minor inconvenience at most. The real risk comes from more advanced attacks.

## The easiest fix: don’t do it

Think about it, do you really need to expose your server to the entire internet? For example: for a small Minecraft server, you only need to allow a few friends to access it. In that case, a vpn such as [Tailscale](https://tailscale.com/) will suffice just fine. [Tailscale](https://tailscale.com/) isn’t a vpn like the ones that sponsor every single YouTube video, it's more like remote access, but for exchanging IP traffic. In short, it allows trusted people to securely access local network devices remotely, and is a much better solution for simpler needs.

## But if you really have to, setup a DMZ

No, not the border between North and South Korea, a [DMZ](https://en.wikipedia.org/wiki/DMZ_%28computing%29) in computer networking is like an isolated network where you put hosts which are at higher risk of being hacked, so that those devices can’t be used as an attack vector into your internal network.

Personally, I just set up a second subnet on my OpenWrt router, and set firewall rules to prevent traffic from heading anywhere other than the internet. It is also nice to set rules so that devices on your LAN can initiate connections to the DMZ, but not vice versa. VLANs may also work, depending on your setup.

Overall, draw a clear line between trusted and untrusted networks, and don’t let any traffic cross that line. Also, make sure you know the difference between a DMZ network and a DMZ host, they are different things, and the latter can actually be more unsafe than just port forwarding.

### Keep in mind, your exposed host machines should also be secure

Personally, I separate internet exposed services into VMs on my Proxmox VE Cluster.

You should also ensure all internet exposed machines are always updated, and configured to be as secure as possible (ex: disable password ssh).

A good assumption to make is that every possible attack vector will be taken advantage of, so put attempts to reduce attack surface.

Although outside the scope of this blog post, here is a good [Linux hardening guide](https://madaidans-insecurities.github.io/guides/linux-hardening.html), and [another](https://xeiaso.net/blog/paranoid-nixos-2021-07-18/).

## Closing

I would like to end this post by saying that i’m just a random high school student who is writing based off personal experience. Please do your own due diligence before taking any of my advice, and I am not responsible for any damages that result from anything done from the basis of any of my sayings.

Keep in mind that port forwarding will never be 100% safe, but so will pretty much any other internet activity.

Stay safe while poking holes through your firewall, and make sure to have fun with whatever you’re hosting on your infra.

See y’all soon

~ Alex
