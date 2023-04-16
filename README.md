# `thetillhoff.de`

This repository contains the current status of the website https://thetillhoff.de.

> The grand idea was to make the site as fast as possible. Go on, check it out, I'll wait.

## How to get started
- `./temingo -wsv`
<!--
- `npm create svelte@latest <projectname>`
  template: skeleton project
  type checking: no
  eslint: yes
  prettier: yes
  playwright: no
- `cp <projectname>/* ./ && rm -d <projectname>`
- `npm install`
- `npm run dev` || `npm run build`
-->

## Further details for those interested

Instead of using \<your favorite third-party framework, website-hoster\>, I wanted to create, optimize and host at least this single website on my own.
Some details/goals of the setup are:
- Speed, simplicity and efficiency are the primary goals.
- The website runs on a [caddy](https://caddyserver.com/) container.
- Supports dark and light mode (automatically picked up from browser settings). Without flashing...
- Since it's cumbersome to repeat html snippets, I'm using [temingo](https://github.com/thetillhoff/temingo) as a static website generator.
- No usage of google-fonts or any other third-party hosting for anything.
- No javascript (except a reference to add my own analytics)
- Provide both IPv4 and IPv6 access with valid certificates.

While I'm trying to make this website as fast as possible ...
- ... the used CSS is *not* less enough to just embed it in the HTML instead of using a dedicated CSS file. More details on that topic can be found on https://mathiasbynens.be/notes/inline-vs-separate-file. TL;DR: For CSS smaller than some 700 bytes, it actually *reduces* bandwidth and loading speed to have CSS and HTML in the same file, because of reduced packet overhead and the necessity of the additional request for the CSS file. (At the time of writing, the CSS alone has a size ~6kB minified.)
- ... I decided to *not* use a CDN. While they add convenience and performance to larger sites, they don't like unfrequently visited sites: For sites not in their cache (anymore, as they aren't visited frequently enough) they add latency because they fetch the site themselves before providing it to the actual requester. At the same time not using CDNs reduces scaling capabilities, increases DDoS chances, and introduces additional latency for website-calls from (at least) other continents.
- ... the goal was to get as much direct html with as less javascript as possible. That means that javascript frameworks like vuejs or svelte don't fit here.
      The static site generator hugo would fit, but has a gazillion of unnecessary features and doesn't support automatic code indentation in the generated files.
      In addition, it provides many ways of doing thing, which I do believe is not a good design.

<!--
# Considerations
- There needs to be a templating engine in place, so partials like navigation and footer and headers cannot diverge if not explicitely stated.
- To use a template, there are two ways:
  - simply reference it with default content
  - reference it, but override default content; this is similar to sveltes slots and components
- Templates and components are basically the same. Only the filepath is different.
- A template can combine html, css and javascript. The templating engine will extract the css and javascript and merge them each into dedicated files.
  Alternatively, they can be split into different files straight from the start, meaning the templating engine only needs to aggregate the files with the corresponding extensions.
- Templates should support input and output variables. That way, they can be reused more often.
- css should use variables. Those need to be set at a global place (aka :root).
- `temingo` could include the `serve` library, and inject a javascript snippet that holds a constant connection to the temingo dev web-server, so it can instantly trigger page reloads on changes.
- each non-html file should have a hash appended that changes with the contents.
- the integrated dev `serve`r should set the cache-control header to 0 (not cache anything at all).
- include options to automatically minify output html, css and js. This includes "uglifying" css (and js?).
  Extend this to automatically optimize images as well.
- print warning if unused code is detected, except for "components/libs".
- Write tests.
- Print html, css and js syntax lint issues.
- Document each feature in code AND via markdown. -> Use godoc for this to save redundancy.
- `temingo init` should create the initial folder structure and a simple example page that includes the most features. The necessary file contents should be embedded and can be used for tests.
- special needs have to be addressed. This includes RSS and sitemaps.

- don't make things flexible (aka variables) if there is no need. F.e. making the name of the templates or output folder flexible via variables.
-->

## Dark and light modes
To support both dark and light modes, the following adjustments were made:
- `color-scheme: light dark;` makes the browser automatically adjust the website default colors to the system preference. If you're on dark mode, the default background is dark, if your default is light mode, the background will be light by default.
  As a great side effect this prevents pages from flashing in the default color of the background (mostly white) before the CSS styling kicks in.
- In addition, conditional CSS colorization variables are set via media queries for `prefers-color-scheme`. Those are used to darken on highlight (f.e. when hovering) in light mode and vice versa.

## Development
Use `./temingo -wsv` for continuous building and serving.
