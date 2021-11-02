getwd()
library(tidyverse)
library(dplyr)
df1 <-  readLines("/Users/danielkent/Desktop/Bioinformatics/Assignment1_data/data_credit_card_number.txt")
glimpse(df1)
length(df1)
# %% codecell
Visa <- grep("^[4][0-9]{15}", df1, value = TRUE)
glimpse(Visa)
length(Visa)
# %% codecell
Master <- grep("^[5][1-5][0-9]{14}", df1, value = TRUE)
glimpse(Master)
length(Master)
# %% codecell
Dis1 <- grep("^(6011|6522)", df1, value = TRUE)
Dis1
Discovery <- grep("[2468]$", Dis1, value = TRUE)
glimpse(Discovery)
length(Discovery)
# %% codecell
#q2
df2 <- readLines("/Users/danielkent/Desktop/Bioinformatics/Assignment1_data/data_phone_number.txt")
glimpse(df2)
# %% codecell
telecom <- grep("^(0965|0966|0967)", df2, value = TRUE)
print(telecom)
length(telecom)
# %% codecell
phone0 <- gsub("[[:punct:]]", "", df2)          # remove punctuation
phone0
phone1 <- trimws(phone0)
phone1
phone2 <- gsub("(^\\d{4})(\\d{3})(\\d{3}$)","\\1-\\2-\\3",phone1)
phone2
# %% codecell
lotr1 <- grep("(7|9)[0-9]$", phone1, value = TRUE)
glimpse(lotr1)
length(lotr1)
grep("......(55)", lotr1, value = TRUE)

length(lotr1)
grep("[5]{2}", lotr1, value = TRUE)
# %% codecell

df3 <- read.table("/Users/danielkent/Desktop/Bioinformatics/Assignment1_data/data_biotech_catalogue.tsv", header=T)
glimpse(df3)
noS <- gsub("^[^[:alnum:]]", "", df3$Price)
noS
grep("^[1-9][[:punct:]]",noS, value = TRUE)
less_ten = grep("^[1-9][[:punct:]]",noS)

df3$Catalogue_number[less_ten]
# %% codecell
#Items with a price ending in the 22, 33, 55, 77 cents.
grep("(22|33|55|77)$", noS, value = TRUE)
cent_ending = grep("(22|33|55|77)$", noS)
df3$Catalogue_number[cent_ending]
# %% codecell
#Items between $50 - $70, and the price ends with an even number (i.e. 55.32, 66.64, 51.98...etc
grep("^(5|6)...[02468]$", noS, value = TRUE)
fithy_seventy = grep("^(5|6)...[02468]$", noS)
df3$Catalogue_number[fithy_seventy]

# %% codecell
#Scenario 4: Items between $50-$70, and catalogue_number begin with R (reagent)
grep("^(5|6)...[02468]$", noS, value = TRUE)
fithy_seventy = grep("^(5|6)...[02468]$", noS)

Catan_50_70 <- df3$Catalogue_number[fithy_seventy]
grep("^R", Catan_50_70, value = TRUE)

# %% codecell
df4 <- readLines("/Users/danielkent/Desktop/Bioinformatics/Assignment1_data/data_16S_rRNA.fasta")
glimpse(df4)
df4
#You start with the common primer 515F, which targets the following region.
#How many bacteria can be targeted by this primer?  GUGYCAGCMGCCGCGGUAA
foura1 <- c("GUGYCAGCMGCCGCGGUAA","GUGYACAGCMGCCGCGGUAA")
grep("(GUGYCAGCMGCCGCGGUAA)", df4, value = TRUE)
grep("(GUGYCAGCMGCCGCGGUAA)", foura1, value = TRUE)
#GUGYCAGCMGCCGCGGUAA
grep("(AUAKW)[N]+(WUGGG)$", df4, value = TRUE)
grep("(AUAKW)[N]+(WUGGG)$", foura2, value = TRUE)
foura2<- c("AUAKWNNNWUGGG","AUAKWNNNNNWUGGG","AUAKWNNNWUGGGG","AUAKWNNNWUGGGN")
#AUAGAUGAUUGGG
#AUAUAAGACCUUGGG
#AUAUUGGACAAUGGG
bacez <- grep("(AUA)(G|U)(A|U)(U|A|G)(GA)C?(C|A)?(U|A)UG+", df4, value = TRUE)
length(bacez)
#without using . (dot matches everything)
