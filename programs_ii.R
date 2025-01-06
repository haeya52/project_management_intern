##########ii-2. Compare all majors in a college (Bar Chart)
library("readxl")
library("tidyverse")
library("scales")

gpa_cehd <- read_excel("Gpa_Rates_by_Programs.xlsx", sheet = "CEHD")
gpa_cehd %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = GPA)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#FFCD00")) +
  coord_flip(ylim=c(3.5,4.0)) +
  labs(x = "Program", y = "GPA", fill = "Admission Type") 

gpa_cec <- read_excel("Gpa_Rates_by_Programs.xlsx", sheet = "CEC")
gpa_cec %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = GPA)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#FFCD00")) +
  coord_flip(ylim=c(3.0,4.0)) +
  labs(x = "Program", y = "GPA", fill = "Admission Type") 

gpa_chss <- read_excel("Gpa_Rates_by_Programs.xlsx", sheet = "CHSS")
gpa_chss %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = GPA)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#FFCD00")) +
  coord_cartesian(ylim=c(3.5,4.0)) +
  labs(x = "Program", y = "GPA", fill = "Admission Type") 

gpa_cph <- read_excel("Gpa_Rates_by_Programs.xlsx", sheet = "CPH")
gpa_cph %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = GPA)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#FFCD00")) +
  coord_cartesian(ylim=c(3.5,4.0)) +
  labs(x = "Program", y = "GPA", fill = "Admission Type") 

gpa_cos <- read_excel("Gpa_Rates_by_Programs.xlsx", sheet = "COS")
gpa_cos %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = GPA)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#FFCD00")) +
  coord_cartesian(ylim=c(3.0,4.0)) +
  labs(x = "Program", y = "GPA", fill = "Admission Type") 

gpa_cvpa <- read_excel("Gpa_Rates_by_Programs.xlsx", sheet = "CVPA")
gpa_cvpa %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = GPA)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#FFCD00")) +
  coord_cartesian(ylim=c(3.0,4.0)) +
  labs(x = "Program", y = "GPA", fill = "Admission Type")

gpa_schar <- read_excel("Gpa_Rates_by_Programs.xlsx", sheet = "Schar")
gpa_schar %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = GPA)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#FFCD00")) +
  coord_cartesian(ylim=c(3.0,4.0)) +
  labs(x = "Program", y = "GPA", fill = "Admission Type")

gpa_sbus <- read_excel("Gpa_Rates_by_Programs.xlsx", sheet = "SBus")
gpa_sbus %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = GPA)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#FFCD00")) +
  coord_cartesian(ylim=c(3.0,4.0)) +
  labs(x = "Program", y = "GPA", fill = "Admission Type")

