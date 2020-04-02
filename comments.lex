%option noyywrap
%x A

%%

"/\*"   { BEGIN(A)}
<A>\*/  { BEGIN(INITIAL) }
<A>.    { }

. { printf("%s", yytext); }

%%

int main() {
    yylex();
}
