%{
	/*Steve Sun (ss8ee) */
	int counter=0;	
%}

digit	[0-9]
letter	[a-zA-Z]
lart7	(8|9|a|A|b|B|c|C|d|D|e|E|f|F)
smat5	(0|1|2|3|4)

%%
68({digit}|{letter})({digit}|{letter})({digit}|{letter})({digit}|{letter})({digit}|{letter})({digit}|{letter})({digit}|{letter})({digit}|{letter})c3	{printf("WARNING! Tricky Jump: byte number: %u\n",counter);printf("%s\n\n", yytext);counter = counter + 6;}

bc((7{lart7})|({lart7}({digit}|{letter})))05000033363326	{printf("WARNING! Wahoo virus!: byte number: %u\n",counter);printf("%s\n\n", yytext);counter = counter + 9;}

bc({digit}|{letter})({digit}|{letter})06000033363326	{printf("WARNING! Wahoo virus!: byte number: %u\n",counter);printf("%s\n\n", yytext);counter = counter + 9;}

bc(({smat5}({digit}|{letter}))|(5{smat5}))07000033363326	{printf("WARNING! Wahoo virus!: byte number: %u\n",counter);printf("%s\n\n", yytext);counter = counter + 9;}

({digit}|{letter})({digit}|{letter})	{++counter;}

[ \t]	;
%%

int main(void) {
	yylex();
	return 0;
}
