package Analizador;
import static Analizador.Tokens.*;
%%
%class Lexico
%type Tokens
L=[a-zA-Z_]+                   
D=[0-9]+         
espacio=[ \t\r]+
%{
    public String lexemas;
%}
%%
/* Espacios en blanco */
{espacio} {/*Ignore*/}

(try)
(catch)

/* Comentarios */
( "//"(.)* ) {/*Ignore*/}

/* Salto de linea */
( "\n" ) {return Linea;}

/* Comillas */
( "\"" ) {lexemas=yytext(); return Comillas;}

/* Comilla Simple */
( "'" ) {lexemas=yytext(); return Comilla_s;}

/* Tipo de dato byte */
( byte ) {lexemas=yytext(); return T_byte;}

/* Tipo de dato int */
( int ) {lexemas=yytext(); return T_int;}

/* Tipo de dato char */
( char ) {lexemas=yytext(); return T_char;}

/* Tipo de dato long */
( long ) {lexemas=yytext(); return T_long;}

/* Tipo de dato float */
( float ) {lexemas=yytext(); return T_float;}

/* Tipo de dato double */
( double ) {lexemas=yytext(); return T_double;}

/* Tipo de dato String */
( string ) {lexemas=yytext(); return Cadena;}

/* Tipo de dato Booleano */
( bool ) {lexemas=yytext(); return T_bool;}

/* Palabra reservada If */
( if ) {lexemas=yytext(); return If;}

/* Palabra reservada Else */
( else ) {lexemas=yytext(); return Else;}

/* Palabra reservada Void */
( void ) {lexemas=yytext(); return Void;}

/* Palabra reservada Switch */
( switch ) {lexemas=yytext(); return Switch;}

/* Palabra reservada Case */
( case ) {lexemas=yytext(); return Case;}

/* Palabra reservada Break */
( break ) {lexemas=yytext(); return Break;}

/* Palabra reservada Default */
( default ) {lexemas=yytext(); return Default;}

/* Palabra reservada Include */
( #include ) {lexemas=yytext(); return Include;}

/* Palabra reservada IOStream */
( iostream ) {lexemas=yytext(); return IOStream;}

/* Palabra reservada Using */
( using ) {lexemas=yytext(); return Using;}

/* Palabra reservada NameSpace */
( namespace ) {lexemas=yytext(); return NameSpace;}

/* Palabra reservada STD */
( std ) {lexemas=yytext(); return STD;}

/* Palabra reservada Cin */
( cin ) {lexemas=yytext(); return Cin;}

/* Palabra reservada Cout */
( cout ) {lexemas=yytext(); return Cout;}

/* Palabra reservada RETURN */
( return ) {lexemas=yytext(); return RETURN;}

/* Palabra reservada SYSTEM */
( system ) {lexemas=yytext(); return SYSTEM;}

/* Operador Igual */
( "=" ) {lexemas=yytext(); return Igual;}

/* Operador Suma */
( "+" ) {lexemas=yytext(); return Suma;}

/* Operador Resta */
( "-" ) {lexemas=yytext(); return Resta;}

/* Operador Multiplicacion */
( "*" ) {lexemas=yytext(); return Multiplicacion;}

/* Operador Division */
( "/" ) {lexemas=yytext(); return Division;}

/* Op_And */
( "&&" ) {lexemas=yytext(); return Op_And;}

/* Op_Or */
( "||" ) {lexemas=yytext(); return Op_Or;}

/* Op_Not */
( "!" ) {lexemas=yytext(); return Op_Not;}

/* Op_Nand */
( "&" ) {lexemas=yytext(); return Op_Nand;}

/* Op_And */
( "|" ) {lexemas=yytext(); return Op_Nor;}

/*Operadores Relacionales */
/*( ">" | "<" | "==" | "!=" | ">=" | "<=" | "<<" | ">>" ) {lexemas = yytext(); return Op_relacional;}*/

/*Operador Relacional Mayor Que */
( ">" ) {lexemas = yytext(); return Op_rel_mayor;}

/*Operador Relacional Menor Que */
( "<" ) {lexemas = yytext(); return Op_rel_menor;}

/*Operador Relacional Igual */
( "==" ) {lexemas = yytext(); return Op_rel_igual;}

/*Operador Relacional Diferente */
( "!=" ) {lexemas = yytext(); return Op_rel_diferente;}

/*Operador Relacional Mayor o Igual Que */
( ">=" ) {lexemas = yytext(); return Op_rel_mayor_igual;}

/*Operador Relacional Menor o Igual Que */
( "<=" ) {lexemas = yytext(); return Op_rel_menor_igual;}

/*Operador Relacional Deplazamiento a la Izquierda */
( "<<" ) {lexemas = yytext(); return Op_rel_izq;}

/*Operador Relacional Desplazamiento a la Derecha */
( ">>" ) {lexemas = yytext(); return Op_rel_der;}

/* Operadores Atribucion */
//( "+=" | "-="  | "*=" | "/=" | "%=" ) {lexemas = yytext(); return Op_atribucion;}

/* Operador Atribucion de Adición */
( "+=" ) {lexemas = yytext(); return Op_atr_adicion;}

/* Operador Atribucion de Sustracción */
( "-=" ) {lexemas = yytext(); return Op_atr_sustraccion;}

/* Operador Atribucion de Multiplicación */
( "*=" ) {lexemas = yytext(); return Op_atr_mult;}

/* Operador Atribucion de División */
( "/=" ) {lexemas = yytext(); return Op_atr_div;}

/* Operador Atribucion de Resto */
( "%=" ) {lexemas = yytext(); return Op_atr_resto;}

/* Operador Incremento */
("++") {lexemas = yytext(); return Op_incremento;}

/* Operador Decremento */
( "--" ) {lexemas = yytext(); return Op_decremento;}

/*Operadores Booleanos*/
/*(true | false) {lexemas = yytext(); return Op_booleano;}*/

/*Operador Booleano True*/
(true) {lexemas = yytext(); return Op_bool_true;}

/*Operador Booleano False*/
(false) {lexemas = yytext(); return Op_bool_false;}

/* Parentesis de apertura */
( "(" ) {lexemas=yytext(); return Parentesis_a;}

/* Parentesis de cierre */
( ")" ) {lexemas=yytext(); return Parentesis_c;}

/* Llave de apertura */
( "{" ) {lexemas=yytext(); return Llave_a;}

/* Llave de cierre */
( "}" ) {lexemas=yytext(); return Llave_c;}

/* Corchete de apertura */
( "[" ) {lexemas = yytext(); return Corchete_a;}

/* Corchete de cierre */
( "]" ) {lexemas = yytext(); return Corchete_c;}

/* Marcador de inicio de algoritmo */
( "main" ) {lexemas=yytext(); return Main;}

/* Marcador de inicio de impresion en pantalla */
( "printf" ) {lexemas=yytext(); return Printf;}

/* Reservado SCANF */
( "scanf" ) {lexemas=yytext(); return Scanf;}

/* Punto y coma */
( ";" ) {lexemas=yytext(); return P_coma;}

/* Punto */
( "." ) {lexemas=yytext(); return Punto;}

/* Dos Puntos */
( ":" ) {lexemas=yytext(); return Dos_puntos;}

/* Coma */
( "," ) {lexemas=yytext(); return Coma;}

/* Identificador */
{L}({L}|{D})* {lexemas=yytext(); return Identificador;}

/* Numero */
("(-"{D}+")")|{D}+ {lexemas=yytext(); return Numero;}

/* Error de analisis */
 . {return ERROR;}

