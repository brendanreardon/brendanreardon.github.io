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

If the port fails to close when shutting down the application, use [utils/listen.sh](utils/listen.sh) to obtain the PID value of the service and then use [utils/kill.sh](utils/kill.sh) to shut down the ports. For example:
```bash
# Find the process listening on port 4000
bash utils/listen.sh 4000

# Example output:
# ruby  19849  TCP 127.0.0.1:4000 (LISTEN)

# Kill the stuck process
bash utils/kill.sh 19849
```

## Deployment
This site is built and deployed using [GitHub Actions](https://github.com/features/actions). On every push to the `main` branch, the workflow builds the site and publishes it to [GitHub Pages](https://docs.github.com/en/pages).
