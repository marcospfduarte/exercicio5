FROM rocker/tidyverse:4.0.0

# Install packages needed 
RUN R -e "install.packages("basedosdados")"
RUN R -e "install.packages("dplyr")"
RUN R -e "install.packages("tidyr")"
RUN R -e "install.packages("ggplot2")"
RUN R -e "install.packages("RColorBrewer")"
RUN R -e "install.packages("gridExtra")"

#copy the necessary files from the folder into the image

COPY /codigo2.R /codigo2.R
COPY /output /output

#run the R Script

CMD Rscript /codigo2.R


