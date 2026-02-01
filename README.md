# My website
This repository hosts code for [my website](https://brendanreardon.com), built with [Jekyll](https://jekyllrb.com/) and the [Minima](https://github.com/jekyll/minima) theme.

## Development
To run the site locally, follow [Jekyll's Quickstart guide](https://jekyllrb.com/docs/) and then run:
```bash
bundle install
bundle exec jekyll clean
bundle exec jekyll serve --livereload
```
The website will be available at [http://127.0.0.1:4000](http://127.0.0.1:4000).

If the ports fail to close when shutting down the application, use [utils/listen.sh](utils/listen.sh) to obtain the PID value of the service and then use [utils/kill.sh](utils/kill.sh) to shut down the ports. For example:
```bash
(base) breardon@pomegranate:website$ bash utils/listen.sh 4000
COMMAND   PID    USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
ruby    19849 vanallenlab   12u  IPv4 0xea464cd74b3ffbe0      0t0  TCP 127.0.0.1:4000 (LISTEN)
(base) breardon@pomegranate:website$ bash utils/kill.sh 19849
```

# Deployment
This site is built and deployed using [GitHub Actions](https://github.com/features/actions). On every push to the `main` branch, the workflow builds the site and publishes it to [GitHub Pages](https://docs.github.com/en/pages).
