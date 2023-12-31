#include <a_samp>
#include <colores>
#include <globalvars>

Cmds_OnInit()
{
	CreateDynamic3DTextLabel("Puesto de perritos calientes de Reggie", Amarillo, 1197.3617,-1730.4441,13.5702+0.2, 20);
	CreateDynamic3DTextLabel("Pulsa ENTER para m�s informaci�n", Gris, 1197.3617,-1730.4441,13.5702, 20);
	
	Ayuda = CreateMenu("Dialogo", 1, 200.0,200.0,200.0,0);
	AddMenuItem(Ayuda, 0, "Que hacer?");
	AddMenuItem(Ayuda, 0, "Transporte y Trabajo");
	AddMenuItem(Ayuda, 0, "Vivienda");
	AddMenuItem(Ayuda, 0, "Salir");
}

Cmds_OnPlayerSelectedMenuRow(playerid, row)
{
	new Menu:menuid = GetPlayerMenu(playerid);
	if(menuid == Ayuda)
	{
		switch(row)
		{
			case 0:
			{
				ClearChatbox(playerid,2);
				format(string, 128, "%s dice: Disculpe, soy nuevo en la ciudad �Qu� deber�a hacer?", pName(playerid));
				SendClientMessage(playerid, Blanco, string);
				ClearChatbox(playerid,1);
				SendClientMessage(playerid, Blanco, "Reggie Smith dice: Deber�a ir al ayuntamiento, para conseguir los papeles de residencia...");
				SendClientMessage(playerid, Blanco, "... y de paso contratar un seguro m�dico por si ocurre alg�n accidente.");
				SendClientMessage(playerid, Blanco, "Reggie Smith dice: El ayuntamiento est� en Pershing Square, justo al este desde aqu�.");
				ShowMenuForPlayer(Ayuda, playerid);
			}
			case 1:
			{
				ClearChatbox(playerid,2);
				format(string, 128, "%s dice: �Sabe d�nde puedo encontrar transporte y un empleo?", pName(playerid));
				SendClientMessage(playerid, Blanco, string);
				ClearChatbox(playerid,1);
				SendClientMessage(playerid, Blanco, "Reggie Smith dice: Aqu� mismo tiene una parada de taxis, no son caros, son muy amables y...");
				SendClientMessage(playerid, Blanco, "... adem�s le podr�n ayudar a encontrar lo que necesite, como por ejemplo un empleo.");
				SendClientMessage(playerid, Blanco, "Reggie Smith dice: Para solicitar un empleo, busque a la persona encargada y procure causarle una buena impresi�n.");
				ShowMenuForPlayer(Ayuda, playerid);
			}
			case 2:
			{
				ClearChatbox(playerid,2);
				format(string, 128, "%s dice: �D�nde puedo encontrar una vivienda?", pName(playerid));
				SendClientMessage(playerid, Blanco, string);
				ClearChatbox(playerid,1);
				SendClientMessage(playerid, Blanco, "Reggie Smith dice: Puede alquilar una habitaci�n de hotel, o bien puede buscar una casa en alquiler y pedir un contrato.");
				SendClientMessage(playerid, Blanco, "Reggie Smith dice: Dormir bajo un techo es importante, si duermes en la calle seguramente te atraquen mientras...");
				SendClientMessage(playerid, Blanco, "... duermes o cojas alguna enfermedad.");
				ShowMenuForPlayer(Ayuda, playerid);
			}
			case 3:
			{
				ClearChatbox(playerid,2);
				format(string, 128, "%s dice: No quiero nada, esos perritos tienen mala pinta...", pName(playerid));
				SendClientMessage(playerid, Blanco, string);
				ClearChatbox(playerid,1);
				SendClientMessage(playerid, Blanco, "Reggie Smith dice: No le culpo, yo tampoco me comer�a esta bazofia. Adi�s y �buena suerte!");
				HideMenuForPlayer(Ayuda, playerid);
				TogglePlayerControllable(playerid, 1);
			}
		}
	}
}

Cmds_OnPlayerCommandText(playerid, cmdtext[])
{
	new cmd[128];
	new tmp[128];
	new idx;
	cmd = strtokex(cmdtext, idx);

	if(strcmp(cmd, "/stats", true) == 0)
	{
		GetPlayerStats(playerid,playerid);
		return 1;
	}
	if(strcmp(cmd, "/premium", true) == 0)
	{
		if(GetPlayerPremium(playerid) == 0) return 1;
		VerPremium(playerid,playerid);
		return 1;
	}
	if(strcmp(cmd, "/mitrabajo", true) == 0)
	{
		if(PlayerInfo[playerid][pMember] == 1) // LSPD
		{
			ClearChatbox(playerid,1);
			new Rango[20];
			if(PlayerInfo[playerid][pRank] == 1) Rango = "Cadete";
			else if(PlayerInfo[playerid][pRank] == 2) Rango = "Oficial";
			else if(PlayerInfo[playerid][pRank] == 3) Rango = "Oficial superior";
			else if(PlayerInfo[playerid][pRank] == 4) Rango = "Sargento";
			else if(PlayerInfo[playerid][pRank] == 5) Rango = "Teniente";
			else if(PlayerInfo[playerid][pRank] == 6) Rango = "Capit�n";
			format(string,sizeof(string),"LSPD - Rango: %s - Comandos:",Rango);
			SendClientMessage(playerid,AzulClaro,string);
			SendClientMessage(playerid,Blanco,"/(f)acci�n, /(r)adio, /(d)epartamentos, /m(meg�fono), /forzar");
			SendClientMessage(playerid,Blanco,"/deservicio, /uniforme, /marcar, /poner, /sacar, /limpiar, /equipo, /qpl");
			SendClientMessage(playerid,Blanco,"/quitar, /cachear, /arrestar, /multa, /cuerda, /soltar, /esposar, /detener");
			SendClientMessage(playerid,Blanco,"/dlicarmas, /qlicarmas");
		}
		else if(PlayerInfo[playerid][pMember] == 2) // LSMD
		{
			ClearChatbox(playerid,1);
			new Rango[20];
			if(PlayerInfo[playerid][pRank] == 1) Rango = "Practicante";
			else if(PlayerInfo[playerid][pRank] == 2) Rango = "Param�dico";
			else if(PlayerInfo[playerid][pRank] == 3) Rango = "Auxiliar";
			else if(PlayerInfo[playerid][pRank] == 4) Rango = "Enfermero";
			else if(PlayerInfo[playerid][pRank] == 5) Rango = "M�dico";
			else if(PlayerInfo[playerid][pRank] == 6) Rango = "Director";
			format(string,sizeof(string),"LSMD - Rango: %s - Comandos:",Rango);
			SendClientMessage(playerid,Blanco,"/(f)acci�n, /(r)adio, /(d)epartamentos, /m(meg�fono), /marcar");
			SendClientMessage(playerid,Blanco,"/deservicio, /uniforme, /marcar, /poner, /sacar, /limpiar, /equipo");
			SendClientMessage(playerid,Blanco,"/informes, /informe, /(subir/bajar)am, /reanimar, /curar,/aincendio");
		}
		else if(PlayerInfo[playerid][pMember] == 3) // LSTD
		{
			ClearChatbox(playerid,1);
			SendClientMessage(playerid,AzulClaro,"LSTD - Comandos:");
			SendClientMessage(playerid,Blanco,"/(f)acci�n, /(r)adio");
			SendClientMessage(playerid,Blanco,"/tarifa,/mtaxi");
		}
		else if(PlayerInfo[playerid][pMember] == 4) // LNEWS
		{
			ClearChatbox(playerid,1);
			SendClientMessage(playerid,AzulClaro,"LSNEWS - Comandos:");
			SendClientMessage(playerid,Blanco,"/(f)acci�n, /(r)adio");			
			SendClientMessage(playerid,Blanco,"/(n)oticias, /directo");
		}
		else if(PlayerInfo[playerid][pMember] == 6) // Sheriff
		{
			ClearChatbox(playerid,1);
			SendClientMessage(playerid,AzulClaro,"Sheriff - Comandos:");
			SendClientMessage(playerid,Blanco,"/(f)acci�n, /(r)adio, /(d)epartamentos, /m(meg�fono), /forzar");
			SendClientMessage(playerid,Blanco,"/deservicio, /uniforme, /marcar, /poner, /sacar, /limpiar, /equipo, /qpl");
			SendClientMessage(playerid,Blanco,"/quitar, /cachear, /arrestar, /multa, /cuerda, /soltar, /esposar, /detener");
		}
		else if(PlayerInfo[playerid][pJob] == 0) { SendClientMessage(playerid,Naranja,"* No tienes ning�n trabajo actualmente."); return 1; }
		else if(PlayerInfo[playerid][pJob] == 1) // Mecanico
		{
			ClearChatbox(playerid,1);
			SendClientMessage(playerid,AzulClaro,"Mec�nico - Comandos:");
			SendClientMessage(playerid,Blanco,"/reparar /rellenar /repintar /modificar /grua");
			new habilidad = PlayerInfo[playerid][pHabilidadMecanico];
			new restante;
			if(habilidad < 10)
			{
				restante = 10 - habilidad;
			}
			else if(habilidad < 20)
			{
					restante = 20 - habilidad;
			}
			else if(habilidad < 50)
			{
					restante = 50 - habilidad;
			}
			else if(habilidad < 100)
			{
				restante = 100 - habilidad;
			}
			else if(habilidad >= 100)
			{
				restante = 0;
			}
			SendClientMessage(playerid,AzulClaro,"Mec�nico - Habilidad:");
			format(string, 128, "Tienes %d puntos de habilidad. Te faltan %d para el proximo nivel.", habilidad, restante);
			SendClientMessage(playerid, AmarilloClaro, string);
		}
		else if(PlayerInfo[playerid][pJob] == 2) // Granjero
		{
			ClearChatbox(playerid,1);
			SendClientMessage(playerid,AzulClaro,"Granjero - Comandos:");
			SendClientMessage(playerid,Blanco,"/cosechar /recolectar /trigo /dejarcosechar /vendertrigo /equipocosecha");
		}
		else if(PlayerInfo[playerid][pJob] == 3) // Pescador
		{
			ClearChatbox(playerid,1);
			SendClientMessage(playerid,AzulClaro,"Pescador - Comandos:");
			SendClientMessage(playerid,Blanco,"/pescar /dejarpescar /mispeces /venderpeces");
			SendClientMessage(playerid,Blanco,"/equipopesca /tirarca�a /tirarredes /infomarea");
			new habilidad = PlayerInfo[playerid][pHabilidadPescador];
			new restante;
			if(habilidad < 100)
			{
				restante = 100 - habilidad;
			}
			else if(habilidad < 300)
			{
				restante = 300 - habilidad;
			}
			else if(habilidad >= 300)
			{
				restante = 0;
			}
			SendClientMessage(playerid,AzulClaro,"Pescador - Habilidad:");
			format(string, 128, "Tienes %d puntos de habilidad. Te faltan %d para el proximo nivel.", habilidad, restante);
			SendClientMessage(playerid, AmarilloClaro, string);
		}
		else if(PlayerInfo[playerid][pJob] == 4) // LimpiaCalles
		{
			ClearChatbox(playerid,1);
			SendClientMessage(playerid,AzulClaro,"Limpia Calles - Comandos:");
			SendClientMessage(playerid,Blanco,"/limpiarcalles /dejardelimpiar");
		}
		else if(PlayerInfo[playerid][pJob] == 5) // Basurero
		{
			ClearChatbox(playerid,1);
			SendClientMessage(playerid,AzulClaro,"Basurero - Comandos:");
			SendClientMessage(playerid,Blanco,"/recogerbasura /dejarderecoger");
		}
		else if(PlayerInfo[playerid][pJob] == 6) // Pizzero
		{
			ClearChatbox(playerid,1);
			SendClientMessage(playerid,AzulClaro,"Pizzero - Comandos:");
			SendClientMessage(playerid,Blanco,"/pizza (recoger/repartir/abandonar/vender)");
		}
		else if(PlayerInfo[playerid][pJob] == 7) // Repartidor
		{
			ClearChatbox(playerid,1);
			SendClientMessage(playerid,AzulClaro,"Repartidor - Comandos:");
			SendClientMessage(playerid,Blanco,"/pedidos /atenderpedido");
		}
		else if(PlayerInfo[playerid][pJob] == 8) // Vendedor Ambulante
		{
			ClearChatbox(playerid,1);
			SendClientMessage(playerid,AzulClaro,"Vendedor Ambulante - Comandos:");
			SendClientMessage(playerid,Blanco,"/ambulante (comenzar/abandonar/vender)");
		}
		else if(PlayerInfo[playerid][pJob] == 9) // Detective
		{
			ClearChatbox(playerid,1);
			SendClientMessage(playerid,AzulClaro,"Detective - Comandos:");
			SendClientMessage(playerid,Blanco,"/contratar /contrato (aceptar/rechazar/dejar/ver) /buscar");
		}
		else if(PlayerInfo[playerid][pJob] == 10) // Vendedor de Seguros
		{
			ClearChatbox(playerid,1);
			SendClientMessage(playerid,AzulClaro,"Vendedor de Seguros - Comandos:");
			SendClientMessage(playerid,Blanco,"/venderseguro");
		}
		else if(PlayerInfo[playerid][pJob] == 11) // Ladron
		{
			ClearChatbox(playerid,1);
			SendClientMessage(playerid,AzulClaro,"Ladr�n - Comandos:");
			SendClientMessage(playerid,Blanco,"/robar (objetos|radio) /forzar /empe�ar");
			SendClientMessage(playerid,Blanco,"/puente /llamar desguace");
            new habilidad = PlayerInfo[playerid][pHabilidadLadron];
			new restante;
			if(habilidad < 30)
			{
				restante = 30 - habilidad;
			}
			else if(habilidad < 50)
			{
				restante = 50 - habilidad;
			}
			else if(habilidad >= 50)
			{
				restante = 0;
			}
			SendClientMessage(playerid,AzulClaro,"Ladr�n - Habilidad:");
			format(string, 128, "Tienes %d puntos de habilidad. Te faltan %d para el proximo nivel.", habilidad, restante);
			SendClientMessage(playerid, AmarilloClaro, string);
		}
		return 1;
	}
	
	if(strcmp(cmd, "/ayuda", true) == 0)
	{
		tmp = strtokex(cmdtext, idx);
		if(!strlen(tmp))
		{
			ClearChatbox(playerid,1);
			SendClientMessage(playerid, Blanco, "USO: /ayuda [Tema]");
			SendClientMessage(playerid, AzulClaro, "General, Casas, Negocios, Faccion, Coches, Trabajos, Telefono, Frecuencias, Premium");
			return 1;
		}
		
		if(strcmp(tmp, "Negocios", true) == 0)
		{
			ClearChatbox(playerid,2);
			SendClientMessage(playerid, AmarilloClaro, "Los negocios se adquieren mediante formulario en el subforo correspondiente.");
			SendClientMessage(playerid, AmarilloClaro, "de la secci�n IC de Oldschool.es - Por otro lado, siempre estar�n abiertos");
			SendClientMessage(playerid, AmarilloClaro, "aunque no sean propiedad de un usuario.");
			SendClientMessage(playerid, AzulClaro, "");
			SendClientMessage(playerid, AzulClaro, "Comandos:");
			SendClientMessage(playerid, Gris, "ENTER (entrar o salir del negocio), /comprar");
		}
		else if(strcmp(tmp, "Casas", true) == 0)
		{
			ClearChatbox(playerid,2);
			SendClientMessage(playerid, AmarilloClaro, "Necesitar�s un lugar donde vivir, existen habitaciones alquilables o bien");
			SendClientMessage(playerid, AmarilloClaro, "casas que podr�s adquirir. El precio ser� acorde al inmueble. Los alquileres");
			SendClientMessage(playerid, AmarilloClaro, "se cobrar�n cada hora en punto.");
			SendClientMessage(playerid, AzulClaro, "");
			SendClientMessage(playerid, AzulClaro, "Comandos:");
			SendClientMessage(playerid, Blanco, "ENTER (entrar o salir de la casa), /alquilar, /comprarcasa, /puerta");
			SendClientMessage(playerid, Blanco, "/alquilable, /alquiler, /desalojar, /desalojartodos");
		}
		else if(strcmp(tmp, "Coches", true) == 0)
		{
			ClearChatbox(playerid,2);
			SendClientMessage(playerid, AmarilloClaro, "Los veh�culos ser�n de gran utilidad para desplazarte por la ciudad.");
			SendClientMessage(playerid, AmarilloClaro, "Puedes instalar sistemas de seguridad y de audio, as� como elementos de tuning.");
			SendClientMessage(playerid, AmarilloClaro, "�No olvides poner combustible regularmente, llevar seguro o ponerte el /casco!.");
			SendClientMessage(playerid, Gris, "");
			SendClientMessage(playerid, AzulClaro, "Comandos:");
			SendClientMessage(playerid, Blanco, "ENTER - Entrar/Salir del veh�culo. G - Entrar como copiloto. /velocimetro");
			SendClientMessage(playerid, Blanco, "RADIO - /sintonizar, /vol, /subwoofer, /apagarradio.");
			SendClientMessage(playerid, Blanco, "COMBUSTIBLE - /kms, /gas, /llenar, /llenarlata, /usarlata.");
			SendClientMessage(playerid, Blanco, "MATRICULAS - /vm. BLOQUEAR /bloqueo. LLAVES /verllaves");
			SendClientMessage(playerid, Blanco, "VENTA - /vendercoche - (Para prestar la llave /ceder coche).");
			SendClientMessage(playerid, Blanco, "AUTOPARTES - /luces - /intermitentes - /(cerrar)maletero - /capo - /capota - /casco");
		}
		else if(strcmp(tmp, "Trabajos", true) == 0)
		{
			ClearChatbox(playerid,2);
			SendClientMessage(playerid, AmarilloClaro, "Para ganar dinero y prosperar en la ciudad, lo ideal es que consigas un empleo.");
			SendClientMessage(playerid, AmarilloClaro, "Puedes dirigirte a la zona de entrada al servidor y consultar all�");
			SendClientMessage(playerid, AmarilloClaro, "la lista disponible.");
			SendClientMessage(playerid, AmarilloClaro, "");
			SendClientMessage(playerid, AzulClaro, "Comandos:");
			SendClientMessage(playerid, Blanco, "/trabajo - Para preguntar por el empleo en el punto indicado.");
			SendClientMessage(playerid, Blanco, "/dejartrabajo - Para abandonar el empleo que realizas.");
			SendClientMessage(playerid, Blanco, "/mitrabajo - Para ver mas informaci�n sobre tu trabajo y sus comandos.");
		}
        else if(strcmp(tmp, "General", true) == 0)
		{
			ClearChatbox(playerid,2);
			SendClientMessage(playerid,AzulClaro, "Comandos de ayuda general, que no se catalogan en otras categor�as:");
			SendClientMessage(playerid, Blanco, "B�SICOS: /q (salir del juego) /me, /ame, /do, /headmove, /animaciones, /reloj.");
			SendClientMessage(playerid, Blanco, "INVENTARIO: /stats, /inventario, /maletero, /armario, /ceder, /tirar, /gafas.");
		}
		else if(strcmp(tmp, "Telefono", true) == 0)
		{
			ClearChatbox(playerid,2);
			SendClientMessage(playerid, AmarilloClaro, "Para comunicarte con otros ciudadanos a distancia lo m�s comodo es usar tus moviles.");
			SendClientMessage(playerid, AmarilloClaro, "Cada llamada costara $20 por minuto, otra alternativa son los SMS, mucho m�s baratos.");
			SendClientMessage(playerid, Gris, " ");
			SendClientMessage(playerid, AzulClaro, "Comandos:");
			SendClientMessage(playerid, Blanco, "/llamar, /sms, /agenda, /contestar, /colgar, /tlfactivo");
		}
		else if(strcmp(tmp, "Frecuencias", true) == 0)
		{
			ClearChatbox(playerid,2);
			SendClientMessage(playerid, AmarilloClaro, "Lo tuyo no son los moviles, eh?");
			SendClientMessage(playerid, AmarilloClaro, "Esta alternativa es mucho m�s cara, pero te permite hablar con m�s personas");
			SendClientMessage(playerid, AmarilloClaro, "Necesitaras un equipo de radio para poder utilizar esto.");
			SendClientMessage(playerid, Gris, " ");
			SendClientMessage(playerid, AzulClaro, "Comandos:");
			SendClientMessage(playerid, Blanco, "/frecuencias, /fr");
		}
		else if(strcmp(tmp, "Faccion", true) == 0)
		{
			ClearChatbox(playerid,2);
			SendClientMessage(playerid, AmarilloClaro, "Si perteneces a una facci�n p�blica (LSPD,LSMD,LSTD,LSNEWS)");
			SendClientMessage(playerid, AmarilloClaro, "puedes mirar los comandos disponibles con /mitrabajo.");
			SendClientMessage(playerid, Gris, " ");
			SendClientMessage(playerid, AzulClaro, "Comandos generales:");
			SendClientMessage(playerid, Blanco, "/reclutar, /expulsar, /miembros");
		}
		else if(strcmp(tmp, "Premium", true) == 0)
		{
			ClearChatbox(playerid,2);
			SendClientMessage(playerid, AmarilloClaro, "Para los jugadores que ayudan a mantener el servidor");
			SendClientMessage(playerid, AmarilloClaro, "hemos puesto una serie de comandos.");
			SendClientMessage(playerid, Gris, " ");
			SendClientMessage(playerid, AzulClaro, "Comandos generales:");
			SendClientMessage(playerid, Blanco, "/premium, /tlftoggle, /nevera");
		}
		return 1;
	}
	return 0;
}