/*=================================================||
||     Textos en espanol en GameText y Texdraw     ||
||                       BY                        ||
||                 Tribisk_Transk                  ||
||=================================================*/
#include <a_samp>

stock EStexto(text[])
{
    new TextoES[256];
    for(new i; i < strlen(text); i++)
    {
        switch(text[i])
        {
            case '�', '�': TextoES[i] = '�';
            case '�', '�': TextoES[i] = '�';
            case '�', '�': TextoES[i] = '�';
            case '�', '�': TextoES[i] = '�';
            case '�', '�': TextoES[i] = '�';
            case '�', '�': TextoES[i] = '�';
            case '�': TextoES[i] = '�';
            case '�': TextoES[i] = '^';
            default: TextoES[i] = text[i];
        }
    }
    return TextoES;
}
/*=================================================||
||     Textos en espanol en GameText y Texdraw     ||
||                       BY                        ||
||                 Tribisk_Transk                  ||
||=================================================*/
