data Storm_cat5;
	set pg1.storm_summary;
	where MaxWindMPH >=156  and StartDate>='01JAN2000'd;
	keep Season Basin Name Type MaxWindMPH;
run;
