//==========SISTEMA DE PD MODULAR BY B0N3R=====================


//CMD RECIBIR REGALO DE PD
CMD:tomar(playerid,params[])
{
	new op[10];
	if(sscanf(params,"s[10]",op)) return 1;
	if(strcmp(op,"regalo",true) == 0)
	{
	    if(PD_PLAYER == true)
		{
		    REGALO_PDX(playerid);
		}else  return Mensaje_Player(playerid,-1,"Info: El regalo del pago diario ya fue tomado por otra persona.");
	}
	return 1;
}
/*
//CMD RECIBIR REGALO DE PD
CMD:tomar(playerid,params[])
{
	new coso[6];
	if(PD_PLAYER == true)
	{
	
		if(!sscanf(params,"s[6]",coso))
		{
  			if(strcmp(coso,"regalo",true) == 0)
  			{
  			    REGALO_PDX(playerid);
  			}
		}
 	}else  return Mensaje_Player(playerid,-1,"Error: El regalo del pago diario ya fue tomado por otra persona.");
 	return 1;
}
*/
//
stock REGALO_PDX(playerid)
{
    SendClientMessageEx(-1, -1,""C_PURP"Regalo pago diario: {ffffff}%s tomó el regalo del pago diario.",PLAYER_INFO[playerid][Nickname]);
    SendClientMessageEx(playerid, -1, "Tomaste el regalo del pago diario,felicidades...");
   	new regalo = random(7), randomMoney = random(5000);
	switch (regalo)
	{
		case 0:
		{
			SendClientMessage(playerid,-1,"Recibes {74F20C}$30.000{FFFFFF} y {74F20C}Una Cámara{FFFFFF} de regalo."); DarDinero(playerid,30000);
			DarArma(playerid,43);
		}
		case 1:
		{
			MensajeEx(playerid,-1,"Recibes {74F20C}$%d{FFFFFF} de dinero de regalo.",3000+randomMoney);
			DarDinero(playerid,3000+randomMoney);
		}
		case 2:
		{
			MensajeEx(playerid,-1,"Recibes {74F20C}$%d{FFFFFF} de dinero de regalo.",5000+randomMoney);
			DarDinero(playerid,3000+randomMoney);
		}
		case 3:
		{
			MensajeEx(playerid,-1,"Recibes {74F20C}$%d{FFFFFF} de dinero de regalo.",2000+randomMoney);
			DarDinero(playerid,3000+randomMoney);
		}
		case 4:
		{
		 	SendClientMessage(playerid,-1,"Recibes unos patines de regalo");
		 	PLAYER_INFO[playerid][pPatines] = 1;
	 	}
 		case 5:
		{
			SendClientMessage(playerid,-1,"Recibes {74F20C}5 de cocaína{FFFFFF} y {74F20C} 10 medicamentos{FFFFFF} de regalo.");
			PLAYER_INFO[playerid][pCocaina] += 5;
			PLAYER_INFO[playerid][pMedicamentos] += 10;
		}
		case 6:
		{
			SendClientMessage(playerid,-1,"Recibes {74F20C}20 LZ{FFFFFF} y {74F20C} 50.000{FFFFFF} de regalo.");
			PLAYER_INFO[playerid][Moneda] += 14;
			DarDinero(playerid,50000);
		}
	}

    PD_PLAYER = false;
	return 1;
}
//

//
