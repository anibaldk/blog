JEKYLL_VERSION=4.0.0
docker run --rm -v "$PWD:/srv/jekyll" -p 4000:4000 -it jekyll/jekyll:$JEKYLL_VERSION /bin/bash
