
%{
#include "ASTNode.h"
#include "ASTModule.h"
#include "../IR/IR.h"
#include <string>
#include "parser.hpp"
#define SAVE_TOKEN yylval.string = new std::string(yytext, yyleng)
#define SAVE_TOKEN_ESCID {string str(yytext,yyleng);str=str+" "; yylval.string = new std::string(str);}
#define TOKEN(t) (yylval.token = t)
//extern "C" int yywrap() { }
int line_num = 1;
%}

ws	[ \t\f\r]+
wsnr	[ \t\f]+
crnl	[\r]*[\n]
string	[a-zA-Z_][a-zA-Z0-9_$]*
escid	\\[^ \t\f\r\n]+
decimal   [0-9]+
time     (s|ms|us|ns|ps)

%option noyywrap

%%
"\n" 			{line_num++;}
{ws}			{}
{crnl}			{}

"module"		{return yMODULE;}
"endmodule" 	{return yENDMODULE;}
"input"			{return yINPUT;}
"output"		{return yOUTPUT;}
"inout"			{return yINOUT;}
"wire"			{return yWIRE;}
"assign"		{return yASSIGN;}
"defparam"		{return yDEFPARAM;}

"// @"[^\n]*                { SAVE_TOKEN;return ySTRING;}
"// file "[^\n]*            {SAVE_TOKEN;return yANNOTATION;}

"/*"[^*]+"*/"		{ }

"`timescale"     {return yTIMESCALE;}

			/* HEX number for INIT value */
[0-9]*?['']s?[bcodhBCODH][ \t]*[A-Fa-f0-9xXzZ_?]* { SAVE_TOKEN; return ySTRING; }
[0-9][_0-9]*(\.[_0-9]+)([eE][-+]?[_0-9]+)?			{ SAVE_TOKEN; return ySTRING; }
			
{string}		{ SAVE_TOKEN; return ySTRING;}
{escid}			{ SAVE_TOKEN_ESCID; return ySTRING;}
{decimal}		{ SAVE_TOKEN; return ySTRING;}
{time}          { SAVE_TOKEN; return ySTRING;}

";" { return yytext[0]; }
"(" { return yytext[0]; }
")" { return yytext[0]; }
"." { return yytext[0]; }
"," { return yytext[0]; }
"/" { return yytext[0]; }
"=" { return yytext[0]; }
"[" { return yytext[0]; }
"]" { return yytext[0]; }
":" { return yytext[0]; }
\" { return yytext[0]; }
"{" {return yytext[0];}
"}" {return yytext[0];}


"//"[^\n]*		{} /* comments */

.			{printf("%s\n",yytext);}
