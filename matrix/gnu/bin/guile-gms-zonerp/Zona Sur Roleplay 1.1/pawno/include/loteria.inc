#include <a_samp>
#include <funciones>
#include <globalvars>
#include <colores>

Loteria_OnInit()
{
	new row[20];
	mysql_query("SELECT valor FROM reglas WHERE regla = 'loteria'");
	mysql_store_result();
	mysql_fetch_row(row);
	Loteria = strval(row);
	mysql_free_result();
}

Lot_OnDialogResponse(playerid, dialogid, response, inputtext[])
{
	if(dialogid == 10000)
	{
		if(response == 0)
		{
			new rand = random(101);
			PlayerInfo[playerid][pLoteria] = rand;			
		}
		else if(response == 1 && strlen(inputtext) > 0)
		{
			if(strval(inputtext) < 101 && strval(inputtext) >= 0 && IsNumeric(inputtext))
			{
				PlayerInfo[playerid][pLoteria] = strval(inputtext);
			}
			else
			{
				ShowPlayerDialog(playerid, 10000, DIALOG_STYLE_INPUT, "Loter�a", "Escriba un n�mero (M�x. 100),\n puede elegir la opci�n 'Aletorio'\n para asignarle cualquier n�mero.", "Elegir", "Aletorio");
				return 1;
			}
		}
		
		new sql[128];
		Loteria += 500;
		format(sql, 128, "UPDATE reglas SET valor='%d' WHERE regla='loteria' LIMIT 1", Loteria);
		mysql_query(sql);
		SaveValue(playerid, "Loteria", PlayerInfo[playerid][pLoteria]);
		format(string, 128, "* Has comprado el n�mero '%d'.", PlayerInfo[playerid][pLoteria]);
		SendClientMessage(playerid, Verde, string);
		return 1;
	}
	return 0;
}

Lot_OnPlayerCommandText(playerid, cmdtext[])
{
	if(strcmp(cmdtext, "/loteria", true) == 0)
	{
		if(PlayerInfo[playerid][pAdmin] == 3)
		{
			new ganadores;
			new resultado;
			resultado = random(101);
			format(string, sizeof(string), "* Loter�a del estado: El n�mero premiado hoy ha sido el: %d.", resultado);
			SendClientMessageToAll(Amarillo, string);
			for(new i; i < MAX_PLAYERS; i++)
			{
				if(PlayerInfo[i][pLoteria] == resultado)
				{
					format(string, 128, "* Has ganado $%d en la loter�a del estado.", Loteria);
					SendClientMessage(i, VerdeClaro, string);
					SafeGivePlayerMoney(i, Loteria);
					ganadores ++;
				}
				PlayerInfo[i][pLoteria] = NOEXISTE;
				SaveValue(i, "Loteria", -1);
			}
			
			if(ganadores > 0)
			{
				new sql[128];
				format(string, 128, "* Loter�a del estado: Hubieron %d ganadores el d�a de hoy.", ganadores);
				SendClientMessageToAll(Amarillo, string);
				new newlott;
				newlott = Loteria / 3;
				Loteria = newlott;
				format(sql, 128, "UPDATE reglas SET valor='%d' WHERE regla='loteria' LIMIT 1", Loteria);
				mysql_query(sql);
			}
			else
			{
				format(string, 128, "* Loter�a del estado: No hubieron ganadores el d�a de hoy. El bote asciende a: $%d.", Loteria);
				SendClientMessageToAll(Amarillo, string);
			}
		}
		return 1;
	}
	return 0;
}