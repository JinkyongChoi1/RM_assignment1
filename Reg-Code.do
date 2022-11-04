ssc install estout

* Read in data: 
cd "/Users/jc5901/Documents/GitHub/RM_assignment1"
insheet using assignment1-research-methods.csv, clear

* Label your variables
label variable calledback "Candidate's Job Application Was Called Back"
label variable eliteschoolcandidate "Elite School Candiate"
label variable malecandidate "Male Candidate"

* Run regression
reg calledback eliteschoolcandidate malecandidate 

* Store regression
eststo regression_one 

* Output your results into a publication-quality table. 
global tableoptions "bf(%15.2gc) sfmt(%15.2gc) se label noisily noeqlines nonumbers varlabels(_cons Constant, end("" ) nolast)  starlevels(* 0.1 ** 0.05 *** 0.01) replace r2"
esttab regression_one using Reg-Table.rtf, $tableoptions keep(eliteschoolcandidate malecandidate) 
