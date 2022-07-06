# Wasp-Reproduction
The data can be found in the file titled: [Mealy_Data.xlsx](https://github.com/stooblloob/Wasp-Reproduction/blob/18acad9434686fd7e0d58a2abf19b68740d471d7/Mealy_Data.xlsx)

## Introduction

When we use natural enemies to reduce invasive species population, we refer the natural enemies as "biological control agents". Female wasps (biocontrol agent) lay their eggs and the developing parasitoid larvae kill pest eggs by feeding inside the pest egg. 

## Objective

I want to test if some plants can increase reproduction of wasps in order to control the pest population, specifically mealy pests.

## Understanding the Experiment

Can plants increase the reproduction of wasps? 

Scientists tested with Buckwheat, Vetch, and water only. Each of these treatments were placed in a container with a female wasp as well as mealy eggs. The variables recorded were the following: treatment, longevity, male, female, total, and sex ratio. 

## Descriptive Analysis

**Independent Variable:** Treatment

**Dependent Variables:** Longevity, Male, Female, Total, and Sex Ratio

When looking at `Treatment` vs. `Total Number of Wasps`, I found that the `Vetch` treatment produced the most wasps. This is consistent with the production of `Male` wasps and `Female` wasps. 

When looking at `Treatment` vs. `Longevity`, on average, the `Vetch` treatment had the highest rate. 

When looking at `Treatment` vs. `Sex Ratio`, on average, the `Buckwheat` treatment produced the highest sex ratio. `Sex Ratio` = the number of female wasps/ the total number of wasps.

## Proposed Statistical Method

I propose to use an ANOVA model to study the effect of the three different treatments on each variable. 

In order to proceed, the following assumptions must be met:

- Samples are independent
- Normal Distribution
- Homoscedascity 

## Issues I've Encountered and How I Overcame Them

I found that the variables `Longevity`, `Male`, `Female`, and `Total` violated the normality assumption. In order to combat this, I used a boxcox transformation to identify how I can proceed with going about transforming each variable. 

For `Longevity`, the lambda value was 2, so I used square-transformation. For `Male`, the lambda value was 0.1414, so I used a log transformation. For `Female`, the lambda value was 0.303, so I used a log transformation. But that still violated the assumption so I opted for square-root transformation instead. For `Total, the lambda value is 0.2626, so I used a log transformation.

## My Findings

**Analysis of Variance Test**

`Longevity` - Since the p-value < α = 0.05, we reject the null hypothesis. We can
conclude that there is a significant difference in treatment effects on this variable.

`Male` - Since the p-value < α = 0.05, we reject the null hypothesis. We can
conclude that there is a significant difference in treatment effects on this variable.

`Female` - Since the p-value < α = 0.05, we reject the null hypothesis. We can
conclude that there is a significant difference in treatment effects on this variable.

`Total` - Since the p-value < α = 0.05, we reject the null hypothesis. We can
conclude that there is a significant difference in treatment effects on this variable.

`Sex Ratio` - Since the p-value < α = 0.05, we reject the null hypothesis. We can
conclude that there is a significant difference in treatment effects on this variable.

**Post-Hoc Test: Multiple Comparisons Test**

`Longevity` - There is a significance between-group difference for treatments water and vetch.

`Male` - There is a significance between-group difference for treatments water and vetch as well as water and buckwheat.

`Female` - There is a significance between-group difference for treatments water and vetch as well as water and buckwheat.

`Total` - There is a significance between-group difference for treatments water and vetch as well as water and buckwheat.

`Sex Ratio` - There is no significance between-group difference for any of the treatments.

There is a significant difference in treatment effects. We can conclude that there is indeed an effect of plants increasing the reproduction of wasps to control the mealy pest population.
