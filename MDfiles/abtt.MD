## Data
Our data was loaded by downloading the data set from Kaggle, and then converting the data into an Excel CSV file.
We utilized the following major libraries when building our Shiny app: <br/>
* dplyr <br/>
* lubridate <br/>
* shiny <br/>
* Htmltools <br/>
* ggplot2 <br/>
* lattice <br/>

## Visualizations
Our code was split between two R files: app.R and Visualizations.R. A data folder was created within our root directory to contain the CSV file with our data set. A README file introduces and links a user to our Shiny application.
Within the Visisualizations.R file, our back-end coding stores information within a variety of variables.
Inside of app.R, we call the shiny library, and also source the Visualizations.R file. Next, we defined our UI and server logic to follow. Finally, the app.R creates our Shiny application.
