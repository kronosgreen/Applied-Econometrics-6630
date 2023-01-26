/*************************************************************************

PROGRAM	:	Step 1 - Getting Started.sas
AUTHOR  	:					

**************************************************************************/

LIBNAME AE "C:\Classes\Econ 6630\Data\Working"; /*change this location to where your data are located on your computer*/
OPTIONS MLOGIC SYMBOLGEN MPRINT;

/****DOCUMENTATION
https://documentation.sas.com/doc/en/pgmsascdc/9.4_3.4/statug/statug_reg_details26.htm
https://stats.oarc.ucla.edu/sas/webbooks/reg/chapter2/regressionwith-saschapter-2-regression-diagnostics/
https://documentation.sas.com/doc/en/pgmsascdc/9.4_3.4/statug/statug_factor_examples01.htm
*/

PROC CONTENTS DATA=ONE;RUN;

PROC IMPORT OUT= WORK.ONE 
            DATAFILE= "C:\Classes\Econ 6630\Data\Input\1.xlsx" /*change this location to where your data are located on your computer*/
            DBMS=EXCEL REPLACE;
     RANGE="'1$'"; 
     GETNAMES=YES;
     MIXED=NO;
     SCANTEXT=YES;
     USEDATE=YES;
     SCANTIME=YES;
RUN;

PROC CONTENTS DATA=ONE;RUN;

/***RUN OLS REGRESSION***/

PROC REG DATA=ONE;
   MODEL SOLDPRICE = TOTSQF; /*MODEL Y=X*/
   ODS OUTPUT PARAMETERESTIMATES=REGOUT; /*OUTPUT THE REGRESSION DATA SET*/
RUN;

/*THIS PART CREATES MACRO VARIABLES OUT OF THE RESULTS. THIS MEANS YOU CAN USE THEM OUTSIDE THE DATASET.*/
DATA _NULL_;
   SET REGOUT;
   IF _N_ = 1 
		THEN CALL SYMPUT('INT', PUT(ESTIMATE, BEST6.));    
   ELSE
		CALL SYMPUT('SLOPE', PUT(ESTIMATE, BEST6.));  
RUN;

/*PLOT THE DATA*/

PROC SGPLOT DATA=ONE NOAUTOLEGEND;
   TITLE "SCATTER PLOT WITH REGRESSION LINE";
   REG Y=SOLDPRICE X=TOTSQF;
   INSET "INTERCEPT = &INT" "SLOPE = &SLOPE" / 
         BORDER TITLE="PARAMETER ESTIMATES" POSITION=TOPLEFT;
RUN;

DATA TWO;
	SET ONE;

AGE = YEAR(LISTDT) - YEARBLT;

RUN;

PROC UNIVARIATE DATA=TWO;
	VAR TOTSQF TOTKITCH TOTBED TOTBTH ACRES AGE;
RUN;

PROC REG DATA=TWO;
   MODEL SOLDPRICE = TOTSQF TOTBED TOTBTH TOTFIRE TOTKITCH ACRES AGE/ INFLUENCE VIF TOL;
   ODS OUTPUT PARAMETERESTIMATES=REGOUT; /*OUTPUT THE REGRESSION DATA SET*/
RUN;

/**PRINCIPAL COMPONENTS ANALYSIS**/

PROC FACTOR DATA=TWO SIMPLE CORR SCORE;
	VAR TOTSQF TOTBED TOTBTH TOTFIRE TOTKITCH ACRES AGE P1BED P1SQF;
RUN;
