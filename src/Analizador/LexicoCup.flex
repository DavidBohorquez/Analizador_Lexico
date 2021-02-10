package Analizador;
import java_cup.runtime.Symbol;
%%
%class LexicoCup
%type java_cup.runtime.Symbol
%cup 
%full
%line
%char
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ \t\r\n]+
%{
    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn);
    }
%}
%%
/* Espacios en blanco */
{espacio} {/*Ignore*/}

/* Comentarios */
( "//"(.)* ) {/*Ignore*/}

/* Salto de linea */
( "\n" ) {return new Symbol(sym.Linea, yychar, yyline, yytext());}

/* Comillas */
( "\"" ) {return new Symbol(sym.Comillas, yychar, yyline, yytext());}

/* Backslash */
( "\\" ) {return new Symbol(sym.Back, yychar, yyline, yytext());}

/* Comilla Simple */
( "'" ) {return new Symbol(sym.Comilla_s, yychar, yyline, yytext());}

/* Tipo de dato byte */
( byte ) {return new Symbol(sym.T_byte, yychar, yyline, yytext());}

/* Tipo de dato int */
( int ) {return new Symbol(sym.T_int, yychar, yyline, yytext());}

/* Tipo de dato char */
( char ) {return new Symbol(sym.T_char, yychar, yyline, yytext());}

/* Tipo de dato long */
( long ) {return new Symbol(sym.T_long, yychar, yyline, yytext());}

/* Tipo de dato float */
( float ) {return new Symbol(sym.T_float, yychar, yyline, yytext());}

/* Tipo de dato double */
( double ) {return new Symbol(sym.T_double, yychar, yyline, yytext());}

/* Tipo de dato String */
( string ) {return new Symbol(sym.Cadena, yychar, yyline, yytext());}

/* Tipo de dato Booleano */
( bool ) {return new Symbol(sym.T_bool, yychar, yyline, yytext());}

/* Palabra reservada If */
( if ) {return new Symbol(sym.If, yychar, yyline, yytext());}

/* Palabra reservada Else */
( else ) {return new Symbol(sym.Else, yychar, yyline, yytext());}

/* Palabra reservada Void */
( void ) {return new Symbol(sym.Void, yychar, yyline, yytext());}

/* Palabra reservada Switch */
( switch ) {return new Symbol(sym.Switch, yychar, yyline, yytext());}

/* Palabra reservada Case */
( case ) {return new Symbol(sym.Case, yychar, yyline, yytext());}

/* Palabra reservada Break */
( break ) {return new Symbol(sym.Break, yychar, yyline, yytext());}

/* Palabra reservada Default */
( default ) {return new Symbol(sym.Default, yychar, yyline, yytext());}

/* Palabra reservada Include */
( #include ) {return new Symbol(sym.Include, yychar, yyline, yytext());}

/* Palabra reservada IOStream */
( iostream ) {return new Symbol(sym.IOStream, yychar, yyline, yytext());}

/* Palabra reservada Using */
( using ) {return new Symbol(sym.Using, yychar, yyline, yytext());}

/* Palabra reservada NameSpace */
( namespace ) {return new Symbol(sym.NameSpace, yychar, yyline, yytext());}

/* Palabra reservada STD */
( std ) {return new Symbol(sym.STD, yychar, yyline, yytext());}

/* Palabra reservada Cin */
( cin ) {return new Symbol(sym.Cin, yychar, yyline, yytext());}

/* Palabra reservada Cout */
( cout ) {return new Symbol(sym.Cout, yychar, yyline, yytext());}

/* Palabra reservada RETURN */
( return ) {return new Symbol(sym.RETURN, yychar, yyline, yytext());}

/* Palabra reservada SYSTEM */
( system ) {return new Symbol(sym.SYSTEM, yychar, yyline, yytext());}

/* Marcador de inicio de impresion en pantalla */
( "printf" ) {return new Symbol(sym.Printf, yychar, yyline, yytext());}

/* Palabra reservada Scanf */
( "scanf" ) {return new Symbol(sym.Scanf, yychar, yyline, yytext());}

/* Palabra reservada Do */
( do ) {return new Symbol(sym.Do, yychar, yyline, yytext());}

/* Palabra reservada While */
( while ) {return new Symbol(sym.While, yychar, yyline, yytext());}

/* Palabra reservada For */
( for ) {return new Symbol(sym.For, yychar, yyline, yytext());}

/* Operador Igual */
( "=" ) {return new Symbol(sym.Igual, yychar, yyline, yytext());}

/* Operador Suma */
( "+" ) {return new Symbol(sym.Suma, yychar, yyline, yytext());}

/* Operador Resta */
( "-" ) {return new Symbol(sym.Resta, yychar, yyline, yytext());}

/* Operador Multiplicacion */
( "*" ) {return new Symbol(sym.Multiplicacion, yychar, yyline, yytext());}

/* Operador Division */
( "/" ) {return new Symbol(sym.Division, yychar, yyline, yytext());}

/* Operadores logicos */
//( "&&" | "||" | "!" | "&" | "|" ) {return new Symbol(sym.Op_logico, yychar, yyline, yytext());}

/*Operadores Relacionales */
//( ">" | "<" | "==" | "!=" | ">=" | "<=" | "<<" | ">>" ) {return new Symbol(sym.Op_relacional, yychar, yyline, yytext());}

/*Operador Relacional Mayor Que */
( ">" ) {return new Symbol(sym.Op_rel_mayor, yychar, yyline, yytext());}

/*Operador Relacional Menor Que */
( "<" ) {return new Symbol(sym.Op_rel_menor, yychar, yyline, yytext());}

/*Operador Relacional Igual */
( "==" ) {return new Symbol(sym.Op_rel_igual, yychar, yyline, yytext());}

/*Operador Relacional Diferente */
( "!=" ) {return new Symbol(sym.Op_rel_diferente, yychar, yyline, yytext());}

/*Operador Relacional Mayor o Igual Que */
( ">=" ) {return new Symbol(sym.Op_rel_mayor_igual, yychar, yyline, yytext());}

/*Operador Relacional Menor o Igual Que */
( "<=" ) {return new Symbol(sym.Op_rel_menor_igual, yychar, yyline, yytext());}

/*Operador Relacional Desplazamiento a la Izquierda */
( "<<" ) {return new Symbol(sym.Op_rel_izq, yychar, yyline, yytext());}

/*Operador Relacional Desplazamiento a la Derecha */
( ">>" ) {return new Symbol(sym.Op_rel_der, yychar, yyline, yytext());}

/* Operadores Atribucion */
//( "+=" | "-="  | "*=" | "/=" | "%=" | "=" ) {return new Symbol(sym.Op_atribucion, yychar, yyline, yytext());}

/* Operadores Atribucion de Adición */
( "+=" ) {return new Symbol(sym.Op_atr_adicion, yychar, yyline, yytext());}

/* Operadores Atribucion de Sustracción */
( "-=" ) {return new Symbol(sym.Op_atr_sustraccion, yychar, yyline, yytext());}

/* Operadores Atribucion de Multiplicación */
( "*=" ) {return new Symbol(sym.Op_atr_mult, yychar, yyline, yytext());}

/* Operadores Atribucion de División */
( "/=" ) {return new Symbol(sym.Op_atr_div, yychar, yyline, yytext());}

/* Operadores Atribucion de Resto */
( "%=" ) {return new Symbol(sym.Op_atr_resto, yychar, yyline, yytext());}

/* Operadores Incremento*/
( "++" ) {return new Symbol(sym.Op_incremento, yychar, yyline, yytext());}

/* Operadores Decremento */
( "--" ) {return new Symbol(sym.Op_decremento, yychar, yyline, yytext());}

/*Operadores Booleanos*/
//( true | false ) {return new Symbol(sym.Op_booleano, yychar, yyline, yytext());}

/*Operador Booleano True*/
( true ) {return new Symbol(sym.Op_bool_true, yychar, yyline, yytext());}

/*Operador Booleano False*/
( false ) {return new Symbol(sym.Op_bool_false, yychar, yyline, yytext());}

/* Parentesis de apertura */
( "(" ) {return new Symbol(sym.Parent_a, yychar, yyline, yytext());}

/* Parentesis de cierre */
( ")" ) {return new Symbol(sym.Parent_c, yychar, yyline, yytext());}

/* Llave de apertura */
( "{" ) {return new Symbol(sym.Llave_a, yychar, yyline, yytext());}

/* Llave de cierre */
( "}" ) {return new Symbol(sym.Llave_c, yychar, yyline, yytext());}

/* Corchete de apertura */
( "[" ) {return new Symbol(sym.Corchete_a, yychar, yyline, yytext());}

/* Corchete de cierre */
( "]" ) {return new Symbol(sym.Corchete_c, yychar, yyline, yytext());}

/* Marcador de inicio de algoritmo */
( "main" ) {return new Symbol(sym.Main, yychar, yyline, yytext());}

/* Punto y coma */
( ";" ) {return new Symbol(sym.P_coma, yychar, yyline, yytext());}

/* Punto */
( "." ) {return new Symbol(sym.Punto, yychar, yyline, yytext());}

/* Dos Puntos */
( ":" ) {return new Symbol(sym.Dos_puntos, yychar, yyline, yytext());}

/* Coma */
( "," ) {return new Symbol(sym.Coma, yychar, yyline, yytext());}

/* Modulo */
( "%" ) {return new Symbol(sym.Modulo, yychar, yyline, yytext());}

/* Identificador */
{L}({L}|{D})* {return new Symbol(sym.Identificador, yychar, yyline, yytext());}

/* Numero */
("(-"{D}+")")|{D}+ {return new Symbol(sym.Numero, yychar, yyline, yytext());}

/* Error de analisis */
 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}

