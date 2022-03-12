# `thetillhoff.de`

This repository contains the current status of the website https://thetillhoff.de.

> The grand idea was to make the site as fast as possible. Go on, check it out, I'll wait.

## development

I used my own two projects for building this site and developing it:
- [temingo](https://github.com/tillhoff/temingo) as static site generator
- [serve](https://github.com/tillhoff/serve) as local development webserver

The image can be build and tested locally with
```
docker build . -t thetillhoff.de:dev && docker run --rm -it -p 3000:80 thetillhoff.de:dev
```

## Further details for those interested

Instead of using \<your favorite third-party framework, website-hoster\>, I wanted to create, optimize and host at least this single website on my own.
Some details/goals of the setup are:
- The website runs on a [caddy webserver](https://caddyserver.com/) container.
- No usage of google-fonts or any other third-party hosting for anything.
- Provide both IPv4 and IPv6 access with valid certificates.

While I'm trying to make this website as fast as possible ...
- ... the used CSS is *not* less enough to just internalize it in the HTML instead of using a dedicated CSS file. More details on that topic can be found on https://mathiasbynens.be/notes/inline-vs-separate-file. TL;DR: For CSS smaller than some 700 bytes, it actually *reduces* bandwidth and loading speed to have CSS and HTML in the same file, because of reduced packet overhead and the necessity of the additional request for the CSS file. (At the time of writing, the CSS alone has a size ~6kB minified.)
- ... I decided to *not* use a CDN. While they add convenience and performance to larger sites, they don't like unfrequently visited sites: For sites not in their cache (anymore, as they aren't visited frequently enough) they add latency because they fetch the site themselves before providing it to the actual requester. At the same time not using CDNs reduces scaling capabilities, increases DDoS chances, and introduces additional latency for website-calls from (at least) other continents.
