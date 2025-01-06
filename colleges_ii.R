##########ii-1. GPA by Admission Type
library("readxl")
library("tidyverse")
library("scales")
gpa_colleges <- read_excel("Gpa_Rates_by_Colleges.xlsx")


gpa_colleges %>%
  ggplot(aes(fill = Admit_Type, x = College, y = GPA)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#FFCD00")) +
  coord_flip(ylim=c(3.0,4.0)) +
  labs(x = "College", y = "GPA", fill = "Admission Type")
