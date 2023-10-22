# Investigating disparate impact
 #4/5ths rule
# Chi-square test of independence
# Fisher exact test

#setwd

#read in data
install.packages("readr")
library(readr)

df <- read_csv("DisparateImpact.csv")

#4/5ths rule

#contingency table (cross-tabulation)
observed <- xtabs(~ Gender + Cognitive_Test, data=df)

# create objects for number of passes by gender
pass_men <- observed[1, 2]
pass_women <- observed[2, 2]

# create objects for number of fails by gender
fail_men <- observed[1, 1]
fail_women <- observed[2, 1]

# create objects for the total number if individuals by gender
N_men <- pass_men + fail_men
N_women <- pass_women + fail_women

#compute the selection ratios/rates (SR)
SR_men <- pass_men / N_men
SR_women <- pass_women / N_women

# compute the impact ratio (IR)
IR <- SR_women / SR_men

IR

# violation of 4/5th occurs with IR < .80
# in this example , don't conclude that a violation of 4/5ths rule has occurred

# Compute the Impact Ration adjusted (IR_adj) ("flip-flop rule) for SMALL SAMPLES
IR_adj <- ((pass_women + 1) / N_women) / ((pass_men - 1) / N_men)

IR_adj

# for IR_adj: we would be concerned if the value is greater than 1.0

#### chi-square

chisq.test(observed, correct=FALSE)
chisq.test(observed, correct=FALSE)$expected
chisq.test(observed, correct=FALSE)$observed

# not evidence of disparate impact

## with the Yates continuity correction
chisq.test(observed, correct=TRUE)

##### Fisher's Exact Test
fisher.test(observed)
