lexer grammar NCalc;
options {
  language=CSharp3;

}

T__19 : '!' ;
T__20 : '!=' ;
T__21 : '%' ;
T__22 : '&&' ;
T__23 : '&' ;
T__24 : '(' ;
T__25 : ')' ;
T__26 : '*' ;
T__27 : '+' ;
T__28 : ',' ;
T__29 : '-' ;
T__30 : '/' ;
T__31 : ':' ;
T__32 : '<' ;
T__33 : '<<' ;
T__34 : '<=' ;
T__35 : '<>' ;
T__36 : '=' ;
T__37 : '==' ;
T__38 : '>' ;
T__39 : '>=' ;
T__40 : '>>' ;
T__41 : '?' ;
T__42 : '^' ;
T__43 : 'and' ;
T__44 : 'not' ;
T__45 : 'or' ;
T__46 : '|' ;
T__47 : '||' ;
T__48 : '~' ;

// $ANTLR src "C:\Work\Projects\OSS\NCalc\Grammar\NCalc.g" 236
TRUE
	:	'true'
	;// $ANTLR src "C:\Work\Projects\OSS\NCalc\Grammar\NCalc.g" 240
FALSE
	:	'false'
	;// $ANTLR src "C:\Work\Projects\OSS\NCalc\Grammar\NCalc.g" 244
ID 
	: 	LETTER (LETTER | DIGIT)*
	;// $ANTLR src "C:\Work\Projects\OSS\NCalc\Grammar\NCalc.g" 248
INTEGER
	:	DIGIT+
	;// $ANTLR src "C:\Work\Projects\OSS\NCalc\Grammar\NCalc.g" 252
FLOAT 
	:	DIGIT* '.' DIGIT+ E?
	|	DIGIT+ E
	;// $ANTLR src "C:\Work\Projects\OSS\NCalc\Grammar\NCalc.g" 257
STRING
    	:  	'\'' ( EscapeSequence | (options {greedy=false;} : ~('\u0000'..'\u001f' | '\\' | '\'' ) ) )* '\''
    	;// $ANTLR src "C:\Work\Projects\OSS\NCalc\Grammar\NCalc.g" 261
DATETIME 
 	:	'#' (options {greedy=false;} : ~('#')*) '#'
        ;// $ANTLR src "C:\Work\Projects\OSS\NCalc\Grammar\NCalc.g" 265
NAME	:	'[' (options {greedy=false;} : ~(']')*) ']'
	;// $ANTLR src "C:\Work\Projects\OSS\NCalc\Grammar\NCalc.g" 268
fragment E	
	:	('E'|'e') ('+'|'-')? DIGIT+ 
	;// $ANTLR src "C:\Work\Projects\OSS\NCalc\Grammar\NCalc.g" 272
fragment LETTER
	:	'a'..'z'
	|	'A'..'Z'
	|	'_'
	;// $ANTLR src "C:\Work\Projects\OSS\NCalc\Grammar\NCalc.g" 278
fragment DIGIT
	:	'0'..'9'
	;// $ANTLR src "C:\Work\Projects\OSS\NCalc\Grammar\NCalc.g" 282
fragment EscapeSequence 
	:	'\\'
  	(	
  		'n' 
	|	'r' 
	|	't'
	|	'\'' 
	|	'\\'
	|	UnicodeEscape
	)
  ;// $ANTLR src "C:\Work\Projects\OSS\NCalc\Grammar\NCalc.g" 294
fragment HexDigit 
	: 	('0'..'9'|'a'..'f'|'A'..'F') ;// $ANTLR src "C:\Work\Projects\OSS\NCalc\Grammar\NCalc.g" 298
fragment UnicodeEscape
    	:    	'u' HexDigit HexDigit HexDigit HexDigit 
    	;// $ANTLR src "C:\Work\Projects\OSS\NCalc\Grammar\NCalc.g" 303
WS	:  (' '|'\r'|'\t'|'\u000C'|'\n') {$channel=Hidden;}
	;