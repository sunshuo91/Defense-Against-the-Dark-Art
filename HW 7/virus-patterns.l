%{
	/*Steve Sun (ss8ee) */
	int counter=0;	
%}

digit	[0-9]
letter	[a-zA-Z]

%%
68({digit}|{letter})({digit}|{letter})({digit}|{letter})({digit}|{letter})({digit}|{letter})({digit}|{letter})({digit}|{letter})({digit}|{letter})c3	{printf("WARNING! Tricky Jump: byte number: %u\n",counter);printf("%s\n\n", yytext);counter = counter + 10;}
{digit}|{letter}	{++counter;};
%%

int main(void) {
	yylex();
	return 0;
}
