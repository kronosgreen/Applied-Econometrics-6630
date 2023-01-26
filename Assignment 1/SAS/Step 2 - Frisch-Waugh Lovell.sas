/*************************************************************************

PROGRAM	:	Step 2 - Frisch-Waugh-Lovell.sas
AUTHOR  	:					

**************************************************************************/

LIBNAME AE "C:\Classes\Econ 6630\Data\Working"; /*change this location to where your data are located on your computer*/
OPTIONS MLOGIC SYMBOLGEN MPRINT;

/****DOCUMENTATION
https://documentation.sas.com/doc/en/pgmsascdc/9.4_3.4/statug/statug_reg_details26.htm
https://stats.oarc.ucla.edu/sas/webbooks/reg/chapter2/regressionwith-saschapter-2-regression-diagnostics/
https://documentation.sas.com/doc/en/pgmsascdc/9.4_3.4/statug/statug_factor_examples01.htm
*/


PROC REG DATA=AE.DRAPER;
	MODEL SOLDPRICE = TOTSQF ACRES;
RUN;

PROC REG DATA=AE.DRAPER;
	MODEL TOTSQF = ACRES;
	OUTPUT OUT=REGHAT (KEEP=TOTSQF ACRES SOLDPRICE RESID) R=RESID;
RUN;

PROC REG DATA=REGHAT;
	MODEL SOLDPRICE = RESID;
RUN;

