# `thetillhoff.de`

This repository contains the current status of the website https://thetillhoff.de.

> The grand idea was to make the site as fast as possible. Go on, check it out, I'll wait.

## development

I used my own two projects for building this site and developing it:
- [temingo](https://github.com/tillhoff/temingo) as static site generator
- [serve](https://github.com/tillhoff/serve) as local development webserver

As an alternative to setting this all up locally, a fully configured vs-code can be run on https://gitpod.io/#https://github.com/thetillhoff/thetillhoff.de.
Apart from that, check the [Taskfile.yml](./Taskfile.yml) for more details on the development steps.

## further details for those interested

Instead of using \<your favorite third-party framework, website-hoster\>, I wanted to create, optimize and host at least this single website on my own.
Some details of that setup are:
- The website runs on a containered [caddy webserver](https://caddyserver.com/). It makes let's-encrypt certificates just too easy.
- To publish the current version of the website, a magically happening periodic `git pull` is sufficient for my use-case (=> no hooks, integrations whatsoever).
- No usage of google-fonts or any other third-party hosting for anything.
- Provide both IPv4 and IPv6 access with valid certificates.



I'm trying to make this website as fast as possible. That means...
- ... the used CSS is *not* less enough to just internalize it in the HTML instead of using a dedicated CSS file. More details on that topic can be found on https://mathiasbynens.be/notes/inline-vs-separate-file. TL;DR: For CSS smaller than some 700 bytes, it actually *reduces* bandwidth and loading speed to have CSS and HTML in the same file, because of reduced packet overhead and the necessity of the additional request for the CSS file. (At the time of writing, the CSS alone has a size ~6kB minified.)
- ... while CDNs don't like unfrequently visited sites, they add quite a bit of convenience. Background: For sites not in their cache (anymore, as they aren't visited frequently enough) they add latency because they fetch the site themselves before providing it to the actual requester. At the same time not using CDNs reduces scaling capabilities, increases DDoS chances, and introduces additional latency for website-calls from other continents (to say the least). Therefore I actively decided to *use* a CDN, even if it means the first call of the website might not be as fast as it could for the requester (and all subsequent calls are probably cached anyway...).
