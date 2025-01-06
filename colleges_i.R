##########i-1. Graduation Rates by Admission Type
library("readxl")
library("tidyverse")
library("scales")
grad_rates_colleges <- read_excel("Grad_Rates_by_Colleges.xlsx")
grad_rates_sum <- read_excel("Grad_Rates_by_Colleges.xlsx", sheet = "summary")

#1. Heatmap
grad_rates_sum %>%
  filter(College != "University Total") %>%
  mutate(Admit_Year = fct_relevel(Admit_Year, 
                                  "Mason Direct Admit - 2 Year",
                                  "Mason Direct Admit - 3 Year",
                                  "Mason Direct Admit - 4 Year",
                                  "INTO GPW Matriculant - 2 Year",
                                  "INTO GPW Matriculant - 3 Year",
                                  "INTO GPW Matriculant - 4 Year")) %>%
  ggplot(aes(x=Admit_Year, y = College)) +
  theme(axis.text.x = element_text(angle=45, vjust=1, hjust=1), 
                          panel.background = element_rect(fill = "white")) +
  geom_tile(aes(fill=Grad_Rates), color = "white", lwd = 1, linetype = 1) +
  scale_fill_gradient(low = "white", high="#046A38") +
  labs(x = "Admit Type & Graduation Year", y = "College", fill = "Graduation Rate")
  

#2. Bar Chart

#2-1. 2 Year Grad Rate
grad_rates_colleges %>%
  ggplot(aes(fill = Admit_Type, x = College, y = Grad_Rate_2*100)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#FFCD00")) +
  labs(y = "2 Year Graduation Rates", fill = "Admission Type") +
  coord_flip()

#2-2. 3 Year Grad Rate
grad_rates_colleges %>%
  ggplot(aes(fill = Admit_Type, x = College, y = Grad_Rate_3*100)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#FFCD00")) +
  labs(y = "3 Year Graduation Rates", fill = "Admission Type") +
  coord_flip()

#2-3. 4 Year Grad Rate
grad_rates_colleges %>%
  ggplot(aes(fill = Admit_Type, x = College, y = Grad_Rate_4*100)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#FFCD00")) +
  labs(y = "4 Year Graduation Rates", fill = "Admission Type") +
  coord_flip()

#2-4. average of 2-4 Year Grad Rate
grad_rates_colleges %>%
  filter(College != "University Total") %>%
  mutate(average = (Grad_Rate_2 + Grad_Rate_3 + Grad_Rate_4)/3.00) %>%
  ggplot(aes(fill = Admit_Type, x = College, y = average*100)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#FFCD00")) +
  labs(y = "Average of 2-4 Year Graduation Rates", fill = "Admission Type") +
  coord_flip()

#2-5. 2-4 Year Grad Rate combined
grad_rates_sum %>%
  filter(College != "University Total") %>%
  mutate(Admit_Year = fct_relevel(Admit_Year, 
                            "INTO GPW Matriculant - 4 Year",
                            "INTO GPW Matriculant - 3 Year",
                            "INTO GPW Matriculant - 2 Year",
                            "Mason Direct Admit - 4 Year",
                            "Mason Direct Admit - 3 Year",
                            "Mason Direct Admit - 2 Year",)) %>%
  ggplot(aes(fill = Admit_Year, x = College, y = Grad_Rates*100)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#048C38","#059D38", "#FFCD00", "#FFDF00","#FFEF00")) +
  labs(y = "Graduation Rates (%)", fill = "Admission Type & Graduation Year") +
  coord_flip() +
  theme_minimal()



#all combined
grad_rates_colleges %>%
  filter(College == "University Total") %>%
  mutate(average = (Grad_Rate_2 + Grad_Rate_3 + Grad_Rate_4)/3.00) %>%
  ggplot(aes(fill = Admit_Type, x = Admit_Type, y = average*100)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#FFCD00")) +
  labs(x = "Admission Type", y = "Average Graduation Rates")
  

