FROM rocker/tidyverse:4.0.0

# Install packages needed 
RUN R -e "install.packages('rvest')"
RUN R -e "install.packages('dplyr')"
RUN R -e "install.packages('tidyr')"
RUN R -e "install.packages('ggplot2')"
RUN R -e "install.packages('RColorBrewer')"
RUN R -e "install.packages('gridExtra')"
RUN R -e "install.packages('hrbrthemes')"


#copy the necessary files from the folder into the image

COPY /codigo3.R /codigo3.R


#run the R Script

CMD Rscript /codigo3.R


