library(dplyr)
library(lattice)
library(ggplot2)
library(plotly)
library(lubridate)
library(htmltools)

# Written Content (Read md file)
get_text_from_md_file <- function(fn) {
  return(div(HTML(markdown::markdownToHTML(fn))))
}

# Visualizations
# Read in the dataset
force_data <- read.csv(file = "data/crisis-data.csv", stringsAsFactors = FALSE)

# Use of Force vs Officer Race
race_force <- force_data %>%
  select(Use.of.Force.Indicator, Officer.Race) %>%
  group_by(Officer.Race) %>%
  count(Use.of.Force.Indicator)

bar <- ggplot(data = race_force, aes(x = Officer.Race, y = n,
                                     fill = Use.of.Force.Indicator,
              label = n)) +
  geom_bar(position = position_dodge(), 
           stat = "identity",
           width = 0.6,
           color = "black",
           size = 0.5,
           alpha = 0.7) +
  
   geom_text(size = 3, position = position_dodge(width = 0.7), vjust = -0.5, check_overlap = TRUE) +
   labs(y = "Number of Instances", x = "Race of Officer") +
   scale_fill_discrete(name = "Force Used: (Y)es or (N)o") +
  # scale_y_continuous(limits = c(0, 4000)) +
   ggtitle("Use of Force and Officer Race Correlation")


# Use of Force vs Officer Per Precinct
precinct_force <- force_data %>%
  select(Use.of.Force.Indicator, Precinct) %>%
  group_by(Precinct) %>%
  filter(!grepl("-", Precinct)) %>%
  filter(!grepl("FK ERROR", Precinct)) %>%
  filter(!grepl("OOJ", Precinct)) %>%
  count(Use.of.Force.Indicator)

bar2 <- ggplot(data = precinct_force, aes(x = Precinct, y = n,
                                          fill = Use.of.Force.Indicator,
                                          label = n)) +
  geom_bar(position = position_dodge(), 
           stat = "identity",
           width = 0.6,
           color = "black",
           size = 0.5,
           alpha = 0.7) +
  geom_text(size = 3, position = position_dodge(width = 0.7), vjust = -0.5, check_overlap = TRUE) +
  labs(y = "Number of Instances", x = "Precinct") +
  scale_fill_discrete(name = "Force Used: (Y)es or (N)o") +
  scale_y_continuous(limits = c(0, 17000)) +
  ggtitle("Use of Force and Precinct Correlation")

# Use of Force vs Officer Gender
gender_force <- force_data %>%
  select(Use.of.Force.Indicator, Officer.Gender) %>%
  group_by(Officer.Gender) %>%
  count(Use.of.Force.Indicator)

bar3 <- ggplot(data = gender_force, aes(x = Officer.Gender, y = n,
                                        fill = Use.of.Force.Indicator,
                                        label = n)) +
  geom_bar(position = position_dodge(), 
           stat = "identity",
           width = 0.6,
           color = "black",
           size = 0.5,
           alpha = 0.7) +
  geom_text(size = 3, position = position_dodge(width = 0.7), vjust = -0.5, check_overlap = TRUE) +
  labs(y = "Number of Instances", x = "Gender of Officer") +
  scale_fill_discrete(name = "Force Used: (Y)es or (N)o") +
  scale_y_continuous(limits = c(0, 55000)) +
  ggtitle("Use of Force and Officer Gender Correlation")

# Use of Force vs Officer Years on Force
exp_force <- force_data %>%
  select(Use.of.Force.Indicator, Officer.Years.of.Experience) %>%
  group_by(Officer.Years.of.Experience) %>%
  count(Use.of.Force.Indicator)

plot <- ggplot(data = exp_force, aes(x = Officer.Years.of.Experience, y = n,
                                     label = n, color = Use.of.Force.Indicator)) +
  geom_smooth(se = FALSE) +
  geom_point(aes(size = 1), show.legend = FALSE) +
  labs(y = "Number of Instances", x = "Officer Years of Experience",
       color = "Force Used: (Y)es or (N)o") +
  #scale_shape_discrete(name = "Force Used: (Y)es or (N)o") +
  ggtitle("Use of Force and Officer Experience Correlation")

# Use of Force vs Reported Time of Incidences
time_force <- force_data %>%
  select(Use.of.Force.Indicator, Reported.Time) %>%
  group_by(Reported.Time) %>%
  mutate(time = as.POSIXct(Reported.Time, format = "%H:%M:%S")) %>%
  mutate(actime = round_date(time, "15 minutes")) %>%
  mutate(times = strftime(as.POSIXct(actime, origin = Sys.Date(), tz = "UTC"),
                          format = "%H:%M:%S")) %>%
  group_by(times) %>%
  filter(Use.of.Force.Indicator == "Y") %>%
  count(Use.of.Force.Indicator)

plot2 <- ggplot(data = time_force, aes(x = times, y = n, group = 1)) +
  geom_line(color = "navyblue", size = 1.5) +
  labs(y = "Number of Instances Force was Used", x = "Reported Time") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  ggtitle("Use of Force and Reported Time Correlation")
