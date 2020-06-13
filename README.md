# Overleaf (ShareLatex) Docker Image
#### _a complete TexLive ShareLatex Image_


## Key Features

[Overleaf](https://www.overleaf.com) is an open-source online real-time collaborative LaTeX editor. This addition is built on the existing official Overleaf docker image (https://github.com/overleaf/overleaf) for including the extented version of Texlive (full scheme). 


## Installation

#### Step 1: Build the Extented Sharelatex Image
Navigate into the the repo, and run:
`$ docker build -t sharelatex_community:v2 .`

You should also change the `TEXLIVE_MIRROR` mirror to the one you prefer.


#### Step 2: Build the rest of the service components and start the containers using compose
To run Overleaf, redis and Mongo database are needed, run
`$ docker-compose up`
If the previous image is tagged differently, please change the image arg to refer to the right version of `sharelatex`. 


## Overleaf Docker Image

This repo contains one docker file `Dockerfile`, which update `tlmgr` and install `scheme-full` on top of the official image `sharelatex/sharelatex` image, which is the community version of ShareLatex. 

The Base image generally contains the basic dependencies like `wget` and
`aspell`, plus `texlive`. We split this out because it's a pretty heavy set of
dependencies, and it's nice to not have to rebuild all of that every time.

The original `sharelatex/sharelatex` image extends the base image and adds the actual Overleaf code
and services.



## License

The code in this repository is released under the GNU AFFERO GENERAL PUBLIC LICENSE, version 3. A copy can be found in the `LICENSE` file.

For any detail regarding the license of Overleaf, please go to LICENSE in their repo.

