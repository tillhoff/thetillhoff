# CHANGELOG

## v1.0.6 on 2023-04-30
- Fix hidden portrait mode navigation on ios

## v1.0.5 on 2023-04-30
- Fix hidden portrait mode navigation

## v1.0.4 on 2023-04-30
- Move custom margin-top of h1 from global to body > div.textcontainer > h1 to prevent impact on centered content
- Increase space between <li> elements for better mobile accessibility

## v1.0.3 on 2023-04-30
- Add portrait mode navigation (with hamburger menu)
- Fix content centering of About page
- Move global transition setting to buttons only (to prevent page flickering on load)
- Change space above footer from <br> to padding
- Change order of tags within <head> to (minimally) improve page rendering speed

## v1.0.2 on 2023-04-16
- Added first blogpost in markdown
- Added presentations, so the website https://p.thetillhoff.de can be deprecated soon
- Added link to presentations to page navigation
- Include `Caddyfile` in docker build
- Added `.dockerignore` for faster build time
- Updated included `temingo` version

## v1.0.1 on 2023-04-04
- Fix occasional bad link coloring
- Move `color-scheme` from inline style/css to html metatag

## v1.0.0 on 2023-04-02
- Updated caddy version
- Rebuild website from scratch with newest temingo version

## v0.1.4 on 2022-10-23
- Updated caddy version
- Updated umami id

## v0.1.3 on 2022-10-03
- Updated svelte version, including filestructure rework and migration to vite
- Updated umami id

## v0.1.2 on 2022-08-13
- Updated caddy version
- Added umami script

## v0.1.1 on 2022-03-12
- Simplified docker image - now using default caddyfile
- Removed link directive

## v0.1.0 on 2022-03-09
- Added first shortened link
- Reverted rearranged order of Dockerfile commands (caching can be dismissed for one single small file)

## v0.0.2 on 2022-03-09
- Fixed and improved formatting of Caddyfile
- Changed order of commands in Dockerfile for better caching

## v0.0.1 on 2022-03-09
- Introduced this changelog file
- Create first docker container for this site
- Added github actions build and push workflow
