# ---------------------------------------------
# Overleaf Community Edition (overleaf/overleaf)
# ---------------------------------------------

ARG SHARELATEX_TAG=sharelatex/sharelatex
FROM $SHARELATEX_TAG

ARG TEXLIVE_MIRROR=https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/tlnet/


# Install full textlive
# ------------------------
RUN cd /usr/local/texlive \ 
&& wget https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/tlnet/update-tlmgr-latest.sh \
&& sh update-tlmgr-latest.sh -- --upgrade \
&& tlmgr option repository ${TEXLIVE_MIRROR} \
&& tlmgr install scheme-full