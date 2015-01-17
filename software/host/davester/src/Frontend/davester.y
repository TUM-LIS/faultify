%{
  #include "ASTNode.h"
  #include "ASTModule.h"
  #include "../IR/IR.h"
  IR *parserIR;
  extern int yylex();
  extern void yyerror(const char*);
  extern int line_num;

  #include <string>
  #include <vector>
  #include <utility>
  #include <iostream>
%}

%union {
	IR *ir;
	ASTModule *mod;
	std::string *string;
	vector<std::string> *stringlist;
	ASTNodeConcatItem * concatitem;
	vector<ASTNodeConcatItem*> * concatlist;
	ASTNode* astnode;
	ASTNodeInst* astnodeinst;
	ASTNodeNet* astnodenet;
	ASTNodePin* astnodepin;
	ASTNodeAssignment* astnodeassignment;
	vector<ASTNode*> *astnodelist;
	vector<ASTNodePin*> *astnodepinlist;
	Net::type nettype;
	Net::port_direction portdirection;
	ASTNodeDefParam* astnodedefparam;
}

%type <astnodepin> pin_item concat_ports
%type <ir> verilog_input module_declarations
%type <mod> module_declaration
%type <astnode> module_item non_port_module_item
%type <astnodelist> module_itemListE module_itemList 
%type <astnodeinst> instance module_instance
%type <astnodeassignment> assignment
%type <astnodenet> net_declaration port_declaration
%type <portdirection> port_direction
%type <astnodedefparam> defparam
%type <astnodepinlist> pin_list list_of_ports portlist
%type <concatitem> concat_item 
%type <concatlist> concat_list
%type <stringlist> port_names net_names

%token yMODULE
%token yENDMODULE
%token yINPUT
%token yOUTPUT
%token yINOUT
%token yWIRE
%token <string> ySTRING
%token yDEFPARAM
%token <string> yINTNUM
%token yASSIGN
%token <string> yANNOTATION

%token yTIMESCALE



%error-verbose

%start verilog_input

%%

//**********************************************************************
// Module headers

verilog_input:
	  module_declarations  {}
        | annotations timescale_definition module_declarations {}
	| timescale_definition module_declarations {}
	;

annotations:
             yANNOTATION {parserIR->addAnnotatedFile(*$1);delete($1);}
        | yANNOTATION annotations {parserIR->addAnnotatedFile(*$1);delete($1);}
        ;
	
timescale_definition:
	yTIMESCALE ySTRING ySTRING '/'  ySTRING ySTRING { parserIR->setTimescale(*$2+*$3,*$5+*$6); delete($2); delete($3); delete($5); delete($6); }
	;
	
module_declarations:
	module_declaration { parserIR->addModule($1->getModule()); }
	| module_declarations module_declaration { parserIR->addModule($2->getModule()); }
	;

module_declaration:		
	yMODULE ySTRING portlist ';' module_itemListE yENDMODULE { $$=new ASTModule(*$2,$3,$5); delete($2); }
	;
	
portlist:
'(' list_of_ports ')'				{ $$=$2;}
	;

list_of_ports:
/* empty */  								{ $$=NULL;}
	|	concat_ports							{ vector<ASTNodePin*> *l=new vector<ASTNodePin*>(); l->push_back($1);$$=l;}
	|	list_of_ports ',' concat_ports					{ $1->push_back($3); $$=$1; }
	;

concat_ports:
                ySTRING								{ASTNodeConcatItem *item = new ASTNodeConcatItem(*$1,"NULL","NULL"); vector<ASTNodeConcatItem*> l; l.push_back(item);$$=new ASTNodePin(*$1,l); delete($1);}
	|	'.' ySTRING '(' '{' concat_list '}' ')' 			{$$ = new ASTNodePin(*$2,*$5); delete($2); delete($5);}
	;
module_itemListE:
	/* empty */					{ $$=NULL; }
	|	module_itemList				{ $$=$1; }
	;

module_itemList:	
		module_item				{ vector<ASTNode*> *l=new vector<ASTNode*>(); l->push_back($1); $$=l; }
	|	module_itemList module_item		{ $1->push_back($2); $$=$1; }
	;

module_item:	
port_declaration ';'			{ $$ = $1; }
|	non_port_module_item			{ $$ = $1; }
;

port_declaration:
		port_direction port_names				{ $$ = new ASTNodeNet(*$2,Net::WIRE,$1,"0","0"); delete($2); }
	|	port_direction '[' ySTRING ':' ySTRING ']' port_names 	{ $$ = new ASTNodeNet(*$7,Net::WIRE,$1,*$3,*$5);delete($3);delete($5);delete($7);}
	;

port_names:
		ySTRING					{ vector<std::string> *l = new vector<std::string>();l->push_back(*$1);delete($1);$$=l;}
	|	port_names ',' ySTRING			{ $1->push_back(*$3); delete($3); $$=$1;}
	;

port_direction:	
		yINPUT					{ $$ = Net::INPUT; }
	|	yOUTPUT					{ $$ = Net::OUTPUT; }
	|	yINOUT					{ $$ = Net::INOUT; }
	;

non_port_module_item:
		instance				{ $$ = $1; }
	|	defparam				{ $$ = $1; }
	|   	net_declaration         		{ $$ = $1; }
	|   	assignment 				{ $$ = $1; }
	;
	

assignment:
		yASSIGN concat_item '=' concat_item ';' { $$ = new ASTNodeAssignment($2,$4);}
	;
	
net_declaration:
		yWIRE net_names ';' 					{ $$ = new ASTNodeNet(*$2,Net::WIRE,Net::NONE,"0","0"); delete($2); };
	|	yWIRE '[' ySTRING ':' ySTRING ']' net_names ';' 	{  $$ = new ASTNodeNet(*$7,Net::WIRE,Net::NONE,*$3,*$5); delete($7);delete($3);delete($5);}
	;

net_names:
		ySTRING					{ vector<std::string> *l = new vector<std::string>();l->push_back(*$1);delete($1);$$=l;}
	|	port_names ',' ySTRING			{ $1->push_back(*$3); delete($3); $$=$1;}
	;

defparam:
		yDEFPARAM ySTRING '.' ySTRING '=' yINTNUM ';' { $$=new ASTNodeDefParam(*$2,*$4,*$6); delete($2); delete($4); delete($6); }
	|	yDEFPARAM ySTRING '.' ySTRING '=' ySTRING ';' { $$=new ASTNodeDefParam(*$2,*$4,*$6); delete($2); delete($4); delete($6); }
	|	yDEFPARAM ySTRING '.' ySTRING '=' '"' ySTRING '"' ';' {string param="\""+*$7+"\"";$$=new ASTNodeDefParam(*$2,*$4,param); delete($2); delete($4); delete($7);}
	|	yDEFPARAM ySTRING '.' ySTRING '=' '"' ySTRING '.' ySTRING '"' ';' {string param="\""+*$7+"."+*$9+"\"";$$=new ASTNodeDefParam(*$2,*$4,param); delete($2); delete($4); delete($7);delete($9);}
	;

instance:
		module_instance				{ $$=$1; } 
	;

module_instance:
                ySTRING ySTRING '(' pin_list ')' ';'	{$$ = new ASTNodeInst(*$1,*$2,*$4,"// @NULL:NULL "); delete($1); delete($2); delete($4); }
|       ySTRING  ySTRING ySTRING '(' pin_list ')' ';'	{ $$ = new ASTNodeInst(*$2,*$3,*$5,*$1);  delete($2);delete($3);delete($5);delete($1);}
	;

pin_list:
		pin_item					{ vector<ASTNodePin*> *l=new vector<ASTNodePin*>(); l->push_back($1); $$=l; }
	|	pin_list ',' pin_item		{ $1->push_back($3); $$=$1;}
	;

pin_item:
		'.' ySTRING '(' ySTRING ')'								{ASTNodeConcatItem *item = new ASTNodeConcatItem(*$4,"NULL","NULL"); vector<ASTNodeConcatItem*> l; l.push_back(item);$$ = new ASTNodePin(*$2,l); delete($2); delete($4);}
	|   '.' ySTRING '(' ySTRING '[' ySTRING ']' ')' 			{ASTNodeConcatItem *item = new ASTNodeConcatItem(*$4,*$6,*$6); vector<ASTNodeConcatItem*> l; l.push_back(item);$$ = new ASTNodePin(*$2,l); delete($2); delete($4); delete($6);}
	|   '.' ySTRING '(' ySTRING '[' ySTRING ':' ySTRING ']' ')' {ASTNodeConcatItem *item = new ASTNodeConcatItem(*$4,*$6,*$8); vector<ASTNodeConcatItem*> l; l.push_back(item);$$ = new ASTNodePin(*$2,l);delete($2); delete($4); delete($6);delete($8);}
	|   '.' ySTRING '(' '{' concat_list '}' ')'					{ $$ = new ASTNodePin(*$2,*$5); delete($2); delete($5);}
	;
	
concat_list:
		concat_item					{ vector<ASTNodeConcatItem*> *l = new vector<ASTNodeConcatItem*>(); l->push_back($1); $$=l;}
	|	concat_list ',' concat_item			{ $1->push_back($3);$$=$1;}
	;
	
concat_item:
		ySTRING									{ $$ = new ASTNodeConcatItem(*$1,"NULL","NULL");delete($1);}
	|	yINTNUM									{ $$ = new ASTNodeConcatItem(*$1,"NULL","NULL");delete($1);}
	|	ySTRING '[' ySTRING ']'							{ $$ = new ASTNodeConcatItem(*$1,*$3,*$3);delete($1);delete($3);}
	|	ySTRING '[' ySTRING ':' ySTRING ']'					{ $$ = new ASTNodeConcatItem(*$1,*$3,*$5);delete($1);delete($3);delete($5);}
	;	 
	
		


%%
