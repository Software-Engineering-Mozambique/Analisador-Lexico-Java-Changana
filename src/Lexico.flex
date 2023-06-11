
%%

%class Analisador
%standalone
%line
%column

branco                =[ \t\r\n]
Nomboro               = [0-9]
Nomboro_leyi_heleleke = 0|[1-9]{Nomboro}*
Nomboro_ya_khume      = {Nomboro_leyi_heleleke}(\.{Nomboro_leyi_heleleke})?
mapapila              = [A-Za-z_]

Tinomboro_ta_tinhlayo = "+" | "-" | "*" | "/" | "=" | ">" | "<" | ">=" | "<=" | "==" | "!=" | "'" | ";" | "." | "(" | ")" | ":" | "[" | "]" | "," | "--" | "|" | "^"

%%
{branco}                                    {/*Ignore*/}
{Nomboro}                                   {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);}
{Nomboro_leyi_heleleke}                     {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);}
{mapapila}                                  {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);}
{mapapila}({mapapila}|{Nomboro})*           {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);}
{Tinomboro_ta_tinhlayo}                     {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);}

//Palavras reservadas da lingaugem SEBTD

"Ntlawa"                {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Classe
"dyondzo"               {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Algoritmo
"ku_hela_ka_dyondzo"    {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Fim_algoritmo
"boane"                 {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Var
"hlaya"                 {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Leia
"tsala"                 {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Escreva
"loko"                  {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Se
"Kutani"                {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Entao
"loko_swilhanha"        {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Senao
"ndzi_hetile"           {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Fim_se
"Swa"                   {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Para
"Fikela"                {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Ate
"Endla"                 {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Faca
"Ku_hela_ku"            {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Fim_para
"Nkarhinyana"           {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Enquanto
"Ku_hela_ka_nkarhi"     {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Fim_enquanto
"Vuyelela"              {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Repita
"Fikela"                {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Ate_que
"Mahetelelo"            {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Fim_Repita
"Hlawula"               {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Escolha
"Mhaka"                 {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Caso
"Mhaka_yin'wana"        {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Outro_caso
"Ku_hlawula"            {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn);} // Fim_escolha
.                       {System.out.println("Token: " +yytext() +"\t \t \t Linha: " +yyline +"\t \t \t Coluna:" +yycolumn +"TOKEN_INVALIDO");}




  





