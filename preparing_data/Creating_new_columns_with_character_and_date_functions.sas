data eu_occ_total;
	set pg1.eu_occ;
	Year=substr(YearMon, 1, 4);
	Month=substr(YearMon, 6, 2);
	ReportDate=mdy(Month, 1, Year);
	Total=sum(Hotel, ShortStay, Camp);
	format Hotel ShortStay Camp comma17. ReportDate monyy7.;
	keep Country Hotel ShortStay Camp ReportDate Total;
run;
