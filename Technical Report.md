## **Code name: crimestoppers**
# **Use of Force: Seattle PD**
Team Member Names
Reyan Haji - reyanh@uw.edu
Connor Applegate - conapple@uw.edu
Vijay Muralidhara - vijaym@uw.edu
Kirstie Baldoza - baldokir@gmail.com
Affiliation
Info-201: Technical Foundations of Informatics
The Information School
University of Washington
Autumn 2019

### **1.0 Introduction**
#### 1.1 Problem Situation
* Stakeholders
 * Police officers, non-officer law enforcement personnel, 911 callers, lawmakers.
* Setting
 * The project research will focus on the City of Seattle (domestic residences and businesses).
* Values and tensions
 * Safety: how safe do resident’s feel reaching out to the police based upon their personal attributes and circumstances.
* Policy and ethic elements
 * Ethics: does an officer’s code of ethics influence their use of force?
 * Policy: will lawmakers be influenced to act based on the insights produced by dataset analysis?

#### 1.2 What is the problem?
Police use of force has been a hot topic in Seattle. Many question the extent to which police use force in any situation and also believe that there are other motivating factors. This project aims to analyze how race, age, years of service, and gender play a role in the use of force for police in the city of Seattle. With the increase in racial and political conflicts in recent years, opinions on the police are very polarizing.

#### 1.3 Why does it matter?
A general perception that police have increased their frequency and extent of their use of force has worried much of the public. Bringing into question whether race, age, years of service, or gender play a factor in situations when use of force is warranted. This problem affects all people of every background and has caused many to worry if there is a hidden problem within the police departments in King county.

#### 1.4 How it will be addressed?
This project uses four distinct factors; race, age, years of service, and gender, to analyze which, if any, play a role in the frequency of police use of force and its extent. A combination of graphs and diagrams will be used to depict each factor and the role it plays in the use of force.

### **2.0 Research Questions**
#### Research Question #1:
How does race, age, years of service, and gender influence police use of force?
#### Research Question #2:
Does the time of day influence the type and extent to which force is used?

### **3.0 Data set**
#### Seattle Crisis Data
##### Who created it?
* The data set was created and is hosted by the City of Seattle

##### Why was it created?
* The data set was created in order to catalog police interactions in the event of a crisis in order to maintain a record.

##### Where did you access it?
* The data was accessed from Kaggle, at the following link: https://www.kaggle.com/city-of-seattle/seattle-crisis-data.

##### What represents an observation?
* An observation is represented by any crisis contact made by a member of the Seattle Police Department.

##### What "variables" does each observation have?
* Each observation consists of 25 variables:
Template ID, Reported Date, Reported Time, Occurred Date/Time, Call Type, Initial Call Type, Final Call Type, Disposition, Use of Force Indicator, Subject Veteran Indicator, CIT Officer Requested, CIT Officer Dispatched, CIT Officer Arrived, Officer ID, Officer Gender, Officer Race, Officer Year of Birth, Officer Years of Experience, CIT Certified Indicator, Officer Bureau Desc, Officer Precinct Desc, Officer Squad Desc, Precinct, Sector, Beat

##### How big is that data set?
* The data set is significantly large with 63369 observations total.

##### Stakeholders:
* Included:
 * Members of the police department who responded to a specific incident
* Excluded:
 * Court officials
 * Victims
 * Who compiled the data

### **4.0 Information Visualizations**
Visualizations were made with regards to the variables in question: each variable that we decided to test in our research question (race, gender, precinct, experience, and time of incident) were all plotted against the number of times a use of force was or was not used. These variables were plotted on either a bar graph, scatterplot, or line graph to best represent any correlation between the variables and the use of force.

For example, the gender of the officer and the number of times force was used was plotted on a bar graph each representing (M)ale or (F)emale. A bar graph was used in this case as well as race, and precinct as only a bar graph was appropriate in displaying any signs of correlation between the measured variables.

For the years of experience variable, a line graph was implemented with years as the x-axis. The number of times force was used or not used is indicated by the y-axis with two distinct shapes representing trends in whether force was used or not used. A trend line was overlaid on top of the data.

For reported times of incidents, a line graph was implemented with times of the day as the x-axis and if force was used as the y-axis. This then showed whether there was any correlation between the time of day and whether force was used as the trend of the line changed over time.

### **5.0 Technical description of Shiny application**
How did you load your data?
Our data was loaded by downloading the data set from Kaggle, and then converting the data into an Excel CSV file.
What major libraries did you use?
We utilized the following major libraries when building our Shiny app: <br/>
* dplyr <br/>
* lubridate <br/>
* shiny <br/>
* Htmltools <br/>
* ggplot2 <br/>
* lattice <br/>

##### How did you organize your code (directories and code files)?
Our code was split between two R files: app.R and Visualizations.R. A data folder was created within our root directory to contain the CSV file with our data set. A README file introduces and links a user to our Shiny application.
Within the Visisualizations.R file, our back-end coding stores information within a variety of variables.
Inside of app.R, we call the shiny library, and also source the Visualizations.R file. Next, we defined our UI and server logic to follow. Finally, the app.R creates our Shiny application.
What questions will you be answering with statistical analysis/machine learning?
We are not answering any questions with our statistical analysis or machine learning at this point.

### **6.0 Conclusion**
#### Strengths and Weaknesses
##### Strengths
Our research questions and data are heavily correlated -- investigating the data has proved very interesting and insightful in terms of answering our initial research questions.
The code for our project’s files is well organized and easy to read. This helps with future alterations, and keeping everything efficient.
Visualizations -- our visualizations can be utilized to help answer each of our research questions. They explain the data well in each subset option, and present a user-friendly interface.
##### Weaknesses
We hope to add components to our Shiny app in order to make it even more user-friendly by adding interactive features.
Collaboration has proven difficult over git, especially when multiple members are working on the same piece of code. This was expected, but in the future we intend to communicate

#### Lessons Learned
The majority of our learning for this deliverable was centralized around developing the Shiny application, and how we needed to wrangle our data in order to develop informative visualizations.
In terms of team chemistry, our meetings have been frequent and informative for all group members. In the future, our division of work needs to be more clearly defined at the start of the deliverable (in case of potential roadblocks appearing close to the deliverable due date).

#### Future Work
The majority of our group wants to work in fields that employ the use of statistical analysis, machine learning, or technical coding. This project has taught us a lot about working collaboratively in a technical team setting, especially because we are learning the tools at the same time.
Many of our desired fields of work involve data wrangling, and visualizing data through some method to convey to a group who may or may not understand the technical inner-workings. This project was a great demonstration of how to build the app technically, but also present our insights in a way that any user could understand.

### **Acknowledgements**
Jeeyoung Kim has been extensively helpful in focusing on a topic/narrowing our data sets and helping with the creation of our Shiny application.
References
[1] Balk, G., & Guy, F. Y. I. (2019, April 4). Is Seattle 'dying'? Crime rates tell a different story. Retrieved November 3, 2019, from https://www.seattletimes.com/seattle-news/data/is-seattle-dying-not-if-you-look-crime-rates-from-the-80s-and-90s/. <br/>
[2] Halverson, A. (2019, March 10). City data: Seattle crime numbers rise steadily with population. Retrieved November 3, 2019, from https://komonews.com/news/local/city-data-seattle-crime-numbers-rise-steadily-with-population. <br/>
[3] Lewis & Laws. (8AD). Just How Bad is Seattle Crime? Retrieved November 3, 2019, from https://www.seattlecriminaldefenselawfirm.com/blog/recent-news/post/just-how-bad-is-seattle-crime. <br/>
[4] Seattle Police Department. (2019, November). Crime Dashboard. Retrieved November 3, 2019, from https://www.seattle.gov/police/information-and-data/crime-dashboard. <br/>

### **Appendix 1: Data Dictionary**

**Variable Name**|**Description**|**Data Type**|**Measurement Type**
:-----:|:-----:|:-----:|:-----:
Template ID|Identifier for the specific observation|ID|Nominal
Reported Date|Date that the observation was reported|Date|Interval
Reported Time|Time that the observation was reported|Date|Interval
Occurred Date / Time|When the incident occured|Date|Interval
Call Type|Method of how the police department was contacted|String|Nominal
Initial Call Type|What type of incident was occuring as reported by victim|String|Nominal
Final Call Type|How the incident was categorized by law enforcement|String|Nominal
Disposition|How the observation was dealt with; final result|String|Nominal
Use of Force Indicator|Indicates whether force was utilized for that observation|Boolean|Nominal
Subject Veteran Indicator|Indicates if the subject was a verteran|Boolean|Nominal
CIT Officer Requested|Indicates if an officer was requested|Boolean|Nominal
CIT Officer Dispatched|Indicates if an officer was dispatched|Boolean|Nominal
CIT Officer Arrived|Indicates if a dispatched officer arrived|Boolean|Nominal
Officer ID|ID belonging to CIT officer responding|ID|Nominal
Officer Gender|States the gender of the responding officer|String|Nominal
Officer Race|States the race of the responding officer|String|Nominal
Office Year of Birth|States the birth year of the responding officer|Date|Interval
Officer Years of Experience|States the responding officer’s years of experience|Integer|Interval
CIT Certified Indicator|Indicates if the officer was certified as CIT|Boolean|Nominal
Officer Bureau|States what bureau the officer belongs to|String|Nominal
Officer Precinct|States what precinct the officer belongs to|String|Nominal
Officer Squad|States what squad the officer belongs to|String|Nominal
Precinct|States what precinct the incident occured in|String|Nominal
Sector|States sector the incident occured in|String|Nominal
Beat|States what beat the incident occured in|String|Nominal

### **Appendix 2: Reflections**
#### Reyan Haji
Through this project I was able to learn how to use R in an applicable manner. Additionally, it taught me how to work in a group to create a project and submit deliverables in on taught. It has been a struggle to get adjusted to collaborating and actively working on a project with a group. However, I was able to effectively work with my group to collaborate on, think, and code the project. These lessons have taught me how to develop my identity as a coder, thinker, and especially an innovator.
If I were to do things differently, I would try to plan ahead with my group because we sometimes had meeting time conflicts. This resulted in procrastinating on the project and rushing on some portions. In the future, I would try to plan ahead and organize what portions need to get done when. However, this was a valuable experience because it taught me effective project management skills.

#### Connor Applegate
This project format is very different from the projects I have worked on in the business school. Learning the different formats for display has been a challenge but very interesting. GitHub collaboration has created its fair share of challenges, and working with it in the future will be easier with the knowledge of merge conflicts/how to resolve them.
Next year I’ll be working in cyber risk, and knowledge of these different languages/techniques should prove extremely useful/applicable to that job and any potential future jobs beyond that. Beyond the technical aspects of the project, my abilities to work with a team using these platforms has also been streamlined through the creation of our GitHub, R apps, and Markdown files.

#### Vijay Muralidhara
One new thing I learned was the difficulty that came with collaborating in a coding environment. Trying to understand different people’s thought process and explaining your own was something new that I experienced so far and has helped me become a better contributor. It was satisfying to know that datasets could be turned into such informative visuals in order to convey our findings. In the future, I would like to possibly have the team pitch in help in each aspect of the project rather than working completely individually on segments of the project. The project has so far taught me how to be an effective collaborator in a team working on a piece of code and how to communicate findings or difficulties in writing code successfully.

#### Kirstie Baldoza
Something I learned from this project was to make sure to collaborate and talk to your team members in order to get things done. I am the type to usually do things on my own but being in this group project opened my eyes more on collaboration and communication. Something I found satisfying was how flexible my team members were but something I found frustrating was trying to find a time to meet up. We are all pretty busy people though so it is understandable. Something that I would do differently in future group projects is to learn how to do things ahead of time rather than trying to learn it when it is due because I personally could have contributed more if I managed my time better to truly understand how to work with the project. Though coding was not my strongest suit, I think this project helped me position myself to think more outside of the box.

### **Appendix 3: Use of Envisioning Cards**
* The envisioning cards have assisted us during our discussions of our data set, how it should be analyzed, and what stakeholders are affected by our data.
* Direct Stakeholders and Indirect Stakeholders helped narrow our scope of affect audiences, and how we should connect that to our data.
* Variation in human ability was also considered since police officers were our primary target of analysis. Officers can have a wide variety of abilities, including their years of experience enabling them more actions, or in terms of their certification as a CIT officer.
* Given our data set deals with crisis situations, Long-Term Health and Well-Being was also considered because many observations affect victims in that capacity. An officer’s use of force may affect how those traits change for the victims or offenders in a situation.
* Political Realities helped shape our thinking when crafting our research question. The political systems in the US (specifically the city of Seattle) may affect whether an officer chooses to use force or not.
* Finally, Consider Key Values at Stake helped put into focus whether the variables we selected would be insightful when determining correlations between our data.