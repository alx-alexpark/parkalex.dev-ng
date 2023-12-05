---
pubDatetime: 2023-5-16T13:00:00Z
title: Hacking into my own Computer
postSlug: nixos-added-attack-surface
featured: false
draft: false
tags:
  - cybersecurity
  - linux
description: I forgot my yubikey to unlock my computer, but I still found a way in, making me quesstion the security considerstions of NixOS systems.
---

# Backstory

So I was at my friend's birthday party, and I brought my computer. But then I realized that I forgot my Yubikey, which is required to login because I setup pam_u2f.
I really wanted to be able to get into my computer, and ended up exploiting a security flaw in my own laptop to regain access.

# How I did it

On my laptop, you need both a u2f (Universal 2nd Factor) token and a password to login. However, I only implemented this in a later NixOS generation, and my earlier generations didn't have this security measure.
For those of you who don't know how NixOS works, you can rollback system upgrades and configuation changes, with each change stored in a "generation".
In my case, I was able to boot up a older generation from months ago, and from there modify my system configuration to temporarily disable requiring u2f to login.

# Is this really that big of a deal?

In my case, I had full disk encryption, and to even boot up my system you needed to enter a password. To add, you still needed my password to even login. Therefore, it was not a significant security threat to me.
However, in other environments, this may be a small to a huge risk because now you have to worry about the attack surface presented by past system configurations.
Imagine a hacker being able to boot up a version of a system that has vulnerable outdated packages and exploiting them.

# The easy fix

Use [nix-collect-garbage](https://nixos.org/manual/nix/stable/command-ref/nix-collect-garbage.html)

Delete old generations you don't need to minimize your attack surface.

# Conclusion

Make sure to delete your old NixOS generations!
