# Applied-Econometrics-6630

Assignments and coding samples for Prof. Theodor Tatos's Applied Econometrics at University of Utah. Code samples in R, SAS, Python, and Julia are available.

**Course Description**: I have tried to design this course to prepare students with the requisite econometric and statistical knowledge and tools for practical and research applications. In short, this course aims to be the kind of course I would have found useful before (and during) my early career in economic consulting and research. At the end of this course, I would like everyone enrolled to feel confident and prepared to walk into either an economic research outfit (e.g., Urban Institute, etc.) or an economic consulting firm and immediately contribute effectively. We cannot cover every topic in detail over the course of a single semester – many of these topics require a single semester or more on their own. So, I have picked the most commonly used techniques among the practical econometrician/statistician’s toolbox.

I want to emphasize one point. I want students in this class to realize that applied econometrics seldom, if ever, begins with a nice, clean dataset to which you can apply a variety of techniques. Data cleaning and the decisions involved reflect an inextricable part of the analytical process. So, as we go through this semester, keep this point in mind when we begin to analyze specific datasets.

## Topic List

1. Statistical Inference –
   1. the philosophy of inference,
   2. Fisherian and Neyman-Pearson approaches
   3. P-values, error rates, and null hypothesis significance testing
   4. Bayesian Inference
   5. Practical applications and the rampant confusion
   6. American Statistical Association’s 2016 position statement
2. Categorical data analysis
   1. Contingency tables – the categorical workhorse
   2. Exact Tests, Chi-square tests
   3. Relative Risk, Odds Ratios
   4. Examples and practical applications
3. Statistical Sampling
   1. Probability vs. non-probability samples
   2. Sample size calculations for proportions and means
   3. Stratified random sampling
   4. Examples and practical applications
4. Linear Regression
   1. Cross-sectional data
   2. Time series data
   3. Specification – functional forms and their interpretations
   4. Verification of results – MSE, Rsq., MAPE, Cook’s D, DF Fits, DF Betas, etc.
   5. Non-spherical disturbances – autocorrelation, heteroskedasticity, how do we test, how do we mitigate issues (robust standard errors, Newey-West, etc.)
   6.  Estimation vs. Prediction
   7.  In-sample vs. Out-of-sample prediction
   8.  Practical examples – widespread use of linear regression in litigation (employment discrimination, damages analysis, antitrust).
5.  Panel Data Models
    1. Fixed Effects and Random Effects models
    2. One-way and two-way fixed effects models
    3. Assumptions and complexities
    4. Applications
6.  Generalized Linear Models
    1. Logit/Probit Models
    2. Tobit Models
    3. Poisson Models
    4.  Practical examples – when do we use these and why
7.  Causal Inference
    1. Structural vs. reduced form models
    2. Diagrammatic exploration of causal factors – Judea Pearl’s do calculus and Directed Acyclic Graphs
    3.  The potential outcomes model – Angrist, Imbens, Wooldridge
    4.  Examples and complications – network effects that exist in digital platforms

## Supplemental Readings

* [Fisher, Neyman-Pearson or NHST? A Tutorial for Teaching Data Testing by Jose D. Perezgonzalez](https://www.frontiersin.org/articles/10.3389/fpsyg.2015.00223/full)
* [Sampling by David R. Freedman (PDF)](https://www.stat.berkeley.edu/~census/sample.pdf)
* [Mindless Statistics by Gerd Gigerenzer](https://www.sciencedirect.com/science/article/abs/pii/S1053535704000927?via%3Dihub)
* [Difference-in-Differences Lecture Notes by Imbens & Woolridge (PDF)](https://www.nber.org/sites/default/files/2021-03/slides_10_diffindiffs.pdf)
* [Retire Stastical Significance by Amrhein & Greenland](https://www.researchgate.net/publication/331908769_Retire_statistical_significance)
* [Confounding and Regression Adjustment in Difference-in-Differences Studies by Zeldow & Hatfield](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8522571/)
* [Statistics and ethics in medical research. Misuse of statistics is unethical. by Douglas G. Altman (PDF)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1714517/pdf/brmedj00045-0026.pdf)
* [How Not to Lie with Statistics: Avoiding Common Mistakes in Quantitative Political Science by Gary R. King (PDF)](https://gking.harvard.edu/files/mist.pdf)
* [Confusion Over Measures of Evidence (p's) Versus Errors (α's) in Classical Statistical Testing by Hubbard & Bayarri (PDF)](http://www-zeus.roma1.infn.it/~dagos/dott-prob_30/Hubbard-Bayarri-2003.pdf)
* [Methodology over metrics: current scientific standards are a disservice to patients and society by Van Calster et al.](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8795888/)