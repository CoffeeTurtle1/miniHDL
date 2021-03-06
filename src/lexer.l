%{
    #include "parser.h"
    #include "error.hpp"
%}

%option nounput
%option noinput
%option noyywrap

%option yylineno

%%

and   return TOK_AND;
or    return TOK_OR;
not|! return TOK_NOT;
xor   return TOK_XOR;
true  return TOK_TRUE;
false return TOK_FALSE;
inp   return TOK_INPUT;
out   return TOK_OUTPUT;
wire  return TOK_WIRE;
when  return TOK_WHEN;
else  return TOK_ELSE;
mod   return TOK_MODULE;
end   return TOK_END;
"<-"  return TOK_CONNECTION;

"(" return TOK_LBRACKET;
")" return TOK_RBRACKET;
";" return TOK_SEMICOLON;
"," return TOK_COMMA;

[_a-zA-Z][_a-zA-Z0-9]* return TOK_IDENT;

\/\/.* {}
" " {}
\n {}
\t {}
. {};

%%
