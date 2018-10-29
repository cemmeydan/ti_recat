FROM dynverse/dynwrap:r

RUN R -e 'devtools::install_github("dynverse/reCAT")'

LABEL version 0.1.4

ADD . /code

ENTRYPOINT Rscript /code/run.R
