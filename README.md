# blackhole_earth
 What if the Earth collapses to a black hole, instantaneously?

JupyterLab notebook, view as:
- [PDF document without code](https://github.com/geipel/blackhole_earth/blob/main/out/blackhole_earth_nocode.pdf)
- [PDF document showing code](https://github.com/geipel/blackhole_earth/blob/main/out/blackhole_earth_showcode.pdf)
- [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/geipel/blackhole_earth/blob/main/src/blackhole_earth.ipynb)

## Inspiration: learn about JupyterLab and related technologies.
This was for fun, and was inspired by a podcast scenario:
> You’re standing on the Earth's equator, when it suddenly collapses to a black hole, out from under you.
> Do you fall into the resulting black hole, the size of a peanut?

- [Podcast episode that inspired this project](https://www.iheart.com/podcast/105-daniel-and-jorge-explain-t-29862087/episode/listener-questions-black-holes-dark-entropy-81508784/)

## Notes
- The [Makefile](https://github.com/geipel/blackhole_earth/blob/main/Makefile) is currently used to generate the two [output PDFs](https://github.com/geipel/blackhole_earth/tree/main/out) automagically.
- I use the fantastic [direnv](https://direnv.net/) package for a local Python3 env. See [.envrc](https://github.com/geipel/blackhole_earth/blob/main/.envrc).
- The needed pip3 packages can then be loaded using [requirements.in](https://github.com/geipel/blackhole_earth/blob/main/requirements.in).

## Todo
- gh-pages or similar
- installation instructions

I also need to update my conclusions for a likely [limit to black hole angular momentum](https://en.wikipedia.org/wiki/Black_hole#Physical_properties).
Yes, it seems likely that the Earth has way too much rotational angular momentum to collapse **ALL** of its mass into a black hole.
