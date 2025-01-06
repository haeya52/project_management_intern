##########i-2. Compare all majors in a college (Bar Chart)
library("readxl")
library("tidyverse")
library("scales")

#2-1. CEHD (College of Education and Human Development)
grad_rates_cehd <- read_excel("Grad_Rates_by_Programs.xlsx", sheet = "CEHD")
grad_rates_cehd %>%
  mutate(avg_grad_rates = (Grad_Rate_2 + Grad_Rate_3 + Grad_Rate_4)/3.0) %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = avg_grad_rates*100)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38", "#FFCD00")) +
  labs(x = "Programs", y = "Average Graduation Rates (%)", fill = "Admission Type") +
  coord_flip()


#2-2. CEC (College of Engineering & Computing)
grad_rates_cec <- read_excel("Grad_Rates_by_Programs.xlsx", sheet = "CEC")
grad_rates_cec %>%
  filter(Program != "Software Engineering") %>%
  mutate(avg_grad_rates = (Grad_Rate_2 + Grad_Rate_3 + Grad_Rate_4)/3.0) %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = avg_grad_rates*100)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#046A38","#FFCD00")) +
  labs(x = "Programs", y = "Average Graduation Rates (%)", fill = "Admission Type") +
  coord_flip()


#2-3. CHSS (College of Humanities and Social Sciences)
grad_rates_chss <- read_excel("Grad_Rates_by_Programs.xlsx", sheet = "CHSS")
grad_rates_chss %>%
  mutate(avg_grad_rates = (Grad_Rate_2 + Grad_Rate_3 + Grad_Rate_4)/3.0,
        Admit_Type = fct_relevel(Admit_Type, 
                                  "Mason Direct Admit",
                                  "INTO GPW Matriculant")) %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = avg_grad_rates*100)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#FFCD00","#046A38")) +
  labs(x = "Programs", y = "Average Graduation Rates (%)", fill = "Admission Type")


#2-4. CPH (College of Public Health)
grad_rates_cph <- read_excel("Grad_Rates_by_Programs.xlsx", sheet = "CPH")
grad_rates_cph %>%
  mutate(avg_grad_rates = (Grad_Rate_2 + Grad_Rate_3 + Grad_Rate_4)/3.0,
         Admit_Type = fct_relevel(Admit_Type, 
                                  "Mason Direct Admit",
                                  "INTO GPW Matriculant")) %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = avg_grad_rates*100)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#FFCD00","#046A38")) +
  labs(x = "Programs", y = "Average Graduation Rates (%)", fill = "Admission Type")


#2-5. COS (College of Science)
grad_rates_cos <- read_excel("Grad_Rates_by_Programs.xlsx", sheet = "COS")
grad_rates_cos %>%
  filter(Program != "Forensic Science") %>%
  mutate(avg_grad_rates = (Grad_Rate_2 + Grad_Rate_3 + Grad_Rate_4)/3.0,
         Admit_Type = fct_relevel(Admit_Type, 
                                  "Mason Direct Admit",
                                  "INTO GPW Matriculant")) %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = avg_grad_rates*100)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#FFCD00","#046A38")) +
  labs(x = "Programs",y = "Average Graduation Rates (%)", fill = "Admission Type")


#2-6. CVPA (College of Visual and Performing Arts)
grad_rates_cvpa <- read_excel("Grad_Rates_by_Programs.xlsx", sheet = "CVPA")
grad_rates_cvpa %>%
  mutate(avg_grad_rates = (Grad_Rate_2 + Grad_Rate_3 + Grad_Rate_4)/3.0,
         Admit_Type = fct_relevel(Admit_Type, 
                                  "Mason Direct Admit",
                                  "INTO GPW Matriculant")) %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = avg_grad_rates*100)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#FFCD00","#046A38")) +
  labs(x = "Programs",y = "Average Graduation Rates (%)", fill = "Admission Type")


#2-7. Schar (Schar School)
grad_rates_schar <- read_excel("Grad_Rates_by_Programs.xlsx", sheet = "Schar")
grad_rates_schar %>%
  mutate(avg_grad_rates = (Grad_Rate_2 + Grad_Rate_3 + Grad_Rate_4)/3.0,
         Admit_Type = fct_relevel(Admit_Type, 
                                  "Mason Direct Admit",
                                  "INTO GPW Matriculant")) %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = avg_grad_rates*100)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#FFCD00","#046A38")) +
  labs(x = "Programs",y = "Average Graduation Rates (%)", fill = "Admission Type")


#2-8. SBus (School of Business)
grad_rates_sbus <- read_excel("Grad_Rates_by_Programs.xlsx", sheet = "SBus")
grad_rates_sbus %>%
  mutate(avg_grad_rates = (Grad_Rate_2 + Grad_Rate_3 + Grad_Rate_4)/3.0,
         Admit_Type = fct_relevel(Admit_Type, 
                                  "Mason Direct Admit",
                                  "INTO GPW Matriculant")) %>%
  ggplot(aes(fill = Admit_Type, x = Program, y = avg_grad_rates*100)) +
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("#FFCD00","#046A38")) +
  labs(x = "Programs", y = "Average Graduation Rates (%)", fill = "Admission Type")



