																																																					/*
											Zona sur roleplay.						     -
					Programador:ScriptNoob- RZOONE                                       -
					Todos los derechos reservados.                                       -
																						 -
					Versi�n : BETA 1.0                                                   -      Pronto nuevas actualizaciones.
Fecha de inicio de programaci�n: 24 de agosto del 2013.

    	http://www.k-dst.de/kategorien.php?kat=Elevator%20from%20VC&ver=SA:MP%200.3c MAPPAS

					____________________________________________________________________________________________________________________
															INFORMACI�N:
					____________________________________________________________________________________________________________________
  Sistema administrativo:
  /cadmin (Comandos).
  Jugador:
  /Ayuda
					____________________________________________________________________________________________________________________
1-Sistema adminstrativo.
2-Sistema de usuario - Comandos b�sicos.
3-Sistema de banco b�sico. - Depositar-Sacar-Estado. - Le faltan coordendas.-
4-Sistema de motor b�sico. -/prender -/Apagarcoche.
5-Sistema de trabajo.
6-Sistema de guardado de cuenta. Guarda -Dinero-Admin-Genero-PosX-Y-Z-Trabajo-EdadIC-Banco.
7-Sistema de registro y logueado. (Con dini). - Cargado-guardado de cuenta.
8-Chat administrativo.
9-Chat de usuario
10-Sistema de orina y cansancio.
11-Sistema de ROL.
12-Sistema de facci�n.
13-Sistema de rango de facci�n.
14-Sistema de radio y chat en facciones[OOC].
15-Sistema de sed (En progreso).
16-Sistema de Dni(Documento) Con una petici�n Compleja.
17-Sistema de Pasaporte con devoluci�n de propiedad.(Dinero)//Faltan coordenadas.
18-Entrada y salida con rol. - CMD /Entrar /Salir
19-Sistema de d�a de paga.
20-Sistemas de niveles cada 12 de exp Subis un nivel.
21-Sistema de inicio administrativo, para poder usar el c�mando.
22-Sistema de Guardar skins y luego colocar LSPD
23- Puesto el sistema de Armamento.
24- Sistema de 24-7 Avanzado Solamente Ayunta.
25- Sistema de consumir : Alimento.
26- Sistema de tutorial.
27- Sistema Anti CK.
28- Sistema de negocios.
29- Sistema de inversion para negocios.
30- Sistema de advertencia administrativa.
31- Sistema de prestamos de 5mil a 20mil dolares sin intereses!
32- Sistema de inventario - NO TERMINADO.
33- Sistema de compra de prenda. No terminado.
34- Sistema de doble prenda, podr�s tener 2 prendas el skin que tienes + otro que elijas, despu�s podr�s cambiar.
35- Sistema de Compra y ventas de veh�culos. BETA.
36- Sistema de Curaci�n para M�dicos y LAS Jeringas son 15ML Y 50ml - Mililitros. El equivocado Muere.
37- Sistema de chat departamental.
38- Sistema de fondos monetarios para el gobierno.
39- Sistema de entrevista.
40- Sistema de armar porros y consumir drogas.
41- Sistema de rentas de veh�culos. - MANANA.
42- Sistema de rol en el trabajo CAMIONERO.

					____________________________________________________________________________________________________________________
  Rangos administrativos:
  1* Moderador.
  2* Administrador ( El due�o del servidor).
  
					____________________________________________________________________________________________________________________

LISTA DE FACCIONES:

														1-Policia federal.
														2-G.E.O.F.
                                                        3-M�dico.
                                                        4-Gobernador.
                                                        5-Noticiero.
                                                        6-Mec�nico.
                                                        7-Yakuza.
                                                        8-Groove street.
                                                        9-Ballas.
                                                        10-La cosa nostra.
					____________________________________________________________________________________________________________________
					
LISTA DE TRABAJOS:
									1-Recogedor de basura.
									2-Chofer de bus urbano.
									3-Chofer de bus A larga distancia.
									4-Barredor de calles.
									5-Agricultor.
//echo									5-Agricultor de drogas.
//echo									6-Transportador de mercader�a.
									7-Taxista.(Nivel > 2).- Tener conocimiento previo de la ciudad.
					
					
					____________________________________________________________________________________________________________________
  Si tienes alguna duda mand�me un MP a mi usuario (ScriptNoob).
  
 															

					____________________________________________________________________________________________________________________
  
                                                                INFORMACION ADICIONAL:
											- Basado en LS 'Los santos'.
											- Mappeado con MTA �ltima versi�n.
											- Sistemas en progreso..
					____________________________________________________________________________________________________________________

							La programaci�n est� echa por RZoone y scriptnoob. �ste gamemode es totalmente desde 0   -
							Por lo cual es total nuestro derecho si queremos liberarlo o No. Estaremos bajo licencia -
							El gamemode quiz�s se libere cuando el servidor no cresca m�s de 0 usuarios habiles y no -
							Tengamos ganas de seguir con el proyecto Roleplay , por lo cual no pasar� nunca.
									Copyright(C)- 2013 - 2014 Y para las pr�ximas generaciones.



		IDEAS:
		Sistema de gps.(Localizar sospechoso).
//Echo		Sistema de Gasolina.
//Echo	Sistema de Negocios.
//Echo		Sistema de concesionarios.
//Echo.	Sistema de compras de productos con canasta- Poner /obtenercanasta , se le aplicar� un objeto al jugador , ir� a un pick up y pondr� /agarrarp
		el cual abr� 2 - Comida y bebida. , Luego ir� al lugar de compra y se le facturar�. Se le quitar� el objeto y se el quitar� el dinero.
//Echo pero no terminado.	Sistema de inventario.
//Echo		Sistema de renta de veh�culos.
		Bares.
//Echo		Sistema de drogas.
//Echo		Sistema monetario de gobierno, se guardara el valor de cada payday 2000 y el gobierno pagar con eso a las facciones.
//echo.		Sistema de anti abusos admin's, 3 advertencia ser� removido el admin directamente.
		Sistemas de robo al banco y gasolinera
		Sistema de mercado negro.
//Echo		Sistema de celular
		Sistema de peaje.
//Echo.		Sistema de prestamo.
		Animaciones.
		Interiores de fac's.
		Balas de goma para la polic�a.
		Sistema de licencias
		Robo a tiendas.
		
		
		    __________________________________________________________________________________________________________
		
		
												PROGESO GAMEMODE:
													  42%
		
		
		

																																						Copyright(C).
																																																																														*/

#include <a_samp>
#include <dini>
#include <sscanf2>
#include <a_cmd>
#include <foreach>
#include <progress>
#include <Streamer>
#include <mSelection>


AntiDeAMX()
{
   new a[][] =
   {
      "Unarmed (Fist)",
      "Brass K"
   };
   #pragma unused a
}

	#define Inicio 01
	#define Registro 02
	#define Dgenero 03
	#define AAyuda 04
	#define DAyuda 05
	#define DReglas 06
	#define DBanco 07
	#define DDepositar 08
	#define DSacar 09
	#define DTrabajoAvion 10
	#define DTrabajoBasurero 11
	#define DTrabajoBus 12
	#define iratrabajo 13
	#define DDSacar 14
	#define D_Cuenta 15
	#define DCreditos 16
	#define RentarCocheD 17
	#define D_CASAC  18
	#define D_COMPRARC  19
	#define D_SALIRC    20
	#define DIALOG_CCasa 21
	#define D_ArmamentoPF 22
	#define D_Bebida 23
	#define D_Comida 24
	#define D_Consumir 25
	#define D_EdadIC 26
	#define D_EdadOOC 27
	#define D_MASINFO 28
	#define D_OBTENERDNI1 29
	#define MuestraDNI 30
	#define D_PagarDNI 31
	#define D_NEGOCIOS 32
	#define D_InvertirN 33
	#define D_ComprarNeg 34
	#define D_VenderN 35
	#define D_Prestamo 36
	#define ConcePlate 37
	#define ConceCompra 38
	#define DMaletero 39
	#define DPArma 40
	#define DSArma 41
	#define PJeringa 42
	#define D_Armar 43
	#define ComprarDrogas 44
	#define D_Telefono 45
	#define D_Agenda 46
	#define D_Agenda1 47
    #define D_Agenda2 48
    #define D_Agenda3 49
    #define D_Agenda4 50
    #define D_Agenda5 51
    #define D_CNAgenda1 52
    #define D_CNAgenda2 53
    #define D_CNAgenda3 54
    #define D_CNAgenda4 55
    #define D_CNAgenda5 56
    #define D_CNumAgenda1 57
    #define D_CNumAgenda2 58
    #define D_CNumAgenda3 59
    #define D_CNumAgenda4 60
    #define D_CNumAgenda5 61
    
    #define Checkpoint SetPlayerCheckpoint
	#define Dialog ShowPlayerDialog
	#define Mensaje SendClientMessage
	#define PPos SetPlayerPos
	#define PlayerToPoint IsPlayerInRangeOfPoint
	#define DCoche IsPlayerInAnyVehicle
	#define CT Create3DTextLabel
	#define TDSFP TextDrawShowForPlayer
	#define ControlP TogglePlayerControllable
	#define DDarma GivePlayerWeapon
	#define SSkin SetPlayerSkin
	#define DCheckpoint DisablePlayerCheckpoint

	#define MAX_COCHESGM 25

	
	#define Facciones PI[playerid][Faccion] == 1 || PI[playerid][Faccion] == 2 || PI[playerid][Faccion] == 3 || PI[playerid][Faccion] == 4 || PI[playerid][Faccion] == 5 || PI[playerid][Faccion] == 6 || PI[playerid][Faccion] == 7 || PI[playerid][Faccion] == 8 || PI[playerid][Faccion] == 9
	#define ArmamentoFac PlayerToPoint(playerid,257.2999900,77.0000000,1004.2999900,5.0)
	//_______COLORES_______________________
	#define Gris 0x555555
	#define Celeste 0xFFFFFF
	#define COLOR_BLANCO 		0xFFFFFFFF
	#define COLOR_ADMIN         0x0C8EF800
	#define MoradoME            0xF16BFD00
    #define COLOR_LIGHTGREEN    0xBBFF7600
    #define COLOR_RED 0xFF0000FF
    #define COL_YELLOW         "{F3FF02}"
    #define COLOR_LIME 0x00FF00FF
    #define COL_WHITE          "{FFFFFF}"
    #define COL_GREEN          "{6EF83C}"
    #define COLOR_YELLOW 0xFFFF00FF
    #define COLOR_GREEN          0x6EF83C
	//Del chat OOC
	#define Hablar 0xE6E6E6E6
    #define Hablar2 0xC8C8C8C8
    #define Hablar3 0xAAAAAAAA
    #define Hablar4 0x8C8C8C8C
    #define Azul 0x65BAFF
    #define Hablar5 0x6E6E6E6E
    #define Accion1 "{E400A7}"
#define Accion2 "{D4009B}"
#define Accion3 "{C40090}"
#define Accion4 "{AE0080}"
    


																																																/*
________________________________________________________________________________________________________________
																																																*/
enum Necesidades
{
pOrina,
pHambre
};
new FondoM;

new Bar:BarGas[MAX_PLAYERS] = {INVALID_BAR_ID, ...};
new Text:BoxTuto1;
new Text:BoxTuto2;
new Text:TitTuto[MAX_PLAYERS];
new Text:TextoTuto[MAX_PLAYERS];
new Compro[MAX_PLAYERS];
new NInfo[MAX_PLAYERS][Necesidades];
new Bar:OrinaB[MAX_PLAYERS] = {INVALID_BAR_ID, ...}; // Orina
new Bar:HambreB[MAX_PLAYERS] = {INVALID_BAR_ID, ...}; // Hambre
new Text:MRP,Text:LogoSV;
new Objeto[MAX_VEHICLES];
new Marihuana,Cocaina;
enum PD {
Dinero,
Staff,
Nivel,
Genero,
Float:PX,
Float:PY,
Float:PZ,
Trabajo,
TCompletado,
Bancod,
Registroc,
Skin,
Faccion,
Rangof,
Pasaporte,
Dni,
SubNivel,
Skin2,
Inv1,
Inv2,
Inv3,
Inv4,
CComida,
CBebida,
EdadIC,
InvirtioN,
TNegocio,
Adv,
Prestamo,
PrestamoP,
TMarihuana,
TCocaina,
TPorro,
Telefono,
ANom1[24],
AN1,
ANom2[24],
AN2,
ANom3[24],
AN3,
ANom4[24],
AN4,
ANom5[24],
AN5,
}
new ObjetoCarga;
new CamioneroV[11];
new Text:EMarihuana1;
new Text:EMarihuana2;
new Text:EMarihuana3;
new Text:BoxVelo1;
new Text:BoxVelo2;
new Text:TextVelo1;
new Text:ECocaina;
new Text:TextVelo2[MAX_PLAYERS];
new Text:TextGas[MAX_PLAYERS];
new Aceptollamada[MAX_PLAYERS];
new MostrarVel[MAX_PLAYERS];
new PuedeProbarCoche[MAX_PLAYERS];
new ComproGalleta[MAX_PLAYERS];
new ComproPan[MAX_PLAYERS];
new ComproGaseosa[MAX_PLAYERS];
new DParacomprar[MAX_PLAYERS];
new Gasolina[MAX_VEHICLES] = 100;
new JeringaLista[MAX_PLAYERS];
new ServicioMedico[MAX_PLAYERS];
new Text:Tit1;
new Text:Tit2;
new Text:Tit3;
new Text:Box1;
new Text:Box2;
new Text:BoxAbajo;
new Text:Trabajoscompletos;
new Text:CompletadosT[MAX_PLAYERS];
new Text:TNivel;
new Text:NivelT[MAX_PLAYERS];
new Motorencendido[MAX_PLAYERS];
new PI[MAX_PLAYERS][PD];
new TrabajoBasurero[MAX_PLAYERS];
new TrabajoBus[MAX_PLAYERS];
new TrabajoPiloto[MAX_PLAYERS];
new CAvion[4];
new CBasurero[5];
new CBus[6];
new ConsultaA[MAX_PLAYERS];
new bool:EstadoDuty[MAX_PLAYERS];
new Text:BBox1;
new Text:BText1[MAX_PLAYERS];/*
new Text:BText2;
new Text:BText3;*/
new Text:BText4;
new Text:BText6,Text:BBox3,Text:BBox4,Text:BEstado,Text:BRetirar;
new Text:BBox2;
new Text:BText5;
new RCosechadora[MAX_PLAYERS];
new SkinAdmin[MAX_PLAYERS];
new RentaV[10];
new Rentado[MAX_PLAYERS];
new RentadoV[MAX_PLAYERS];
new TicketC[MAX_PLAYERS];
/*Gasolina.*/
new SinGasolina[MAX_PLAYERS];
new Jeringa[MAX_PLAYERS];
new CosechaDrogas[6];
new skinlist = mS_INVALID_LISTID;
#define MAX_HOUSES 100

#define HOUSE_UPGRADE_MONEY 1000

new CasaEntrada[MAX_HOUSES];
new CamionTrabajo[MAX_PLAYERS];
enum CasaInfo
{
	CaNombre[24],
	Npropietario[24],
	Comprada,
	Nivel,
	Precio,
	Float:CasaX,
	Float:CasaY,
	Float:CasaZ,
	CasaVirtual,
	Text3D:CasaLabel,
}
new PropiedadInfo[MAX_HOUSES][CasaInfo],
	ContarCasas,
	JugadorEnLaCasa[MAX_PLAYERS];

/*  SISTEMA DE NEGOCIOS*/
new InvertirNumero[MAX_PLAYERS];
#define MAX_NEGOCIOS 200
new NegocioEntrada[MAX_NEGOCIOS];
enum NegoInfo {
	DuNombre[24],
	NLema[24],
	Nivel,
	Comprada,
	Precio,
	Float:NX,
	Float:NY,
	Float:NZ,
	Text3D:NegocioLabel,
	Invert,
	NegocioID
}
new Llamaaluser[MAX_PLAYERS],Llamando[MAX_PLAYERS];
new NegocioInfo[MAX_NEGOCIOS][NegoInfo],ContarNegocios;
enum car_info
{
	Model,
	Price,
	Float:CarX,
	Float:CarY,
	Float:CarZ,
	Float:CarRot,
	Locked,
	mod1,
	mod2,
	mod3,
	mod4,
	mod5,
	mod6,
	mod7,
	mod8,
	mod9,
	mod10,
	mod11,
	mod12,
	mod13,
	mod14,
	mod15,
	mod16,
	mod17,
	paintjob,
	colora,
	colorb
};
new VehicleInfo[MAX_PLAYERS][car_info];
new DealerCars[8];
new Text3D:DealerCar[8];
new Vehicle[MAX_PLAYERS];
new OwnerID[MAX_VEHICLES];
new CarPrice[MAX_VEHICLES];
new VehOwned[MAX_VEHICLES];
new ConfirmSale[MAX_PLAYERS];
new gVehLocked[MAX_VEHICLES];
new VehPlate[MAX_VEHICLES][256];
new gPlayerHasCar[MAX_PLAYERS];
new IsADealerCar[MAX_VEHICLES];
new bool:Destroyed[MAX_VEHICLES];
new TimerDrogasT;
enum trunk_info
{
	Slot1,
	Slot2,
	Slot3,
	Slot4,
	Slot5,
	Slot6,
	Slot7,
	Slot8,
	Slot9,
	Slot10,
	Ammo1,
	Ammo2,
	Ammo3,
	Ammo4,
	Ammo5,
	Ammo6,
	Ammo7,
	Ammo8,
	Ammo9,
	Ammo10
};
new TanqueTimer;
new TrunkInfo[MAX_VEHICLES][trunk_info];
new TrunkOpen[MAX_VEHICLES];
new Impuestos;
new luces[MAX_PLAYERS];
forward RemovePlayerWeapon(playerid, weaponid);
forward ini_GetKey(line[]);
forward ini_GetValue(line[]);
forward SaveTrunk(playerid);
forward LoadTrunk(playerid);

stock ini_GetKey(line[])
{
	new keyRes[256];
	keyRes[0] = 0;
    if(strfind(line, "=", true) == -1) return keyRes;
    strmid(keyRes, line, 0, strfind(line, "=", true), sizeof(keyRes));
    return keyRes;
}

stock ini_GetValue(line[])
{
	new valRes[256];
	valRes[0] = 0;
	if(strfind(line, "=", true) == -1) return valRes;
	strmid(valRes, line, strfind(line, "=", true) + 1, strlen(line), sizeof(valRes));
	return valRes;
}
new TimerContratoV[MAX_PLAYERS];
new spoiler[20][0] = {
	{1000},
	{1001},
	{1002},
	{1003},
	{1014},
	{1015},
	{1016},
	{1023},
	{1058},
	{1060},
	{1049},
	{1050},
	{1138},
	{1139},
	{1146},
	{1147},
	{1158},
	{1162},
	{1163},
	{1164}
};

new nitro[3][0] = {
    {1008},
    {1009},
    {1010}
};

new fbumper[23][0] = {
    {1117},
    {1152},
    {1153},
    {1155},
    {1157},
    {1160},
    {1165},
    {1167},
    {1169},
    {1170},
    {1171},
    {1172},
    {1173},
    {1174},
    {1175},
    {1179},
    {1181},
    {1182},
    {1185},
    {1188},
    {1189},
    {1192},
    {1193}
};

new rbumper[22][0] = {
    {1140},
    {1141},
    {1148},
    {1149},
    {1150},
    {1151},
    {1154},
    {1156},
    {1159},
    {1161},
    {1166},
    {1168},
    {1176},
    {1177},
    {1178},
    {1180},
    {1183},
    {1184},
    {1186},
    {1187},
    {1190},
    {1191}
};

new exhaust[28][0] = {
    {1018},
    {1019},
    {1020},
    {1021},
    {1022},
    {1028},
    {1029},
    {1037},
    {1043},
    {1044},
    {1045},
    {1046},
    {1059},
    {1064},
    {1065},
    {1066},
    {1089},
    {1092},
    {1104},
    {1105},
    {1113},
    {1114},
    {1126},
    {1127},
    {1129},
    {1132},
    {1135},
    {1136}
};

new bventr[2][0] = {
    {1042},
    {1044}
};

new bventl[2][0] = {
    {1043},
    {1045}
};

new bscoop[4][0] = {
	{1004},
	{1005},
	{1011},
	{1012}
};

new rscoop[13][0] = {
    {1006},
    {1032},
    {1033},
    {1035},
    {1038},
    {1053},
    {1054},
    {1055},
    {1061},
    {1067},
    {1068},
    {1088},
    {1091}
};

new lskirt[21][0] = {
    {1007},
    {1026},
    {1031},
    {1036},
    {1039},
    {1042},
    {1047},
    {1048},
    {1056},
    {1057},
    {1069},
    {1070},
    {1090},
    {1093},
    {1106},
    {1108},
    {1118},
    {1119},
    {1133},
    {1122},
    {1134}
};

new rskirt[21][0] = {
    {1017},
    {1027},
    {1030},
    {1040},
    {1041},
    {1051},
    {1052},
    {1062},
    {1063},
    {1071},
    {1072},
    {1094},
    {1095},
    {1099},
    {1101},
    {1102},
    {1107},
    {1120},
    {1121},
    {1124},
    {1137}
};

new hydraulics[1][0] = {
    {1087}
};

new base[1][0] = {
    {1086}
};

new rbbars[2][0] = {
    {1109},
    {1110}
};

new fbbars[2][0] = {
    {1115},
    {1116}
};
new Redactando[MAX_PLAYERS];
new wheels[17][0] = {
    {1025},
    {1073},
    {1074},
    {1075},
    {1076},
    {1077},
    {1078},
    {1079},
    {1080},
    {1081},
    {1082},
    {1083},
    {1084},
    {1085},
    {1096},
    {1097},
    {1098}
};

new light[2][0] = {
	{1013},
	{1024}
};

InitComponents(componentid)
{
	new i;
	for(i=0; i<20; i++)
	{
	    if(spoiler[i][0]==componentid) { return 1; }
	}
	for(i=0; i<3; i++)
	{
	    if(nitro[i][0]==componentid) { return 2; }
	}
	for(i=0; i<23; i++)
	{
	    if(fbumper[i][0]==componentid) { return 3; }
	}
	for(i=0; i<22; i++)
	{
	    if(rbumper[i][0]==componentid) { return 4; }
	}
	for(i=0; i<28; i++)
	{
	    if(exhaust[i][0]==componentid) { return 5; }
	}
	for(i=0; i<2; i++)
	{
	    if(bventr[i][0]==componentid) { return 6; }
	}
	for(i=0; i<2; i++)
	{
	    if(bventl[i][0]==componentid) { return 7; }
	}
	for(i=0; i<4; i++)
	{
	    if(bscoop[i][0]==componentid) { return 8; }
	}
	for(i=0; i<13; i++)
	{
	    if(rscoop[i][0]==componentid) { return 9; }
	}
	for(i=0; i<21; i++)
	{
	    if(lskirt[i][0]==componentid) { return 10; }
	}
	for(i=0; i<21; i++)
	{
	    if(rskirt[i][0]==componentid) { return 11; }
	}
	if(hydraulics[0][0]==componentid) { return 12; }
	if(base[0][0]==componentid) { return 13; }
	for(i=0; i<2; i++)
	{
	    if(rbbars[i][0]==componentid) { return 14; }
	}
	for(i=0; i<2; i++)
	{
	    if(fbbars[i][0]==componentid) { return 15; }
	}
	for(i=0; i<17; i++)
	{
	    if(wheels[i][0]==componentid) { return 16; }
	}
	for(i=0; i<2; i++)
	{
	    if(light[i][0]==componentid) { return 17; }
	}
	return 0;
}
new TerminoCamion[MAX_PLAYERS];
stock GetVehicleNameFromID(vehicleid)
{
    static const scVehicleNames[][18] = {
        "Landstalker",
        "Bravura",
        "Buffalo",
        "Linerunner",
        "Perrenial",
        "Sentinel",
        "Dumper",
        "Firetruck",
        "Trashmaster",
        "Stretch",
        "Manana",
        "Infernus",
        "Voodoo",
        "Pony",
        "Mule",
        "Cheetah",
        "Ambulance",
        "Leviathan",
        "Moonbeam",
        "Esperanto",
        "Taxi",
        "Washington",
        "Bobcat",
        "Mr Whoopee",
        "BF Injection",
        "Hunter",
        "Premier",
        "Enforcer",
        "Securicar",
        "Banshee",
        "Predator",
        "Bus",
        "Rhino",
        "Barracks",
        "Hotknife",
        "Trailer 1",
        "Previon",
        "Coach",
        "Cabbie",
        "Stallion",
        "Rumpo",
        "RC Bandit",
        "Romero",
        "Packer",
        "Monster",
        "Admiral",
        "Squalo",
        "Seasparrow",
        "Pizzaboy",
        "Tram",
        "Trailer 2",
        "Turismo",
        "Speeder",
        "Reefer",
        "Tropic",
        "Flatbed",
        "Yankee",
        "Caddy",
        "Solair",
        "Berkley's RC Van",
        "Skimmer",
        "PCJ-600",
        "Faggio",
        "Freeway",
        "RC Baron",
        "RC Raider",
        "Glendale",
        "Oceanic",
        "Sanchez",
        "Sparrow",
        "Patriot",
        "Quad",
        "Coastguard",
        "Dinghy",
        "Hermes",
        "Sabre",
        "Rustler",
        "ZR-350",
        "Walton",
        "Regina",
        "Comet",
        "BMX",
        "Burrito",
        "Camper",
        "Marquis",
        "Baggage",
        "Dozer",
        "Maverick",
        "News Chopper",
        "Rancher",
        "FBI Rancher",
        "Virgo",
        "Greenwood",
        "Jetmax",
        "Hotring",
        "Sandking",
        "Blista Compact",
        "Police Maverick",
        "Boxville",
        "Benson",
        "Mesa",
        "RC Goblin",
        "Hotring Racer A",
        "Hotring Racer B",
        "Bloodring Banger",
        "Rancher",
        "Super GT",
        "Elegant",
        "Journey",
        "Bike",
        "Mountain Bike",
        "Beagle",
        "Cropdust",
        "Stunt",
        "Tanker",
        "Roadtrain",
        "Nebula",
        "Majestic",
        "Buccaneer",
        "Shamal",
        "Hydra",
        "FCR-900",
        "NRG-500",
        "HPV1000",
        "Cement Truck",
        "Tow Truck",
        "Fortune",
        "Cadrona",
        "FBI Truck",
        "Willard",
        "Forklift",
        "Tractor",
        "Combine",
        "Feltzer",
        "Remington",
        "Slamvan",
        "Blade",
        "Freight",
        "Streak",
        "Vortex",
        "Vincent",
        "Bullet",
        "Clover",
        "Sadler",
        "Firetruck LA",
        "Hustler",
        "Intruder",
        "Primo",
        "Cargobob",
        "Tampa",
        "Sunrise",
        "Merit",
        "Utility",
        "Nevada",
        "Yosemite",
        "Windsor",
        "Monster A",
        "Monster B",
        "Uranus",
        "Jester",
        "Sultan",
        "Stratum",
        "Elegy",
        "Raindance",
        "RC Tiger",
        "Flash",
        "Tahoma",
        "Savanna",
        "Bandito",
        "Freight Flat",
        "Streak Carriage",
        "Kart",
        "Mower",
        "Duneride",
        "Sweeper",
        "Broadway",
        "Tornado",
        "AT-400",
        "DFT-30",
        "Huntley",
        "Stafford",
        "BF-400",
        "Newsvan",
        "Tug",
        "Trailer 3",
        "Emperor",
        "Wayfarer",
        "Euros",
        "Hotdog",
        "Club",
        "Freight Carriage",
        "Trailer 3",
        "Andromada",
        "Dodo",
        "RC Cam",
        "Launch",
        "LS Police Car",
        "SF Police Car",
        "LV Police Car",
        "Police Ranger",
        "Picador",
        "S.W.A.T. Van",
        "Alpha",
        "Phoenix",
        "Glendale",
        "Sadler",
        "Luggage Trailer A",
        "Luggage Trailer B",
        "Stair Trailer",
        "Boxville",
        "Farm Plow",
        "Utility Trailer"
    },
    scOnFoot[18] = "OnFoot";
    if (vehicleid > 0) {
        return scVehicleNames[GetVehicleModel(vehicleid) - 400];
    }
    else {
        return scOnFoot;
    }
}
                                                                                                                 /*



________________________________________________________________________________________________________________
																																																*/

																																																/*
________________________________________________________________________________________________________________
																																																*/
forward guardadoderopa(playerid);
public guardadoderopa(playerid) {
SSkin(playerid, 154);
return 1;
}
forward Prepararlajeringa(playerid);
public Prepararlajeringa(playerid) {
new String[150],String2[150],String3[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String, sizeof(String), "[/Me] %s Saca una jeringa y una botella de medicina.", Nombre);
ProxDetector(30.0, playerid, String, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
format(String2, sizeof(String2), "[/Me] %s Enllena la jeringa.", Nombre);
ProxDetector(30.0, playerid, String2, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
format(String3, sizeof(String3), "[/Me] %s Prepara la jeringa y esta lista para usarla.", Nombre);
ProxDetector(30.0, playerid, String3, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
ControlP(playerid,1);
JeringaLista[playerid] = 1;
return 1;
}
stock CamaraPos(playerid,Float:X,Float:Y,Float:Z) {
SetPlayerCameraPos(playerid, X,Y,Z);
SetPlayerCameraLookAt(playerid, X,Y,Z);
DisablePlayerCamera(playerid);
return 1;
}
forward ProCurar(playerid);
public ProCurar(playerid) {

return 1;
}
stock CAvion2(cocheid){
for(new c = 0; c < sizeof(CAvion); c++) { if(cocheid == CAvion[c]) return 1; }
return 0;
}
stock CCamionero(cocheid){
for(new c = 0; c < sizeof(CamioneroV); c++) { if(cocheid == CamioneroV[c]) return 1; }
return 0;
}
stock Basurero2(cocheid) {
for(new c = 0; c < sizeof(CBasurero); c++) { if(cocheid == CBasurero[c]) return 1; }
return 0;
}
stock Bus2(cocheid) {
for(new c = 0; c < sizeof(CBus); c++) { if(cocheid == CBus[c]) return 1; }
return 0;
}
stock CosechadoraDrogas(cocheid) {
for(new c = 0; c < sizeof(CosechaDrogas); c++) { if(cocheid == CosechaDrogas[c]) return 1; }
return 0;
}
stock Rentavehiculos(cocheid) {
for(new c = 0; c < sizeof(RentaV); c++) { if(cocheid == RentaV[c]) return 1; }
return 0;
}
stock DepartamentoMensaje(color,string[]) {
for(new i=0;i<MAX_PLAYERS;i++) {
if(PI[i][Faccion] == 1 && PI[i][Rangof] == 6 || PI[i][Faccion] == 2 && PI[i][Rangof] == 6 || PI[i][Faccion] == 3 && PI[i][Rangof] == 6 || PI[i][Faccion] == 1 && PI[i][Rangof] == 6) {
Mensaje(i,color,string);
}
}
}
forward Cargandoelcamion(playerid);
public Cargandoelcamion(playerid) {
ControlP(playerid,1);
MoveDynamicObject(ObjetoCarga,-1048.1992200,-650.0996100,56.9000000,2.0);
Mensaje(playerid,COLOR_BLANCO,"Ahora puedes entregar la {FF0000}carga.");
new vehicleid = GetPlayerVehicleID(playerid);
AttachObjectToVehicle(Objeto[vehicleid], vehicleid, -0.01, -1.79, 1.20,   0.00, 0.00, 0.00);
new RLugar = random(2);
switch(RLugar) {
case 0: { Checkpoint(playerid,2173.6999500,-2267.1999500,13.5000000,5.0); CamionTrabajo[playerid] = 1; Mensaje(playerid,COLOR_BLANCO,"RUTA:{15FF00} LOS SANTOS.");}
case 1: { Checkpoint(playerid,2827.5000000,897.0999800,10.4000000,5.0); CamionTrabajo[playerid] = 2; Mensaje(playerid,COLOR_BLANCO,"RUTA:{15FF00} LAS VENTURAS.");}
}
return 1;
}
//Sistema de gasolina.
forward GasolinaCheck();
public GasolinaCheck() {

for(new i=0;i<MAX_VEHICLES;i++) {
SetProgressBarMaxValue(BarGas[i], 100);
if(IsPlayerConnected(i))
{
if(GetPlayerState(i) == PLAYER_STATE_DRIVER)
{
new Coche = GetPlayerVehicleID(i);
if(Gasolina[Coche] >= 1) {
Gasolina[Coche] --;
new String[120];
format(String,sizeof(String),"%d",Gasolina[Coche]);
TextDrawSetString(TextGas[i],String);
SetProgressBarValue(BarGas[i], Gasolina[Coche]);
UpdateProgressBar(BarGas[i], i);
}

else if(Gasolina[Coche] <= 0) {
SinGasolina[Coche] = 1;
new enginem, lights, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(Coche,enginem, lights, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(Coche,VEHICLE_PARAMS_OFF, lights, alarm, doors, bonnet, boot, objective);
Mensaje(i,COLOR_BLANCO,"El coche se qued� sin gasolina.");
}
}
}
}
return 1;
}
forward CosT(playerid);
public CosT(playerid) {
ControlP(playerid,1);
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/


forward Entradas(playerid);
public Entradas(playerid) {
if(PlayerToPoint(playerid, 2.0, 1479.6,-1818.96,15.45)) { //Entrada A Distrito Federal
PPos(playerid,390.2000100,173.8000000,1008.0000000);
SetPlayerInterior(playerid, 3);
abrirpuerta(playerid);
Mensaje(playerid,Azul,"{FFFFFF}Entraste al distrito Federal");
}
else if(PlayerToPoint(playerid, 2.0,1352.4000200,-1758.5999800,14.2000000)) { //Entrada 24-7 unity
PPos(playerid,-27.4000000,-31.1000000,1004.2000100);
SetPlayerInterior(playerid,4);
TicketC[playerid] = 0;
/*
abrirpuerta(playerid);*/
}
else if(PlayerToPoint(playerid, 2.0,1554.0999800,-1676.0999800,16.9000000)) { //Policia federal.
PPos(playerid,246.8000000,62.7000000,1004.2999900);
SetPlayerInterior(playerid,6);
abrirpuerta(playerid);
}
else if(PlayerToPoint(playerid, 2.0,1525.1999500,-1678.0000000,6.5000000)) { //Garage PF
PPos(playerid,242.7000000,66.3000000,1004.2999900);
SetPlayerInterior(playerid,6);
abrirpuerta(playerid);
}
else if(PlayerToPoint(playerid,2.0,1125.54, -1334.84, 1566.06)) {//hospital int salida
}
else if(PlayerToPoint(playerid, 2.0,2244.3999000,-1665.0000000,16.1000000)) { //Binco Groove
PPos(playerid,207.7000000,-110.6000000,1005.7999900);
SetPlayerInterior(playerid,15);
abrirpuerta(playerid);
}
return 1;
}
stock abrirpuerta(playerid) {
new Nombre[MAX_PLAYER_NAME], string[100];
GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(string, sizeof(string), Accion1"[/me] %s abri� la puerta.",Nombre);
ProxDetector(10.0, playerid, string,Azul,Azul,Azul,Azul,Azul);
return 1; }
stock cerrolapuerta(playerid) {
new Nombre[MAX_PLAYER_NAME], string[100];
GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(string, sizeof(string), Accion1"[/me] %s abri� la puerta y sali�.",Nombre);
ProxDetector(10.0, playerid, string,Azul,Azul,Azul,Azul,Azul);
return 1; }


/*_________________________________________________________________________________*/
forward Salidas(playerid);
public Salidas(playerid) {
if(PlayerToPoint(playerid, 5.0, 390.2000100,173.8000000,1008.0000000)) { //Salida del Distrito Federal
PPos(playerid,1479.6,-1818.96,16.45);
cerrolapuerta(playerid);
Mensaje(playerid,Azul,"{FFFFFF}Saliste del distrito Federal");
SetPlayerInterior(playerid, 0);
}
else if(PlayerToPoint(playerid, 5.0,-27.4000000,-31.1000000,1004.2000100)) { //salida 24-7 unity
if(Compro[playerid] == 1) return Mensaje(playerid,COLOR_BLANCO,"Tienes que pagar por los productos.");
PPos(playerid,1352.4000200,-1758.5999800,14.2000000);
SetPlayerInterior(playerid,0);
TicketC[playerid] = 0;
cerrolapuerta(playerid);
}
else if(PlayerToPoint(playerid, 5.0,246.8000000,62.7000000,1004.2999900)) { //Policia federal.
PPos(playerid,1554.0999800,-1676.0999800,16.9000000);
SetPlayerInterior(playerid,0);
cerrolapuerta(playerid);
}
else if(PlayerToPoint(playerid, 5.0,242.7000000,66.3000000,1004.2999900)) { //Policia federal Garage.
PPos(playerid,1525.1999500,-1678.0000000,6.5000000);
SetPlayerInterior(playerid,0);
cerrolapuerta(playerid);
}
else if(PlayerToPoint(playerid, 2.0,207.7000000,-110.6000000,1005.7999900)) { //Binco Groove
PPos(playerid,2244.3999000,-1665.0000000,16.1000000);
SetPlayerInterior(playerid,0);
cerrolapuerta(playerid);
}
return 1;
}

	forward MensajeGM();
	forward CrearData(playerid);
	forward CD(playerid);
	forward AD(playerid);
public CrearData(playerid) {
SetPlayerScore(playerid, 1);
new User[MAX_PLAYER_NAME],Archivo[MAX_PLAYERS],String[50];
GetPlayerName(playerid, User, sizeof(User));
format(Archivo,sizeof(Archivo),"Archivos de usuarios/%s.ini",User);
/*
SetPlayerPos(playerid, 1484.2617,-1744.8719,13.5469);*/
SetPlayerColor(playerid, 0xF7F7F7);
dini_IntSet(Archivo, "Dinero", 0);
dini_IntSet(Archivo, "Nivel", 1);
dini_IntSet(Archivo, "Faccion", 0);
Dialog(playerid,Dgenero,DIALOG_STYLE_LIST,"-Tu genero.","-Masculino.\n-Femenino.","Elegir","");
print(String);

TextDrawHideForPlayer(playerid, Tit1);
TextDrawHideForPlayer(playerid, Tit2);
TextDrawHideForPlayer(playerid, Tit3);
/*
TextDrawHideForPlayer(playerid, Box1);
TextDrawHideForPlayer(playerid, Box2);*/
return 1;
}
stock PerdioJeringa(playerid) {
Jeringa[playerid] = 0;
Mensaje(playerid,COLOR_BLANCO,"Le diste una jeringa equivocada , tu multa fue de 500$");
GivePlayerMoney(playerid,-500);
return 1;
}
stock GuardarFondos(Monto) {
if(fexist("Archivos del servidor/Fondos.txt")) {
dini_IntSet("Archivos del servidor/Fondos.txt","FondoMonetario",Monto);
ActualizarFondos();

} else { 
dini_Create("Archivos del servidor/Fondos.txt");
}
}
stock GuardarImpuestos(Monto) {
if(fexist("Archivos del servidor/Impuestos.txt")) {
dini_IntSet("Archivos del servidor/Impuestos.txt","Impuesto",Monto);
ActualizarImpuestos();

} else {
dini_Create("Archivos del servidor/Impuestos.txt");
}
}
forward CargarImpuestos();
public CargarImpuestos() {
Impuestos = dini_Int("Archivos del servidor/Impuestos.txt","Impuesto");
return 1;
}
forward ActualizarImpuestos();
public ActualizarImpuestos() {
Impuestos = dini_Int("Archivos del servidor/Impuestos.txt","Impuesto");
return 1;
}
forward CargarFondos();
public CargarFondos() {
FondoM = dini_Int("Archivos del servidor/Fondos.txt","FondoMonetario");
return 1;
}
forward ActualizarFondos();
public ActualizarFondos() {
FondoM = dini_Int("Archivos del servidor/Fondos.txt","FondoMonetario");
return 1;
}

//Droga
stock GuardarDrogas(numero,Monto) {
if(fexist("Archivos del servidor/Drogas.txt")) {
if(numero == 1) {
dini_IntSet("Archivos del servidor/Drogas.txt","Marihuana",Monto);
}
if(numero == 2) {
dini_IntSet("Archivos del servidor/Drogas.txt","Cocaina",Monto);
}
ActualizarDrogas();

} else {
dini_Create("Archivos del servidor/Drogas.txt");
}
}
forward CargarDrogas();
public CargarDrogas() {
Marihuana = dini_Int("Archivos del servidor/Drogas.txt","Marihuana");
Cocaina = dini_Int("Archivos del servidor/Drogas.txt","Cocaina");
return 1;
}
forward ActualizarDrogas();
public ActualizarDrogas() {
Marihuana = dini_Int("Archivos del servidor/Drogas.txt","Marihuana");
Cocaina = dini_Int("Archivos del servidor/Drogas.txt","Cocaina");
return 1;
}
public CD(playerid) {

new User[MAX_PLAYER_NAME],Archivo[MAX_PLAYERS],String[100];
GetPlayerName(playerid, User, sizeof(User));
format(Archivo,sizeof(Archivo),"Archivos de usuarios/%s.ini",User);
GivePlayerMoney(playerid, dini_Int(Archivo,"Dinero"));
SetPlayerScore(playerid, dini_Int(Archivo,"Nivel"));
PI[playerid][Staff] = dini_Int(Archivo,"Staff");
PI[playerid][Genero] = dini_Int(Archivo,"Genero");
PI[playerid][PX] = dini_Int(Archivo,"PosX");
PI[playerid][PY] = dini_Int(Archivo,"PosY");
PI[playerid][PZ] = dini_Int(Archivo,"PosZ");
PI[playerid][Trabajo] = dini_Int(Archivo,"Trabajo");
PI[playerid][TCompletado] = dini_Int(Archivo,"TCompletado");
PI[playerid][Registroc] = dini_Int(Archivo,"Registro");
PI[playerid][Bancod] = dini_Int(Archivo,"Bancod");
PI[playerid][Skin] = dini_Int(Archivo,"Skin");
PI[playerid][Faccion] = dini_Int(Archivo,"Faccion");
PI[playerid][Rangof] = dini_Int(Archivo,"Rangof");
PI[playerid][Pasaporte] = dini_Int(Archivo,"Pasaporte");
PI[playerid][Dni] = dini_Int(Archivo,"Dni");
PI[playerid][Skin2] = dini_Int(Archivo,"Skin2");
PI[playerid][Inv1] = dini_Int(Archivo,"Inv1");
PI[playerid][Inv2] = dini_Int(Archivo,"Inv2");
PI[playerid][Inv3] = dini_Int(Archivo,"Inv3");
PI[playerid][Inv4] = dini_Int(Archivo,"Inv4");
PI[playerid][CComida] = dini_Int(Archivo,"ComproComida");
PI[playerid][CBebida] = dini_Int(Archivo,"ComproBebida");
PI[playerid][EdadIC] = dini_Int(Archivo,"EdadIC");
PI[playerid][InvirtioN] = dini_Int(Archivo,"InvirtioN");
PI[playerid][TNegocio] = dini_Int(Archivo,"TNegocio");
PI[playerid][Adv] = dini_Int(Archivo,"Adv");
PI[playerid][Prestamo] = dini_Int(Archivo,"Prestamo");
PI[playerid][PrestamoP] = dini_Int(Archivo,"PrestamoP");
PI[playerid][TMarihuana] = dini_Int(Archivo,"Marihuana");
PI[playerid][TCocaina] = dini_Int(Archivo,"Cocaina");
PI[playerid][TPorro] = dini_Int(Archivo,"TPorro");
PI[playerid][Telefono] = dini_Int(Archivo,"Telefono");
PI[playerid][AN1] = dini_Int(Archivo,"AN1");/*
PI[playerid][ANom1] = strval(dini_Get(Archivo,"ANom1"));*/
format(PI[playerid][ANom1],24,"%s", dini_Get(Archivo,"ANom1"));
PI[playerid][AN2] = dini_Int(Archivo,"AN2");
PI[playerid][ANom2] = strval(dini_Get(Archivo,"ANom2"));
PI[playerid][AN3] = dini_Int(Archivo,"AN3");
PI[playerid][ANom3] = strval(dini_Get(Archivo,"ANom3"));
PI[playerid][AN4] = dini_Int(Archivo,"AN4");
PI[playerid][ANom4] = strval(dini_Get(Archivo,"ANom4"));
PI[playerid][AN5] = dini_Int(Archivo,"AN5");
PI[playerid][ANom5] = strval(dini_Get(Archivo,"ANom5"));
format(String,sizeof(String),"Se carg� la cuenta de %s",User);
return 1;
}
public AD(playerid) {
new User[MAX_PLAYER_NAME],Archivo[MAX_PLAYERS];
GetPlayerName(playerid, User, sizeof(User));
GetPlayerPos(playerid,PI[playerid][PX],PI[playerid][PY],PI[playerid][PZ]);
format(Archivo,sizeof(Archivo),"Archivos de usuarios/%s.ini",User);
dini_IntSet(Archivo,"Staff",PI[playerid][Staff]);
dini_IntSet(Archivo,"Dinero",GetPlayerMoney(playerid));
dini_IntSet(Archivo,"Nivel",GetPlayerScore(playerid));
dini_IntSet(Archivo,"Genero",PI[playerid][Genero]);
dini_FloatSet(Archivo,"PosX",PI[playerid][PX]);
dini_FloatSet(Archivo,"PosY",PI[playerid][PY]);
dini_FloatSet(Archivo,"PosZ",PI[playerid][PZ]);
dini_IntSet(Archivo,"Trabajo",PI[playerid][Trabajo]);
dini_IntSet(Archivo,"TCompletado",PI[playerid][TCompletado]);
dini_IntSet(Archivo,"Bancod",PI[playerid][Bancod]);
dini_IntSet(Archivo,"Registro",PI[playerid][Registroc]);
dini_IntSet(Archivo,"Skin",GetPlayerSkin(playerid));
dini_IntSet(Archivo,"Faccion",PI[playerid][Faccion]);
dini_IntSet(Archivo,"Rangof",PI[playerid][Rangof]);
dini_IntSet(Archivo,"Pasaporte",PI[playerid][Pasaporte]);
dini_IntSet(Archivo,"Dni",PI[playerid][Dni]);
dini_IntSet(Archivo,"Skin2",PI[playerid][Skin2]);
dini_IntSet(Archivo,"Inv1",PI[playerid][Inv1]);
dini_IntSet(Archivo,"Inv2",PI[playerid][Inv2]);
dini_IntSet(Archivo,"Inv3",PI[playerid][Inv3]);
dini_IntSet(Archivo,"Inv4",PI[playerid][Inv4]);
dini_IntSet(Archivo,"ComproComida",PI[playerid][CComida]);
dini_IntSet(Archivo,"ComproBebida",PI[playerid][CBebida]);
dini_IntSet(Archivo,"EdadIC",PI[playerid][EdadIC]);
dini_IntSet(Archivo,"InvirtioN",PI[playerid][InvirtioN]);
dini_IntSet(Archivo,"TNegocio",PI[playerid][TNegocio]);
dini_IntSet(Archivo,"Adv",PI[playerid][Adv]);
dini_IntSet(Archivo,"Prestamo",PI[playerid][Prestamo]);
dini_IntSet(Archivo,"PrestamoP",PI[playerid][PrestamoP]);
dini_IntSet(Archivo,"Marihuana",PI[playerid][TMarihuana]);
dini_IntSet(Archivo,"Cocaina",PI[playerid][TCocaina]);
dini_IntSet(Archivo,"TPorro",PI[playerid][TPorro]);
dini_IntSet(Archivo,"Telefono",PI[playerid][Telefono]);
dini_Set(Archivo,"ANom1",PI[playerid][ANom1]);
dini_IntSet(Archivo,"AN1",PI[playerid][AN1]);
dini_Set(Archivo,"ANom2",PI[playerid][ANom2]);
dini_IntSet(Archivo,"AN2",PI[playerid][AN2]);
dini_Set(Archivo,"ANom3",PI[playerid][ANom3]);
dini_IntSet(Archivo,"AN3",PI[playerid][AN3]);
dini_Set(Archivo,"ANom4",PI[playerid][ANom4]);
dini_IntSet(Archivo,"AN4",PI[playerid][AN4]);
dini_Set(Archivo,"ANom5",PI[playerid][ANom5]);
dini_IntSet(Archivo,"AN5",PI[playerid][AN5]);
return 1;
}




																																																/*
________________________________________________________________________________________________________________
																																																*/

forward ConsumirCocaina(playerid);
public ConsumirCocaina(playerid) {
Mensaje(playerid,COLOR_BLANCO,"Se te ha pasado el efecto de la cocaina.");
TextDrawHideForPlayer(playerid, ECocaina);
SetPlayerDrunkLevel(playerid,0);

return 1;
}
forward ConsumirMarihuana(playerid);
public ConsumirMarihuana(playerid) {
Mensaje(playerid,COLOR_BLANCO,"Se te ha pasado el efecto de la marihuana.");
TextDrawHideForPlayer(playerid, EMarihuana1);
TextDrawHideForPlayer(playerid, EMarihuana2);
TextDrawHideForPlayer(playerid, EMarihuana3);
SetPlayerDrunkLevel(playerid,0);
return 1;
}
forward DescargaCamion(playerid);
public DescargaCamion(playerid) {
TerminoCamion[playerid] = 1;
ControlP(playerid,1);
Mensaje(playerid,COLOR_BLANCO,"Vuelve a la empresa.");
Checkpoint(playerid,-1050.4000200,-650.2000100,32.1000000,5.0);
new vehicleid = GetPlayerVehicleID(playerid);
DestroyObject(Objeto[vehicleid]);
return 1;
}
forward Tutorial1(playerid);
public Tutorial1(playerid) {

TDSFP(playerid,BoxTuto1);
TDSFP(playerid,BoxTuto2);
TextDrawShowForPlayer(playerid, Tit1);
TextDrawShowForPlayer(playerid, Tit2);
TextDrawShowForPlayer(playerid, Tit3);
TDSFP(playerid,TitTuto[playerid]);
TDSFP(playerid,TextoTuto[playerid]);
TextDrawSetString(TitTuto[playerid],"- Bienvenida al usuario -");
TextDrawSetString(TextoTuto[playerid],"Bienvenidos al servidor zona sur roleplay, Este servidor es roleplay ~n~y no aceptamosNingun tipo de rompimiento de reglas. Asi que~n~ Lee el reglamento del servidor.");
SetTimer("Tutorial2",1000,0);
return 1;
}
forward Tutorial2(playerid);
public Tutorial2(playerid) {
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],"Bien, te ayudaremos a aprender los conceptos basicos de rol en ~n~el cual tu usaras esta informacion Para rolear. ~n~Por eso tendras que ver este ~b~tutorial.");
SetTimer("Tutorial3",1000,0);
return 1;
}
forward Tutorial3(playerid);
public Tutorial3(playerid) {
new String[180] = "El concepto llamado Death Mach, conocido como ~n~~r~DM~w~ es matar a un integrante sin ningun tipo de razon ~n~ no puedes ir a matar a alguien por que si.";
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimer("Tutorial4",2000,0);
return 1;
}
forward Tutorial4(playerid);
public Tutorial4(playerid) {
new String[150] = "El concepto llamado Meta Gaming, conocido como ~n~ ~r~MG~r~ es la confucion de canales ~b~OOC ~w~con ~b~IC~w~ o viceversa.";
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimer("Tutorial5",5000,0);
return 1;
}
forward Tutorial5(playerid);
public Tutorial5(playerid) {
new String[200] = "El concepto llamado Reverenge Kill, conocido como~n~~r~RK ~w~significa que si te matan en un tipo de rol~n~no puedes volver al lugar , por que tu y perdiste la memoria.";
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimer("Tutorial6",5000,0);
return 1;
}
forward Tutorial6(playerid);
public Tutorial6(playerid) {
new String[200] = "El concepto llamado Spawn Killer, conocido como~n~~r~SK~w~ es matar a un integrante en un punto de spawn~n~Ejemplo: ~g~al estar herido(muerto) estas en el hospital.";
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimer("Tutorial7",5000,0);
return 1;
}
forward Tutorial7(playerid);
public Tutorial7(playerid) {
new String[150] = "El concepto llamado Car jack, conocido como ~n~~r~CJ~w~ es robar cualquier tipo de coche sin rol.";
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimer("Tutorial8",5000,0);
return 1;
}
forward Tutorial8(playerid);
public Tutorial8(playerid) {
new String[200] = "El concepto llamado Car kill, conocido como~n~~r~CK~w~ es matar a un integrante para matarlo~n~mas rapido o alguna otra razon.";
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimer("Tutorial9",5000,0);
return 1;
}
forward Tutorial9(playerid);
public Tutorial9(playerid) {
new String[200] = "El concepto llamado Power Gaming, conocido como~n~~r~PG~w~ es hacer cosas imposibles dentro del juego.~n~Por Ejemplo:~r~ Rolea saltar un edificio de 10 pisos~n~Y cae ileso.";
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimer("Tutorial10",5000,0);
return 1;
}
forward Tutorial10(playerid);
public Tutorial10(playerid) {
Mensaje(playerid,COLOR_BLANCO,"Para m�s informaci�n: {0084FF}/{FFFFFF}Consulta {0084FF}/{FFFFFF}Masinfo {0084FF}[Informaci�n Completa]{FFFFFF} .");
new String[200] = "Llegaste al final del tutorial, recuerda leer el reglamento ~n~Si tienes alguna duda el staff te respondera.~n~~g~Atencion:~w~No se dara stats.";
TextDrawSetString(TitTuto[playerid],"- Fin del tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimer("Tutorial11",5000,0);
return 1;
}
forward Tutorial11(playerid);
public Tutorial11(playerid) {
TextDrawHideForPlayer(playerid,BoxTuto1);
TextDrawHideForPlayer(playerid,BoxTuto2);
TextDrawHideForPlayer(playerid, Tit1);
TextDrawHideForPlayer(playerid, Tit2);


TextDrawHideForPlayer(playerid, Tit3);
TextDrawHideForPlayer(playerid,TitTuto[playerid]);
TextDrawHideForPlayer(playerid,TextoTuto[playerid]);
Mensaje(playerid,COLOR_BLANCO,"Que tenga un buen d�a, puedes buscar tus {0084FF}pertenencias {FFFFFF}en el checkpoint.");
SpawnPlayer(playerid);
return 1;
}
forward StaffMensaje(color, string[]);
public StaffMensaje(color, string[])
{
for (new i=0; i<MAX_PLAYERS; i++) {
if(IsPlayerConnected(i)){
if(PI[i][Staff] >= 1) {
SendClientMessage(i,Gris,string);
}
}
}
}

stock LoadHouses()
{
	new file[60],hOwner[512];
	for(new i = 0; i < MAX_HOUSES; i++)
	{
		format(file,sizeof(file),"Archivos de Casas/%i.ini",i);
		if(!dini_Exists(file)) continue;
		if(dini_Exists(file))
		{
			PropiedadInfo[i][CaNombre] = strval(dini_Get(file,"Name"));
			PropiedadInfo[i][Nivel] = dini_Int(file,"Level");
		    PropiedadInfo[i][Precio] = dini_Int(file,"Price");
			PropiedadInfo[i][Comprada] = dini_Int(file,"Owned");
			PropiedadInfo[i][CasaX] = dini_Float(file,"X");
			PropiedadInfo[i][CasaY] = dini_Float(file,"Y");
			PropiedadInfo[i][CasaZ] = dini_Float(file,"Z");
			PropiedadInfo[i][CasaVirtual] = dini_Int(file,"VirtualWorld");
			hOwner = dini_Get(file,"Owner");
			format(PropiedadInfo[i][Npropietario],24,"%s",hOwner);
			CasaEntrada[i] = CreatePickup(1273,1,PropiedadInfo[i][CasaX],PropiedadInfo[i][CasaY],PropiedadInfo[i][CasaZ],PropiedadInfo[i][CasaVirtual]);
			new labelstring[500];
			switch(PropiedadInfo[i][Comprada])
			{
				case 0:{format(labelstring,sizeof(labelstring),"Propiedad:\n{0084FF}Nivel:{FFFFFF} %i {0084FF}Precio: {51FF00}$ {FFFFFF}%i"/*,PropiedadInfo[i][CaNombre]*/,PropiedadInfo[i][Nivel],PropiedadInfo[i][Precio]);}
				case 1:{format(labelstring,sizeof(labelstring),"Propiedad:\n{0084FF}Estado: {FFFFFF}No disponible -Vendida-\n {0084FF}Nivel: {FFFFFF}%i\n{0084FF}Precio:{51FF00}${FFFFFF}%i\n{0084FF}Due�o: {FFFFFF}%s"/*,PropiedadInfo[i][CaNombre]*/,PropiedadInfo[i][Nivel],PropiedadInfo[i][Precio],PropiedadInfo[i][Npropietario]);}
			}
			PropiedadInfo[i][CasaLabel] = Create3DTextLabel(labelstring,0xFF0000FF,PropiedadInfo[i][CasaX],PropiedadInfo[i][CasaY],PropiedadInfo[i][CasaZ],25.0,PropiedadInfo[i][CasaVirtual]);
			ContarCasas ++;
		}
	}
	return 1;
}
stock CargarNegocios()
{
	new file[60],NProp[512];
	for(new i = 0; i < MAX_NEGOCIOS; i++)
	{
		format(file,sizeof(file),"Archivos de Negocios/%i.ini",i);
		if(!dini_Exists(file)) continue;
		if(dini_Exists(file))
		{
			NegocioInfo[i][NLema] = strval(dini_Get(file,"NLema"));
			NegocioInfo[i][Nivel] = dini_Int(file,"Nivel");
		    NegocioInfo[i][Precio] = dini_Int(file,"Precio");
			NegocioInfo[i][Comprada] = dini_Int(file,"Comprado");
			NegocioInfo[i][NX] = dini_Float(file,"NX");
			NegocioInfo[i][NY] = dini_Float(file,"NY");
			NegocioInfo[i][NZ] = dini_Float(file,"NZ");/*
			PropiedadInfo[i][CasaVirtual] = dini_Int(file,"VirtualWorld");*/
			NegocioInfo[i][Invert] = dini_Int(file,"Invert");
			NegocioInfo[i][NegocioID] = dini_Int(file,"NegocioID");
			NProp = dini_Get(file,"Propietario");
			format(NegocioInfo[i][DuNombre],24,"%s",NProp);
			NegocioEntrada[i] = CreatePickup(1272,1,NegocioInfo[i][NX],NegocioInfo[i][NY],NegocioInfo[i][NZ],0);
			new labelstring[500];
			switch(NegocioInfo[i][Comprada])
			{
				case 0:{format(labelstring,sizeof(labelstring),"{555555}Negocio:{FFFFFF} %s \n{555555}Nivel:{FFFFFF} %i \n{555555}Precio: {51FF00}$ {FFFFFF}%i \nNegocio ID: [%d]",NegocioInfo[i][NLema],NegocioInfo[i][Nivel],NegocioInfo[i][Precio],NegocioInfo[i][NegocioID]);}
				case 1:{format(labelstring,sizeof(labelstring),"{555555}Negocio:{FFFFFF} %s\n{555555}Estado: {FFFFFF}No disponible -Vendida-\n {555555}Nivel: {FFFFFF}%i\n{555555}Precio:{51FF00}${FFFFFF}%i\n{555555}Due�o: {FFFFFF}%s\nNegocio ID: [%d]",NegocioInfo[i][NLema],NegocioInfo[i][Nivel],NegocioInfo[i][Precio],NegocioInfo[i][DuNombre],NegocioInfo[i][NegocioID]);}
			}
			NegocioInfo[i][NegocioLabel] = Create3DTextLabel(labelstring,0xFF0000FF,NegocioInfo[i][NX],NegocioInfo[i][NY],NegocioInfo[i][NZ],25.0,0);
			ContarNegocios ++;
		}
	}
	return 1;
}
stock SavePos(playerid)
{
	new Float:x,Float:y,Float:z;
	GetPlayerPos(playerid,x,y,z);
	SetPVarFloat(playerid,"XPos",x);
	SetPVarFloat(playerid,"YPos",y);
	SetPVarFloat(playerid,"ZPos",z);
	SetPVarFloat(playerid,"Virtual",GetPlayerVirtualWorld(playerid));
	return 1;
}
PDS(Float:radi, playerid, targetid)
{
	new
		Float: fp_playerPos[3];
	GetPlayerPos(targetid, fp_playerPos[0], fp_playerPos[1], fp_playerPos[2]);
	if(IsPlayerInRangeOfPoint(playerid, radi, fp_playerPos[0], fp_playerPos[1], fp_playerPos[2]) && GetPlayerVirtualWorld(playerid) == GetPlayerVirtualWorld(targetid))
	{
		return 1;
	}
	return 0;
}
stock LoadPos(playerid)
{
    SetPlayerPos(playerid,GetPVarFloat(playerid,"XPos"),GetPVarFloat(playerid,"YPos"),GetPVarFloat(playerid,"ZPos"));
    SetPlayerVirtualWorld(playerid,GetPVarInt(playerid,"Virtual"));
    SetPlayerInterior(playerid,0);
    return 1;
}
																																																/*
________________________________________________________________________________________________________________
																																																*/


stock Quitarcoche(playerid) {
RemovePlayerFromVehicle(playerid);
new Float:qcochex, Float:qcochey, Float:qcochez;
GetPlayerPos(playerid, qcochex, qcochey, qcochez);
SetPlayerPos(playerid, qcochex, qcochey, qcochez);
return 1;
}


stock Faccionchat(faccionid,string[]) {
for (new i=0; i<MAX_PLAYERS; i++) {
if(PI[i][Faccion] == faccionid) {
Mensaje(i,COLOR_BLANCO,string);
}
}
}

stock Radiochat(faccionid,string[]) {
for (new i=0; i<MAX_PLAYERS; i++) {
if(PI[i][Faccion] == faccionid) {
Mensaje(i,COLOR_BLANCO,string);
}
}
}

stock PickInfo(string[],X,Y,Z,Color) {
		CreatePickup(1318, 2, X, Y, Z, 0);
		CT(string,Color,X,Y,Z,10.0,0,0);
}
stock ConsultaMensaje(string[]) {
for (new i=0; i<MAX_PLAYERS; i++) {
if(IsPlayerConnected(i)){
if(ConsultaA[i] == 0) {
SendClientMessage(i,COLOR_BLANCO,string);
}
}
}
}

forward PonerSkinAdmin(playerid);
public PonerSkinAdmin(playerid) { SetPlayerSkin(playerid, 217); return 1; }
/*
forward DisminurNecesidades();
public DisminurNecesidades(){
foreach(Player,i){
//if(Logueado[i])
//{
if(OrinaB[i] != INVALID_BAR_ID){
if(NInfo[i][pOrina] == 30){
GameTextForPlayer(i, "~b~ESTAS TENIENDO GANAS DE ORINAR, BUSCA UN LUGAR", 5000, 3);
}
else if(NInfo[i][pOrina] == 15){
GameTextForPlayer(i, "~b~TU VEGIGA NO AGUANTARA MAS! CORRE A ORINAR!", 5000, 3);
}
else if(NInfo[i][pOrina] == 0)
{
SetPlayerSpecialAction(i, 68);
GameTextForPlayer(i, "~b~TE HAS ORINADO.", 5000, 3);
SetTimerEx("OrinarFin", 3000, 0, "d", i);
}
}
NInfo[i][pOrina] -= 1;
SetProgressBarValue(OrinaB[i], NInfo[i][pOrina]);
UpdateProgressBar(OrinaB[i], i);

if(HambreB[i] != INVALID_BAR_ID){
if(NInfo[i][pHambre] == 30){
GameTextForPlayer(i, "~b~TU ESTOMAGO HACE RETORCIJONES, BUSCA QUE COMER!", 5000, 3);
}
else if(NInfo[i][pHambre] == 15){
GameTextForPlayer(i, "~b~BUSCA ALGO QUE COMER!", 5000, 3);
}
else if(NInfo[i][pHambre] == 0){
return 1;
}
if(NInfo[i][pHambre] == 0){
new Float:VIDA;
GetPlayerHealth(i,VIDA);
SetPlayerHealth(i, VIDA-10);
GameTextForPlayer(i, "~b~TIENES HAMBRE! DEBES COMER ALGO!", 5000, 3);
}
}
NInfo[i][pHambre] -= 1;
SetProgressBarValue(HambreB[i], NInfo[i][pHambre]);
UpdateProgressBar(HambreB[i], i);
//}
}
return 1;
}

forward OrinarFin(playerid);
public OrinarFin(playerid){
NInfo[playerid][pOrina] = 100;
//SetTimerEx("OrinarFin", 3000, 0, "d", playerid);
SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
return 1;
}*/
forward LimpiarChat(playerid);
public LimpiarChat(playerid) {
for(new i = 0; i < MAX_PLAYERS; i++)
{
Mensaje(i,COLOR_BLANCO,"");
Mensaje(i,COLOR_BLANCO,"");
Mensaje(i,COLOR_BLANCO,"");
Mensaje(i,COLOR_BLANCO,"");
Mensaje(i,COLOR_BLANCO,"");
Mensaje(i,COLOR_BLANCO,"");
Mensaje(i,COLOR_BLANCO,""); Mensaje(i,COLOR_BLANCO,""); Mensaje(i,COLOR_BLANCO,""); Mensaje(i,COLOR_BLANCO,"");
Mensaje(i,COLOR_BLANCO,""); Mensaje(i,COLOR_BLANCO,""); Mensaje(i,COLOR_BLANCO,""); Mensaje(i,COLOR_BLANCO,"");
Mensaje(i,COLOR_BLANCO,""); Mensaje(i,COLOR_BLANCO,""); Mensaje(i,COLOR_BLANCO,""); Mensaje(i,COLOR_BLANCO,"");
}
return 1;
}
/*
stock MostrarProgress(playerid){
OrinaB[playerid] = CreateProgressBar(300.00, 443.00, 85.50, 0.5, -1, 70.0);
ShowProgressBarForPlayer(playerid, OrinaB[playerid]);
SetProgressBarValue(OrinaB[playerid], NInfo[playerid][pOrina]);
UpdateProgressBar(OrinaB[playerid], playerid);

HambreB[playerid] = CreateProgressBar(300.00, 438.00, 85.50, 0.5, 8049151, 70.0);
ShowProgressBarForPlayer(playerid, HambreB[playerid]);
SetProgressBarValue(HambreB[playerid], NInfo[playerid][pHambre]);
UpdateProgressBar(HambreB[playerid], playerid);
return 1;
}*/

forward ReiniciarHambre(playerid);
public ReiniciarHambre(playerid)
{
NInfo[playerid][pHambre] = 100;
return 1;
}
forward Llenartanque(playerid);
public Llenartanque(playerid) {
new vehicleid = GetPlayerVehicleID(playerid);
Gasolina[vehicleid] += 25;
GivePlayerMoney(playerid,-80);
Mensaje(playerid,COLOR_BLANCO,"Gas lleno, el valor es de 80$.");
if(Gasolina[vehicleid] >= 100) {
KillTimer(TanqueTimer);
Gasolina[vehicleid] = 100;
}
return 1;
}
stock ActualizarProgress(playerid){
SetProgressBarValue(OrinaB[playerid], NInfo[playerid][pOrina]);
UpdateProgressBar(OrinaB[playerid], playerid);

SetProgressBarValue(HambreB[playerid], NInfo[playerid][pHambre]);
UpdateProgressBar(HambreB[playerid], playerid);
return 1;
}
forward ArmarPorro(playerid);
public ArmarPorro(playerid) {
SetTimer("ArmarPorro2",2000,0);
new String3[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String3, sizeof(String3), "[/Me] %s Pone la marihuana en el papel de liyo.", Nombre);
ProxDetector(30.0, playerid, String3, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
return 1;
}
forward ArmarPorro2(playerid);
public ArmarPorro2(playerid) {
new String3[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String3, sizeof(String3), "[/Me] %s Lo arma y lo tiene listo para fumar.", Nombre);
ProxDetector(30.0, playerid, String3, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
PI[playerid][TPorro] ++;
return 1;
}
//____________EL PROX
forward ProxDetector(Float:radi, playerid, string[],col1,col2,col3,col4,col5);
public ProxDetector(Float:radi, playerid, string[],col1,col2,col3,col4,col5)
{
if(IsPlayerConnected(playerid))
{
new Float:posx, Float:posy, Float:posz;
new Float:oldposx, Float:oldposy, Float:oldposz;
new Float:tempposx, Float:tempposy, Float:tempposz;
GetPlayerPos(playerid, oldposx, oldposy, oldposz);
for(new i = 0; i < MAX_PLAYERS; i++)
{
if(IsPlayerConnected(i) && (GetPlayerVirtualWorld(playerid) == GetPlayerVirtualWorld(i)))
{
GetPlayerPos(i, posx, posy, posz);
tempposx = (oldposx -posx);
tempposy = (oldposy -posy);
tempposz = (oldposz -posz);
if (((tempposx < radi/16) && (tempposx > -radi/16)) && ((tempposy < radi/16) && (tempposy > -radi/16)) && ((tempposz < radi/16) && (tempposz > -radi/16)))
{
SendClientMessage(i, col1, string);
}
else if (((tempposx < radi/8) && (tempposx > -radi/8)) && ((tempposy < radi/8) && (tempposy > -radi/8)) && ((tempposz < radi/8) && (tempposz > -radi/8)))
{
SendClientMessage(i, col2, string);
}
else if (((tempposx < radi/4) && (tempposx > -radi/4)) && ((tempposy < radi/4) && (tempposy > -radi/4)) && ((tempposz < radi/4) && (tempposz > -radi/4)))
{
SendClientMessage(i, col3, string);
}
else if (((tempposx < radi/2) && (tempposx > -radi/2)) && ((tempposy < radi/2) && (tempposy > -radi/2)) && ((tempposz < radi/2) && (tempposz > -radi/2)))
{
SendClientMessage(i, col4, string);
}
else if (((tempposx < radi) && (tempposx > -radi)) && ((tempposy < radi) && (tempposy > -radi)) && ((tempposz < radi) && (tempposz > -radi)))
{
SendClientMessage(i, col5, string);
}
}
}
}
return 1;
}
forward ContratoRentaV(playerid);
public ContratoRentaV(playerid) {
KillTimer(TimerContratoV[playerid]);
new Coche = GetPlayerVehicleID(playerid);
RentadoV[Rentado[playerid]] = 0;
Rentado[playerid] = 0;
Mensaje(playerid,COLOR_BLANCO,"Se venci� el contrato de la renta de veh�culos.");
RentadoV[Coche] = 0;
return 1;
}

stock NombreJugador(playerid)
{
new Nombre[24];
GetPlayerName(playerid,Nombre,24);
new N[24];
strmid(N,Nombre,0,strlen(Nombre),24);
for(new i = 0; i < MAX_PLAYER_NAME; i++)
{
if (N[i] == '_') N[i] = ' ';
}
return N;
}
//Public de los random
public MensajeGM()
{
SendClientMessageToAll(0x0BA7F500,"Info ZS:{FFFFFF}Si necesitas ayuda con algo no olvides usar: {949494}/ayuda");
return 1;
}

forward ObtenerDni1(playerid);
public ObtenerDni1(playerid) {
Mensaje(playerid,COLOR_BLANCO,"Se�ora:Bien, presione sus huellas digitales aqu�.");
Dialog(playerid,D_OBTENERDNI1,DIALOG_STYLE_MSGBOX,"Acci�n PJ","Pulsa el boton presionar \nPara presionar tus pulgares en el documento.","Presionar","");

return 1;
}
stock formato(string[],variables) {
new String[150];
format(String,sizeof(String),string,variables);
}
forward ObtenerDni2(playerid);
public ObtenerDni2(playerid) {
new String2[250],String[250],Nombre[MAX_PLAYER_NAME];
GetPlayerName(playerid,Nombre,sizeof(Nombre));
strcat(String2,"					{555555}-DOCUMENTACI�N NACIONAL-\n");
strcat(String2,"{FFFFFF}Nombre Y Apellido: {FF8400}%s \n{FFFFFF}Nacimiento: {FF8400}%d {FFFFFF}\nPa�s: {FF8400}San andreas.  ");
format(String,sizeof(String),String2,Nombre,PI[playerid][EdadIC]-2014);
Dialog(playerid,MuestraDNI,DIALOG_STYLE_MSGBOX,"Tu documento[DEMOSTRACI�N]",String,"Listo","");
Mensaje(playerid,COLOR_BLANCO,"{FF8400}Se�ora{FFFFFF}: �ste es su documento. Son {0AC100}${FFFFFF}50.");

return 1;
}
																																																/*
________________________________________________________________________________________________________________
																																																*/




main()
{
    print("-__________________-");
	print("\t\t\t\tZona sur Roleplay");
	print("\t\t\t\t\t\t Equipo de programaci�n.");
}




																																																/*
________________________________________________________________________________________________________________
																																																*/
forward DrogasInfo();
public DrogasInfo() {
Delete3DTextLabel(TimerDrogasT);
new String2[400];
format(String2,sizeof(String2),"/Comprardrogas \n\n{0A7900}[Marihuana total:{FFFFFF}%d{0A7900}]\n{FFFFFF}[Cocaina Total:{555555}%d{FFFFFF}].",Marihuana,Cocaina);
TimerDrogasT = CT(String2,COLOR_BLANCO,2341.16,-1927.94,13.57,10.0,0,0);
return 1;
}
forward MapsT();
public MapsT() {
new mapas = random(2);
switch(mapas) {
case 0: { SendRconCommand("mapname San andreas-"); }
case 1: { SendRconCommand("mapname San andreas-"); }
}
return 1;
}
forward PagaD();
public PagaD() {
print("D�a de paga efectuado");
GuardarFondos(FondoM+3000);
for(new i = 0; i < MAX_PLAYERS; i++)
{

if(IsPlayerConnected(i))
{
new String[200];
PI[i][SubNivel]++;
Mensaje(i,COLOR_BLANCO, "{FFFFFF}�{555555}D�a de paga{FFFFFF}�");
Mensaje(i,COLOR_BLANCO, "Ganancia: 300$");
GivePlayerMoney(i, 300);
if(PI[i][TNegocio] == 1) {
if(PI[i][InvirtioN] >= 1) {
format(String,sizeof(String),"Invertiste: %d Ganancia: 500$",PI[i][InvirtioN]);
SendClientMessage(i,COLOR_BLANCO,String);
GivePlayerMoney(i, PI[i][InvirtioN]+500);
PI[i][InvirtioN] = 0;
}
}

if(PI[i][Prestamo] == 1) {
PI[i][PrestamoP] += 500;
GivePlayerMoney(i,-500);
new String2[200];
format(String2,sizeof(String2),"El banco te descont� 500$ por el prestamo , todav�a resta: %d",PI[i][PrestamoP]-5000);
Mensaje(i,COLOR_BLANCO,String2);
if(PI[i][PrestamoP] == 5000) {
PI[i][PrestamoP] = 0;
PI[i][Prestamo] = 0;
Mensaje(i,COLOR_BLANCO,"Terminaste de pagar el prestamo.");
}
}
if(PI[i][Prestamo] == 2) {
PI[i][PrestamoP] += 1000;
GivePlayerMoney(i,-1000);
new String2[200];
format(String2,sizeof(String2),"El banco te descont� 1000$ por el prestamo , todav�a resta: %d",PI[i][PrestamoP]-15000);
Mensaje(i,COLOR_BLANCO,String2);
if(PI[i][PrestamoP] == 15000) {
PI[i][PrestamoP] = 0;
PI[i][Prestamo] = 0;
Mensaje(i,COLOR_BLANCO,"Terminaste de pagar el prestamo.");
}
}
if(PI[i][Prestamo] == 3) {
PI[i][PrestamoP] += 2000;
GivePlayerMoney(i,-2000);
new String2[200];
format(String2,sizeof(String2),"El banco te descont� 2000$ por el prestamo , todav�a resta: %d",PI[i][PrestamoP]-20000);
Mensaje(i,COLOR_BLANCO,String2);
if(PI[i][PrestamoP] == 20000) {
PI[i][PrestamoP] = 0;
PI[i][Prestamo] = 0;
Mensaje(i,COLOR_BLANCO,"Terminaste de pagar el prestamo.");
}
}
if(PI[i][SubNivel] == 6) {
PI[i][Nivel]++;
SetPlayerScore(i,PI[i][Nivel]++);
Mensaje(i,COLOR_BLANCO, "{FFFFFF}Subiste un {FFFFFF}nivel.");
PI[i][SubNivel] = 0; }
}
}
return 1;
}
public OnGameModeInit()
{
	SetGameModeText("Role-Play Spanish");
	SetTimer("MapsT",2000,1);
	AddPlayerClass(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0); //No borrar, Evita algunos bug's.
 	ManualVehicleEngineAndLights(); ShowPlayerMarkers(0); DisableInteriorEnterExits(); AllowInteriorWeapons(1);
    UsePlayerPedAnims();
    EnableStuntBonusForAll(0);
    AntiDeAMX();
    LoadHouses();
    CargarNegocios();
    CargarImpuestos();
    CargarDrogas();
    CargarFondos();
    for(new i=0;i<MAX_VEHICLES;i++) {
    Gasolina[i] = 100;
    }
    skinlist = LoadModelSelectionMenu("skinscompra.txt");
    SetTimer("MenosOrina",2000,1);
    SetTimer("GasolinaCheck",180000,1);
    SetTimer("PagaD",3600000,1);
    SetTimer("Mensaje",240000,1);
	/* Textdraw's*/
/*	Tit1 = TextDrawCreate(230.000000, 101.000000, "Work"); TextDrawBackgroundColor(Tit1, 255); TextDrawFont(Tit1, 3); TextDrawLetterSize(Tit1, 0.500000, 2.000000);
	TextDrawColor(Tit1, -1); TextDrawSetOutline(Tit1, 0); TextDrawSetProportional(Tit1, 1); TextDrawSetShadow(Tit1, 1);
	Tit2 = TextDrawCreate(350.000000, 117.000000, "0.1 beta"); TextDrawBackgroundColor(Tit2, 255); TextDrawFont(Tit2, 2); TextDrawLetterSize(Tit2, 0.200000, 1.000000);
	TextDrawColor(Tit2, -1); TextDrawSetOutline(Tit2, 0); TextDrawSetProportional(Tit2, 1); TextDrawSetShadow(Tit2, 1);
	Tit3 = TextDrawCreate(283.000000, 101.000000, "Simulator"); TextDrawBackgroundColor(Tit3, 255); TextDrawFont(Tit3, 3); TextDrawLetterSize(Tit3, 0.500000, 2.000000);
*/	TextDrawColor(Tit3, -65281); TextDrawSetOutline(Tit3, 0); TextDrawSetProportional(Tit3, 1); TextDrawSetShadow(Tit3, 1);
	Box1 = TextDrawCreate(373.000000, 100.000000, "_"); TextDrawBackgroundColor(Box1, 255); TextDrawFont(Box1, 1); TextDrawLetterSize(Box1, 0.500000, -0.299999); TextDrawTextSize(Box1, 220.000000, 0.000000);
	TextDrawColor(Box1, -1); TextDrawSetOutline(Box1, 0); TextDrawSetProportional(Box1, 1); TextDrawSetShadow(Box1, 1); TextDrawUseBox(Box1, 1); TextDrawBoxColor(Box1, 255);
	Box2 = TextDrawCreate(373.000000, 131.000000, "_"); TextDrawBackgroundColor(Box2, 255); TextDrawFont(Box2, 1); TextDrawLetterSize(Box2, 0.500000, -0.299999); TextDrawTextSize(Box2, 220.000000, 0.000000);
	TextDrawColor(Box2, -1); TextDrawSetOutline(Box2, 0); TextDrawSetProportional(Box2, 1); TextDrawSetShadow(Box2, 1); TextDrawUseBox(Box2, 1); TextDrawBoxColor(Box2, 255);
	BoxAbajo = TextDrawCreate(650.000000, 432.000000, "_"); TextDrawBackgroundColor(BoxAbajo, 70); TextDrawFont(BoxAbajo, 1); TextDrawLetterSize(BoxAbajo, 0.500000, 2.000000); TextDrawTextSize(BoxAbajo, -10.000000, 0.000000);
	TextDrawColor(BoxAbajo, -1); TextDrawSetOutline(BoxAbajo, 0); TextDrawSetProportional(BoxAbajo, 1); TextDrawSetShadow(BoxAbajo, 1); TextDrawUseBox(BoxAbajo, 1); TextDrawBoxColor(BoxAbajo, 75);
	Trabajoscompletos = TextDrawCreate(150.000000, 431.000000, "Trabajos completados:"); TextDrawBackgroundColor(Trabajoscompletos, 255); TextDrawFont(Trabajoscompletos, 2); TextDrawSetShadow(Trabajoscompletos, 1);
	TextDrawLetterSize(Trabajoscompletos, 0.200000, 1.000000); TextDrawColor(Trabajoscompletos, -1); TextDrawSetOutline(Trabajoscompletos, 0); TextDrawSetProportional(Trabajoscompletos, 1);
	TNivel = TextDrawCreate(440.000000, 431.000000, "Nivel:"); TextDrawBackgroundColor(TNivel, 255); TextDrawFont(TNivel, 2); TextDrawLetterSize(TNivel, 0.200000, 1.000000);
	TextDrawColor(TNivel, -1); TextDrawSetOutline(TNivel, 0); TextDrawSetProportional(TNivel, 1); TextDrawSetShadow(TNivel, 1);
/*	LogoSV = TextDrawCreate(30.000000, 428.000000, "Zona Sur"); TextDrawBackgroundColor(LogoSV, 255); TextDrawFont(LogoSV, 3); TextDrawLetterSize(LogoSV, 0.280000, 1.200000);
	TextDrawColor(LogoSV, -1); TextDrawSetOutline(LogoSV, 0); TextDrawSetProportional(LogoSV, 1); TextDrawSetShadow(LogoSV, 1);
	MRP = TextDrawCreate(90.000000, 428.000000, "roleplay"); TextDrawBackgroundColor(MRP, 255); TextDrawFont(MRP, 3); TextDrawLetterSize(MRP, 0.280000, 1.200000); TextDrawColor(MRP, 7864319);
	TextDrawSetOutline(MRP, 0); TextDrawSetProportional(MRP, 1); TextDrawSetShadow(MRP, 1);
*/
	BoxVelo1 = TextDrawCreate(661.000000, 409.000000, "_");
	TextDrawBackgroundColor(BoxVelo1, 255);
	TextDrawFont(BoxVelo1, 1);
	TextDrawLetterSize(BoxVelo1, 0.500000, 5.000000);
	TextDrawColor(BoxVelo1, -1);
	TextDrawSetOutline(BoxVelo1, 0);
	TextDrawSetProportional(BoxVelo1, 1);
	TextDrawSetShadow(BoxVelo1, 1);
	TextDrawUseBox(BoxVelo1, 1);
	TextDrawBoxColor(BoxVelo1, 125);
	TextDrawTextSize(BoxVelo1, 530.000000, 10.000000);
	TextDrawSetSelectable(BoxVelo1, 0);

	BoxVelo2 = TextDrawCreate(661.000000, 398.000000, "_");
	TextDrawBackgroundColor(BoxVelo2, 255);
	TextDrawFont(BoxVelo2, 1);
	TextDrawLetterSize(BoxVelo2, 0.500000, 2.799999);
	TextDrawColor(BoxVelo2, -1);
	TextDrawSetOutline(BoxVelo2, 0);
	TextDrawSetProportional(BoxVelo2, 1);
	TextDrawSetShadow(BoxVelo2, 1);
	TextDrawUseBox(BoxVelo2, 1);
	TextDrawBoxColor(BoxVelo2, 125);
	TextDrawTextSize(BoxVelo2, 530.000000, 10.000000);
	TextDrawSetSelectable(BoxVelo2, 0);

	TextVelo1 = TextDrawCreate(544.000000, 395.000000, "Velocimetro");
	TextDrawBackgroundColor(TextVelo1, 255);
	TextDrawFont(TextVelo1, 2);
	TextDrawLetterSize(TextVelo1, 0.300000, 1.199998);
	TextDrawColor(TextVelo1, -1);
	TextDrawSetOutline(TextVelo1, 0);
	TextDrawSetProportional(TextVelo1, 1);
	TextDrawSetShadow(TextVelo1, 1);
	TextDrawSetSelectable(TextVelo1, 0);
	
	EMarihuana1 = TextDrawCreate(650.000000, 0.000000, "_");
	TextDrawBackgroundColor(EMarihuana1, 255);
	TextDrawFont(EMarihuana1, 1);
	TextDrawLetterSize(EMarihuana1, 0.500000, 13.000000);
	TextDrawColor(EMarihuana1, -1);
	TextDrawSetOutline(EMarihuana1, 0);
	TextDrawSetProportional(EMarihuana1, 1);
	TextDrawSetShadow(EMarihuana1, 1);
	TextDrawUseBox(EMarihuana1, 1);
	TextDrawBoxColor(EMarihuana1, 255);
	TextDrawTextSize(EMarihuana1, -40.000000, 0.000000);
	TextDrawSetSelectable(EMarihuana1, 0);

	EMarihuana2 = TextDrawCreate(650.000000, 330.000000, "_");
	TextDrawBackgroundColor(EMarihuana2, 255);
	TextDrawFont(EMarihuana2, 1);
	TextDrawLetterSize(EMarihuana2, 0.500000, 13.000000);
	TextDrawColor(EMarihuana2, -1);
	TextDrawSetOutline(EMarihuana2, 0);
	TextDrawSetProportional(EMarihuana2, 1);
	TextDrawSetShadow(EMarihuana2, 1);
	TextDrawUseBox(EMarihuana2, 1);
	TextDrawBoxColor(EMarihuana2, 255);
	TextDrawTextSize(EMarihuana2, -40.000000, 0.000000);
	TextDrawSetSelectable(EMarihuana2, 0);

	EMarihuana3 = TextDrawCreate(650.000000, 120.000000, "_");
	TextDrawBackgroundColor(EMarihuana3, 255);
	TextDrawFont(EMarihuana3, 1);
	TextDrawLetterSize(EMarihuana3, 0.500000, 23.000000);
	TextDrawColor(EMarihuana3, -1);
	TextDrawSetOutline(EMarihuana3, 0);
	TextDrawSetProportional(EMarihuana3, 1);
	TextDrawSetShadow(EMarihuana3, 1);
	TextDrawUseBox(EMarihuana3, 1);
	TextDrawBoxColor(EMarihuana3, -16777126);
	TextDrawTextSize(EMarihuana3, -40.000000, 0.000000);
	TextDrawSetSelectable(EMarihuana3, 0);
	
	LogoSV = TextDrawCreate(40.000000, 422.000000, "ZONA SUR");
	TextDrawBackgroundColor(LogoSV, 255);
	TextDrawFont(LogoSV, 3);
	TextDrawLetterSize(LogoSV, 0.610000, 1.599999);
	TextDrawColor(LogoSV, 7012351);
	TextDrawSetOutline(LogoSV, 0);
	TextDrawSetProportional(LogoSV, 1);
	TextDrawSetShadow(LogoSV, 1);
	TextDrawSetSelectable(LogoSV, 0);

	MRP = TextDrawCreate(54.000000, 432.000000, "ROLEPLAY");
	TextDrawBackgroundColor(MRP, 255);
	TextDrawFont(MRP, 2);
	TextDrawLetterSize(MRP, 0.310000, 1.499999);
	TextDrawColor(MRP, -1);
	TextDrawSetOutline(MRP, 0);
	TextDrawSetProportional(MRP, 1);
	TextDrawSetShadow(MRP, 1);
	TextDrawSetSelectable(MRP, 0);
	/* Textdraw selectables.*/
	BBox1 = TextDrawCreate(650.000000, 0.000000, "_");
	TextDrawBackgroundColor(BBox1, 255);
	TextDrawFont(BBox1, 1);
	TextDrawLetterSize(BBox1, 0.500000, 50.000000);
	TextDrawColor(BBox1, -1);
	TextDrawSetOutline(BBox1, 0);
	TextDrawSetProportional(BBox1, 1);
	TextDrawSetShadow(BBox1, 1);
	TextDrawUseBox(BBox1, 1);
	TextDrawBoxColor(BBox1, 65535);
	TextDrawTextSize(BBox1, -10.000000, 0.000000);
	TextDrawSetSelectable(BBox1, 0);
/*
	
	BText2 = TextDrawCreate(70.000000, 142.000000, "Ingresa el numero de serie de la cuenta.");
	TextDrawBackgroundColor(BText2, 255);
	TextDrawFont(BText2, 3);
	TextDrawLetterSize(BText2, 0.699999, 2.000000);
	TextDrawColor(BText2, -1);
	TextDrawSetOutline(BText2, 0);
	TextDrawSetProportional(BText2, 1);
	TextDrawSetShadow(BText2, 1);
	TextDrawSetSelectable(BText2, 0);

	BText3 = TextDrawCreate(53.000000, 143.000000, "~>~");
	TextDrawBackgroundColor(BText3, 255);
	TextDrawFont(BText3, 1);
	TextDrawLetterSize(BText3, 0.500000, 2.000000);
	TextDrawColor(BText3, -1);
	TextDrawSetOutline(BText3, 0);
	TextDrawSetProportional(BText3, 1);
	TextDrawSetShadow(BText3, 1);
	TextDrawSetSelectable(BText3, 0);*/

	BText4 = TextDrawCreate(144.000000, 434.000000, "Prototipo oficial del banco principal de san andreas.");
	TextDrawBackgroundColor(BText4, 255);
	TextDrawFont(BText4, 1);
	TextDrawLetterSize(BText4, 0.340000, 0.699999);
	TextDrawColor(BText4, -1);
	TextDrawSetOutline(BText4, 0);
	TextDrawSetProportional(BText4, 1);
	TextDrawSetShadow(BText4, 1);
	TextDrawSetSelectable(BText4, 0);

	BBox2 = TextDrawCreate(649.000000, -7.000000, "_");
	TextDrawBackgroundColor(BBox2, 255);
	TextDrawFont(BBox2, 2);
	TextDrawLetterSize(BBox2, 0.500000, 3.000000);
	TextDrawColor(BBox2, -1);
	TextDrawSetOutline(BBox2, 0);
	TextDrawSetProportional(BBox2, 1);
	TextDrawSetShadow(BBox2, 1);
	TextDrawUseBox(BBox2, 1);
	TextDrawBoxColor(BBox2, 60);
	TextDrawTextSize(BBox2, -20.000000, 30.000000);
	TextDrawSetSelectable(BBox2, 0);

	BText5 = TextDrawCreate(218.000000, 130.000000, ",");
	TextDrawBackgroundColor(BText5, 255);
	TextDrawFont(BText5, 3);
	TextDrawLetterSize(BText5, 0.499999, 1.600000);
	TextDrawColor(BText5, -1);
	TextDrawSetOutline(BText5, 0);
	TextDrawSetProportional(BText5, 1);
	TextDrawSetShadow(BText5, 1);
	TextDrawSetSelectable(BText5, 0);
	

	BText6 = TextDrawCreate(249.000000, 127.000000, "OPCIONES:");
	TextDrawBackgroundColor(BText6, 255);
	TextDrawFont(BText6, 2);
	TextDrawLetterSize(BText6, 0.500000, 1.000000);
	TextDrawColor(BText6, -1);
	TextDrawSetOutline(BText6, 0);
	TextDrawSetProportional(BText6, 1);
	TextDrawSetShadow(BText6, 1);
	TextDrawSetSelectable(BText6, 0);

	BBox3 = TextDrawCreate(409.000000, 147.000000, "_");
	TextDrawBackgroundColor(BBox3, 255);
	TextDrawFont(BBox3, 2);
	TextDrawLetterSize(BBox3, 0.500000, 3.000000);
	TextDrawColor(BBox3, -1);
	TextDrawSetOutline(BBox3, 0);
	TextDrawSetProportional(BBox3, 1);
	TextDrawSetShadow(BBox3, 1);
	TextDrawUseBox(BBox3, 1);
	TextDrawBoxColor(BBox3, 60);
	TextDrawTextSize(BBox3, 200.000000, 0.000000);
	TextDrawSetSelectable(BBox3, 0);

	BBox4 = TextDrawCreate(409.000000, 207.000000, "_");
	TextDrawBackgroundColor(BBox4, 255);
	TextDrawFont(BBox4, 2);
	TextDrawLetterSize(BBox4, 0.500000, 3.000000);
	TextDrawColor(BBox4, -1);
	TextDrawSetOutline(BBox4, 0);
	TextDrawSetProportional(BBox4, 1);
	TextDrawSetShadow(BBox4, 1);
	TextDrawUseBox(BBox4, 1);
	TextDrawBoxColor(BBox4, 60);
	TextDrawTextSize(BBox4, 200.000000, 0.000000);
	TextDrawSetSelectable(BBox4, 0);

	BEstado = TextDrawCreate(260.000000, 152.000000, "ESTADO");
	TextDrawBackgroundColor(BEstado, 255);
	TextDrawFont(BEstado, 3);
	TextDrawLetterSize(BEstado, 0.699999, 2.000000);
	TextDrawColor(BEstado, -1);
	TextDrawSetOutline(BEstado, 0);
	TextDrawSetProportional(BEstado, 1);
	TextDrawSetShadow(BEstado, 1);
	TextDrawSetSelectable(BEstado, 0);
    TextDrawSetSelectable(BEstado, true);
	BRetirar = TextDrawCreate(260.000000, 211.000000, "RETIRAR");
	TextDrawBackgroundColor(BRetirar, 255);
	TextDrawFont(BRetirar, 3);
	TextDrawLetterSize(BRetirar, 0.699999, 2.000000);
	TextDrawColor(BRetirar, -1);
	TextDrawSetOutline(BRetirar, 0);
	TextDrawSetProportional(BRetirar, 1);
	TextDrawSetShadow(BRetirar, 1);
	TextDrawSetSelectable(BRetirar, 0);
	TextDrawSetSelectable(BRetirar, true);
	/*___*/





	Tit1 = TextDrawCreate(652.000000, 310.000000, "_");
	TextDrawBackgroundColor(Tit1, 255);
	TextDrawFont(Tit1, 1);
	TextDrawLetterSize(Tit1, 0.500000, 5.000000);
	TextDrawColor(Tit1, -1);
	TextDrawSetOutline(Tit1, 0);
	TextDrawSetProportional(Tit1, 1);
	TextDrawSetShadow(Tit1, 1);
	TextDrawUseBox(Tit1, 1);
	TextDrawBoxColor(Tit1, 150);
	TextDrawTextSize(Tit1, -30.000000, 0.000000);
	TextDrawSetSelectable(Tit1, 0);

	Tit2 = TextDrawCreate(250.000000, 310.000000, "ZONA SUR");
	TextDrawBackgroundColor(Tit2, 255);
	TextDrawFont(Tit2, 3);
	TextDrawLetterSize(Tit2, 0.899999, 3.000000);
	TextDrawColor(Tit2, 8716287);
	TextDrawSetOutline(Tit2, 0);
	TextDrawSetProportional(Tit2, 1);
	TextDrawSetShadow(Tit2, 1);
	TextDrawSetSelectable(Tit2, 0);

	Tit3 = TextDrawCreate(254.000000, 327.000000, "Roleplay");
	TextDrawBackgroundColor(Tit3, 255);
	TextDrawFont(Tit3, 2);
	TextDrawLetterSize(Tit3, 0.600000, 3.000000);
	TextDrawColor(Tit3, -1);
	TextDrawSetOutline(Tit3, 0);
	TextDrawSetProportional(Tit3, 1);
	TextDrawSetShadow(Tit3, 1);
	TextDrawSetSelectable(Tit3, 0);

	ECocaina = TextDrawCreate(680.000000, -30.000000, "_");
	TextDrawBackgroundColor(ECocaina, 255);
	TextDrawFont(ECocaina, 1);
	TextDrawLetterSize(ECocaina, 1.100000, 54.000000);
	TextDrawColor(ECocaina, -1);
	TextDrawSetOutline(ECocaina, 0);
	TextDrawSetProportional(ECocaina, 1);
	TextDrawSetShadow(ECocaina, 1);
	TextDrawUseBox(ECocaina, 1);
	TextDrawBoxColor(ECocaina, -16777126);
	TextDrawTextSize(ECocaina, -40.000000, 0.000000);
	TextDrawSetSelectable(ECocaina, 0);


	BoxTuto1 = TextDrawCreate(652.000000, 210.000000, "_");
	TextDrawBackgroundColor(BoxTuto1, 255);
	TextDrawFont(BoxTuto1, 1);
	TextDrawLetterSize(BoxTuto1, 0.500000, 10.000000);
	TextDrawColor(BoxTuto1, -1);
	TextDrawSetOutline(BoxTuto1, 0);
	TextDrawSetProportional(BoxTuto1, 1);
	TextDrawSetShadow(BoxTuto1, 1);
	TextDrawUseBox(BoxTuto1, 1);
	TextDrawBoxColor(BoxTuto1, 150);
	TextDrawTextSize(BoxTuto1, -30.000000, 0.000000);
	TextDrawSetSelectable(BoxTuto1, 0);

	BoxTuto2 = TextDrawCreate(652.000000, 210.000000, "_");
	TextDrawBackgroundColor(BoxTuto2, 255);
	TextDrawFont(BoxTuto2, 1);
	TextDrawLetterSize(BoxTuto2, 0.500000, 0.899999);
	TextDrawColor(BoxTuto2, -1);
	TextDrawSetOutline(BoxTuto2, 0);
	TextDrawSetProportional(BoxTuto2, 1);
	TextDrawSetShadow(BoxTuto2, 1);
	TextDrawUseBox(BoxTuto2, 1);
	TextDrawBoxColor(BoxTuto2, 150);
	TextDrawTextSize(BoxTuto2, -30.000000, 0.000000);
	TextDrawSetSelectable(BoxTuto2, 0);

	//                      PICKUP'S.
	CreatePickup(1318, 2, 1554.8000500,-1675.6999500,15.8000000,0);//Policia federal ext
	CreatePickup(1318, 2, 246.8000000,63.0000000,1003.2999900,0);//Policia federal INt
	CreatePickup(1239, 2, 257.2999900,77.0000000,1003.2999900,0);//Policia federal Armamento
	CreatePickup(1318, 2, 242.7000000,66.3000000,1003.2999900,0);//Policia federal INt A ext
	CreatePickup(1318, 2, 1525.1999500,-1678.0000000,5.5000000,0);//Policia federal Ext A int
	CreatePickup(1239, 2, -31.1000000,-25.2000000,1003.2000100,0);//24-7 Unity Gaseosa
	CreatePickup(1239, 2, -34.7000000,-10.4000000,1003.2000100,0);//24-7 Unity Comida
	CreatePickup(1239, 2, -31.0000000,-28.8000000,1003.2000100,0);//24-7 Unity Comida
	CreatePickup(1318, 2, 1479.6,-1818.96,15.45,0);//Ayuntamiento EXT AL INT
	CreatePickup(1318, 2, 1157.84,-1293.57,13.49,0);//Hospital EXT AL INT
	CreatePickup(1318, 2, 1352.30,-1758.46,13.50,0);//24-7 Ayunta EXT AL INT
	CreatePickup(1239, 2, 362.2000100,173.6000100,1008.0000000,0);//Ayuntamiento DNI
	CreatePickup(1318, 2, 2244.3999000,-1665.0000000,16.1000000,0);//Binco Groove EXT A INT
	CreatePickup(1239, 2, 2131.64,-1150.73,24.122,0);//Pedir permiso.
	CreatePickup(1239, 2, 1941.73,1776.36,13.64,0);//Gasoliner�a
	
	//                      TEXTLABEL'S.
	CT("Armamento policial\n{00B3FF}/Armamento",COLOR_BLANCO, 257.2999900,77.0000000,1004.2999900,10.0,0,0);
	CT("Policia Federal\n{00B3FF}Ingreso {FFFFFF}/Entrar",COLOR_BLANCO,1554.8000500,-1675.6999500,16.8000000,10.0,0,0);
	CT("Trabajo:\n\n{00B3FF} - PILOTO",COLOR_BLANCO,1319.3000500,1251.4000200,10.5000000,10.0,0,0);
    CT("Trabajo:\n\n{00B3FF} - BASURERO",COLOR_BLANCO,2919.6001000,2118.0000000,17.2000000,10.0,0,0);
    CT("Trabajo:\n\n{00B3FF} - BUS",COLOR_BLANCO,2847.3999000,1287.0999800,11.0000000,10.0,0,0);
    CT("Unity Objeto:\n\n{00B3FF} Gaseosas.",COLOR_BLANCO,-31.1000000,-25.2000000,1003.2000100,10.0,0,0);
    CT("Unity Objeto:\n\n{00B3FF} Comida.",COLOR_BLANCO,-34.7000000,-10.4000000,1003.2000100,10.0,0,0);
    CT("Unity Ticket's:\n\n{00B3FF} /Pedir{FFFFFF}ticket.\n\n Si has comprado{00B3FF} /Comprar.",COLOR_BLANCO,-31.0000000,-28.8000000,1003.2000100,10.0,0,0);
    CT("Ayuntamiento\n Ingreso{00B3FF} /Entrar",COLOR_BLANCO,1479.6,-1818.96,15.45,10.0,0,0);
    CT("Hospital - La NACION\n Ingreso{00B3FF} /Entrar",COLOR_BLANCO,1157.84,-1293.57,13.49,10.0,0,0);
    CT("Mercado de productos 24-7\n Ingreso{00B3FF} /Entrar",COLOR_BLANCO,1352.30,-1758.46,13.50,10.0,0,0);
    CT("Pide tu dni con\n{00B3FF} /obtener{FFFFFF}Dni",COLOR_BLANCO,362.2000100,173.6000100,1008.0000000,10.0,0,0);
    CT("Tienda de ropa {00B3FF}[BINCO]{FFFFFF}\n Ingreso{00B3FF} /Entrar",COLOR_BLANCO,2244.3999000,-1665.0000000,16.1000000,10.0,0,0);
    CT("Para pedir permiso{FFFFFF}\n{00B3FF} /Pedirpermiso",COLOR_BLANCO,2131.64,-1150.73,24.122,10.0,0,0);
    new String2[400];
    format(String2,sizeof(String2),"/Comprardrogas \n\n{0A7900}[Marihuana total:{FFFFFF}%d{0A7900}]\n{FFFFFF}[Cocaina Total:{555555}%d{FFFFFF}].",Marihuana,Cocaina);
    TimerDrogasT = CT(String2,COLOR_BLANCO,2341.16,-1927.94,13.57,10.0,0,0);
    CT("Gasoliner�a.{FFFFFF}\n{00B3FF} /llenartanque",COLOR_BLANCO,1941.73,1776.36,13.64,10.0,0,0);



		/* Coches*/

	/* Trabajo: -Piloto-*/
	CAvion[0] = AddStaticVehicleEx(553,1332.3000500,1430.0000000,13.0000000,0.0000000,54,65,15); //Nevada 01
	CAvion[1] = AddStaticVehicleEx(553,1294.5000000,1391.6999500,13.1000000,0.0000000,54,65,15); //Nevada 02
	CAvion[2] = AddStaticVehicleEx(553,1318.1999500,1342.0999800,13.1000000,0.0000000,54,65,15); //Nevada 03
	CAvion[3] = AddStaticVehicleEx(553,1350.5999800,1288.6999500,13.1000000,0.0000000,54,65,15); //Nevada 04
	
	/* Trabajo: -Basurero*/
	CBasurero[0] = AddStaticVehicleEx(408,2905.5000000,2100.3999000,11.6000000,0.0000000,165,169,15); //Trashmaster 05
	CBasurero[1] = AddStaticVehicleEx(408,2897.6999500,2101.8999000,11.6000000,0.0000000,165,169,15); //Trashmaster 06
	CBasurero[2] = AddStaticVehicleEx(408,2890.8999000,2102.5000000,11.6000000,0.0000000,165,169,15); //Trashmaster 07
	CBasurero[3] = AddStaticVehicleEx(408,2885.0000000,2102.8999000,11.6000000,0.0000000,165,169,15); //Trashmaster 08
	CBasurero[4] = AddStaticVehicleEx(408,2878.8999000,2102.8000500,11.6000000,0.0000000,165,169,15); //Trashmaster 09

	/* Trabajo: -Bus*/
	CBus[0] = AddStaticVehicleEx(431,2774.3000500,1263.0000000,11.0000000,0.0000000,125,98,15); //Bus 10
	CBus[1] = AddStaticVehicleEx(431,2786.1001000,1262.5999800,11.0000000,0.0000000,125,98,15); //Bus 11
	CBus[2] = AddStaticVehicleEx(431,2799.8000500,1263.4000200,11.0000000,0.0000000,125,98,15); //Bus 12
	CBus[3] = AddStaticVehicleEx(431,2817.6001000,1262.5999800,11.0000000,0.0000000,125,98,15); //Bus 13
	CBus[4] = AddStaticVehicleEx(431,2763.3999000,1256.8000500,11.0000000,0.0000000,125,98,15); //Bus 14
	CBus[5] = AddStaticVehicleEx(431,2803.6999500,1328.9000200,11.0000000,0.0000000,125,98,15); //Bus 15
	
	/* RENTA VEH�CULOS*/
	RentaV[0] =	AddStaticVehicleEx(410,1561.8000500,-2308.8999000,13.3000000,90.0000000,255,255,360000); //Manana 16
	RentaV[1] =	AddStaticVehicleEx(410,1561.8000500,-2312.3000500,13.3000000,90.0000000,255,255,360000); //Manana17
	RentaV[2] =	AddStaticVehicleEx(410,1561.9000200,-2315.3999000,13.3000000,90.0000000,255,255,360000); //Manana18
	RentaV[3] =	AddStaticVehicleEx(410,1562.0000000,-2318.5000000,13.3000000,90.0000000,255,255,360000); //Manana19
	RentaV[4] =	AddStaticVehicleEx(410,1561.8000500,-2321.6999500,13.3000000,90.0000000,255,255,360000); //Manana20
	RentaV[5] =	AddStaticVehicleEx(410,1561.5999800,-2325.6001000,13.3000000,90.0000000,255,255,360000); //Manana21
	RentaV[6] =	AddStaticVehicleEx(410,1561.6999500,-2328.8000500,13.3000000,90.0000000,255,255,360000); //Manana22
	RentaV[7] =	AddStaticVehicleEx(410,1561.8000500,-2332.1999500,13.3000000,90.0000000,255,255,360000); //Manana23
	RentaV[8] =	AddStaticVehicleEx(410,1561.8000500,-2335.3000500,13.3000000,90.0000000,255,255,360000); //Manana24
	RentaV[9] =	AddStaticVehicleEx(410,1561.8000500,-2338.6001000,13.3000000,90.0000000,255,255,360000); //Manana25
	
	/* Cosechadoras de droga*/
	CosechaDrogas[0] = AddStaticVehicleEx(532,-1101.5999800,-1680.9000200,77.5000000,0.0000000,-1,-1,0); //Combine 26
	CosechaDrogas[1] = AddStaticVehicleEx(532,-1122.9000200,-1681.1999500,77.5000000,0.0000000,-1,-1,0); //Combine 27
	CosechaDrogas[2] = AddStaticVehicleEx(532,-1073.9000200,-1686.9000200,77.2000000,0.0000000,-1,-1,0); //Combine 28
	CosechaDrogas[3] = AddStaticVehicleEx(532,-1062.0999800,-1686.5999800,77.4000000,0.0000000,-1,-1,0); //Combine 29
	CosechaDrogas[4] = AddStaticVehicleEx(532,-1049.0999800,-1692.9000200,78.4000000,0.0000000,-1,-1,0); //Combine 30
	CosechaDrogas[5] = AddStaticVehicleEx(532,-1039.8000500,-1699.5999800,78.8000000,0.0000000,-1,-1,0); //Combine 31
	
	/* Trabajo: Transportista - Camionero.*/
	CamioneroV[0] = AddStaticVehicleEx(578,-1005.0000000,-686.7999900,32.8000000,90.0000000,255,255,15); //DFT-30
	CamioneroV[1] = AddStaticVehicleEx(578,-1005.0000000,-678.9000200,32.8000000,90.0000000,255,255,15); //DFT-30
	CamioneroV[2] = AddStaticVehicleEx(578,-1005.2999900,-674.2000100,32.8000000,90.0000000,255,255,15); //DFT-30
	CamioneroV[3] = AddStaticVehicleEx(578,-1005.2000100,-668.7000100,32.8000000,90.0000000,255,255,15); //DFT-30
	CamioneroV[4] = AddStaticVehicleEx(578,-1005.4000200,-663.7999900,32.8000000,90.0000000,255,255,15); //DFT-30
	CamioneroV[5] = AddStaticVehicleEx(578,-1005.7000100,-656.0000000,32.8000000,90.0000000,255,255,15); //DFT-30
	CamioneroV[6] = AddStaticVehicleEx(578,-1005.5999800,-650.9000200,32.8000000,90.0000000,255,255,15); //DFT-30
	CamioneroV[7] = AddStaticVehicleEx(578,-1005.7999900,-643.2000100,32.8000000,90.0000000,255,255,15); //DFT-30
	CamioneroV[8] = AddStaticVehicleEx(578,-1005.7000100,-638.2999900,32.8000000,90.0000000,255,255,15); //DFT-30
	CamioneroV[9] = AddStaticVehicleEx(578,-1005.7000100,-630.5000000,32.8000000,90.0000000,255,255,15); //DFT-30
	CamioneroV[10] = AddStaticVehicleEx(578,-1005.5999800,-625.5999800,32.8000000,90.0000000,255,255,15); //DFT-30

	/*COCHES CONCE*/
	new string[100], string2[170], string3[170], string4[170], string5[170], string6[170], string7[170], string8[170];
    DealerCars[0] = AddStaticVehicle(546,2135.7805,-1147.6683,24.2358,45.7344,1,1); // Intruder
	DealerCars[1] = AddStaticVehicle(547,2136.1267,-1142.5652,24.8062,48.5747,1,1); // Primo
	DealerCars[2] = AddStaticVehicle(550,2136.2810,-1137.8374,25.3877,49.0252,1,1); // Sunrise
	DealerCars[3] = AddStaticVehicle(551,2136.1887,-1132.9510,25.4904,50.6219,1,1); // Merit
	DealerCars[4] = AddStaticVehicle(554,2120.1875,-1122.7693,25.4782,236.7405,1,1); // Yosemite
	DealerCars[5] = AddStaticVehicle(561,2119.2405,-1127.4752,25.1522,235.1129,1,1); // Stratum
	DealerCars[6] = AddStaticVehicle(585,2119.3145,-1132.3177,24.8819,236.2470,1,1); // Emperor
	DealerCars[7] = AddStaticVehicle(579,2119.3181,-1136.4448,25.1078,231.7601,1,1); // Huntley
	IsADealerCar[DealerCars[0]] = true;
	IsADealerCar[DealerCars[1]] = true;
	IsADealerCar[DealerCars[2]] = true;
	IsADealerCar[DealerCars[3]] = true;
	IsADealerCar[DealerCars[4]] = true;
	IsADealerCar[DealerCars[5]] = true;
	IsADealerCar[DealerCars[6]] = true;
	IsADealerCar[DealerCars[7]] = true;
	CarPrice[DealerCars[0]] = 15000;
	CarPrice[DealerCars[1]] = 20000;
	CarPrice[DealerCars[2]] = 22500;
	CarPrice[DealerCars[3]] = 23500;
	CarPrice[DealerCars[4]] = 10000;
	CarPrice[DealerCars[5]] = 9000;
	CarPrice[DealerCars[6]] = 11500;
	CarPrice[DealerCars[7]] = 26500;
	format(string, sizeof(string), "{007CFF}Nombre: {FFFFFF}%s\n[EN VENTA]", GetVehicleNameFromID(DealerCars[0]));
	format(string2, sizeof(string2), "{007CFF}Nombre: {FFFFFF}%s\n[EN VENTA]", GetVehicleNameFromID(DealerCars[1]));
	format(string3, sizeof(string3), "{007CFF}Nombre: {FFFFFF}%s\n[EN VENTA]", GetVehicleNameFromID(DealerCars[2]));
	format(string4, sizeof(string4), "{007CFF}Nombre: {FFFFFF}%s\n[EN VENTA]", GetVehicleNameFromID(DealerCars[3]));
	format(string5, sizeof(string5), "{007CFF}Nombre: {FFFFFF}%s\n[EN VENTA]", GetVehicleNameFromID(DealerCars[4]));
	format(string6, sizeof(string6), "{007CFF}Nombre: {FFFFFF}%s\n[EN VENTA]", GetVehicleNameFromID(DealerCars[5]));
	format(string7, sizeof(string7), "{007CFF}Nombre: {FFFFFF}%s\n[EN VENTA]", GetVehicleNameFromID(DealerCars[6]));
	format(string8, sizeof(string8), "{007CFF}Nombre: {FFFFFF}%s\n[EN VENTA]", GetVehicleNameFromID(DealerCars[7]));
	DealerCar[0] = Create3DTextLabel(string, 0x33CCFFAA, 2135.7805,-1147.6683,24.2358, 20.0, 0);
	DealerCar[1] = Create3DTextLabel(string2, 0x33CCFFAA, 2136.1267,-1142.5652,24.8062, 20.0, 0);
	DealerCar[2] = Create3DTextLabel(string3, 0x33CCFFAA, 2136.2810,-1137.8374,25.3877, 20.0, 0);
	DealerCar[3] = Create3DTextLabel(string4, 0x33CCFFAA, 2136.1887,-1132.9510,25.4904, 20.0, 0);
	DealerCar[4] = Create3DTextLabel(string5, 0x33CCFFAA, 2120.1875,-1122.7693,25.4782, 20.0, 0);
	DealerCar[5] = Create3DTextLabel(string6, 0x33CCFFAA, 2119.2405,-1127.4752,25.1522, 20.0, 0);
	DealerCar[6] = Create3DTextLabel(string7, 0x33CCFFAA, 2119.3145,-1132.3177,24.8819, 20.0, 0);
	DealerCar[7] = Create3DTextLabel(string8, 0x33CCFFAA, 2119.3181,-1136.4448,25.1078, 20.0, 0);

	/*                                                              MAPPING*/
	//__RENTA - Mapa.
	CreateObject(996,1553.9000200,-2296.3999000,13.3000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier1) (1)
	CreateObject(996,1558.5000000,-2345.3999000,13.3000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier1) (2)
	CreateObject(996,1566.0999800,-2336.6999500,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (3)
	CreateObject(996,1566.0999800,-2328.5000000,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (4)
	CreateObject(996,1566.0999800,-2320.3000500,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (5)
	CreateObject(996,1566.0999800,-2312.1001000,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (6)
	CreateObject(996,1566.0999800,-2303.8999000,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (7)
	CreateObject(997,1562.0999800,-2296.3999000,12.6000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier3) (1)
	CreateObject(1251,1557.6999500,-2310.6001000,12.5000000,0.0000000,0.0000000,0.0000000); //object(smashbar) (1)
	CreateObject(1251,1557.6999500,-2317.3999000,12.5000000,0.0000000,0.0000000,0.0000000); //object(smashbar) (2)
	CreateObject(1251,1557.6999500,-2324.1999500,12.5000000,0.0000000,0.0000000,0.0000000); //object(smashbar) (3)
	CreateObject(1251,1557.6999500,-2331.0000000,12.5000000,0.0000000,0.0000000,0.0000000); //object(smashbar) (4)
	CreateObject(1251,1557.6999500,-2337.8000500,12.5000000,0.0000000,0.0000000,0.0000000); //object(smashbar) (5)
	CreateObject(9361,1559.9000200,-2301.1001000,15.1000000,0.0000000,0.0000000,224.0000000); //object(boatoffice_sfn) (1)
	CreateObject(996,1566.0996100,-2344.8994100,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (9)
	CreateObject(996,1550.3000500,-2345.3999000,13.3000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier1) (10)
	CreateObject(996,1542.0999800,-2345.3999000,13.3000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier1) (11)
	CreateObject(996,1538.3000500,-2339.5000000,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (12)
	CreateObject(996,1538.3000500,-2331.3000500,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (13)
	CreateObject(996,1538.3000500,-2323.1001000,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (14)
	CreateObject(996,1538.3000500,-2314.8999000,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (15)
	CreateObject(996,1538.3000500,-2306.6999500,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (16)
	CreateObject(996,1541.3000500,-2344.8000500,13.3000000,0.0000000,0.0000000,114.0000000); //object(lhouse_barrier1) (17)
	CreateObject(997,1562.0996100,-2296.3994100,12.6000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier3) (2)
	CreateObject(997,1540.0000000,-2296.5000000,12.5000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier3) (3)
	CreateObject(997,1538.1999500,-2299.0000000,12.5000000,0.0000000,0.0000000,54.0000000); //object(lhouse_barrier3) (4)
	CreateObject(1215,1538.1999500,-2296.5000000,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (1)
	CreateObject(1215,1566.1999500,-2296.3000500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (2)
	CreateObject(1215,1566.3000500,-2316.8999000,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (3)
	CreateObject(1215,1566.3000500,-2337.3999000,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (4)
	CreateObject(1215,1565.9000200,-2345.6001000,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (5)
	CreateObject(1215,1549.6999500,-2345.6001000,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (6)
	CreateObject(1215,1541.3000500,-2345.5000000,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (7)
	CreateObject(1215,1538.1999500,-2340.3000500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (8)
	CreateObject(1215,1538.0999800,-2323.8000500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (9)
	CreateObject(1215,1538.0999800,-2311.5000000,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (10)
	CreateObject(1215,1538.1999500,-2299.1999500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (11)
	CreateObject(1215,1543.0999800,-2296.1999500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (12)
	CreateObject(1214,1548.4013700,-2296.6203600,12.5441000,0.0000000,0.0000000,0.0000000); //object(bollard) (1)


	//Trabajo: Camionero.
	CreateObject(2934,-984.4000200,-625.0000000,35.4000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (2)
	CreateObject(2934,-984.4000200,-624.7000100,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (3)
	CreateObject(2934,-984.4000200,-631.7999900,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (4)
	CreateObject(2934,-984.4000200,-638.9000200,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (5)
	CreateObject(2934,-984.4000200,-646.0000000,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (6)
	CreateObject(2934,-984.4000200,-653.0999800,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (7)
	CreateObject(2934,-984.4000200,-660.2000100,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (8)
	CreateObject(2934,-984.4000200,-667.2000100,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (9)
	CreateObject(2934,-984.4000200,-674.0999800,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (10)
	CreateObject(2934,-984.4000200,-681.0000000,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (11)
	CreateObject(2934,-984.4008200,-688.0347300,32.4225500,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (12)
	CreateObject(2934,-984.5000000,-637.9000200,35.4000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (13)
	CreateObject(2934,-984.4000200,-687.2999900,35.3000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (15)
	CreateObject(2934,-984.4000200,-667.7000100,35.4000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (16)
	CreateObject(12934,-1013.5999800,-580.4000200,34.4000000,0.0000000,0.0000000,0.0000000); //object(sw_trailer03) (1)
	CreateObject(5132,-1049.3000500,-598.5999800,34.1000000,0.0000000,0.0000000,0.0000000); //object(las2dkwar107) (1)
	CreateObject(7040,-985.7999900,-616.2999900,34.4000000,0.0000000,0.0000000,0.0000000); //object(vgnplcehldbox01) (1)
	CreateObject(1378,-1048.5999800,-642.0000000,55.4000000,0.0000000,0.0000000,0.0000000); //object(containercrane_04) (1)
	CreateObject(1381,-1048.8000500,-649.0000000,60.0000000,0.0000000,0.0000000,0.0000000); //object(magnocrane_04) (1)
	CreateObject(2934,-984.4013700,-652.5048800,35.3733700,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (17)
	CreateObject(16337,-1029.6999500,-590.5000000,31.0000000,0.0000000,0.0000000,0.0000000); //object(des_cranecontrol) (1)
	ObjetoCarga = CreateDynamicObject(2934,-1048.1992200,-650.0996100,56.9000000,0.0000000,0.0000000,90.0000000); //cargamento2alto

	//Hospital
	CreateDynamicObject(8079,1157.9699700,-1335.3900100,25.8000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8411,1173.6600300,-1354.3800000,-52.5000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(8411,1175.2600100,-1318.1899400,-52.5000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(8411,1138.4965800,-1301.9852300,-52.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8411,1093.5300300,-1354.5799600,-52.3200000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(8411,1118.6500200,-1354.5699500,-52.3200000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(8411,1142.7900400,-1354.5899700,-52.3200000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(7191,1120.4799800,-1383.9699700,14.6000000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(8242,1092.4399400,-1354.7299800,17.0000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8411,1103.5999800,-1317.1200000,-52.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8411,1101.5898400,-1301.1171900,-52.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8411,1085.0799600,-1354.6099900,-52.3200000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(1532,1072.5000000,-1373.8299600,12.6400000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(11547,1077.1200000,-1312.5999800,15.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(11547,1094.8100600,-1312.7099600,15.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(11547,1131.3700000,-1371.9899900,15.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(3460,1135.8555900,-1296.7026400,16.3000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(3460,1131.0100100,-1329.7099600,16.3000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(3460,1130.4699700,-1354.2800300,16.3000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(3460,1127.1800500,-1380.2700200,16.3000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(3460,1127.1899400,-1363.7399900,16.3000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(3460,1096.0000000,-1363.0699500,16.3000000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(3460,1095.9399400,-1346.0799600,16.3000000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(3460,1099.0600600,-1320.9300500,16.3000000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(3460,1099.0999800,-1304.4799800,16.3000000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(3460,1081.4300500,-1304.3399700,16.3000000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(3460,1081.3700000,-1320.8900100,16.3000000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(10401,1112.5500500,-1353.3199500,14.8000000,0.0000000,0.0000000,-45.0000000); //
	CreateDynamicObject(10401,1112.5799600,-1338.3700000,14.8000000,0.0000000,0.0000000,-45.0000000); //
	CreateDynamicObject(3460,1113.4200400,-1363.3100600,16.3000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(3460,1113.4599600,-1345.9799800,16.3000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(3460,1113.4799800,-1328.2700200,16.3000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(8673,1136.3960000,-1291.2478000,12.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(966,1105.2933300,-1291.3625500,12.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(968,1105.2775900,-1291.3829300,13.1209700,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8673,1116.0183100,-1291.2446300,12.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8673,1088.3320300,-1291.0155000,12.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8673,1083.1130400,-1290.9860800,12.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8673,1072.6831100,-1300.9294400,12.5000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(8673,1072.6778600,-1315.7553700,12.5000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(16375,1180.4877900,-1383.1417200,32.2000000,0.2000000,0.0000000,0.0000000); //
	CreateDynamicObject(620,1184.2825900,-1329.4876700,12.5781300,356.8584000,0.0000000,-2.4996600); //
	CreateDynamicObject(703,1181.1773700,-1380.5444300,12.3000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(703,1180.6256100,-1313.1864000,12.3000000,0.0000000,0.0000000,0.0000000); //

//SWAT
	CreateDynamicObject(8710,1237.6568600,-1667.2511000,12.5490000,0.0000000,0.0000000,180.0000000); //
	CreateDynamicObject(10487,1188.8164100,-1625.7919900,-6.5900000,0.0000000,4.0000000,180.0000000); //
	CreateDynamicObject(8661,1277.7736800,-1623.7124000,12.5480000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(8661,1227.7005600,-1626.3385000,12.5480000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(8661,1248.2099600,-1646.9646000,12.5480000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8661,1248.1137700,-1606.3825700,12.5480000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8661,1180.5257600,-1640.9325000,12.9600000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8661,1198.1588100,-1682.4220000,12.5480000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(8661,1186.7137500,-1682.3425300,12.5480000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(18981,1171.2363300,-1701.6931200,0.6000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(6160,1149.3225100,-1690.4428700,12.5192000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(6160,1160.7784400,-1690.8507100,12.5192000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8661,1208.1837200,-1624.3490000,12.9600000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(18980,1218.2169200,-1622.0817900,12.6000000,0.0000000,90.0000000,90.0000000); //
	CreateDynamicObject(18980,1218.2417000,-1645.9908400,12.6000000,0.0000000,90.0000000,90.0000000); //
	CreateDynamicObject(18980,1198.6727300,-1664.3802500,12.6000000,0.0000000,90.0000000,0.0000000); //
	CreateDynamicObject(8661,1188.7642800,-1654.1334200,12.9600000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(18980,1187.0101300,-1664.3783000,12.6000000,0.0000000,90.0000000,0.0000000); //
	CreateDynamicObject(18980,1179.5430900,-1677.3796400,12.6000000,0.0000000,90.0000000,90.0000000); //
	CreateDynamicObject(18980,1179.4918200,-1689.7150900,12.6000000,0.0000000,90.0000000,90.0000000); //
	CreateDynamicObject(19313,1287.4545900,-1639.0041500,13.9000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19313,1287.2773400,-1614.6395300,13.9000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19313,1280.5556600,-1646.1250000,13.9000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(969,1286.7778300,-1631.1058300,12.5339000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(9131,1287.0914300,-1622.0539600,13.6000000,0.0000000,180.0000000,0.0000000); //
	CreateDynamicObject(9131,1287.0875200,-1622.0304000,15.8000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(9131,1287.1370800,-1631.6590600,13.6000000,0.0000000,180.0000000,0.0000000); //
	CreateDynamicObject(9131,1287.1414800,-1631.6367200,15.8000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(16088,1287.5181900,-1626.9271200,10.0000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19313,1218.2076400,-1637.3872100,14.8000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19313,1218.2409700,-1623.4741200,14.8000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19313,1218.2401100,-1609.4633800,14.8000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(8411,1099.7565900,-1638.2281500,-89.5000000,0.0000000,0.0000000,74.0000000); //
	CreateDynamicObject(8411,1094.5627400,-1656.5451700,-89.5100000,0.0000000,0.0000000,74.0000000); //
	CreateDynamicObject(8434,1074.3439900,-1629.9909700,-20.0000000,0.0000000,0.0000000,-16.0000000); //
	CreateDynamicObject(8434,1066.5304000,-1657.2891800,-20.0000000,0.0000000,0.0000000,-16.0000000); //
	CreateDynamicObject(8434,1070.9001500,-1697.2141100,-20.0000000,0.0000000,0.0000000,74.0000000); //
	CreateDynamicObject(8434,1118.9121100,-1665.5262500,-20.0000000,0.0000000,0.0000000,164.0000000); //
	CreateDynamicObject(8434,1092.0736100,-1594.2666000,-20.0000000,0.0000000,0.0000000,-100.0000000); //
	CreateDynamicObject(8661,1104.8877000,-1630.5830100,-15.6000000,0.0000000,180.0000000,74.0000000); //
	CreateDynamicObject(8661,1093.8607200,-1668.9681400,-15.6000000,0.0000000,180.0000000,74.0000000); //
	CreateDynamicObject(8661,1085.6530800,-1626.2966300,-15.6000000,0.0000000,180.0000000,74.0000000); //
	CreateDynamicObject(8661,1074.6826200,-1664.3114000,-15.6000000,0.0000000,180.0000000,74.0000000); //
	CreateDynamicObject(8947,1098.0756800,-1692.8061500,-22.3102000,0.0000000,0.0000000,-18.0000000); //
	CreateDynamicObject(11547,1083.2143600,-1666.8168900,-21.6000000,0.0000000,0.0000000,-16.0000000); //
	CreateDynamicObject(11547,1087.7319300,-1651.0294200,-21.6000000,0.0000000,0.0000000,-16.0000000); //
	CreateDynamicObject(11547,1092.2022700,-1635.1589400,-21.6000000,0.0000000,0.0000000,-16.0000000); //
	CreateDynamicObject(11547,1096.7432900,-1619.3042000,-21.6000000,0.0000000,0.0000000,-16.0000000); //
	CreateDynamicObject(3761,1089.0295400,-1686.0671400,-22.4500000,0.0000000,0.0000000,74.0000000); //
	CreateDynamicObject(3761,1083.0933800,-1684.4144300,-22.4500000,0.0000000,0.0000000,74.0000000); //
	CreateDynamicObject(1536,1095.8394800,-1679.1341600,-24.5000000,0.0000000,0.0000000,-18.0000000); //
	CreateDynamicObject(1536,1098.6812700,-1679.9951200,-24.5000000,0.0000000,0.0000000,163.0000000); //
	CreateDynamicObject(3934,1252.8494900,-1693.1460000,29.7000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(3934,1252.9815700,-1655.6127900,29.7000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8947,1274.6666300,-1676.6381800,29.6403000,0.0000000,0.0000000,47.0000000); //
	CreateDynamicObject(1536,1262.3953900,-1671.7343800,29.7000000,0.0000000,0.0000000,47.0000000); //
	CreateDynamicObject(1536,1264.4038100,-1669.5031700,29.7000000,0.0000000,0.0000000,-133.0000000); //

//Ayunta
	CreateDynamicObject(10377,1479.1999500,-1837.7099600,30.7000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(7488,1559.6200000,-1779.5600600,-13.2600000,-90.0000000,-90.0000000,0.0000000); //
	CreateDynamicObject(8411,1467.3906300,-1805.4231000,-52.3000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8411,1467.3324000,-1780.0765400,-52.3000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8411,1510.7337600,-1772.8720700,-52.3000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(7488,1540.5400400,-1779.3700000,-13.2600000,-90.0000000,-90.0000000,0.0000000); //
	CreateDynamicObject(7488,1559.6500200,-1826.6999500,-13.2600000,-90.0000000,-90.0000000,0.0000000); //
	CreateDynamicObject(7488,1540.5300300,-1826.6700400,-13.2600000,-90.0000000,-90.0000000,0.0000000); //
	CreateDynamicObject(7488,1497.7199700,-1842.9499500,-13.2600000,-90.0000000,-90.0000000,90.0000000); //
	CreateDynamicObject(7488,1436.4699700,-1843.0400400,-13.2600000,-90.0000000,-90.0000000,90.0000000); //
	CreateDynamicObject(7488,1436.3800000,-1823.8700000,-13.2600000,-90.0000000,-90.0000000,90.0000000); //
	CreateDynamicObject(7488,1436.3499800,-1804.6999500,-13.2600000,-90.0000000,-90.0000000,90.0000000); //
	CreateDynamicObject(6160,1463.6500200,-1802.4699700,12.8000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(6160,1499.1200000,-1789.3000500,12.7000000,0.0000000,0.0000000,180.0000000); //
	CreateDynamicObject(647,1505.5000000,-1786.4100300,14.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(647,1504.1999500,-1791.8199500,14.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(647,1506.4499500,-1795.2900400,14.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(647,1506.1300000,-1804.3199500,14.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(647,1504.1600300,-1798.8399700,14.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(3509,1504.8800000,-1804.3399700,12.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(3509,1505.2600100,-1795.2299800,12.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(3509,1504.8900100,-1787.1099900,12.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(3509,1458.2600100,-1786.4499500,12.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(3509,1456.1899400,-1797.0899700,12.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(3509,1459.0300300,-1806.2099600,12.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(647,1457.8199500,-1786.1999500,14.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(647,1458.9899900,-1791.4699700,14.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(647,1455.8800000,-1795.6700400,14.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(647,1458.0799600,-1806.3700000,14.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(647,1457.0699500,-1799.8499800,14.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(6160,1418.5400400,-1885.2299800,12.5000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(647,1419.6999500,-1841.8199500,14.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(647,1410.7900400,-1842.6899400,14.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(647,1419.6999500,-1841.8199500,14.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(647,1401.9399400,-1841.2900400,14.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(726,1418.7900400,-1842.6899400,12.6100000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(726,1401.9100300,-1842.0799600,12.6100000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(647,1414.4300500,-1842.0200200,14.4000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(6160,1553.0899700,-1884.8599900,12.5000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(726,1539.5100100,-1843.6500200,12.6200000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(726,1556.1800500,-1843.3199500,12.6200000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(823,1554.3599900,-1843.4899900,14.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(823,1539.7399900,-1843.9899900,14.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(823,1547.5300300,-1844.2800300,14.5000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8411,1467.2612300,-1754.7137500,-52.3000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8411,1467.3372800,-1830.5943600,-52.3000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8411,1510.7054400,-1827.7750200,-52.3000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(7488,1433.9012500,-1761.2052000,-13.2600000,-90.0000000,-90.0000000,270.0000000); //
	CreateDynamicObject(7488,1436.1554000,-1760.9603300,-13.2600000,-90.0000000,-90.0000000,90.0000000); //
	CreateDynamicObject(3472,1466.4593500,-1806.6641800,12.6325100,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(3472,1464.9522700,-1783.6447800,12.6325100,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(3472,1497.3845200,-1784.8908700,12.6325100,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(3472,1498.1820100,-1807.0510300,12.6325100,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(9918,1540.6324500,-1782.8067600,32.5000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(9918,1417.5745800,-1782.4184600,32.5000000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(10379,1479.6015600,-1755.9906000,21.6000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(11547,1465.2545200,-1795.4978000,15.7000000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(11547,1496.8520500,-1795.5750700,15.7000000,0.0000000,0.0000000,0.0000000); //

//Int Hospital
	CreateObject(8411, 1124.54163, -1325.26929, 1633.40002,   0.00000, 180.00000, 0.00000);
	CreateObject(7488, 1125.93994, -1298.51208, 1527.67212,   0.00000, -90.00000, 90.00000);
	CreateObject(11008, 1104.70361, -1339.20447, 1571.90002,   0.00000, 0.00000, -90.00000);
	CreateObject(7488, 1125.95825, -1279.35083, 1527.67212,   0.00000, -90.00000, 90.00000);
	CreateObject(7488, 1125.93469, -1317.62390, 1527.67212,   0.00000, -90.00000, 90.00000);
	CreateObject(11008, 1101.61169, -1331.92627, 1571.90002,   0.00000, 0.00000, -47.00000);
	CreateObject(11008, 1090.46985, -1308.14600, 1571.90002,   0.00000, 0.00000, -90.00000);
	CreateObject(11008, 1118.47778, -1280.76880, 1571.90002,   0.00000, 0.00000, 180.00000);
	CreateObject(11008, 1146.14551, -1339.64258, 1571.90002,   0.00000, 0.00000, 90.00000);
	CreateObject(11008, 1148.80493, -1332.13281, 1571.90002,   0.00000, 0.00000, 47.00000);
	CreateObject(11008, 1160.80981, -1305.02490, 1571.90002,   0.00000, 0.00000, 90.00000);
	CreateObject(9339, 1139.84070, -1315.03625, 1565.75000,   0.00000, 0.00000, 90.00000);
	CreateObject(9339, 1110.71448, -1315.07324, 1565.75000,   0.00000, 0.00000, 90.00000);
	CreateObject(1523, 1123.74915, -1315.00781, 1565.04639,   0.00000, 0.00000, 0.00000);
	CreateObject(1523, 1126.79077, -1314.94336, 1565.04639,   0.00000, 0.00000, 180.00000);
	CreateObject(9339, 1139.84070, -1315.03625, 1567.15002,   0.00000, 0.00000, 90.00000);
	CreateObject(9339, 1110.71448, -1315.07324, 1567.15002,   0.00000, 0.00000, 90.00000);
	CreateObject(9339, 1139.84070, -1315.03625, 1568.55005,   0.00000, 0.00000, 90.00000);
	CreateObject(9339, 1110.71448, -1315.07324, 1568.55005,   0.00000, 0.00000, 90.00000);
	CreateObject(9339, 1126.12927, -1314.98901, 1580.65002,   90.00000, 0.00000, 90.00000);
	CreateObject(9339, 1124.75024, -1314.98901, 1580.65002,   90.00000, 0.00000, 90.00000);
	CreateObject(9339, 1124.37097, -1314.98901, 1580.65002,   90.00000, 0.00000, 90.00000);
	CreateObject(18070, 1130.81116, -1318.92761, 1565.50000,   0.00000, 0.00000, -90.00000);
	CreateObject(14455, 1137.54077, -1320.13977, 1566.69995,   0.00000, 0.00000, 90.00000);
	CreateObject(1714, 1130.97644, -1317.79333, 1565.05933,   0.00000, 0.00000, -84.00000);
	CreateObject(1714, 1130.98633, -1320.10254, 1565.05933,   0.00000, 0.00000, -105.00000);
	CreateObject(2608, 1129.12927, -1317.83008, 1565.65002,   0.00000, 0.00000, 90.00000);
	CreateObject(16154, 1135.60071, -1317.47229, 1565.05554,   0.00000, 0.00000, 90.00000);
	CreateObject(19446, 1127.05786, -1310.13892, 1566.75000,   0.00000, 0.00000, 0.00000);
	CreateObject(19446, 1123.59900, -1310.10291, 1566.75000,   0.00000, 0.00000, 0.00000);
	CreateObject(19446, 1118.86841, -1305.41052, 1566.75000,   0.00000, 0.00000, 90.00000);
	CreateObject(19446, 1131.87109, -1305.41052, 1566.75000,   0.00000, 0.00000, 90.00000);
	CreateObject(11008, 1138.98608, -1280.77502, 1571.90002,   0.00000, 0.00000, 180.00000);
	CreateObject(19446, 1106.21265, -1305.41052, 1566.75000,   0.00000, 0.00000, 90.00000);
	CreateObject(19384, 1112.58057, -1305.41052, 1566.75000,   0.00000, 0.00000, 90.00000);
	CreateObject(19446, 1144.41748, -1305.41052, 1566.75000,   0.00000, 0.00000, 90.00000);
	CreateObject(19384, 1138.19897, -1305.41052, 1566.75000,   0.00000, 0.00000, 90.00000);
	CreateObject(4724, 1125.83435, -1296.99707, 1566.90002,   0.00000, 0.00000, -135.00000);
	CreateObject(19446, 1139.09814, -1297.38367, 1566.75000,   0.00000, 0.00000, 0.00000);
	CreateObject(19384, 1139.10400, -1303.75000, 1566.75000,   0.00000, 0.00000, 0.00000);
	CreateObject(14782, 1143.46521, -1300.93750, 1566.00000,   0.00000, 0.00000, -90.00000);
	CreateObject(1523, 1138.94287, -1305.31836, 1565.04639,   0.00000, 0.00000, 180.00000);
	CreateObject(1523, 1138.94287, -1305.31836, 1565.04639,   0.00000, 0.00000, 180.00000);
	CreateObject(1523, 1113.31641, -1305.35754, 1565.04639,   0.00000, 0.00000, 180.00000);
	CreateObject(1523, 1138.91919, -1302.95288, 1565.04639,   0.00000, 0.00000, -90.00000);
	CreateObject(3394, 1143.17847, -1307.64954, 1565.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(3394, 1139.12817, -1314.39185, 1565.00000,   0.00000, 0.00000, -90.00000);
	CreateObject(3388, 1136.76501, -1314.46216, 1565.04993,   0.00000, 0.00000, 90.00000);
	CreateObject(3388, 1143.34985, -1310.00964, 1565.04993,   0.00000, 0.00000, 0.00000);
	CreateObject(1997, 1136.67883, -1306.81897, 1565.05359,   0.00000, 0.00000, 0.00000);
	CreateObject(1997, 1139.62207, -1306.56604, 1565.05359,   0.00000, 0.00000, 0.00000);
	CreateObject(3383, 1133.19470, -1314.00635, 1565.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(3383, 1128.05164, -1310.99048, 1565.00000,   0.00000, 0.00000, -90.00000);
	CreateObject(3388, 1127.71362, -1308.10522, 1565.04993,   0.00000, 0.00000, 180.00000);
	CreateObject(2690, 1143.63110, -1311.03833, 1566.50000,   0.00000, 0.00000, 0.00000);
	CreateObject(2603, 1122.35254, -1313.74866, 1565.50000,   0.00000, 0.00000, 0.00000);
	CreateObject(2603, 1119.44971, -1313.75049, 1565.50000,   0.00000, 0.00000, 0.00000);
	CreateObject(2603, 1116.88989, -1313.70825, 1565.50000,   0.00000, 0.00000, 0.00000);
	CreateObject(2603, 1113.86670, -1313.74255, 1565.50000,   0.00000, 0.00000, 0.00000);
	CreateObject(2603, 1110.63879, -1313.77185, 1565.50000,   0.00000, 0.00000, 0.00000);
	CreateObject(3395, 1132.27222, -1306.02100, 1565.05432,   0.00000, 0.00000, 90.00000);
	CreateObject(1726, 1120.11108, -1306.03247, 1565.04968,   0.00000, 0.00000, 0.00000);
	CreateObject(1726, 1116.56689, -1306.04407, 1565.04968,   0.00000, 0.00000, 0.00000);
	CreateObject(2315, 1120.46545, -1307.67017, 1565.05847,   0.00000, 0.00000, 0.00000);
	CreateObject(2315, 1116.80493, -1307.62134, 1565.05847,   0.00000, 0.00000, 0.00000);
	CreateObject(2596, 1114.23987, -1305.81091, 1567.26831,   0.00000, 0.00000, 0.00000);
	CreateObject(1738, 1107.66541, -1309.78845, 1565.59998,   0.00000, 0.00000, 90.00000);
	CreateObject(1808, 1110.97437, -1305.66614, 1565.05444,   0.00000, 0.00000, 0.00000);
	CreateObject(2146, 1108.67261, -1308.50500, 1565.50000,   0.00000, 0.00000, 47.00000);
	CreateObject(2146, 1118.93628, -1311.84729, 1565.50000,   0.00000, 0.00000, -47.00000);
	CreateObject(1209, 1121.73450, -1298.08411, 1565.04919,   0.00000, 0.00000, 0.00000);
	CreateObject(1209, 1123.40894, -1298.09338, 1565.04919,   0.00000, 0.00000, 0.00000);
	CreateObject(1726, 1124.94812, -1298.35938, 1565.05676,   0.00000, 0.00000, 0.00000);
	CreateObject(1726, 1126.90735, -1300.84814, 1565.05676,   0.00000, 0.00000, 180.00000);
	CreateObject(932, 1109.14709, -1313.92310, 1565.05774,   0.00000, 0.00000, 127.00000);
	CreateObject(932, 1108.98706, -1298.34302, 1565.05774,   0.00000, 0.00000, 47.00000);
	CreateObject(932, 1111.00232, -1298.48621, 1565.05774,   0.00000, 0.00000, 47.00000);
	CreateObject(932, 1112.73425, -1298.64722, 1565.05774,   0.00000, 0.00000, 47.00000);
	CreateObject(8411, 1130.61035, -1300.12781, 1633.40002,   0.00000, 180.00000, 0.00000);
	CreateObject(3440, 1127.19336, -1335.72192, 1567.05396,   0.00000, 0.00000, 0.00000);
	CreateObject(3440, 1123.83691, -1335.66956, 1567.05396,   0.00000, 0.00000, 0.00000);
	CreateObject(2591, 1121.99805, -1335.53210, 1567.00000,   0.00000, 0.00000, 90.00000);
	CreateObject(2591, 1128.92969, -1335.59949, 1567.00000,   0.00000, 0.00000, -90.00000);
	CreateObject(1536, 1124.05408, -1335.72888, 1565.05811,   0.00000, 0.00000, 0.00000);
	CreateObject(1536, 1127.00781, -1335.67883, 1565.05811,   0.00000, 0.00000, 180.00000);
	CreateObject(2591, 1125.53015, -1335.77417, 1570.19995,   0.00000, 0.00000, 90.00000);

//Terminal
	CreateObject(8411, 1296.48633, -1321.68396, -52.40000,   0.00000, 0.00000, 90.00000);
	CreateObject(8411, 1319.97192, -1321.61023, -52.42000,   0.00000, 0.00000, 90.00000);
	CreateObject(8411, 1296.46326, -1353.28284, -52.41000,   0.00000, 0.00000, 90.00000);
	CreateObject(8411, 1319.97485, -1353.76233, -52.40000,   0.00000, 0.00000, 90.00000);
	CreateObject(3567, 1295.15430, -1303.05737, 12.00000,   0.00000, 0.00000, 105.00000);
	CreateObject(3567, 1297.07251, -1309.62488, 12.00000,   0.00000, 0.00000, 105.00000);
	CreateObject(3567, 1297.30200, -1316.62073, 12.00000,   0.00000, 0.00000, 105.00000);
	CreateObject(3567, 1297.24365, -1323.43494, 12.00000,   0.00000, 0.00000, 105.00000);
	CreateObject(3567, 1297.06567, -1330.37756, 12.00000,   0.00000, 0.00000, 105.00000);
	CreateObject(3567, 1297.09082, -1337.40588, 12.00000,   0.00000, 0.00000, 105.00000);
	CreateObject(3567, 1294.57422, -1345.53870, 12.00000,   0.00000, 0.00000, 105.00000);
	CreateObject(3567, 1298.71594, -1304.42859, 11.99990,   0.00000, 0.00000, 0.00000);
	CreateObject(3567, 1298.61218, -1322.09570, 11.99990,   0.00000, 0.00000, 0.00000);
	CreateObject(3567, 1298.39087, -1338.45154, 11.99990,   0.00000, 0.00000, 0.00000);
	CreateObject(3567, 1298.38403, -1343.69421, 11.99900,   0.00000, 0.00000, 0.00000);
	CreateObject(2774, 1284.67224, -1294.48755, 5.00000,   0.00000, 180.00000, 0.00000);
	CreateObject(2774, 1284.69214, -1354.19873, 5.00000,   0.00000, 180.00000, 0.00000);
	CreateObject(2774, 1284.60828, -1307.54333, 17.50000,   0.00000, 90.00000, -90.00000);
	CreateObject(2774, 1296.96021, -1294.57825, 17.50000,   0.00000, 90.00000, 0.00000);
	CreateObject(2774, 1284.60828, -1330.98975, 17.50000,   0.00000, 90.00000, -90.00000);
	CreateObject(2774, 1284.65332, -1341.77271, 17.50000,   0.00000, 90.00000, 90.00000);
	CreateObject(2774, 1296.90942, -1354.12439, 17.50000,   0.00000, 90.00000, 0.00000);
	CreateObject(3567, 1294.37305, -1299.90308, 12.00000,   0.00000, 0.00000, 105.00000);
	CreateObject(3567, 1294.25427, -1298.95471, 11.99900,   0.00000, 0.00000, 90.00000);
	CreateObject(3567, 1294.28174, -1295.74390, 11.99900,   0.00000, 0.00000, 90.00000);
	CreateObject(19449, 1290.19446, -1294.09399, 14.30000,   0.00000, 0.00000, 90.00000);
	CreateObject(19449, 1295.81628, -1294.11047, 14.30000,   0.00000, 0.00000, 90.00000);
	CreateObject(18980, 1299.91785, -1306.54822, 12.75000,   90.00000, 0.00000, 0.00000);
	CreateObject(18980, 1299.93958, -1331.11792, 12.75000,   90.00000, 0.00000, 0.00000);
	CreateObject(19449, 1290.21118, -1353.90405, 14.30000,   0.00000, 0.00000, 90.00000);
	CreateObject(19449, 1295.83240, -1353.93372, 14.30000,   0.00000, 0.00000, 90.00000);
	CreateObject(18980, 1299.93958, -1341.41064, 12.75000,   90.00000, 0.00000, 0.00000);
	CreateObject(18980, 1300.27026, -1306.53479, 13.00000,   90.00000, 0.00000, 0.00000);
	CreateObject(18980, 1300.27026, -1331.15613, 13.00000,   90.00000, 0.00000, 0.00000);
	CreateObject(18980, 1300.27026, -1341.44287, 13.00000,   90.00000, 0.00000, 0.00000);
	CreateObject(8434, 1305.80664, -1323.95166, -0.87000,   0.00000, -90.00000, 0.00000);
	CreateObject(19449, 1290.19446, -1294.09399, 15.00000,   0.00000, 0.00000, 90.00000);
	CreateObject(3567, 1294.36047, -1351.13062, 11.99900,   0.00000, 0.00000, 90.00000);
	CreateObject(3567, 1294.38074, -1347.89331, 12.00000,   0.00000, 0.00000, 90.00000);
	CreateObject(3567, 1294.34644, -1352.19006, 12.00000,   0.00000, 0.00000, 90.00000);
	CreateObject(19449, 1290.21118, -1353.90405, 15.30000,   0.00000, 0.00000, 90.00000);
	CreateObject(8434, 1316.15601, -1323.95313, -0.87000,   0.00000, -90.00000, 180.00000);
	CreateObject(2774, 1308.23242, -1294.56714, 17.50000,   0.00000, -90.00000, 0.00000);
	CreateObject(2774, 1320.82520, -1294.40149, 5.20000,   0.00000, 180.00000, 0.00000);
	CreateObject(2774, 1308.30737, -1354.14624, 17.50000,   0.00000, -90.00000, 0.00000);
	CreateObject(2774, 1320.74915, -1354.18958, 5.20000,   0.00000, 180.00000, 0.00000);
	CreateObject(2774, 1320.75085, -1341.79541, 17.50000,   0.00000, 90.00000, 90.00000);
	CreateObject(2774, 1320.78479, -1318.22815, 17.50000,   0.00000, 90.00000, 90.00000);
	CreateObject(2774, 1320.79968, -1306.78528, 17.50000,   0.00000, -90.00000, 90.00000);
	CreateObject(2774, 1300.99011, -1341.25647, 17.50000,   0.00000, 90.00000, 90.00000);
	CreateObject(2774, 1300.94580, -1318.08630, 17.50000,   0.00000, 90.00000, 90.00000);
	CreateObject(2774, 1300.92773, -1307.12073, 17.50000,   0.00000, -90.00000, 90.00000);
	CreateObject(19449, 1295.83240, -1353.93372, 15.30000,   0.00000, 0.00000, 90.00000);
	CreateObject(3440, 1300.62378, -1321.61047, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(3440, 1300.64905, -1324.26697, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(3440, 1300.59094, -1303.86646, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19449, 1295.81628, -1294.11047, 15.30000,   0.00000, 0.00000, 90.00000);
	CreateObject(3440, 1300.54785, -1300.99194, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(3440, 1300.68066, -1344.43542, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(3440, 1300.58533, -1347.28186, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1300.60828, -1350.57385, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1300.62439, -1340.86316, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1300.62451, -1334.28345, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1300.62158, -1327.71436, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1300.59021, -1318.03247, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1300.55164, -1311.42371, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1300.53406, -1297.51526, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1300.56714, -1307.40186, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1304.15332, -1293.98975, 15.00000,   0.00000, 0.00000, 90.00000);
	CreateObject(3440, 1300.65723, -1294.12219, 14.90000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1310.79272, -1293.95813, 15.00000,   0.00000, 0.00000, 90.00000);
	CreateObject(19325, 1316.87378, -1293.96106, 15.00000,   0.00000, 0.00000, 90.00000);
	CreateObject(3440, 1307.33252, -1294.06653, 14.90000,   0.00000, 0.00000, 0.00000);
	CreateObject(3440, 1312.83752, -1294.07617, 14.90000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1321.32410, -1298.39526, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1321.33826, -1305.02429, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1321.35046, -1311.66443, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1321.34338, -1318.28284, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1321.33337, -1324.89404, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1321.35803, -1331.53186, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1321.34021, -1338.07654, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1321.35046, -1344.69165, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1321.34631, -1351.24426, 15.00000,   0.00000, 0.00000, 0.00000);
	CreateObject(3440, 1313.24231, -1354.08740, 14.90000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1316.71106, -1353.95142, 15.00000,   0.00000, 0.00000, 90.00000);
	CreateObject(19325, 1309.76782, -1353.90869, 15.00000,   0.00000, 0.00000, 90.00000);
	CreateObject(3440, 1306.24841, -1353.99414, 14.90000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1303.05225, -1353.92883, 15.00000,   0.00000, 0.00000, 90.00000);
	CreateObject(643, 1318.68396, -1307.82104, 13.99000,   0.00000, 0.00000, -40.00000);
	CreateObject(643, 1315.14709, -1299.67761, 13.99000,   0.00000, 0.00000, 0.00000);
	CreateObject(643, 1318.40393, -1303.40112, 13.99000,   0.00000, 0.00000, 113.00000);
	CreateObject(643, 1315.92200, -1310.14917, 13.99000,   0.00000, 0.00000, -47.00000);
	CreateObject(643, 1315.77356, -1305.63440, 13.99000,   0.00000, 0.00000, -84.00000);
	CreateObject(643, 1319.15881, -1298.40540, 13.99000,   0.00000, 0.00000, 33.00000);
	CreateObject(2535, 1317.23352, -1294.57275, 13.50500,   0.00000, 0.00000, 0.00000);
	CreateObject(2535, 1316.26465, -1294.57275, 13.50500,   0.00000, 0.00000, 0.00000);
	CreateObject(2536, 1315.30493, -1294.57275, 13.50760,   0.00000, 0.00000, 0.00000);
	CreateObject(2539, 1318.21057, -1294.57275, 13.50750,   0.00000, 0.00000, 0.00000);
	CreateObject(2538, 1319.16760, -1294.57275, 13.50650,   0.00000, 0.00000, 0.00000);
	CreateObject(1843, 1320.75330, -1313.50989, 13.50110,   0.00000, 0.00000, -90.00000);
	CreateObject(2531, 1320.69946, -1305.70337, 13.49440,   0.00000, 0.00000, -90.00000);
	CreateObject(1209, 1320.96289, -1303.81348, 13.50580,   0.00000, 0.00000, -90.00000);
	CreateObject(1844, 1320.75403, -1310.48035, 13.50420,   0.00000, 0.00000, -90.00000);
	CreateObject(19325, 1312.74097, -1297.40442, 15.50000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1312.72461, -1303.94812, 15.50000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1312.70935, -1310.54089, 15.50000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1315.79785, -1316.68005, 15.50000,   0.00000, 0.00000, 90.00000);
	CreateObject(3440, 1312.76074, -1313.66418, 15.50000,   0.00000, 0.00000, 0.00000);
	CreateObject(3440, 1312.55359, -1316.56177, 15.50000,   0.00000, 0.00000, 0.00000);
	CreateObject(19325, 1318.08423, -1316.65491, 15.50000,   0.00000, 0.00000, 90.00000);
	CreateObject(3440, 1321.23730, -1316.72571, 14.90000,   0.00000, 0.00000, 0.00000);
	CreateObject(2412, 1312.56885, -1313.76282, 13.50350,   0.00000, 0.00000, 90.00000);
	CreateObject(2412, 1312.54138, -1315.72156, 13.50350,   0.00000, 0.00000, 90.00000);
	CreateObject(1984, 1315.05212, -1315.39136, 13.50303,   0.00000, 0.00000, 0.00000);
	CreateObject(7313, 1301.72388, -1329.04236, 15.60000,   0.00000, 0.00000, 90.00000);
	CreateObject(7313, 1287.04736, -1352.84790, 15.60000,   0.00000, 0.00000, 164.00000);
	CreateObject(1256, 1317.71118, -1328.70862, 14.20000,   0.00000, 0.00000, 0.00000);
	CreateObject(14445, 1304.62366, -1324.85815, 13.80000,   0.00000, 0.00000, 90.00000);
	CreateObject(1256, 1317.70044, -1337.03662, 14.20000,   0.00000, 0.00000, 0.00000);
	CreateObject(1256, 1317.73083, -1344.78162, 14.20000,   0.00000, 0.00000, 0.00000);
	CreateObject(1256, 1304.73242, -1336.27234, 14.20000,   0.00000, 0.00000, 0.00000);
	CreateObject(1256, 1304.70642, -1351.12329, 14.20000,   0.00000, 0.00000, 0.00000);
	CreateObject(1256, 1304.63025, -1328.25854, 14.20000,   0.00000, 0.00000, 0.00000);
	CreateObject(1256, 1310.63306, -1306.03674, 14.20000,   0.00000, 0.00000, 0.00000);
	CreateObject(1726, 1301.38770, -1299.15454, 13.50080,   0.00000, 0.00000, 90.00000);
	CreateObject(1726, 1305.52783, -1297.22302, 13.50080,   0.00000, 0.00000, -90.00000);
	CreateObject(2315, 1303.26221, -1298.87402, 13.50360,   0.00000, 0.00000, 90.00000);
	CreateObject(1444, 1302.73999, -1320.66431, 14.30000,   0.00000, 0.00000, 156.00000);
	CreateObject(9525, 1305.33020, -1312.14771, 11.00000,   0.00000, 0.00000, 105.00000);
	CreateObject(9525, 1304.71631, -1312.34106, 13.00000,   0.00000, 0.00000, 156.00000);
	CreateObject(9525, 1304.65540, -1313.58496, 12.00000,   0.00000, 0.00000, 222.00000);
	CreateObject(8661, 1310.38245, -1315.23535, 17.40000,   180.00000, 0.00000, 90.00000);
	CreateObject(8661, 1310.92639, -1334.93054, 17.40000,   180.00000, 0.00000, 90.00000);
	CreateObject(8661, 1310.51233, -1315.27478, 18.10000,   0.00000, 0.00000, 90.00000);
	CreateObject(8661, 1310.31519, -1333.55310, 18.10000,   0.00000, 0.00000, 90.00000);
	CreateObject(3872, 1294.74646, -1299.54102, 13.00000,   0.00000, 0.00000, 40.00000);
	CreateObject(3872, 1294.75916, -1349.04224, 13.00000,   0.00000, 0.00000, -40.00000);
	CreateObject(6160, 1311.55273, -1332.30737, 12.50000,   0.00000, 0.00000, -90.00000);
	CreateObject(620, 1311.10120, -1374.27478, 12.36719,   356.85840, 0.00000, 3.14159);
	CreateObject(9345, 1327.82739, -1338.02258, 12.57780,   0.00000, 0.00000, 90.00000);
	CreateObject(9345, 1326.71045, -1314.75439, 12.57780,   0.00000, 0.00000, -90.00000);
	CreateObject(6160, 1297.25000, -1320.72546, 12.50000,   0.00000, 0.00000, -90.00000);
	CreateObject(620, 1297.39258, -1363.25671, 12.36719,   356.85840, 0.00000, 3.14159);
	CreateObject(620, 1312.06689, -1363.89783, 12.36719,   356.85840, 0.00000, 2.12159);
	CreateObject(620, 1297.39258, -1363.25671, 12.36719,   356.85840, 0.00000, 3.14159);
	CreateObject(620, 1312.06689, -1363.89783, 12.36719,   356.85840, 0.00000, 2.12159);
	CreateObject(620, 1303.31885, -1362.98401, 12.36719,   356.85840, 0.00000, 3.14159);


	return 1;
}

public OnGameModeExit()
{
    IsADealerCar[DealerCars[0]] = false;
	IsADealerCar[DealerCars[1]] = false;
	IsADealerCar[DealerCars[2]] = false;
	IsADealerCar[DealerCars[3]] = false;
	IsADealerCar[DealerCars[4]] = false;
	IsADealerCar[DealerCars[5]] = false;
	IsADealerCar[DealerCars[6]] = false;
	IsADealerCar[DealerCars[7]] = false;
	CarPrice[DealerCars[0]] = 0;
	CarPrice[DealerCars[1]] = 0;
	CarPrice[DealerCars[2]] = 0;
	CarPrice[DealerCars[3]] = 0;
	CarPrice[DealerCars[4]] = 0;
	CarPrice[DealerCars[5]] = 0;
	CarPrice[DealerCars[6]] = 0;
	CarPrice[DealerCars[7]] = 0;
	DestroyVehicle(DealerCars[0]);
	DestroyVehicle(DealerCars[1]);
	DestroyVehicle(DealerCars[2]);
	DestroyVehicle(DealerCars[3]);
	DestroyVehicle(DealerCars[4]);
	DestroyVehicle(DealerCars[5]);
	DestroyVehicle(DealerCars[6]);
	DestroyVehicle(DealerCars[7]);
	Delete3DTextLabel(DealerCar[0]);
	Delete3DTextLabel(DealerCar[1]);
	Delete3DTextLabel(DealerCar[2]);
	Delete3DTextLabel(DealerCar[3]);
	Delete3DTextLabel(DealerCar[4]);
	Delete3DTextLabel(DealerCar[5]);
	Delete3DTextLabel(DealerCar[6]);
	Delete3DTextLabel(DealerCar[7]);
	return 1;
}
forward CargarCoches(playerid);
public CargarCoches(playerid) {
	new file[256], name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, name, sizeof(name));
	format(file,sizeof(file),"Archivos de Coches/%s.ini",name);
	if(dini_Exists(file))
	{
	    VehicleInfo[playerid][Model] = dini_Int(file, "Model");
	    VehicleInfo[playerid][Price] = dini_Int(file, "Price");
	    VehicleInfo[playerid][CarX] = dini_Float(file, "X");
	    VehicleInfo[playerid][CarY] = dini_Float(file, "Y");
	    VehicleInfo[playerid][CarZ] = dini_Float(file, "Z");
	    VehicleInfo[playerid][CarRot] = dini_Float(file, "Rot");
	    VehicleInfo[playerid][Locked] = dini_Int(file, "Locked");
		VehicleInfo[playerid][mod1] = dini_Int(file, "mod1");
		VehicleInfo[playerid][mod2] = dini_Int(file, "mod2");
		VehicleInfo[playerid][mod3] = dini_Int(file, "mod3");
		VehicleInfo[playerid][mod4] = dini_Int(file, "mod4");
		VehicleInfo[playerid][mod5] = dini_Int(file, "mod5");
		VehicleInfo[playerid][mod6] = dini_Int(file, "mod6");
		VehicleInfo[playerid][mod7] = dini_Int(file, "mod7");
		VehicleInfo[playerid][mod8] = dini_Int(file, "mod8");
		VehicleInfo[playerid][mod9] = dini_Int(file, "mod9");
		VehicleInfo[playerid][mod10] = dini_Int(file, "mod10");
		VehicleInfo[playerid][mod11] = dini_Int(file, "mod11");
		VehicleInfo[playerid][mod12] = dini_Int(file, "mod12");
		VehicleInfo[playerid][mod13] = dini_Int(file, "mod13");
		VehicleInfo[playerid][mod14] = dini_Int(file, "mod14");
		VehicleInfo[playerid][mod15] = dini_Int(file, "mod15");
		VehicleInfo[playerid][mod16] = dini_Int(file, "mod16");
		VehicleInfo[playerid][mod17] = dini_Int(file, "mod17");
		VehicleInfo[playerid][paintjob] = dini_Int(file, "paintjob");
		VehicleInfo[playerid][colora] = dini_Int(file, "color1");
		VehicleInfo[playerid][colorb] = dini_Int(file, "color2");
		Vehicle[playerid] = CreateVehicle(VehicleInfo[playerid][Model], VehicleInfo[playerid][CarX], VehicleInfo[playerid][CarY], VehicleInfo[playerid][CarZ], VehicleInfo[playerid][CarRot], -1, -1, 3600000);
    	if(VehicleInfo[playerid][mod1]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod1]); }
		if(VehicleInfo[playerid][mod2]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod2]); }
		if(VehicleInfo[playerid][mod3]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod3]); }
		if(VehicleInfo[playerid][mod4]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod4]); }
		if(VehicleInfo[playerid][mod5]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod5]); }
		if(VehicleInfo[playerid][mod6]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod6]); }
		if(VehicleInfo[playerid][mod7]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod7]); }
		if(VehicleInfo[playerid][mod8]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod8]); }
		if(VehicleInfo[playerid][mod9]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod9]); }
		if(VehicleInfo[playerid][mod10]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod10]); }
		if(VehicleInfo[playerid][mod11]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod11]); }
		if(VehicleInfo[playerid][mod12]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod12]); }
		if(VehicleInfo[playerid][mod13]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod13]); }
		if(VehicleInfo[playerid][mod14]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod14]); }
		if(VehicleInfo[playerid][mod15]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod15]); }
		if(VehicleInfo[playerid][mod16]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod16]); }
		if(VehicleInfo[playerid][mod17]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod17]); }
		if(VehicleInfo[playerid][colora]!=0 || VehicleInfo[playerid][colorb]!=0)
		{
			ChangeVehicleColor(Vehicle[playerid],VehicleInfo[playerid][colora],VehicleInfo[playerid][colorb]);
		}
		if(VehicleInfo[playerid][paintjob]!=0)
		{
		    ChangeVehiclePaintjob(Vehicle[playerid],VehicleInfo[playerid][paintjob]);
  		}
		new tmp[256]; tmp = dini_Get(file, "Plate");
		gPlayerHasCar[playerid] = 1;
		VehOwned[Vehicle[playerid]] = 1;
		OwnerID[Vehicle[playerid]] = playerid;
		SetVehicleParamsForPlayer(Vehicle[playerid], playerid, 0, VehicleInfo[playerid][Locked]);
		gVehLocked[Vehicle[playerid]] = VehicleInfo[playerid][Locked];
		SetVehicleNumberPlate(Vehicle[playerid], tmp);
		VehPlate[Vehicle[playerid]] = tmp;
		LoadTrunk(playerid);
	}
	return 1;
}
forward GuardarCoches(playerid);
public GuardarCoches(playerid) {
	new file[256], name[24];
    GetPlayerName(playerid, name, 24);
	format(file,sizeof(file),"Archivos de Coches/%s.ini",name);
	if(dini_Exists(file))
	{
	    dini_IntSet(file, "Model", GetVehicleModel(Vehicle[playerid]));
		dini_IntSet(file, "Price", VehicleInfo[playerid][Price]);
		dini_FloatSet(file, "X", VehicleInfo[playerid][CarX]);
		dini_FloatSet(file, "Y", VehicleInfo[playerid][CarY]);
		dini_FloatSet(file, "Z", VehicleInfo[playerid][CarZ]);
		dini_FloatSet(file, "Rot", VehicleInfo[playerid][CarRot]);
		dini_IntSet(file, "Locked", VehicleInfo[playerid][Locked]);
		dini_Set(file, "Plate", VehPlate[Vehicle[playerid]]);
		dini_IntSet(file, "mod1", VehicleInfo[playerid][mod1]);
		dini_IntSet(file, "mod2", VehicleInfo[playerid][mod2]);
		dini_IntSet(file, "mod3", VehicleInfo[playerid][mod3]);
		dini_IntSet(file, "mod4", VehicleInfo[playerid][mod4]);
		dini_IntSet(file, "mod5", VehicleInfo[playerid][mod5]);
		dini_IntSet(file, "mod6", VehicleInfo[playerid][mod6]);
		dini_IntSet(file, "mod7", VehicleInfo[playerid][mod7]);
		dini_IntSet(file, "mod8", VehicleInfo[playerid][mod8]);
		dini_IntSet(file, "mod9", VehicleInfo[playerid][mod9]);
		dini_IntSet(file, "mod10", VehicleInfo[playerid][mod10]);
		dini_IntSet(file, "mod11", VehicleInfo[playerid][mod11]);
		dini_IntSet(file, "mod12", VehicleInfo[playerid][mod12]);
		dini_IntSet(file, "mod13", VehicleInfo[playerid][mod13]);
		dini_IntSet(file, "mod14", VehicleInfo[playerid][mod14]);
		dini_IntSet(file, "mod15", VehicleInfo[playerid][mod15]);
		dini_IntSet(file, "mod16", VehicleInfo[playerid][mod16]);
		dini_IntSet(file, "mod17", VehicleInfo[playerid][mod17]);
		dini_IntSet(file, "paintjob", VehicleInfo[playerid][paintjob]);
		dini_IntSet(file, "color1", VehicleInfo[playerid][colora]);
		dini_IntSet(file, "color2", VehicleInfo[playerid][colorb]);
		DestroyVehicle(Vehicle[playerid]);
		SaveTrunk(playerid);
	}
	return 1;
}
public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	new User[MAX_PLAYER_NAME],Archivo[MAX_PLAYERS];
	GetPlayerName(playerid, User, sizeof(User));
	format(Archivo,sizeof(Archivo),"Archivos de usuarios/%s.ini",User);
	Mensaje(playerid, Gris,"Cargando... Espere por favor..");
	/* Registro y inicio.*/
	if(fexist(Archivo)) { Dialog(playerid, Inicio,DIALOG_STYLE_INPUT,"{FFFFFF}Inicio al servidor.","Ingres�  con tu contrase�a y In�cia","Iniciar","Salir");
	} else { Dialog(playerid, Registro,DIALOG_STYLE_INPUT,"{FFFFFF}Bienvenido","{FFFFFF}Eres nuevo , entonces tendr�s que crear\n\t una cuenta coloca una contrase�a.","Registrarme","Salir");
}
	return 1;
}

public OnPlayerConnect(playerid)
{
Jeringa[playerid] = 0; JeringaLista[playerid] = 0;
TextVelo2[playerid] = TextDrawCreate(575.000000, 410.000000, "%d");
TextDrawBackgroundColor(TextVelo2[playerid], 255);
TextDrawFont(TextVelo2[playerid], 3);
TextDrawLetterSize(TextVelo2[playerid], 0.310000, 1.499999);
TextDrawColor(TextVelo2[playerid], 1431655935);
TextDrawSetOutline(TextVelo2[playerid], 0);
TextDrawSetProportional(TextVelo2[playerid], 1);
TextDrawSetShadow(TextVelo2[playerid], 1);
TextDrawSetSelectable(TextVelo2[playerid], 0);

TextGas[playerid] = TextDrawCreate(600.000000, 425.000000, "%d");
TextDrawBackgroundColor(TextGas[playerid], 255);
TextDrawFont(TextGas[playerid], 3);
TextDrawLetterSize(TextGas[playerid], 0.210000, 0.799999);
TextDrawColor(TextGas[playerid], -1);
TextDrawSetOutline(TextGas[playerid], 0);
TextDrawSetProportional(TextGas[playerid], 1);
TextDrawSetShadow(TextGas[playerid], 1);
TextDrawSetSelectable(TextGas[playerid], 0);

CargarCoches(playerid);
BText1[playerid] = TextDrawCreate(189.000000, 8.000000, "NOMBRE DE LA CUENTA:");
TextDrawBackgroundColor(BText1[playerid], 255);
TextDrawFont(BText1[playerid], 2);
TextDrawLetterSize(BText1[playerid], 0.500000, 1.000000);
TextDrawColor(BText1[playerid], -1);
TextDrawSetOutline(BText1[playerid], 0);
TextDrawSetProportional(BText1[playerid], 1);
TextDrawSetShadow(BText1[playerid], 1);
TextDrawSetSelectable(BText1[playerid], 0);
	
TitTuto[playerid] = TextDrawCreate(242.000000, 209.000000, "- TITULO -");
TextDrawBackgroundColor(TitTuto[playerid], 255);
TextDrawFont(TitTuto[playerid], 1);
TextDrawLetterSize(TitTuto[playerid], 0.500000, 1.000000);
TextDrawColor(TitTuto[playerid], 1431655935);
TextDrawSetOutline(TitTuto[playerid], 0);
TextDrawSetProportional(TitTuto[playerid], 1);
TextDrawSetShadow(TitTuto[playerid], 1);
TextDrawSetSelectable(TitTuto[playerid], 0);

TextoTuto[playerid] = TextDrawCreate(12.000000, 229.000000, "TEXTO1");
TextDrawBackgroundColor(TextoTuto[playerid], 255);
TextDrawFont(TextoTuto[playerid], 3);
TextDrawLetterSize(TextoTuto[playerid], 0.500000, 1.499999);
TextDrawColor(TextoTuto[playerid], -1);
TextDrawSetOutline(TextoTuto[playerid], 0);
TextDrawSetProportional(TextoTuto[playerid], 1);
TextDrawSetShadow(TextoTuto[playerid], 1);
TextDrawSetSelectable(TextoTuto[playerid], 0);
TicketC[playerid] = 0;
EnableStuntBonusForPlayer(playerid, 0);
//TERMINAL
RemoveBuildingForPlayer(playerid, 5928, 1309.9141, -1330.1328, 25.1875, 0.25);
RemoveBuildingForPlayer(playerid, 620, 1292.0000, -1374.2969, 12.3672, 0.25);
RemoveBuildingForPlayer(playerid, 620, 1300.5859, -1374.2969, 12.3672, 0.25);
RemoveBuildingForPlayer(playerid, 5704, 1309.9141, -1330.1328, 25.1875, 0.25);
//Hospital
RemoveBuildingForPlayer(playerid, 6106, 1226.9531, -1656.1563, 24.7734, 0.25);
RemoveBuildingForPlayer(playerid, 6196, 1225.3359, -1642.7500, 25.1016, 0.25);
RemoveBuildingForPlayer(playerid, 626, 1181.3125, -1665.4688, 14.7969, 0.25);
RemoveBuildingForPlayer(playerid, 1281, 1195.1797, -1661.5000, 13.3516, 0.25);
RemoveBuildingForPlayer(playerid, 1281, 1187.7422, -1661.4219, 13.3516, 0.25);
RemoveBuildingForPlayer(playerid, 6102, 1226.9531, -1656.1563, 24.7734, 0.25);
RemoveBuildingForPlayer(playerid, 647, 1237.5000, -1643.4297, 14.8516, 0.25);
RemoveBuildingForPlayer(playerid, 647, 1233.4688, -1643.4297, 14.8516, 0.25);
RemoveBuildingForPlayer(playerid, 647, 1245.5625, -1643.4297, 14.8516, 0.25);
RemoveBuildingForPlayer(playerid, 647, 1241.5313, -1643.4297, 14.8516, 0.25);
RemoveBuildingForPlayer(playerid, 626, 1258.5781, -1643.3672, 14.6016, 0.25);
RemoveBuildingForPlayer(playerid, 626, 1219.1172, -1640.4609, 28.4219, 0.25);
RemoveBuildingForPlayer(playerid, 626, 1231.3125, -1640.4609, 28.4219, 0.25);
RemoveBuildingForPlayer(playerid, 626, 1243.5078, -1640.4609, 28.4219, 0.25);
RemoveBuildingForPlayer(playerid, 626, 1255.7109, -1640.4609, 28.4219, 0.25);
RemoveBuildingForPlayer(playerid, 626, 1282.8281, -1639.9609, 28.4219, 0.25);
RemoveBuildingForPlayer(playerid, 626, 1211.6016, -1632.8672, 28.4219, 0.25);
RemoveBuildingForPlayer(playerid, 626, 1219.1172, -1632.8672, 28.4219, 0.25);
RemoveBuildingForPlayer(playerid, 626, 1231.3125, -1632.8672, 28.4219, 0.25);
RemoveBuildingForPlayer(playerid, 626, 1243.5078, -1632.8672, 28.4219, 0.25);
RemoveBuildingForPlayer(playerid, 626, 1255.7109, -1632.8672, 28.4219, 0.25);
RemoveBuildingForPlayer(playerid, 626, 1282.8281, -1619.8516, 28.4219, 0.25);
RemoveBuildingForPlayer(playerid, 626, 1282.8281, -1629.1094, 28.4219, 0.25);
RemoveBuildingForPlayer(playerid, 1297, 1292.1797, -1629.1016, 15.9063, 0.25);
//Swat
RemoveBuildingForPlayer(playerid, 1529, 1098.8125, -1292.5469, 17.1406, 0.25);
RemoveBuildingForPlayer(playerid, 5930, 1134.2500, -1338.0781, 23.1563, 0.25);
RemoveBuildingForPlayer(playerid, 5931, 1114.3125, -1348.1016, 17.9844, 0.25);
RemoveBuildingForPlayer(playerid, 5935, 1120.1563, -1303.4531, 18.5703, 0.25);
RemoveBuildingForPlayer(playerid, 5936, 1090.0547, -1310.5313, 17.5469, 0.25);
RemoveBuildingForPlayer(playerid, 5788, 1080.9844, -1305.5234, 16.3594, 0.25);
RemoveBuildingForPlayer(playerid, 5787, 1090.0547, -1310.5313, 17.5469, 0.25);
RemoveBuildingForPlayer(playerid, 5810, 1114.3125, -1348.1016, 17.9844, 0.25);
RemoveBuildingForPlayer(playerid, 5993, 1110.8984, -1328.8125, 13.8516, 0.25);
RemoveBuildingForPlayer(playerid, 5811, 1131.1953, -1380.4219, 17.0703, 0.25);
RemoveBuildingForPlayer(playerid, 5708, 1134.2500, -1338.0781, 23.1563, 0.25);
RemoveBuildingForPlayer(playerid, 617, 1178.6016, -1332.0703, 12.8906, 0.25);
RemoveBuildingForPlayer(playerid, 620, 1184.0078, -1343.2656, 12.5781, 0.25);
RemoveBuildingForPlayer(playerid, 5737, 1120.1563, -1303.4531, 18.5703, 0.25);
RemoveBuildingForPlayer(playerid, 618, 1177.7344, -1315.6641, 13.2969, 0.25);

//Ayunta
RemoveBuildingForPlayer(playerid, 4024, 1479.8672, -1790.3984, 56.0234, 0.25);
RemoveBuildingForPlayer(playerid, 4044, 1481.1875, -1785.0703, 22.3828, 0.25);
RemoveBuildingForPlayer(playerid, 4045, 1479.3359, -1802.2891, 12.5469, 0.25);
RemoveBuildingForPlayer(playerid, 4046, 1479.5234, -1852.6406, 24.5156, 0.25);
RemoveBuildingForPlayer(playerid, 4047, 1531.6328, -1852.6406, 24.5156, 0.25);
RemoveBuildingForPlayer(playerid, 1527, 1448.2344, -1755.8984, 14.5234, 0.25);
RemoveBuildingForPlayer(playerid, 4217, 1449.2500, -1852.5703, 22.3672, 0.25);
RemoveBuildingForPlayer(playerid, 713, 1407.1953, -1749.3125, 13.0938, 0.25);
RemoveBuildingForPlayer(playerid, 1266, 1482.0859, -1859.9688, 25.0391, 0.25);
RemoveBuildingForPlayer(playerid, 713, 1405.2344, -1821.1172, 13.1016, 0.25);
RemoveBuildingForPlayer(playerid, 620, 1417.9766, -1832.5313, 11.9844, 0.25);
RemoveBuildingForPlayer(playerid, 673, 1405.5781, -1831.6953, 12.3984, 0.25);
RemoveBuildingForPlayer(playerid, 1265, 1465.4766, -1848.2500, 12.9922, 0.25);
RemoveBuildingForPlayer(playerid, 1372, 1466.9453, -1847.8438, 12.6641, 0.25);
RemoveBuildingForPlayer(playerid, 1372, 1419.7344, -1846.5469, 12.6641, 0.25);
RemoveBuildingForPlayer(playerid, 1265, 1420.4297, -1845.3438, 12.9844, 0.25);
RemoveBuildingForPlayer(playerid, 1372, 1419.6953, -1844.2031, 12.6641, 0.25);
RemoveBuildingForPlayer(playerid, 1220, 1420.4922, -1842.4375, 12.9297, 0.25);
RemoveBuildingForPlayer(playerid, 1220, 1419.7266, -1842.8516, 12.9297, 0.25);
RemoveBuildingForPlayer(playerid, 1230, 1419.6719, -1842.0313, 12.9766, 0.25);
RemoveBuildingForPlayer(playerid, 4170, 1433.9531, -1844.4063, 21.4219, 0.25);
RemoveBuildingForPlayer(playerid, 700, 1447.1016, -1832.5000, 12.9141, 0.25);
RemoveBuildingForPlayer(playerid, 1231, 1432.3047, -1832.9141, 15.2891, 0.25);
RemoveBuildingForPlayer(playerid, 4174, 1435.7656, -1823.6641, 15.1797, 0.25);
RemoveBuildingForPlayer(playerid, 620, 1456.3984, -1832.5313, 11.9844, 0.25);
RemoveBuildingForPlayer(playerid, 673, 1464.0938, -1831.8828, 12.3984, 0.25);
RemoveBuildingForPlayer(playerid, 1260, 1482.0859, -1859.9688, 25.0391, 0.25);
RemoveBuildingForPlayer(playerid, 4004, 1479.5234, -1852.6406, 24.5156, 0.25);
RemoveBuildingForPlayer(playerid, 1357, 1487.6953, -1848.1094, 12.8125, 0.25);
RemoveBuildingForPlayer(playerid, 1372, 1486.2109, -1848.1250, 12.6641, 0.25);
RemoveBuildingForPlayer(playerid, 1372, 1468.0625, -1847.7891, 12.6641, 0.25);
RemoveBuildingForPlayer(playerid, 1230, 1488.9219, -1848.2734, 12.9766, 0.25);
RemoveBuildingForPlayer(playerid, 1231, 1480.0313, -1832.9141, 15.2891, 0.25);
RemoveBuildingForPlayer(playerid, 3997, 1479.3359, -1802.2891, 12.5469, 0.25);
RemoveBuildingForPlayer(playerid, 4171, 1503.3984, -1848.3359, 21.4609, 0.25);
RemoveBuildingForPlayer(playerid, 620, 1504.8438, -1832.5313, 11.9844, 0.25);
RemoveBuildingForPlayer(playerid, 673, 1499.0469, -1832.2734, 12.8828, 0.25);
RemoveBuildingForPlayer(playerid, 1265, 1515.3828, -1850.0547, 12.9844, 0.25);
RemoveBuildingForPlayer(playerid, 1265, 1514.4219, -1850.0391, 12.9922, 0.25);
RemoveBuildingForPlayer(playerid, 700, 1512.9453, -1832.3516, 13.4688, 0.25);
RemoveBuildingForPlayer(playerid, 1372, 1516.6875, -1850.0547, 12.6641, 0.25);
RemoveBuildingForPlayer(playerid, 700, 1404.9141, -1765.2656, 12.9141, 0.25);
RemoveBuildingForPlayer(playerid, 4173, 1427.2734, -1756.1797, 15.0000, 0.25);
RemoveBuildingForPlayer(playerid, 673, 1415.3125, -1748.5625, 12.3984, 0.25);
RemoveBuildingForPlayer(playerid, 620, 1429.5313, -1748.4219, 12.9063, 0.25);
RemoveBuildingForPlayer(playerid, 700, 1438.0313, -1747.9375, 13.4453, 0.25);
RemoveBuildingForPlayer(playerid, 620, 1447.9063, -1748.2266, 12.9063, 0.25);
RemoveBuildingForPlayer(playerid, 4002, 1479.8672, -1790.3984, 56.0234, 0.25);
RemoveBuildingForPlayer(playerid, 3980, 1481.1875, -1785.0703, 22.3828, 0.25);
RemoveBuildingForPlayer(playerid, 4003, 1481.0781, -1747.0313, 33.5234, 0.25);
RemoveBuildingForPlayer(playerid, 620, 1516.0000, -1748.6016, 13.0078, 0.25);
RemoveBuildingForPlayer(playerid, 4048, 1531.6328, -1852.6406, 24.5156, 0.25);
RemoveBuildingForPlayer(playerid, 1372, 1538.9453, -1849.2734, 12.6641, 0.25);
RemoveBuildingForPlayer(playerid, 1230, 1538.8359, -1847.6250, 13.6719, 0.25);
RemoveBuildingForPlayer(playerid, 1220, 1538.3906, -1847.9297, 12.9297, 0.25);
RemoveBuildingForPlayer(playerid, 1220, 1539.1016, -1847.2969, 12.9297, 0.25);
RemoveBuildingForPlayer(playerid, 1231, 1529.2891, -1832.9141, 15.2891, 0.25);
RemoveBuildingForPlayer(playerid, 620, 1549.5313, -1832.3125, 12.8828, 0.25);
RemoveBuildingForPlayer(playerid, 673, 1555.6641, -1830.5938, 13.0234, 0.25);
RemoveBuildingForPlayer(playerid, 4175, 1524.4141, -1823.8516, 15.1797, 0.25);
RemoveBuildingForPlayer(playerid, 700, 1554.8203, -1816.1563, 13.4766, 0.25);
RemoveBuildingForPlayer(playerid, 673, 1553.2578, -1764.8125, 12.7969, 0.25);
RemoveBuildingForPlayer(playerid, 4172, 1534.7656, -1756.1797, 15.0000, 0.25);
RemoveBuildingForPlayer(playerid, 620, 1533.2656, -1749.0234, 12.8047, 0.25);
RemoveBuildingForPlayer(playerid, 673, 1522.1641, -1748.5703, 13.0234, 0.25);
RemoveBuildingForPlayer(playerid, 700, 1553.7031, -1747.9375, 13.4063, 0.25);






SetPlayerColor(playerid, COLOR_BLANCO);
EstadoDuty[playerid] = false;
NInfo[playerid][pOrina] = 0;
NInfo[playerid][pHambre] = 0;
TextDrawShowForPlayer(playerid, Tit1);
TextDrawShowForPlayer(playerid, Tit2);
TextDrawShowForPlayer(playerid, Tit3);/*
TextDrawShowForPlayer(playerid, Box1);
TextDrawShowForPlayer(playerid, Box2);*/
Rentado[playerid] = 0;
RentadoV[playerid] = 0;
for(new i = 0; i < MAX_PLAYERS; i++) ShowPlayerNameTagForPlayer(playerid, i, false);
NivelT[playerid] = TextDrawCreate(469.000000, 431.000000, "1"); TextDrawBackgroundColor(NivelT[playerid], 255); TextDrawFont(NivelT[playerid], 2); TextDrawLetterSize(NivelT[playerid], 0.200000, 1.000000);
TextDrawColor(NivelT[playerid], -16711681); TextDrawSetOutline(NivelT[playerid], 0); TextDrawSetProportional(NivelT[playerid], 1); TextDrawSetShadow(NivelT[playerid], 1);
CompletadosT[playerid] = TextDrawCreate(260.000000, 431.000000, "2"); TextDrawBackgroundColor(CompletadosT[playerid], 255); TextDrawFont(CompletadosT[playerid], 2); TextDrawSetProportional(CompletadosT[playerid], 1);
TextDrawLetterSize(CompletadosT[playerid], 0.200000, 1.000000); TextDrawColor(CompletadosT[playerid], -16711681); TextDrawSetOutline(CompletadosT[playerid], 0); TextDrawSetShadow(CompletadosT[playerid], 1);

return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
Aceptollamada[Llamaaluser[playerid]] = 0;
Mensaje(Llamaaluser[playerid],COLOR_BLANCO,"((El usuario se desconect�). Y se termin� la llamada.");
Llamaaluser[playerid] = false;
DestroyProgressBar(OrinaB[playerid]);
OrinaB[playerid] = INVALID_BAR_ID;

DestroyProgressBar(HambreB[playerid]);
HambreB[playerid] = INVALID_BAR_ID;
return 1;
}

public OnPlayerSpawn(playerid)
{
	Mensaje(playerid,COLOR_BLANCO,"");
	Mensaje(playerid,COLOR_BLANCO,"");
	Mensaje(playerid,COLOR_BLANCO,"");
	Mensaje(playerid,COLOR_BLANCO,"");
	Mensaje(playerid,COLOR_BLANCO,"");
	Mensaje(playerid,COLOR_BLANCO,"");
	Mensaje(playerid,COLOR_BLANCO,""); Mensaje(playerid,COLOR_BLANCO,""); Mensaje(playerid,COLOR_BLANCO,""); Mensaje(playerid,COLOR_BLANCO,"");
	Mensaje(playerid,COLOR_BLANCO,""); Mensaje(playerid,COLOR_BLANCO,""); Mensaje(playerid,COLOR_BLANCO,""); Mensaje(playerid,COLOR_BLANCO,"");
	Mensaje(playerid,COLOR_BLANCO,""); Mensaje(playerid,COLOR_BLANCO,""); Mensaje(playerid,COLOR_BLANCO,""); Mensaje(playerid,COLOR_BLANCO,"");
   /* MostrarProgress(playerid);*/
    Mensaje(playerid,COLOR_BLANCO,"Para m�s informaci�n: {0084FF}/{FFFFFF}Consulta {0084FF}/{FFFFFF}Masinfo {0084FF}[Informaci�n Completa]{FFFFFF} .");
	TextDrawHideForPlayer(playerid, Tit1);
	TextDrawHideForPlayer(playerid, Tit2);
	TextDrawHideForPlayer(playerid, Tit3);/*
	TextDrawHideForPlayer(playerid, Box1);
	TextDrawHideForPlayer(playerid, Box2);*/
	TDSFP(playerid,MRP); TDSFP(playerid,LogoSV);/*
	TextDrawShowForPlayer(playerid, BoxAbajo);
	TextDrawShowForPlayer(playerid, TNivel);
	TextDrawShowForPlayer(playerid, Trabajoscompletos);
	TextDrawShowForPlayer(playerid, NivelT[playerid]);
	TextDrawShowForPlayer(playerid, CompletadosT[playerid]);*/
	SetPlayerSkin(playerid,PI[playerid][Skin]);
	if(PI[playerid][Registroc] == 0) {
	SetPlayerPos(playerid,1642.0999800,-2334.5000000,13.5000000);
	SetTimer("rtuto",3000,false);
	}
	if(PI[playerid][Registroc] == 1) {
    SetPlayerPos(playerid,PI[playerid][PX],PI[playerid][PY],PI[playerid][PZ]);
    }

	return 1;
}
forward Muriotiempo(playerid);
public Muriotiempo(playerid) {
PPos(playerid,1554.8000500,-1675.6999500,16.8000000);
SendClientMessage(playerid,COLOR_BLANCO, "Doctor: te recuperaste.");
return 1;
}
forward rtuto(playerid);
public rtuto(playerid) { PI[playerid][Registroc] = 1; return 1; }
public OnPlayerDeath(playerid, killerid, reason)
{
	SetTimer("Muriotiempo",5000,0);
    SetTimerEx("ReiniciarHambre", 5000, 0, "d", playerid);
    if(IsPlayerInAnyVehicle(killerid))
    {
     SendClientMessage(killerid,0xAA3333AA, "�Qu� haces? , No se puede hacer TK en �ste servidor!");
    }
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	if(Destroyed[vehicleid] == true)
	{
        new file[256], name[MAX_PLAYER_NAME];
    	GetPlayerName(OwnerID[vehicleid], name, sizeof(name));
		format(file,sizeof(file),"Archivos de Coches/%s.ini",name);
		if(dini_Exists(file))
		{
	    	VehicleInfo[OwnerID[vehicleid]][Model] = dini_Int(file, "Model");
	    	VehicleInfo[OwnerID[vehicleid]][Price] = dini_Int(file, "Price");
	    	VehicleInfo[OwnerID[vehicleid]][CarX] = dini_Float(file, "X");
	    	VehicleInfo[OwnerID[vehicleid]][CarY] = dini_Float(file, "Y");
	    	VehicleInfo[OwnerID[vehicleid]][CarZ] = dini_Float(file, "Z");
	    	VehicleInfo[OwnerID[vehicleid]][CarRot] = dini_Float(file, "Rot");
	    	VehicleInfo[OwnerID[vehicleid]][Locked] = dini_Int(file, "Locked");
			VehicleInfo[OwnerID[vehicleid]][mod1] = dini_Int(file, "mod1");
			VehicleInfo[OwnerID[vehicleid]][mod2] = dini_Int(file, "mod2");
			VehicleInfo[OwnerID[vehicleid]][mod3] = dini_Int(file, "mod3");
			VehicleInfo[OwnerID[vehicleid]][mod4] = dini_Int(file, "mod4");
			VehicleInfo[OwnerID[vehicleid]][mod5] = dini_Int(file, "mod5");
			VehicleInfo[OwnerID[vehicleid]][mod6] = dini_Int(file, "mod6");
			VehicleInfo[OwnerID[vehicleid]][mod7] = dini_Int(file, "mod7");
			VehicleInfo[OwnerID[vehicleid]][mod8] = dini_Int(file, "mod8");
			VehicleInfo[OwnerID[vehicleid]][mod9] = dini_Int(file, "mod9");
			VehicleInfo[OwnerID[vehicleid]][mod10] = dini_Int(file, "mod10");
			VehicleInfo[OwnerID[vehicleid]][mod11] = dini_Int(file, "mod11");
			VehicleInfo[OwnerID[vehicleid]][mod12] = dini_Int(file, "mod12");
			VehicleInfo[OwnerID[vehicleid]][mod13] = dini_Int(file, "mod13");
			VehicleInfo[OwnerID[vehicleid]][mod14] = dini_Int(file, "mod14");
			VehicleInfo[OwnerID[vehicleid]][mod15] = dini_Int(file, "mod15");
			VehicleInfo[OwnerID[vehicleid]][mod16] = dini_Int(file, "mod16");
			VehicleInfo[OwnerID[vehicleid]][mod17] = dini_Int(file, "mod17");
			VehicleInfo[OwnerID[vehicleid]][paintjob] = dini_Int(file, "paintjob");
			VehicleInfo[OwnerID[vehicleid]][colora] = dini_Int(file, "color1");
			VehicleInfo[OwnerID[vehicleid]][colorb] = dini_Int(file, "color2");
			Vehicle[OwnerID[vehicleid]] = CreateVehicle(VehicleInfo[OwnerID[vehicleid]][Model], VehicleInfo[OwnerID[vehicleid]][CarX], VehicleInfo[OwnerID[vehicleid]][CarY], VehicleInfo[OwnerID[vehicleid]][CarZ], VehicleInfo[OwnerID[vehicleid]][CarRot], -1, -1, 3600000);
    		if(VehicleInfo[OwnerID[vehicleid]][mod1]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod1]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod2]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod2]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod3]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod3]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod4]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod4]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod5]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod5]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod6]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod6]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod7]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod7]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod8]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod8]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod9]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod9]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod10]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod10]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod11]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod11]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod12]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod12]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod13]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod13]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod14]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod14]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod15]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod15]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod16]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod16]); }
			if(VehicleInfo[OwnerID[vehicleid]][mod17]!=0) { AddVehicleComponent(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][mod17]); }
			if(VehicleInfo[OwnerID[vehicleid]][colora]!=0 || VehicleInfo[OwnerID[vehicleid]][colorb]!=0)
			{
				ChangeVehicleColor(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][colora],VehicleInfo[OwnerID[vehicleid]][colorb]);
			}
			if(VehicleInfo[OwnerID[vehicleid]][paintjob]!=0)
			{
		    	ChangeVehiclePaintjob(Vehicle[OwnerID[vehicleid]],VehicleInfo[OwnerID[vehicleid]][paintjob]);
  			}
			new tmp[256]; tmp = dini_Get(file, "Plate");
			gPlayerHasCar[OwnerID[vehicleid]] = 1;
			VehOwned[Vehicle[OwnerID[vehicleid]]] = 1;
			SetVehicleParamsForPlayer(Vehicle[OwnerID[vehicleid]], OwnerID[vehicleid], 0, VehicleInfo[OwnerID[vehicleid]][Locked]);
			gVehLocked[Vehicle[OwnerID[vehicleid]]] = VehicleInfo[OwnerID[vehicleid]][Locked];
			SetVehicleNumberPlate(Vehicle[OwnerID[vehicleid]], tmp);
			VehPlate[Vehicle[OwnerID[vehicleid]]] = tmp;
			Destroyed[vehicleid] = false;
		}
	}
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
    new string[32], playername[MAX_PLAYER_NAME];
	GetPlayerName(killerid, playername, sizeof(playername));
	format(string, sizeof(string), "Archivos de Coches/Maletero/%s.ini", playername);
	new File: hFile = fopen(string, io_write);
	if(hFile)
	{
	    // Vehicle destroyed, too bad...
	    fclose(hFile);
		fremove(string);
	}
	Destroyed[vehicleid] = true;
	new file[256], name[24];
    GetPlayerName(killerid, name, 24);
	format(file,sizeof(file),"Archivos de Coches/%s.ini",name);
	if(dini_Exists(file))
	{
	    dini_IntSet(file, "Model", GetVehicleModel(Vehicle[killerid]));
		dini_IntSet(file, "Price", VehicleInfo[killerid][Price]);
		dini_FloatSet(file, "X", VehicleInfo[killerid][CarX]);
		dini_FloatSet(file, "Y", VehicleInfo[killerid][CarY]);
		dini_FloatSet(file, "Z", VehicleInfo[killerid][CarZ]);
		dini_FloatSet(file, "Rot", VehicleInfo[killerid][CarRot]);
		dini_IntSet(file, "Locked", VehicleInfo[killerid][Locked]);
		dini_Set(file, "Plate", VehPlate[Vehicle[killerid]]);
		dini_IntSet(file, "mod1", VehicleInfo[killerid][mod1]);
		dini_IntSet(file, "mod2", VehicleInfo[killerid][mod2]);
		dini_IntSet(file, "mod3", VehicleInfo[killerid][mod3]);
		dini_IntSet(file, "mod4", VehicleInfo[killerid][mod4]);
		dini_IntSet(file, "mod5", VehicleInfo[killerid][mod5]);
		dini_IntSet(file, "mod6", VehicleInfo[killerid][mod6]);
		dini_IntSet(file, "mod7", VehicleInfo[killerid][mod7]);
		dini_IntSet(file, "mod8", VehicleInfo[killerid][mod8]);
		dini_IntSet(file, "mod9", VehicleInfo[killerid][mod9]);
		dini_IntSet(file, "mod10", VehicleInfo[killerid][mod10]);
		dini_IntSet(file, "mod11", VehicleInfo[killerid][mod11]);
		dini_IntSet(file, "mod12", VehicleInfo[killerid][mod12]);
		dini_IntSet(file, "mod13", VehicleInfo[killerid][mod13]);
		dini_IntSet(file, "mod14", VehicleInfo[killerid][mod14]);
		dini_IntSet(file, "mod15", VehicleInfo[killerid][mod15]);
		dini_IntSet(file, "mod16", VehicleInfo[killerid][mod16]);
		dini_IntSet(file, "mod17", VehicleInfo[killerid][mod17]);
		dini_IntSet(file, "paintjob", VehicleInfo[killerid][paintjob]);
		dini_IntSet(file, "color1", VehicleInfo[killerid][colora]);
		dini_IntSet(file, "color2", VehicleInfo[killerid][colorb]);
	}
	SetVehicleToRespawn(vehicleid);
	return 1;
}
stock IsACar(vehicleid)
{
    switch(GetVehicleModel(vehicleid))
    {
        case 400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,
		418,419,420,421,422,423,424,426,427,428,429,431,432,433,434,435,436,437,438,
		439,440,442,443,444,445,451,455,456,458,459,466,467,470,474,475,477,478,479,
		480,482,483,486,489,490,491,492,494,495,496,498,499,500,502,503,504,505,506,
		507,508,514,515,516,517,518,524,525,526,527,528,529,533,534,535,536,540,541,
		542,543,544,545,546,547,549,550,551,552,554,555,556,557,558,559,560,561,562,
		565,566,567,568,573,575,576,578,579,580,582,585,587,588, 589,596,597,598,599,
		600,601,602,603,604,605,609: return 1;
    }
    return 1;
}

public SaveTrunk(playerid)
{
	if(IsPlayerConnected(playerid))
	{
		if(gPlayerHasCar[playerid] == 1)
		{
			new string[32];
			new playername[MAX_PLAYER_NAME];
			GetPlayerName(playerid, playername, sizeof(playername));
			format(string, sizeof(string), "Archivos de Coches/Maletero/%s.ini", playername);
			new File: hFile = fopen(string, io_write);
			if(hFile)
			{
                new var[64];
                format(var, 32, "Slot1=%i\n", TrunkInfo[Vehicle[playerid]][Slot1]);
                fwrite(hFile, var);
                format(var, 32, "Slot2=%i\n", TrunkInfo[Vehicle[playerid]][Slot2]);
                fwrite(hFile, var);
                format(var, 32, "Slot3=%i\n", TrunkInfo[Vehicle[playerid]][Slot3]);
                fwrite(hFile, var);
                format(var, 32, "Slot4=%i\n", TrunkInfo[Vehicle[playerid]][Slot4]);
                fwrite(hFile, var);
                format(var, 32, "Slot5=%i\n", TrunkInfo[Vehicle[playerid]][Slot5]);
                fwrite(hFile, var);
                format(var, 32, "Slot6=%i\n", TrunkInfo[Vehicle[playerid]][Slot6]);
                fwrite(hFile, var);
                format(var, 32, "Slot7=%i\n", TrunkInfo[Vehicle[playerid]][Slot7]);
                fwrite(hFile, var);
                format(var, 32, "Slot8=%i\n", TrunkInfo[Vehicle[playerid]][Slot8]);
                fwrite(hFile, var);
                format(var, 32, "Slot9=%i\n", TrunkInfo[Vehicle[playerid]][Slot9]);
                fwrite(hFile, var);
                format(var, 32, "Slot10=%i\n", TrunkInfo[Vehicle[playerid]][Slot10]);
                fwrite(hFile, var);
                format(var, 32, "Ammo1=%i\n", TrunkInfo[Vehicle[playerid]][Ammo1]);
                fwrite(hFile, var);
                format(var, 32, "Ammo2=%i\n", TrunkInfo[Vehicle[playerid]][Ammo2]);
                fwrite(hFile, var);
                format(var, 32, "Ammo3=%i\n", TrunkInfo[Vehicle[playerid]][Ammo3]);
                fwrite(hFile, var);
                format(var, 32, "Ammo4=%i\n", TrunkInfo[Vehicle[playerid]][Ammo4]);
                fwrite(hFile, var);
                format(var, 32, "Ammo5=%i\n", TrunkInfo[Vehicle[playerid]][Ammo5]);
                fwrite(hFile, var);
                format(var, 32, "Ammo6=%i\n", TrunkInfo[Vehicle[playerid]][Ammo6]);
                fwrite(hFile, var);
                format(var, 32, "Ammo7=%i\n", TrunkInfo[Vehicle[playerid]][Ammo7]);
                fwrite(hFile, var);
                format(var, 32, "Ammo8=%i\n", TrunkInfo[Vehicle[playerid]][Ammo8]);
                fwrite(hFile, var);
                format(var, 32, "Ammo9=%i\n", TrunkInfo[Vehicle[playerid]][Ammo9]);
                fwrite(hFile, var);
                format(var, 32, "Ammo10=%i\n", TrunkInfo[Vehicle[playerid]][Ammo10]);
                fwrite(hFile, var);
                fclose(hFile);
			}
		}
	}
	return 1;
}

public LoadTrunk(playerid)
{
    new string[128], Playername[24];
    GetPlayerName(playerid, Playername, 24);
	format(string, sizeof(string), "Archivos de Coches/Maletero/%s.ini", Playername);
	new File: UserFile = fopen(string, io_read);
	if(UserFile)
    {
	    new key[256], val[256], Data[256];
		while(fread(UserFile, Data, sizeof(Data)))
		{
  			key = ini_GetKey(Data);
	 		if( strcmp( key , "Slot1" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Slot1] = strval(val);
			}
			if( strcmp( key , "Slot2" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Slot2] = strval(val);
			}
			if( strcmp( key , "Slot3" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Slot3] = strval(val);
			}
			if( strcmp( key , "Slot4" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Slot4] = strval(val);
			}
			if( strcmp( key , "Slot5" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Slot5] = strval(val);
			}
			if( strcmp( key , "Slot6" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Slot6] = strval(val);
			}
			if( strcmp( key , "Slot7" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Slot7] = strval(val);
			}
			if( strcmp( key , "Slot8" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Slot8] = strval(val);
			}
			if( strcmp( key , "Slot9" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Slot9] = strval(val);
			}
			if( strcmp( key , "Slot10" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Slot10] = strval(val);
			}
			if( strcmp( key , "Ammo1" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Ammo1] = strval(val);
			}
			if( strcmp( key , "Ammo2" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Ammo2] = strval(val);
			}
			if( strcmp( key , "Ammo3" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Ammo3] = strval(val);
			}
			if( strcmp( key , "Ammo4" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Ammo4] = strval(val);
			}
			if( strcmp( key , "Ammo5" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Ammo5] = strval(val);
			}
			if( strcmp( key , "Ammo6" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Ammo6] = strval(val);
			}
			if( strcmp( key , "Ammo7" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Ammo7] = strval(val);
			}
			if( strcmp( key , "Ammo8" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Ammo8] = strval(val);
			}
			if( strcmp( key , "Ammo9" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Ammo9] = strval(val);
			}
			if( strcmp( key , "Ammo10" , true ) == 0 )
	 		{
		 		val = ini_GetValue(Data);
			 	TrunkInfo[Vehicle[playerid]][Ammo10] = strval(val);
			}
		}
		fclose(UserFile);
	}
	return 1;
}

public RemovePlayerWeapon(playerid, weaponid)
{
	new plyWeapons[12] = 0;
	new plyAmmo[12] = 0;
	for(new slot = 0; slot != 12; slot++)
	{
		new wep, ammo;
		GetPlayerWeaponData(playerid, slot, wep, ammo);

		if(wep != weaponid && ammo != 0)
		{
			GetPlayerWeaponData(playerid, slot, plyWeapons[slot], plyAmmo[slot]);
		}
	}
	ResetPlayerWeapons(playerid);
	for(new slot = 0; slot != 12; slot++)
	{
	    if(plyAmmo[slot] != 0)
	    {
			GivePlayerWeapon(playerid, plyWeapons[slot], plyAmmo[slot]);
		}
	}
	return 1;
}
public OnPlayerText(playerid, text[])
{
if(!IsPlayerConnected(playerid)) return 0;/*
new mensaje[128];*/
new nombre[MAX_PLAYER_NAME];
GetPlayerName(playerid, nombre, sizeof(nombre));
if(Redactando[playerid] == 1) {
new String[150];
format(String,sizeof(String),"[Noticiero-LS] %s comenta: %s.",nombre,text);
SendClientMessage(playerid,COLOR_BLANCO,String);
return 0;
}
if(Aceptollamada[playerid] == 1) {
new String[150];
format(String,sizeof(String),"[Llamada t�lefonica] escucha: %s.",text);
Mensaje(Llamaaluser[playerid],COLOR_BLANCO,String);
format(String,sizeof(String),"[Llamada t�lefonica] tu dices: %s.",text);
Mensaje(playerid,COLOR_BLANCO,String);

return 0;
}
new mensaje[128];
format(mensaje, 128, "%s dice: %s",nombre,text);
ProxDetector(20.0, playerid, mensaje,0xE6E6E6E6,0xC8C8C8C8,0xAAAAAAAA,0x8C8C8C8C,0x6E6E6E6E);
return 0;
}

public OnPlayerCommandUse(playerid, cmdtext[], bool:existe)
{
    if(existe != true) return SendClientMessage(playerid, Gris, "CMD:{FFFFFF} Introduciste un comando incorrecto.");

    return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{


    if(Motorencendido[playerid] == 0) { Mensaje(playerid,Gris,"Atenci�n:{FFFFFF} El motor del coche est� apagado.Coloca{555555} /prender"); }

    if(CAvion2(vehicleid)){ if(PI[playerid][Trabajo] == 2) { Dialog(playerid,DTrabajoAvion,DIALOG_STYLE_LIST,"","Trabajar\nSalir del coche","Elegir","");  }  else Quitarcoche(playerid); }
    
    if(Basurero2(vehicleid)){  if(PI[playerid][Trabajo] == 1) { Dialog(playerid,DTrabajoBasurero,DIALOG_STYLE_LIST,"","Trabajar\nSalir del coche","Elegir","");  }  else Quitarcoche(playerid); }
    
    if(Bus2(vehicleid)){ if(PI[playerid][Trabajo] == 3) { Dialog(playerid,DTrabajoBus,DIALOG_STYLE_LIST,"","Trabajar\nSalir del coche","Elegir","");  }  else Quitarcoche(playerid); }
	if(CosechadoraDrogas(vehicleid)){ if(PI[playerid][Trabajo] == 4) { }  else Quitarcoche(playerid); }
	if(CCamionero(vehicleid)){ if(PI[playerid][Trabajo] == 5) { }  else Quitarcoche(playerid); }

/*	if(Rentavehiculos(vehicleid)) {
	if(Rentado[playerid] == 0 || RentadoV[vehicleid] == 0) {
	Dialog(playerid,RentarCocheD,DIALOG_STYLE_MSGBOX,"Contrato de renta.","\t �Deseas rentar �ste veh�culo?\n\n\tValor a pagar: $300\n El contrato es de 15 d�as.(15 Min IC).","S�","No");
	}
	else if(RentadoV[playerid] == 1 || Rentado[playerid] == vehicleid) {
	Mensaje(playerid,COLOR_BLANCO,"Est�s rentado �ste veh�culo.");
 	}
	}
	if(vehicleid == InfoCoche[vehicleid][Comprado] == 1) {
	Mensaje(playerid,COLOR_BLANCO,"Este coche tiene due�o");
	} else Quitarcoche(playerid);
		*/

	
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	TextDrawHideForPlayer(playerid,TextGas[playerid]);
	TextDrawHideForPlayer(playerid,TextVelo2[playerid]);
	TextDrawHideForPlayer(playerid,TextVelo1);
	TextDrawHideForPlayer(playerid,BoxVelo1);
	TextDrawHideForPlayer(playerid,BoxVelo2);
	TextDrawHideForPlayer(playerid,EMarihuana1);
	TextDrawHideForPlayer(playerid,EMarihuana2);
	TextDrawHideForPlayer(playerid,EMarihuana3);
	TextDrawHideForPlayer(playerid,ECocaina);
	
	KillTimer(MostrarVel[playerid]);
	return 1;
}
forward Entrovelocimetro(playerid);
public Entrovelocimetro(playerid) {
MostrarVel[playerid] = SetTimerEx("VVehiculo2", 100, true, "ii", playerid, GetPlayerVehicleID(playerid));
TextDrawShowForPlayer(playerid,TextVelo1);
TextDrawShowForPlayer(playerid,TextVelo2[playerid]);
TextDrawShowForPlayer(playerid,BoxVelo2);
TextDrawShowForPlayer(playerid,BoxVelo1);
TextDrawShowForPlayer(playerid,TextGas[playerid]);
BarGas[playerid] = CreateProgressBar(539.00, 428.00, 56.50, 5.19, -1611661153, 100.0);
ShowProgressBarForPlayer(playerid, BarGas[playerid]);
return 1;
}
forward VVehiculo2(Usuario,Vehi);
public VVehiculo2(Usuario,Vehi) {
new string[50];	format(string, sizeof(string), "%d ~w~KM/H", VelocidadVehiculo(Usuario));
TextDrawSetString(TextVelo2[Usuario], string);
return 1; }
public OnPlayerStateChange(playerid, newstate, oldstate)
{
    switch(GetPlayerState(playerid)) {
    case PLAYER_STATE_DRIVER: {
    SetTimer("Entrovelocimetro",1000,0);
    }
    case PLAYER_STATE_ONFOOT, PLAYER_STATE_PASSENGER: {
	TextDrawHideForPlayer(playerid,TextGas[playerid]);
	TextDrawHideForPlayer(playerid,TextVelo2[playerid]);
	TextDrawHideForPlayer(playerid,TextVelo1);
	TextDrawHideForPlayer(playerid,BoxVelo1);
	TextDrawHideForPlayer(playerid,BoxVelo2);
	DestroyProgressBar(BarGas[playerid]);
 	BarGas[playerid] = INVALID_BAR_ID;
	KillTimer(MostrarVel[playerid]);
    }
    }
    new vehicleid = GetPlayerVehicleID(playerid);
	if(newstate == PLAYER_STATE_DRIVER)
	{
		if(Rentavehiculos(vehicleid)) {
			if(Rentado[playerid] == 0 || RentadoV[vehicleid] == 0) {
				Dialog(playerid,RentarCocheD,DIALOG_STYLE_MSGBOX,"Contrato de renta.","\t �Deseas rentar �ste veh�culo?\n\n\tValor a pagar: $300\n El contrato es de 15 d�as.(15 Min IC).","S�","No");
			}
			else if(RentadoV[playerid] == 1 || Rentado[playerid] == vehicleid) {
				Mensaje(playerid,COLOR_BLANCO,"Est�s rentado �ste veh�culo.");
 		}
	}
	
	
	//_______________________________________________
	    new veh = GetPlayerVehicleID(playerid);
		if(VehOwned[veh] == 0)
		{
			if(IsADealerCar[veh] == 1) 
			{
				new string[128];
				format(string, sizeof(string), "�Quieres comprar el veh�culo %s a $%i?", GetVehicleNameFromID(veh), CarPrice[veh]);
			    ShowPlayerDialog(playerid, ConceCompra, DIALOG_STYLE_MSGBOX, "Concesionario.", string, "Yes", "No");
			    return 1;
   			}
		}
		else if(VehOwned[veh] == 1)
		{
		    new string[128];/*
		    GetPlayerName(OwnerID[veh], owner, sizeof(owner));*/
			format(string, sizeof(string), "�ste coche modelo %s es de un usuario.", GetVehicleNameFromID(veh));
   			SendClientMessage(playerid, 0xFFFFFFAA, string);
			return 1;
		}
	}
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{

	/* Trabajo: -Bus-*/
/*	if(TrabajoBus[playerid] == 1) {
	Checkpoint(playerid,0.5,1004.0000000,2256.0000000,10.3000000);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'.");
	TrabajoBus[playerid] = 2;
	}
	else if(TrabajoBasurero[playerid] == 2) {
	Checkpoint(playerid,0.5,1081.6999500,1189.6999500,10.3000000);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'.");
	TrabajoBus[playerid] = 3;
	}
	else if(TrabajoBasurero[playerid] == 3) {
	Checkpoint(playerid,0.5,2074.8000500,1665.9000200,10.3000000);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'.");
	TrabajoBus[playerid] = 4;
	}
	else if(TrabajoBasurero[playerid] == 4) {
	Checkpoint(playerid,0.5,2842.1999500,1343.3000500,10.4000000);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'.");
	TrabajoBus[playerid] = 5;
	}
	else if(TrabajoBasurero[playerid] == 5) {
	Mensaje(playerid,COLOR_BLANCO,"- Trabajo completado - ");
	TrabajoBus[playerid] = 0;
	GivePlayerMoney(playerid, 2300);
	PI[playerid][TCompletado] ++;
	}
*/
	if(RCosechadora[playerid] == 1) {
	Checkpoint(playerid,-995.0000000,-1629.6999500,76.0000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'.");
	RCosechadora[playerid] = 2;
	ControlP(playerid,0);
	SetTimer("CosT",3000,0);
	}
	else if(RCosechadora[playerid] == 2) {
	Checkpoint(playerid,-984.4000200,-1620.4000200,76.0000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'.");
	RCosechadora[playerid] = 3;
	ControlP(playerid,0);
	SetTimer("CosT",3000,0);
	}
	else if(RCosechadora[playerid] == 3) {
	Checkpoint(playerid,-1022.2999900,-1613.5999800,76.0000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'.");
	RCosechadora[playerid] = 4;
	ControlP(playerid,0);
    SetTimer("CosT",3000,0);
	}
	else if(RCosechadora[playerid] == 4) {
	Checkpoint(playerid,-1024.0000000,-1604.1999500,76.0000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'.");
	RCosechadora[playerid] = 5;
	ControlP(playerid,0);
	SetTimer("CosT",3000,0);
	}
	else if(RCosechadora[playerid] == 5) {
	Checkpoint(playerid,-978.5000000,-1605.3000500,76.0000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'.");
	RCosechadora[playerid] = 6;
	ControlP(playerid,0);
	SetTimer("CosT",3000,0);
	}
	else if(RCosechadora[playerid] == 6) {
	Checkpoint(playerid,-1105.5999800,-1621.6999500,76.0000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'{FFFFFF}, para guardar la cosechadora.");
	RCosechadora[playerid] = 7;
	ControlP(playerid,0);
	SetTimer("CosT",3000,0);
	}
	else if(RCosechadora[playerid] == 7) {
	Mensaje(playerid,COLOR_BLANCO,"Conseguiste{00C71E} $80{FFFFFF} , por cosechar las drogas.");
	GuardarDrogas(1,Marihuana+30);
	GivePlayerMoney(playerid,80);
	GuardarDrogas(2,Marihuana+30);
	RCosechadora[playerid] = 0;
	Quitarcoche(playerid);
	DCheckpoint(playerid);
	}
	if(PI[playerid][Trabajo] == 5) {
	if(CamionTrabajo[playerid] == 1) {
	SetTimer("DescargaCamion",10000,0);
	ControlP(playerid,0);
	new String[200],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
	format(String, sizeof(String), "[/Me] %s Descarga el cami�n.", Nombre);
	ProxDetector(30.0, playerid, String, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//

	}
	else if(CamionTrabajo[playerid] == 2) {
	SetTimer("DescargaCamion",10000,0);
	ControlP(playerid,0);
	new String[200],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
	format(String, sizeof(String), "[/Me] %s Descarga el cami�n.", Nombre);
	ProxDetector(30.0, playerid, String, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//

	}
	}
	else if(TerminoCamion[playerid] == 1) {
	Mensaje(playerid,COLOR_BLANCO,"Se te ha pagado{00C71E} $100{FFFFFF} , por entregar mercader�a.");
	Quitarcoche(playerid);
	TerminoCamion[playerid] = 0;
	GivePlayerMoney(playerid,100);
	}
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}
public OnPlayerModelSelection(playerid, response, listid, modelid)
{
if(listid == skinlist)
{
if(response)
{
if(modelid <= 100) {
SendClientMessage(playerid, COLOR_BLANCO, "La prenda que has elegido vale: {00E308}$100{FFFFFF}.");
}
else if(modelid > 100) {
SendClientMessage(playerid, COLOR_BLANCO, "La prenda que has elegido vale: {00E308}$150{FFFFFF}.");
}
}
return 1;
}
return 1;
}
public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	new mods = InitComponents(componentid);
	if(IsPlayerInVehicle(playerid, Vehicle[playerid]))
	{
		switch(mods)
		{
			case 1: { VehicleInfo[playerid][mod1] = componentid; }
			case 2: { VehicleInfo[playerid][mod2] = componentid; }
			case 3: { VehicleInfo[playerid][mod3] = componentid; }
			case 4: { VehicleInfo[playerid][mod4] = componentid; }
			case 5: { VehicleInfo[playerid][mod5] = componentid; }
			case 6: { VehicleInfo[playerid][mod6] = componentid; }
			case 7: { VehicleInfo[playerid][mod7] = componentid; }
			case 8: { VehicleInfo[playerid][mod8] = componentid; }
			case 9: { VehicleInfo[playerid][mod9] = componentid; }
			case 10: { VehicleInfo[playerid][mod10] = componentid; }
			case 11: { VehicleInfo[playerid][mod11] = componentid; }
			case 12: { VehicleInfo[playerid][mod12] = componentid; }
			case 13: { VehicleInfo[playerid][mod13] = componentid; }
			case 14: { VehicleInfo[playerid][mod14] = componentid; }
			case 15: { VehicleInfo[playerid][mod15] = componentid; }
			case 16: { VehicleInfo[playerid][mod16] = componentid; }
			case 17: { VehicleInfo[playerid][mod17] = componentid; }
		}
	}
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	if(IsPlayerInVehicle(playerid, Vehicle[playerid]))
	{
	    if(GetVehicleModel(Vehicle[playerid]) == 483)
	    {
			switch(paintjobid)
			{
	    		case 0: VehicleInfo[playerid][paintjob] = 0;
	    	}
  		}
  		if(GetVehicleModel(Vehicle[playerid]) == 534)
	    {
	   		switch(paintjobid)
			{
	    		case 0: VehicleInfo[playerid][paintjob] = 0;
	    		case 1: VehicleInfo[playerid][paintjob] = 1;
	    		case 2: VehicleInfo[playerid][paintjob] = 2;
	    	}
  		}
  		if(GetVehicleModel(Vehicle[playerid]) == 535)
	    {
	   		switch(paintjobid)
			{
	    		case 0: VehicleInfo[playerid][paintjob] = 0;
	    		case 1: VehicleInfo[playerid][paintjob] = 1;
	    		case 2: VehicleInfo[playerid][paintjob] = 2;
	    	}
  		}
  		if(GetVehicleModel(Vehicle[playerid]) == 536)
	    {
	   		switch(paintjobid)
			{
	    		case 0: VehicleInfo[playerid][paintjob] = 0;
	    		case 1: VehicleInfo[playerid][paintjob] = 1;
	    		case 2: VehicleInfo[playerid][paintjob] = 2;
	    	}
  		}
  		if(GetVehicleModel(Vehicle[playerid]) == 558)
	    {
	   		switch(paintjobid)
			{
	    		case 0: VehicleInfo[playerid][paintjob] = 0;
	    		case 1: VehicleInfo[playerid][paintjob] = 1;
	    		case 2: VehicleInfo[playerid][paintjob] = 2;
	    	}
  		}
  		if(GetVehicleModel(Vehicle[playerid]) == 559)
	    {
	   		switch(paintjobid)
			{
	    		case 0: VehicleInfo[playerid][paintjob] = 0;
	    		case 1: VehicleInfo[playerid][paintjob] = 1;
	    		case 2: VehicleInfo[playerid][paintjob] = 2;
	    	}
  		}
  		if(GetVehicleModel(Vehicle[playerid]) == 560)
	    {
	   		switch(paintjobid)
			{
	    		case 0: VehicleInfo[playerid][paintjob] = 0;
	    		case 1: VehicleInfo[playerid][paintjob] = 1;
	    		case 2: VehicleInfo[playerid][paintjob] = 2;
	    	}
  		}
  		if(GetVehicleModel(Vehicle[playerid]) == 561)
	    {
	   		switch(paintjobid)
			{
	    		case 0: VehicleInfo[playerid][paintjob] = 0;
	    		case 1: VehicleInfo[playerid][paintjob] = 1;
	    		case 2: VehicleInfo[playerid][paintjob] = 2;
	    	}
  		}
  		if(GetVehicleModel(Vehicle[playerid]) == 562)
	    {
	   		switch(paintjobid)
			{
	    		case 0: VehicleInfo[playerid][paintjob] = 0;
	    		case 1: VehicleInfo[playerid][paintjob] = 1;
	    		case 2: VehicleInfo[playerid][paintjob] = 2;
	    	}
  		}
  		if(GetVehicleModel(Vehicle[playerid]) == 565)
	    {
	   		switch(paintjobid)
			{
	    		case 0: VehicleInfo[playerid][paintjob] = 0;
	    		case 1: VehicleInfo[playerid][paintjob] = 1;
	    		case 2: VehicleInfo[playerid][paintjob] = 2;
	    	}
  		}
  		if(GetVehicleModel(Vehicle[playerid]) == 567)
	    {
	   		switch(paintjobid)
			{
	    		case 0: VehicleInfo[playerid][paintjob] = 0;
	    		case 1: VehicleInfo[playerid][paintjob] = 1;
	    		case 2: VehicleInfo[playerid][paintjob] = 2;
	    	}
  		}
  		if(GetVehicleModel(Vehicle[playerid]) == 575)
	    {
	   		switch(paintjobid)
			{
	    		case 0: VehicleInfo[playerid][paintjob] = 0;
	    		case 1: VehicleInfo[playerid][paintjob] = 1;
	    	}
  		}
  		if(GetVehicleModel(Vehicle[playerid]) == 576)
	    {
	   		switch(paintjobid)
			{
	    		case 0: VehicleInfo[playerid][paintjob] = 0;
	    		case 1: VehicleInfo[playerid][paintjob] = 1;
	    		case 2: VehicleInfo[playerid][paintjob] = 2;
	    	}
  		}
	}
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
    if(IsPlayerInVehicle(playerid, Vehicle[playerid]))
	{
		VehicleInfo[playerid][colora] = color1;
		VehicleInfo[playerid][colorb] = color2;
	}
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}
public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
    if(_:clickedid != INVALID_TEXT_DRAW) // If the player clicked a valid textdraw, continue with the coding. (_:var removes the Text: tag, to avoid tag mismatch)
    {
    if(clickedid == BEstado) 
    {
		new String[120];
		format(String,sizeof(String),"Tu saldo del banco es: {53F900}$%d.",PI[playerid][Bancod]);
		Mensaje(playerid,COLOR_BLANCO,String);

    }
    else if(clickedid == BRetirar)
    {
        new String[190];
		format(String,sizeof(String),"-Retirar Monto completo (${45AE00}%d{FFFFFF}).\n-Retirar el numero deseable.",PI[playerid][Bancod]);
		Dialog(playerid,DSacar,DIALOG_STYLE_LIST,"Elige la acci�n.",String,"Elegir","Salir");
    }

    CancelSelectTextDraw(playerid);
	TextDrawHideForPlayer(playerid,BRetirar);
	TextDrawHideForPlayer(playerid,BText1[playerid]);
	TextDrawHideForPlayer(playerid,BEstado);
	TextDrawHideForPlayer(playerid,BBox1);
	TextDrawHideForPlayer(playerid,BBox2);
	TextDrawHideForPlayer(playerid,BBox3);
	TextDrawHideForPlayer(playerid,BBox4);
	TextDrawHideForPlayer(playerid,BRetirar);/*
	TextDrawHideForPlayer(playerid,BText2);
	TextDrawHideForPlayer(playerid,BText3);*/
	TextDrawHideForPlayer(playerid,BText4);
	TextDrawHideForPlayer(playerid,BText5);
	TextDrawHideForPlayer(playerid,BText6);
	}
 	return 1;
}
public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
    AD(playerid);
    new String[10],String2[5];
    format(String,sizeof(String),"%d",PI[playerid][TCompletado]);
    TextDrawSetString(CompletadosT[playerid],String);
	format(String2,sizeof(String2),"%d",GetPlayerScore(playerid));
    TextDrawSetString(NivelT[playerid],String2);
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
 	if(gVehLocked[vehicleid] == 1)
  	{
		SetVehicleParamsForPlayer(vehicleid, forplayerid, 0, 1);
		gVehLocked[vehicleid] = 1;
	}
  	else
  	{
  		SetVehicleParamsForPlayer(vehicleid, forplayerid, 0, 0);
		gVehLocked[vehicleid] = 0;
   	}
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
//_________________________________________________ TEL�FONO.
if(dialogid == D_Telefono) { if(response) {
if(listitem == 0) {
new String[400];
format(String,sizeof(String),"1- %s - %d\n2- %s - %d\n3- %s - %d\n4- %s - %d\n5- %s - %d",PI[playerid][ANom1],PI[playerid][AN1],PI[playerid][ANom2],PI[playerid][AN2],PI[playerid][ANom3],PI[playerid][AN3],PI[playerid][ANom4],PI[playerid][AN4],PI[playerid][ANom5],PI[playerid][AN5]);
Dialog(playerid,D_Agenda,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
}
}
}
if(dialogid == D_Agenda) { if(response) {
if(listitem == 0) {
new String[120];
format(String,sizeof(String),"- %s - %d\n- Cambiar Nombre\n- Cambiar N�mero.",PI[playerid][ANom1],PI[playerid][AN1]);
Dialog(playerid,D_Agenda1,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
}
if(listitem == 1) {
new String[120];
format(String,sizeof(String),"- %s - %d\n- Cambiar Nombre\n- Cambiar N�mero.",PI[playerid][ANom2],PI[playerid][AN2]);
Dialog(playerid,D_Agenda2,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
}
if(listitem == 2) {
new String[120];
format(String,sizeof(String),"- %s - %d\n- Cambiar Nombre\n- Cambiar N�mero.",PI[playerid][ANom3],PI[playerid][AN3]);
Dialog(playerid,D_Agenda3,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
}
if(listitem == 3) {
new String[120];
format(String,sizeof(String),"- %s - %d\n- Cambiar Nombre\n- Cambiar N�mero.",PI[playerid][ANom4],PI[playerid][AN4]);
Dialog(playerid,D_Agenda4,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
}
if(listitem == 4) {
new String[120];
format(String,sizeof(String),"- %s - %d\n- Cambiar Nombre\n- Cambiar N�mero.",PI[playerid][ANom5],PI[playerid][AN5]);
Dialog(playerid,D_Agenda5,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
}
}
}
if(dialogid == D_Agenda1) { if(response) {
if(listitem == 0) {
new String[120];
format(String,sizeof(String),"- %s - %d , Utiliza el c�mando /llamar [N�mero]",PI[playerid][ANom1],PI[playerid][AN1]);
Mensaje(playerid,COLOR_BLANCO,String);
}
if(listitem == 1) {
Dialog(playerid,D_CNAgenda1,DIALOG_STYLE_INPUT,"- TEL AGENDA -","Elige un nuevo nombre para �sta cuenta.","[/]","[X]");
}
if(listitem == 2) {
Dialog(playerid,D_CNumAgenda1,DIALOG_STYLE_INPUT,"- TEL AGENDA -","Elige un nuevo numero para �sta cuenta.","[/]","[X]");
}
}
}
if(dialogid == D_Agenda2) { if(response) {
if(listitem == 0) {
new String[120];
format(String,sizeof(String),"- %s - %d , Utiliza el c�mando /llamar [N�mero]",PI[playerid][ANom2],PI[playerid][AN2]);
Mensaje(playerid,COLOR_BLANCO,String);
}
if(listitem == 1) {
Dialog(playerid,D_CNAgenda2,DIALOG_STYLE_INPUT,"- TEL AGENDA -","Elige un nuevo nombre para �sta cuenta.","[/]","[X]");
}
if(listitem == 2) {
Dialog(playerid,D_CNumAgenda2,DIALOG_STYLE_INPUT,"- TEL AGENDA -","Elige un nuevo numero para �sta cuenta.","[/]","[X]");
}
}
}
if(dialogid == D_Agenda3) { if(response) {
if(listitem == 0) {
new String[120];
format(String,sizeof(String),"- %s - %d , Utiliza el c�mando /llamar [N�mero]",PI[playerid][ANom3],PI[playerid][AN3]);
Mensaje(playerid,COLOR_BLANCO,String);
}
if(listitem == 1) {
Dialog(playerid,D_CNAgenda3,DIALOG_STYLE_INPUT,"- TEL AGENDA -","Elige un nuevo nombre para �sta cuenta.","[/]","[X]");
}
if(listitem == 2) {
Dialog(playerid,D_CNumAgenda3,DIALOG_STYLE_INPUT,"- TEL AGENDA -","Elige un nuevo numero para �sta cuenta.","[/]","[X]");
}
}
}
if(dialogid == D_Agenda4) { if(response) {
if(listitem == 0) {
new String[120];
format(String,sizeof(String),"- %s - %d , Utiliza el c�mando /llamar [N�mero]",PI[playerid][ANom4],PI[playerid][AN4]);
Mensaje(playerid,COLOR_BLANCO,String);
}
if(listitem == 1) {
Dialog(playerid,D_CNAgenda4,DIALOG_STYLE_INPUT,"- TEL AGENDA -","Elige un nuevo nombre para �sta cuenta.","[/]","[X]");
}
if(listitem == 2) {
Dialog(playerid,D_CNumAgenda4,DIALOG_STYLE_INPUT,"- TEL AGENDA -","Elige un nuevo numero para �sta cuenta.","[/]","[X]");
}
}
}
if(dialogid == D_Agenda5) { if(response) {
if(listitem == 0) {
new String[120];
format(String,sizeof(String),"- %s - %d , Utiliza el c�mando /llamar [N�mero]",PI[playerid][ANom5],PI[playerid][AN5]);
Mensaje(playerid,COLOR_BLANCO,String);
}
if(listitem == 1) {
Dialog(playerid,D_CNAgenda5,DIALOG_STYLE_INPUT,"- TEL AGENDA -","Elige un nuevo nombre para �sta cuenta.","[/]","[X]");
}
if(listitem == 2) {
Dialog(playerid,D_CNumAgenda5,DIALOG_STYLE_INPUT,"- TEL AGENDA -","Elige un nuevo numero para �sta cuenta.","[/]","[X]");
}
}
}
if(dialogid == D_CNAgenda1) { if(response) {/*
format(PI[playerid][ANom1],24,"%s",strval(inputtext));*/
new User[MAX_PLAYER_NAME],Archivo[MAX_PLAYERS];
GetPlayerName(playerid, User, sizeof(User));
format(Archivo,sizeof(Archivo),"Archivos de usuarios/%s.ini",User);
dini_IntSet(Archivo,"ANom1",strval(inputtext));
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el nombre de la cuenta.");
}
}
if(dialogid == D_CNAgenda2) { if(response) {
format(PI[playerid][ANom2],24,"%s",strval(inputtext));
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el nombre de la cuenta.");
}
}
if(dialogid == D_CNAgenda3) { if(response) {
format(PI[playerid][ANom3],24,"%s",strval(inputtext));
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el nombre de la cuenta.");
}
}
if(dialogid == D_CNAgenda4) { if(response) {
format(PI[playerid][ANom4],24,"%s",strval(inputtext));
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el nombre de la cuenta.");
}
}
if(dialogid == D_CNAgenda5) { if(response) {
format(PI[playerid][ANom5],24,"%s",strval(inputtext));
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el nombre de la cuenta.");
}
}
if(dialogid == D_CNumAgenda1) { if(response) {
PI[playerid][AN1] = strval(inputtext);
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el n�mero de la cuenta.");
}
}
if(dialogid == D_CNumAgenda2) { if(response) {
PI[playerid][AN2] = strval(inputtext);
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el n�mero de la cuenta.");
}
}
if(dialogid == D_CNumAgenda3) { if(response) {
PI[playerid][AN3] = strval(inputtext);
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el n�mero de la cuenta.");
}
}
if(dialogid == D_CNumAgenda4) { if(response) {
PI[playerid][AN4] = strval(inputtext);
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el n�mero de la cuenta.");
}
}
if(dialogid == D_CNumAgenda5) { if(response) {
PI[playerid][AN5] = strval(inputtext);
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el n�mero de la cuenta.");
}
}

//__________________________________________________ DROGAS.
if(dialogid == ComprarDrogas) { if(response) {
if(listitem == 0) {
PI[playerid][TMarihuana] += 15;
Mensaje(playerid,COLOR_BLANCO,"Compraste 15 mg de marihuana , utiliza /Armar (Para armar el porro).");
GuardarDrogas(1,Marihuana-15);
DrogasInfo();

}
if(listitem == 1) {
PI[playerid][TCocaina] += 3;
Mensaje(playerid,COLOR_BLANCO,"Compraste 3 mg de Cocaina , utiliza /consumir (Para consumir la cocaina).");
GuardarDrogas(2,Cocaina-3);/*
*/
DrogasInfo();
}
}
}
if(dialogid == D_Armar) { if(response) {
if(listitem == 0) {
SetTimer("ArmarPorro",2000,0);
new String3[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String3, sizeof(String3), "[/Me] %s Saca el papel de liyo y su marihuana ((ESCONDIDA)).", Nombre);
ProxDetector(30.0, playerid, String3, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//

}
}
}
if(dialogid == PJeringa) { if(response) {
if(listitem == 0) {
Jeringa[playerid] = 1;
ControlP(playerid,0);
SetTimer("Prepararlajeringa",1000,0);
}
if(listitem == 1) {
ControlP(playerid,0);
SetTimer("Prepararlajeringa",1000,0);
Jeringa[playerid] = 2;
}
}
}
if(dialogid == DMaletero) { if(response) {
if(listitem == 0) {
if(TrunkOpen[Vehicle[playerid]] == 1) return SendClientMessage(playerid, COLOR_BLANCO, "Ya est� abierto.");
new engine, lights, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(Vehicle[playerid], engine, lights, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(Vehicle[playerid], engine, lights, alarm, doors, bonnet, VEHICLE_PARAMS_ON, objective);
TrunkOpen[Vehicle[playerid]] = 1;
}
if(listitem == 1) {
if(TrunkOpen[Vehicle[playerid]] == 0) return SendClientMessage(playerid, 0xAFAFAFAA, "  The trunk is already closed !");
new engine, lights, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(Vehicle[playerid], engine, lights, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(Vehicle[playerid], engine, lights, alarm, doors, bonnet, VEHICLE_PARAMS_OFF, objective);
TrunkOpen[Vehicle[playerid]] = 0;
}
if(listitem == 2) {
Dialog(playerid,DPArma,DIALOG_STYLE_LIST,"Selecciona el lugar","Lugar 1\nLugar 2\nLugar 3\nLugar 4\nLugar 5\nLugar 6\nLugar 7\nLugar 8\nLugar 9\nLugar 10","Elegir","Salir");
}
if(listitem == 3) {
Dialog(playerid,DSArma,DIALOG_STYLE_LIST,"Selecciona el lugar","Lugar 1\nLugar 2\nLugar 3\nLugar 4\nLugar 5\nLugar 6\nLugar 7\nLugar 8\nLugar 9\nLugar 10","Elegir","Salir");
}
if(listitem == 4) {
new gunname[16], gunname2[16], gunname3[16], gunname4[16], gunname5[16], gunname6[16], gunname7[16], gunname8[16], gunname9[16],
gunname10[16], string[64], string2[64], string3[64], string4[64], string5[64], string6[64], string7[64], string8[64], string9[64], string10[64];
if(TrunkOpen[Vehicle[playerid]] == 0) { SendClientMessage(playerid, 0xAFAFAFAA, "Abre el maletero primero."); return 1; }
GetWeaponName(TrunkInfo[Vehicle[playerid]][Slot1], gunname, sizeof(gunname));
GetWeaponName(TrunkInfo[Vehicle[playerid]][Slot2], gunname2, sizeof(gunname2));
GetWeaponName(TrunkInfo[Vehicle[playerid]][Slot3], gunname3, sizeof(gunname3));
GetWeaponName(TrunkInfo[Vehicle[playerid]][Slot4], gunname4, sizeof(gunname4));
GetWeaponName(TrunkInfo[Vehicle[playerid]][Slot5], gunname5, sizeof(gunname5));
GetWeaponName(TrunkInfo[Vehicle[playerid]][Slot6], gunname6, sizeof(gunname6));
GetWeaponName(TrunkInfo[Vehicle[playerid]][Slot7], gunname7, sizeof(gunname7));
GetWeaponName(TrunkInfo[Vehicle[playerid]][Slot8], gunname8, sizeof(gunname8));
GetWeaponName(TrunkInfo[Vehicle[playerid]][Slot9], gunname9, sizeof(gunname9));
GetWeaponName(TrunkInfo[Vehicle[playerid]][Slot10], gunname10, sizeof(gunname10));
SendClientMessage(playerid, 0x33AA33AA, "___________________________");
if(TrunkInfo[Vehicle[playerid]][Slot1] != 0) { format(string, sizeof(string), "Lugar 1: %s (%i Munici�n)", gunname, TrunkInfo[Vehicle[playerid]][Ammo1]); } else { format(string, sizeof(string), "Slot 1: None (0 Ammo)"); }
if(TrunkInfo[Vehicle[playerid]][Slot2] != 0) { format(string, sizeof(string), "Lugar 2: %s (%i Munici�n)", gunname, TrunkInfo[Vehicle[playerid]][Ammo2]); } else { format(string, sizeof(string), "Slot 2: None (0 Ammo)"); }
if(TrunkInfo[Vehicle[playerid]][Slot3] != 0) { format(string, sizeof(string), "Lugar 3: %s (%i Munici�n)", gunname, TrunkInfo[Vehicle[playerid]][Ammo3]); } else { format(string, sizeof(string), "Slot 3: None (0 Ammo)"); }
if(TrunkInfo[Vehicle[playerid]][Slot4] != 0) { format(string, sizeof(string), "Lugar 4: %s (%i Munici�n)", gunname, TrunkInfo[Vehicle[playerid]][Ammo4]); } else { format(string, sizeof(string), "Slot 4: None (0 Ammo)"); }
if(TrunkInfo[Vehicle[playerid]][Slot5] != 0) { format(string, sizeof(string), "Lugar 5: %s (%i Munici�n)", gunname, TrunkInfo[Vehicle[playerid]][Ammo5]); } else { format(string, sizeof(string), "Slot 5: None (0 Ammo)"); }
if(TrunkInfo[Vehicle[playerid]][Slot6] != 0) { format(string, sizeof(string), "Lugar 6: %s (%i Munici�n)", gunname, TrunkInfo[Vehicle[playerid]][Ammo6]); } else { format(string, sizeof(string), "Slot 6: None (0 Ammo)"); }
if(TrunkInfo[Vehicle[playerid]][Slot7] != 0) { format(string, sizeof(string), "Lugar 7: %s (%i Munici�n)", gunname, TrunkInfo[Vehicle[playerid]][Ammo7]); } else { format(string, sizeof(string), "Slot 7: None (0 Ammo)"); }
if(TrunkInfo[Vehicle[playerid]][Slot8] != 0) { format(string, sizeof(string), "Lugar 8: %s (%i Munici�n)", gunname, TrunkInfo[Vehicle[playerid]][Ammo8]); } else { format(string, sizeof(string), "Slot 8: None (0 Ammo)"); }
if(TrunkInfo[Vehicle[playerid]][Slot9] != 0) { format(string, sizeof(string), "Lugar 9: %s (%i Munici�n)", gunname, TrunkInfo[Vehicle[playerid]][Ammo9]); } else { format(string, sizeof(string), "Slot 9: None (0 Ammo)"); }
if(TrunkInfo[Vehicle[playerid]][Slot10] != 0) { format(string, sizeof(string), "Lugar 10: %s (%i Munici�n)", gunname, TrunkInfo[Vehicle[playerid]][Ammo10]); } else { format(string, sizeof(string), "Slot 10: None (0 Ammo)"); }
SendClientMessage(playerid, 0xFFFFFFFF, string);
SendClientMessage(playerid, 0xFFFFFFFF, string2);
SendClientMessage(playerid, 0xFFFFFFFF, string3);
SendClientMessage(playerid, 0xFFFFFFFF, string4);
SendClientMessage(playerid, 0xFFFFFFFF, string5);
SendClientMessage(playerid, 0xFFFFFFFF, string6);
SendClientMessage(playerid, 0xFFFFFFFF, string7);
SendClientMessage(playerid, 0xFFFFFFFF, string8);
SendClientMessage(playerid, 0xFFFFFFFF, string9);
SendClientMessage(playerid, 0xFFFFFFFF, string10);
SendClientMessage(playerid, 0x33AA33AA, "___________________________");
}
} }

if(dialogid == DPArma) { if(response) {
new weapon = GetPlayerWeapon(playerid);
if(listitem == 0) {
if(weapon == 0) return SendClientMessage(playerid, COLOR_BLANCO, "Tu no tienes arma.");
new string[128], gunname[16];
new ammo = GetPlayerAmmo(playerid);
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot1] > 0) return SendClientMessage(playerid, COLOR_BLANCO, "Ya tienes un arma ah�.");
TrunkInfo[v][Slot1] = weapon;
TrunkInfo[v][Ammo1] = ammo;
GetWeaponName(weapon, gunname, sizeof(gunname));
format(string, sizeof(string), "Guardaste tu {FF0000}%s{FFFFFF} en el maletero.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
RemovePlayerWeapon(playerid, weapon);
}
if(listitem == 1) {
if(weapon == 0) return SendClientMessage(playerid, COLOR_BLANCO, "Tu no tienes arma.");
new string[128], gunname[16];
new ammo = GetPlayerAmmo(playerid);
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot2] > 0) return SendClientMessage(playerid, COLOR_BLANCO, "Ya tienes un arma ah�.");
TrunkInfo[v][Slot2] = weapon;
TrunkInfo[v][Ammo2] = ammo;
GetWeaponName(weapon, gunname, sizeof(gunname));
format(string, sizeof(string), "Guardaste tu {FF0000}%s{FFFFFF} en el maletero.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
RemovePlayerWeapon(playerid, weapon);
}
if(listitem == 2) {
if(weapon == 0) return SendClientMessage(playerid, COLOR_BLANCO, "Tu no tienes arma.");
new string[128], gunname[16];
new ammo = GetPlayerAmmo(playerid);
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot3] > 0) return SendClientMessage(playerid, COLOR_BLANCO, "Ya tienes un arma ah�.");
TrunkInfo[v][Slot3] = weapon;
TrunkInfo[v][Ammo3] = ammo;
GetWeaponName(weapon, gunname, sizeof(gunname));
format(string, sizeof(string), "Guardaste tu {FF0000}%s{FFFFFF} en el maletero.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
RemovePlayerWeapon(playerid, weapon);
}
if(listitem == 3) {
if(weapon == 0) return SendClientMessage(playerid, COLOR_BLANCO, "Tu no tienes arma.");
new string[128], gunname[16];
new ammo = GetPlayerAmmo(playerid);
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot4] > 0) return SendClientMessage(playerid, COLOR_BLANCO, "Ya tienes un arma ah�.");
TrunkInfo[v][Slot4] = weapon;
TrunkInfo[v][Ammo4] = ammo;
GetWeaponName(weapon, gunname, sizeof(gunname));
format(string, sizeof(string), "Guardaste tu {FF0000}%s{FFFFFF} en el maletero.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
RemovePlayerWeapon(playerid, weapon);
}
if(listitem == 4) {
if(weapon == 0) return SendClientMessage(playerid, COLOR_BLANCO, "Tu no tienes arma.");
new string[128], gunname[16];
new ammo = GetPlayerAmmo(playerid);
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot5] > 0) return SendClientMessage(playerid, COLOR_BLANCO, "Ya tienes un arma ah�.");
TrunkInfo[v][Slot5] = weapon;
TrunkInfo[v][Ammo5] = ammo;
GetWeaponName(weapon, gunname, sizeof(gunname));
format(string, sizeof(string), "Guardaste tu {FF0000}%s{FFFFFF} en el maletero.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
RemovePlayerWeapon(playerid, weapon);
}
if(listitem == 5) {
if(weapon == 0) return SendClientMessage(playerid, COLOR_BLANCO, "Tu no tienes arma.");
new string[128], gunname[16];
new ammo = GetPlayerAmmo(playerid);
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot6] > 0) return SendClientMessage(playerid, COLOR_BLANCO, "Ya tienes un arma ah�.");
TrunkInfo[v][Slot6] = weapon;
TrunkInfo[v][Ammo6] = ammo;
GetWeaponName(weapon, gunname, sizeof(gunname));
format(string, sizeof(string), "Guardaste tu {FF0000}%s{FFFFFF} en el maletero.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
RemovePlayerWeapon(playerid, weapon);
}
if(listitem == 6) {
if(weapon == 0) return SendClientMessage(playerid, COLOR_BLANCO, "Tu no tienes arma.");
new string[128], gunname[16];
new ammo = GetPlayerAmmo(playerid);
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot7] > 0) return SendClientMessage(playerid, COLOR_BLANCO, "Ya tienes un arma ah�.");
TrunkInfo[v][Slot7] = weapon;
TrunkInfo[v][Ammo7] = ammo;
GetWeaponName(weapon, gunname, sizeof(gunname));
format(string, sizeof(string), "Guardaste tu {FF0000}%s{FFFFFF} en el maletero.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
RemovePlayerWeapon(playerid, weapon);
}
if(listitem == 7) {
if(weapon == 0) return SendClientMessage(playerid, COLOR_BLANCO, "Tu no tienes arma.");
new string[128], gunname[16];
new ammo = GetPlayerAmmo(playerid);
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot8] > 0) return SendClientMessage(playerid, COLOR_BLANCO, "Ya tienes un arma ah�.");
TrunkInfo[v][Slot8] = weapon;
TrunkInfo[v][Ammo8] = ammo;
GetWeaponName(weapon, gunname, sizeof(gunname));
format(string, sizeof(string), "Guardaste tu {FF0000}%s{FFFFFF} en el maletero.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
RemovePlayerWeapon(playerid, weapon);
}
if(listitem == 8) {
if(weapon == 0) return SendClientMessage(playerid, COLOR_BLANCO, "Tu no tienes arma.");
new string[128], gunname[16];
new ammo = GetPlayerAmmo(playerid);
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot9] > 0) return SendClientMessage(playerid, COLOR_BLANCO, "Ya tienes un arma ah�.");
TrunkInfo[v][Slot9] = weapon;
TrunkInfo[v][Ammo9] = ammo;
GetWeaponName(weapon, gunname, sizeof(gunname));
format(string, sizeof(string), "Guardaste tu {FF0000}%s{FFFFFF} en el maletero.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
RemovePlayerWeapon(playerid, weapon);
}
if(listitem == 9) {

if(weapon == 0) return SendClientMessage(playerid, COLOR_BLANCO, "Tu no tienes arma.");
new string[128], gunname[16];
new ammo = GetPlayerAmmo(playerid);
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot10] > 0) return SendClientMessage(playerid, COLOR_BLANCO, "Ya tienes un arma ah�.");
TrunkInfo[v][Slot10] = weapon;
TrunkInfo[v][Ammo10] = ammo;
GetWeaponName(weapon, gunname, sizeof(gunname));
format(string, sizeof(string), "Guardaste tu {FF0000}%s{FFFFFF} en el maletero.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
RemovePlayerWeapon(playerid, weapon);
}

}
}
if(dialogid == DSArma) { if(response) {
if(listitem == 0) {
new string[128], gunname[16];
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot1] < 1) return SendClientMessage(playerid, COLOR_BLANCO, "No tienes nada en �ste lugar.");
GetWeaponName(TrunkInfo[v][Slot1], gunname, sizeof(gunname));
format(string, sizeof(string), "Obtuviste el arma {FF0000}%s{FFFFFF} del lugar.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
GivePlayerWeapon(playerid, TrunkInfo[v][Slot1], TrunkInfo[v][Ammo1]);
TrunkInfo[v][Slot1] = 0;
TrunkInfo[v][Ammo1] = 0;
}
if(listitem == 1) {
new string[128], gunname[16];
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot2] < 1) return SendClientMessage(playerid, COLOR_BLANCO, "No tienes nada en �ste lugar.");
GetWeaponName(TrunkInfo[v][Slot2], gunname, sizeof(gunname));
format(string, sizeof(string), "Obtuviste el arma {FF0000}%s{FFFFFF} del lugar.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
GivePlayerWeapon(playerid, TrunkInfo[v][Slot2], TrunkInfo[v][Ammo2]);
TrunkInfo[v][Slot2] = 0;
TrunkInfo[v][Ammo2] = 0;
}
if(listitem == 2) {
new string[128], gunname[16];
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot3] < 1) return SendClientMessage(playerid, COLOR_BLANCO, "No tienes nada en �ste lugar.");
GetWeaponName(TrunkInfo[v][Slot3], gunname, sizeof(gunname));
format(string, sizeof(string), "Obtuviste el arma {FF0000}%s{FFFFFF} del lugar.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
GivePlayerWeapon(playerid, TrunkInfo[v][Slot3], TrunkInfo[v][Ammo3]);
TrunkInfo[v][Slot3] = 0;
TrunkInfo[v][Ammo3] = 0;
}
if(listitem == 3) {
new string[128], gunname[16];
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot4] < 1) return SendClientMessage(playerid, COLOR_BLANCO, "No tienes nada en �ste lugar.");
GetWeaponName(TrunkInfo[v][Slot4], gunname, sizeof(gunname));
format(string, sizeof(string), "Obtuviste el arma {FF0000}%s{FFFFFF} del lugar.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
GivePlayerWeapon(playerid, TrunkInfo[v][Slot4], TrunkInfo[v][Ammo4]);
TrunkInfo[v][Slot4] = 0;
TrunkInfo[v][Ammo4] = 0;
}
if(listitem == 4) {
new string[128], gunname[16];
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot5] < 1) return SendClientMessage(playerid, COLOR_BLANCO, "No tienes nada en �ste lugar.");
GetWeaponName(TrunkInfo[v][Slot5], gunname, sizeof(gunname));
format(string, sizeof(string), "Obtuviste el arma {FF0000}%s{FFFFFF} del lugar.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
GivePlayerWeapon(playerid, TrunkInfo[v][Slot5], TrunkInfo[v][Ammo5]);
TrunkInfo[v][Slot5] = 0;
TrunkInfo[v][Ammo5] = 0;
}
if(listitem == 5) {
new string[128], gunname[16];
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot6] < 1) return SendClientMessage(playerid, COLOR_BLANCO, "No tienes nada en �ste lugar.");
GetWeaponName(TrunkInfo[v][Slot6], gunname, sizeof(gunname));
format(string, sizeof(string), "Obtuviste el arma {FF0000}%s{FFFFFF} del lugar.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
GivePlayerWeapon(playerid, TrunkInfo[v][Slot6], TrunkInfo[v][Ammo6]);
TrunkInfo[v][Slot6] = 0;
TrunkInfo[v][Ammo6] = 0;
}
if(listitem == 6) {
new string[128], gunname[16];
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot7] < 1) return SendClientMessage(playerid, COLOR_BLANCO, "No tienes nada en �ste lugar.");
GetWeaponName(TrunkInfo[v][Slot7], gunname, sizeof(gunname));
format(string, sizeof(string), "Obtuviste el arma {FF0000}%s{FFFFFF} del lugar.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
GivePlayerWeapon(playerid, TrunkInfo[v][Slot7], TrunkInfo[v][Ammo7]);
TrunkInfo[v][Slot7] = 0;
TrunkInfo[v][Ammo7] = 0;
}
if(listitem == 7) {
new string[128], gunname[16];
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot8] < 1) return SendClientMessage(playerid, COLOR_BLANCO, "No tienes nada en �ste lugar.");
GetWeaponName(TrunkInfo[v][Slot8], gunname, sizeof(gunname));
format(string, sizeof(string), "Obtuviste el arma {FF0000}%s{FFFFFF} del lugar.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
GivePlayerWeapon(playerid, TrunkInfo[v][Slot8], TrunkInfo[v][Ammo8]);
TrunkInfo[v][Slot8] = 0;
TrunkInfo[v][Ammo8] = 0;
}
if(listitem == 8) {
new string[128], gunname[16];
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot9] < 1) return SendClientMessage(playerid, COLOR_BLANCO, "No tienes nada en �ste lugar.");
GetWeaponName(TrunkInfo[v][Slot9], gunname, sizeof(gunname));
format(string, sizeof(string), "Obtuviste el arma {FF0000}%s{FFFFFF} del lugar.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
GivePlayerWeapon(playerid, TrunkInfo[v][Slot9], TrunkInfo[v][Ammo9]);
TrunkInfo[v][Slot9] = 0;
TrunkInfo[v][Ammo9] = 0;
}
if(listitem == 9) {
new string[128], gunname[16];
new v = Vehicle[playerid];
if(TrunkInfo[v][Slot10] < 1) return SendClientMessage(playerid, COLOR_BLANCO, "No tienes nada en �ste lugar.");
GetWeaponName(TrunkInfo[v][Slot10], gunname, sizeof(gunname));
format(string, sizeof(string), "Obtuviste el arma {FF0000}%s{FFFFFF} del lugar.",gunname);
SendClientMessage(playerid, COLOR_BLANCO, string);
GivePlayerWeapon(playerid, TrunkInfo[v][Slot10], TrunkInfo[v][Ammo10]);
TrunkInfo[v][Slot10] = 0;
TrunkInfo[v][Ammo10] = 0;
}

}
}
if(dialogid == ConceCompra)
	{
	    if(response)
	    {
	        new file[256], name[MAX_PLAYER_NAME];
    		GetPlayerName(playerid, name, sizeof(name));
			format(file,sizeof(file),"Archivos de Coches/%s.ini",name);
            new veh = GetPlayerVehicleID(playerid);
		    new money = GetPlayerMoney(playerid);
	        if(money >= CarPrice[veh])
	        {
	            if(gPlayerHasCar[playerid] == 1) return SendClientMessage(playerid, 0xFFFFFFFF, "Ya tienes un veh�culo.");
	            new string[64];
	            SendClientMessage(playerid, 0xAFAFAFAA, "Felicidades , su nuevo veh�culo.");
	            PlayerPlaySound(playerid, 1052, 0.0, 0.0, 0.0);
				dini_Create(file);
				Vehicle[playerid] = CreateVehicle(GetVehicleModel(veh), 2130.1914, -1109.5881, 25.1890, 76.2599, 1, 1, 3600000);
                format(string, sizeof(string), "Creating your vehicle %i.", veh);
	            SendClientMessage(playerid, 0xAFAFAFAA, string);
				VehicleInfo[playerid][Model] = GetVehicleModel(veh);
				VehicleInfo[playerid][Price] = CarPrice[veh];
				VehicleInfo[playerid][CarX] = 2130.1914;
				VehicleInfo[playerid][CarY] = -1109.5881;
				VehicleInfo[playerid][CarZ] = 25.1890;
				VehicleInfo[playerid][CarRot] = 76.2599;
				gPlayerHasCar[playerid] = 1;
				RemovePlayerFromVehicle(playerid);
				OwnerID[Vehicle[playerid]] = playerid;
				VehPlate[Vehicle[playerid]] = "XYZR 000";
				PutPlayerInVehicle(playerid, Vehicle[playerid], 0);
				GivePlayerMoney(playerid, -VehicleInfo[playerid][Price]);
			}
			else
			{
			    RemovePlayerFromVehicle(playerid);
			    SendClientMessage(playerid, 0xAFAFAFAA, "No tienes dinero para comprar �ste veh�culo.");
			    return 1;
   			}
		}
		else
		{
  			RemovePlayerFromVehicle(playerid);
		}
	}
if(dialogid == ConcePlate)
{
	    if(response)
	    {
	        new file[256], name[24], license[10];
    		GetPlayerName(playerid, name, 24);
			format(file,sizeof(file),"Archivos de Coches/%s.ini",name);
	    	dini_IntSet(file, "Model", VehicleInfo[playerid][Model]);
			dini_IntSet(file, "Price", VehicleInfo[playerid][Price]);
			dini_FloatSet(file, "X", VehicleInfo[playerid][CarX]);
			dini_FloatSet(file, "Y", VehicleInfo[playerid][CarY]);
			dini_FloatSet(file, "Z", VehicleInfo[playerid][CarZ]);
			dini_FloatSet(file, "Rot", VehicleInfo[playerid][CarRot]);
			dini_IntSet(file, "Locked", VehicleInfo[playerid][Locked]);
			dini_IntSet(file, "mod1", VehicleInfo[playerid][mod1]);
			dini_IntSet(file, "mod2", VehicleInfo[playerid][mod2]);
			dini_IntSet(file, "mod3", VehicleInfo[playerid][mod3]);
			dini_IntSet(file, "mod4", VehicleInfo[playerid][mod4]);
			dini_IntSet(file, "mod5", VehicleInfo[playerid][mod5]);
			dini_IntSet(file, "mod6", VehicleInfo[playerid][mod6]);
			dini_IntSet(file, "mod7", VehicleInfo[playerid][mod7]);
			dini_IntSet(file, "mod8", VehicleInfo[playerid][mod8]);
			dini_IntSet(file, "mod9", VehicleInfo[playerid][mod9]);
			dini_IntSet(file, "mod10", VehicleInfo[playerid][mod10]);
			dini_IntSet(file, "mod11", VehicleInfo[playerid][mod11]);
			dini_IntSet(file, "mod12", VehicleInfo[playerid][mod12]);
			dini_IntSet(file, "mod13", VehicleInfo[playerid][mod13]);
			dini_IntSet(file, "mod14", VehicleInfo[playerid][mod14]);
			dini_IntSet(file, "mod15", VehicleInfo[playerid][mod15]);
			dini_IntSet(file, "mod16", VehicleInfo[playerid][mod16]);
			dini_IntSet(file, "mod17", VehicleInfo[playerid][mod17]);
			dini_IntSet(file, "paintjob", VehicleInfo[playerid][paintjob]);
			dini_IntSet(file, "color1", VehicleInfo[playerid][colora]);
			dini_IntSet(file, "color2", VehicleInfo[playerid][colorb]);
	        new string[128], Float:CarHP, Float:OldCarHP, Float:X, Float:Y, Float:Z, Float:Rot;
	        new plate = strlen(inputtext);
	        if(plate < 4) return ShowPlayerDialog(playerid, ConcePlate, DIALOG_STYLE_INPUT, "Plate", "Plate must be at least 4 characters.\n\nPlease try again.", "Done", "Cancel");
	        if(plate > 8) return ShowPlayerDialog(playerid, ConcePlate, DIALOG_STYLE_INPUT, "Plate", "Plate must be below 8 characters.\n\nPlease try again.", "Done", "Cancel");
	        GetVehicleHealth(Vehicle[playerid], CarHP);
			OldCarHP = CarHP;
			GetVehiclePos(Vehicle[playerid], X, Y, Z);
     		GetVehicleZAngle(Vehicle[playerid], Rot);
	        SetVehicleNumberPlate(Vehicle[playerid], inputtext);
	        SetVehicleToRespawn(Vehicle[playerid]);
	        SetVehiclePos(Vehicle[playerid], X, Y, Z);
	        SetVehicleZAngle(Vehicle[playerid], Rot);
	        PutPlayerInVehicle(playerid, Vehicle[playerid], 0);
	        format(license, sizeof(license), "%s", inputtext);
	        VehPlate[Vehicle[playerid]] = license;
	        dini_Set(file, "Plate", VehPlate[Vehicle[playerid]]);
	        format(string, sizeof(string), "{FFFF00}Usted eligio su numero a{FFFFFF} %s", inputtext);
	        SendClientMessage(playerid, 0xFFFFFFFF, string);
	        SetVehicleHealth(Vehicle[playerid], OldCarHP);
	        VehicleInfo[playerid][Model] = dini_Int(file, "Model");
	    	VehicleInfo[playerid][Price] = dini_Int(file, "Price");
	    	VehicleInfo[playerid][CarX] = dini_Float(file, "X");
	    	VehicleInfo[playerid][CarY] = dini_Float(file, "Y");
	    	VehicleInfo[playerid][CarZ] = dini_Float(file, "Z");
	    	VehicleInfo[playerid][CarRot] = dini_Float(file, "Rot");
	    	VehicleInfo[playerid][Locked] = dini_Int(file, "Locked");
			VehicleInfo[playerid][mod1] = dini_Int(file, "mod1");
			VehicleInfo[playerid][mod2] = dini_Int(file, "mod2");
			VehicleInfo[playerid][mod3] = dini_Int(file, "mod3");
			VehicleInfo[playerid][mod4] = dini_Int(file, "mod4");
			VehicleInfo[playerid][mod5] = dini_Int(file, "mod5");
			VehicleInfo[playerid][mod6] = dini_Int(file, "mod6");
			VehicleInfo[playerid][mod7] = dini_Int(file, "mod7");
			VehicleInfo[playerid][mod8] = dini_Int(file, "mod8");
			VehicleInfo[playerid][mod9] = dini_Int(file, "mod9");
			VehicleInfo[playerid][mod10] = dini_Int(file, "mod10");
			VehicleInfo[playerid][mod11] = dini_Int(file, "mod11");
			VehicleInfo[playerid][mod12] = dini_Int(file, "mod12");
			VehicleInfo[playerid][mod13] = dini_Int(file, "mod13");
			VehicleInfo[playerid][mod14] = dini_Int(file, "mod14");
			VehicleInfo[playerid][mod15] = dini_Int(file, "mod15");
			VehicleInfo[playerid][mod16] = dini_Int(file, "mod16");
			VehicleInfo[playerid][mod17] = dini_Int(file, "mod17");
			VehicleInfo[playerid][paintjob] = dini_Int(file, "paintjob");
			VehicleInfo[playerid][colora] = dini_Int(file, "color1");
			VehicleInfo[playerid][colorb] = dini_Int(file, "color2");
    		if(VehicleInfo[playerid][mod1]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod1]); }
			if(VehicleInfo[playerid][mod2]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod2]); }
			if(VehicleInfo[playerid][mod3]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod3]); }
			if(VehicleInfo[playerid][mod4]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod4]); }
			if(VehicleInfo[playerid][mod5]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod5]); }
			if(VehicleInfo[playerid][mod6]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod6]); }
			if(VehicleInfo[playerid][mod7]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod7]); }
			if(VehicleInfo[playerid][mod8]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod8]); }
			if(VehicleInfo[playerid][mod9]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod9]); }
			if(VehicleInfo[playerid][mod10]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod10]); }
			if(VehicleInfo[playerid][mod11]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod11]); }
			if(VehicleInfo[playerid][mod12]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod12]); }
			if(VehicleInfo[playerid][mod13]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod13]); }
			if(VehicleInfo[playerid][mod14]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod14]); }
			if(VehicleInfo[playerid][mod15]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod15]); }
			if(VehicleInfo[playerid][mod16]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod16]); }
			if(VehicleInfo[playerid][mod17]!=0) { AddVehicleComponent(Vehicle[playerid],VehicleInfo[playerid][mod17]); }
			if(VehicleInfo[playerid][colora]!=0 || VehicleInfo[playerid][colorb]!=0)
			{
				ChangeVehicleColor(Vehicle[playerid],VehicleInfo[playerid][colora],VehicleInfo[playerid][colorb]);
			}
			if(VehicleInfo[playerid][paintjob]!=0)
			{
		    	ChangeVehiclePaintjob(Vehicle[playerid],VehicleInfo[playerid][paintjob]);
  			}
			SetVehicleParamsForPlayer(Vehicle[playerid], playerid, 0, VehicleInfo[playerid][Locked]);
			gVehLocked[Vehicle[playerid]] = VehicleInfo[playerid][Locked];
			CarHP = 0;
			OldCarHP = 0;
			return 1;
		}
		return 1;
}
if(dialogid == Registro) {
if(response) {
new User[MAX_PLAYER_NAME],Archivo[MAX_PLAYERS];
GetPlayerName(playerid, User, sizeof(User));
format(Archivo,sizeof(Archivo),"Archivos de usuarios/%s.ini",User);
dini_Create(Archivo);/*
SpawnPlayer(playerid);*/
dini_Set(Archivo,"NombreYApellido",User);
dini_Set(Archivo,"Password",inputtext);
CrearData(playerid);
}
}

																																																/*
________________________________________________________________________________________________________________
																																																*/

if(dialogid == Inicio) {
if(!response) return Dialog(playerid, Inicio,DIALOG_STYLE_INPUT,"Bienvenido","{555555}Zona Sur{FFFFFF}Roleplay\n\n Ingres� tu contrase�a y In�cia","Iniciar","");
new User[MAX_PLAYER_NAME],Archivo[MAX_PLAYERS],comprobante[50];
GetPlayerName(playerid, User, sizeof(User));
format(Archivo,sizeof(Archivo),"Archivos de usuarios/%s.ini",User);
format(comprobante, sizeof(comprobante), "%s", dini_Get(Archivo, "Password"));
if (!strcmp (inputtext, comprobante)) {
CD(playerid);
SpawnPlayer(playerid);
}
else {
Dialog(playerid, Inicio,DIALOG_STYLE_INPUT,"{FF0000}ERROR","La contrase�a es {FFFFFF}Incorrecta.","Iniciar","");
}
}

																																																/*
________________________________________________________________________________________________________________
																																																*/

if(dialogid == Dgenero) {
if(response) {
if(listitem == 0) { PI[playerid][Genero] = 0; Dialog(playerid,D_EdadIC,DIALOG_STYLE_LIST,"�Qu� edad tendr�s IC?","18\n19\n20\n21\n22\n23\n24\n25\n26","Elegir","");/*SetPlayerSkin(playerid,250); SpawnPlayer(playerid); AD(playerid);*/ } //Masculino
if(listitem == 1) { PI[playerid][Genero] = 1; Dialog(playerid,D_EdadIC,DIALOG_STYLE_LIST,"�Qu� edad tendr�s IC?","18\n19\n20\n21\n22\n23\n24\n25\n26","Elegir",""); /*SpawnPlayer(playerid); AD(playerid);*/ } } }//Femenino
if(dialogid == D_EdadIC) { if(response) {
if(listitem == 0) {
Mensaje(playerid,0x0084FF,"ZS{FFFFFF}:Tendr�s {0084FF}18 {FFFFFF}a�os IC.");
PI[playerid][EdadIC] = 18;
Tutorial1(playerid);
}
if(listitem == 1) {
Mensaje(playerid,0x0084FF,"ZS{FFFFFF}:Tendr�s {0084FF}19 {FFFFFF}a�os IC.");
PI[playerid][EdadIC] = 19;
Tutorial1(playerid);
}
if(listitem == 2) {
Mensaje(playerid,0x0084FF,"ZS{FFFFFF}:Tendr�s {0084FF}20 {FFFFFF}a�os IC.");
PI[playerid][EdadIC] = 20;
Tutorial1(playerid);
}
if(listitem == 3) {
Mensaje(playerid,0x0084FF,"ZS{FFFFFF}:Tendr�s {0084FF}21 {FFFFFF}a�os IC.");
PI[playerid][EdadIC] = 21;
Tutorial1(playerid);
}
if(listitem == 4) {
Mensaje(playerid,0x0084FF,"ZS{FFFFFF}:Tendr�s {0084FF}22 {FFFFFF}a�os IC.");
PI[playerid][EdadIC] = 22;
Tutorial1(playerid);
}
if(listitem == 5) {
Mensaje(playerid,0x0084FF,"ZS{FFFFFF}:Tendr�s {0084FF}23 {FFFFFF}a�os IC.");
PI[playerid][EdadIC] = 23;
Tutorial1(playerid);
}
if(listitem == 6) {
Mensaje(playerid,0x0084FF,"ZS{FFFFFF}:Tendr�s {0084FF}24 {FFFFFF}a�os IC.");
PI[playerid][EdadIC] = 24;
Tutorial1(playerid);
}
if(listitem == 7) {
Mensaje(playerid,0x0084FF,"ZS{FFFFFF}:Tendr�s {0084FF}25 {FFFFFF}a�os IC.");
PI[playerid][EdadIC] = 25;
Tutorial1(playerid);
}
if(listitem == 8) {
Mensaje(playerid,0x0084FF,"ZS{FFFFFF}:Tendr�s {0084FF}26 {FFFFFF}a�os IC.");
PI[playerid][EdadIC] = 26;
Tutorial1(playerid);
}
}
}
if(dialogid == DAyuda) {
if(response) {
if(listitem == 0) { Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/Cr�ditos  /Reglas "); }
if(listitem == 1) { Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/Prender /ApagarCoche "); }
if(listitem == 2) { Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/Cajero (Tienes que est�r en la posici�n del cajero.) "); }
if(listitem == 3) {
Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/Propiedad (Tienes que est�r en la posici�n de tu propiedad.) ");
Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/SalirPropiedad {FFFFFF}(Tienes que est�r en la posici�n de salida de tu propiedad.) ");
if(listitem == 4) {
if(PI[playerid][Faccion] == 1) {
Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [Facci�nOOC] - /M [Meg�fono] - /Equipo - /Placa [ID]");
Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/Desarmar [ID] - /Multar [ID] - /Refuerzos - /Antecedentes - /Detener ");
Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/Arrestar [ID] - Rango 5-6: /D [Departamento]."); }
	
if(PI[playerid][Faccion] == 2) {
Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [Facci�nOOC] ");  }

if(PI[playerid][Faccion] == 3) { Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [Facci�nOOC] ");  }

if(PI[playerid][Faccion] == 4) { Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [Facci�nOOC] ");  }

if(PI[playerid][Faccion] == 5) { Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [Facci�nOOC] ");  }
	
if(PI[playerid][Faccion] == 6) {
	Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [Facci�nOOC] ");  }
	
if(PI[playerid][Faccion] == 7) {
	Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [Facci�nOOC] ");  }
	
if(PI[playerid][Faccion] == 8) {
	Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [Facci�nOOC] ");  }

if(PI[playerid][Faccion] == 9) {
	Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [Facci�nOOC] ");  }

if(PI[playerid][Faccion] == 10) {
	Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [Facci�nOOC] ");
}}}}}

																																																/*
________________________________________________________________________________________________________________
																																																*/
/*
if(dialogid == DBanco) { if(response) {
if(listitem == 0) {
Dialog(playerid,DDepositar,DIALOG_STYLE_INPUT,"Pon el n�mero que quieras depositar.","Escribe tu monto.","Elegir","Salir"); }
if(dialogid == DBanco) { if(response) {
if(listitem == 1) {
new String[190];
format(String,sizeof(String),"-Retirar Monto completo (${45AE00}%d{FFFFFF}).\n-Retirar el numero deseable.",PI[playerid][Bancod]);
Dialog(playerid,DSacar,DIALOG_STYLE_LIST,"Elige la acci�n.",String,"Elegir","Salir");

Dialog(playerid,DSacar,DIALOG_STYLE_INPUT,"Pon el n�mero que quieras sacar.","Escribe tu monto.","Elegir","Salir");  }
if(listitem == 2) {
new User[MAX_PLAYER_NAME],String[128]; GetPlayerName(playerid,User,sizeof(User));
format(String,sizeof(String),"Nombre de usuario:%s {555555}Deposito de banco: $%d",User,PI[playerid][Bancod]);
Mensaje(playerid,COLOR_BLANCO,String); }
} }
*/
																																																/*
________________________________________________________________________________________________________________
																																																*/
if(dialogid == DDepositar) { if(response) { 
if(GetPlayerMoney(playerid) < strval(inputtext)) return Mensaje(playerid,COLOR_BLANCO,"No puedes depositar ese monto");
PI[playerid][Bancod] += strval(inputtext);
GivePlayerMoney(playerid,-strval(inputtext));
 } }
 
if(dialogid == DSacar) { if(response) {
if(listitem == 0) {
GivePlayerMoney(playerid,PI[playerid][Bancod]);
PI[playerid][Bancod] = 0;
Mensaje(playerid,0xFFFFFFF,"{555555}Acci�n:{FFFFFF} Has sacado todo el dinero del banco.");
}
if(listitem == 1) {
Dialog(playerid,DDSacar,DIALOG_STYLE_INPUT,"Pon el n�mero que quieras sacar.","Escribe tu monto.","Elegir","Salir");
}
}
}
if(dialogid == DDSacar) { if(response) {
if(PI[playerid][Bancod] < strval(inputtext))  return Mensaje(playerid,COLOR_BLANCO,"No puedes sacar ese monto");
PI[playerid][Bancod] -= strval(inputtext);
GivePlayerMoney(playerid,strval(inputtext));
 } }

																																																/*
________________________________________________________________________________________________________________
																																																*/
if(dialogid == DTrabajoAvion) { if(response) {
if(listitem == 0) {
Checkpoint(playerid,0.5,-1357.4000200,-41.9000000,13.8000000);
Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora a: {555555}LS");
TrabajoPiloto[playerid] = 1;
}
if(listitem == 1) {  Quitarcoche(playerid); } } }

																																																/*
________________________________________________________________________________________________________________
																																																*/



if(dialogid == DTrabajoBasurero) { if(response) {
if(listitem == 0) {
Checkpoint(playerid,0.5,2647.1001000,2296.8999000,10.3000000);
Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'CheckPoint'.");
TrabajoBasurero[playerid] = 1;
}
if(listitem == 1) {  Quitarcoche(playerid); } } }

																																																/*
________________________________________________________________________________________________________________
																																																*/


if(dialogid == DTrabajoBus) { if(response) {

Checkpoint(playerid,0.5,2027.0000000,2648.1001000,10.4000000);
Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'CheckPoint'.");
TrabajoBus[playerid] = 1;
} }

																																																/*
________________________________________________________________________________________________________________
																																																*/


if(dialogid == iratrabajo) { if(response) {
if(listitem == 0) {
SetPlayerPos(playerid,1332.3000500,1430.0000000,18.0000000);
SetPlayerHealth(playerid, 2000);
}
if(listitem == 1) {
SetPlayerPos(playerid,2905.5000000,2100.3999000,18.6000000);
SetPlayerHealth(playerid, 2000);
}
if(listitem == 2) {
SetPlayerPos(playerid,2774.3000500,1263.0000000,18.0000000);
SetPlayerHealth(playerid, 2000);
}  } }


if(dialogid == RentarCocheD) { if(!response) return Quitarcoche(playerid);
new ID = Rentado[playerid];
if(RentadoV[ID] == 1) {
RentadoV[Rentado[playerid]] = 0;
Rentado[playerid] = 0;
KillTimer(TimerContratoV[playerid]);
}
new Coche = GetPlayerVehicleID(playerid);
Rentado[playerid] = Coche;
Mensaje(playerid,COLOR_BLANCO,"Rentaste el coche");
RentadoV[Coche] = 1;
TimerContratoV[playerid] = SetTimer("ContratoRentaV",900000,0);

}
if(dialogid == D_SALIRC)
    {
		if(response)
		{
  			for(new i = 0; i < MAX_HOUSES; i++)
			{
				LoadPos(playerid);
			}
			SendClientMessage(playerid,COLOR_LIME,"Saliste de tu propiedad.");
		}
}
if(dialogid == D_COMPRARC)
    {
        if(response)
        {
            for(new i = 0; i < MAX_HOUSES; i++)
			{
			    if(!IsPlayerInRangeOfPoint(playerid,8.0,PropiedadInfo[i][CasaX],PropiedadInfo[i][CasaY],PropiedadInfo[i][CasaZ])) continue;
                if(GetPlayerMoney(playerid) < PropiedadInfo[i][Precio]) return SendClientMessage(playerid,COLOR_RED,"No tienes suficiente dinero para comprar la propiedad.");
                if(PropiedadInfo[i][Comprada] == 1) return SendClientMessage(playerid,COLOR_RED,"Est� propiedad ya est� vendida.");
                PropiedadInfo[i][Comprada] = 1;
                new file[100],pname[24],labelstring[500];
                GetPlayerName(playerid,pname,sizeof(pname));
                format(PropiedadInfo[i][Npropietario],24,"%s",pname);
                format(file,sizeof(file),"Archivos de Casas/%i.ini",i);
                if(dini_Exists(file))
				{
				    dini_Set(file,"Owner",pname);
				    dini_IntSet(file,"Owned",1);
                }
    			format(labelstring,sizeof(labelstring),"{0084FF}Nombre:{FFFFFF} %s\n{0084FF}Estado: {FFFFFF}No disponible -Vendida-\n {0084FF}Nivel: {FFFFFF}%i\n{0084FF}Precio:{51FF00}${FFFFFF}%i\n{0084FF}Due�o: {FFFFFF}%s",PropiedadInfo[i][CaNombre],PropiedadInfo[i][Nivel],PropiedadInfo[i][Precio],pname);
                Update3DTextLabelText(PropiedadInfo[i][CasaLabel],0xFF0000FF,labelstring);
                GivePlayerMoney(playerid,-PropiedadInfo[i][Precio]);
			}
        }
}
if(dialogid == D_CASAC)
    {
        if(response)
	 	{
	  		switch(listitem)
	    	{
	    	    case 0:
	    	    {
	    	        for(new i = 0; i < MAX_HOUSES; i++)
					{
					    new pname[24];
					    GetPlayerName(playerid,pname,sizeof(pname));
					    if(PropiedadInfo[i][Comprada] == 1 && strcmp(PropiedadInfo[i][Npropietario],pname) == 0)
						{
						    if(PropiedadInfo[i][Nivel] == 1)
						    {
						    	SetPlayerInterior(playerid,12);
								SetPlayerPos(playerid,444.646911,508.239044,1001.419494);
								SetPlayerVirtualWorld(playerid,PropiedadInfo[i][CasaVirtual]);
								JugadorEnLaCasa[playerid] = i;
							}
							if(PropiedadInfo[i][Nivel] == 2)
							{
							    SetPlayerInterior(playerid,1);
								SetPlayerPos(playerid,2527.654052,-1679.388305,1015.498596);
								SetPlayerVirtualWorld(playerid,PropiedadInfo[i][CasaVirtual]);
								JugadorEnLaCasa[playerid] = i;
							}
							if(PropiedadInfo[i][Nivel] == 3)
							{
							    SetPlayerInterior(playerid,8);
								SetPlayerPos(playerid,2807.619873,-1171.899902,1025.570312);
								SetPlayerVirtualWorld(playerid,PropiedadInfo[i][CasaVirtual]);
								JugadorEnLaCasa[playerid] = i;
							}
							if(PropiedadInfo[i][Nivel] == 4)
							{
								SetPlayerInterior(playerid,3);
								SetPlayerPos(playerid,1527.229980,-11.574499,1002.097106);
								SetPlayerVirtualWorld(playerid,PropiedadInfo[i][CasaVirtual]);
								JugadorEnLaCasa[playerid] = i;
							}
							if(PropiedadInfo[i][Nivel] == 4)
							{
								SetPlayerInterior(playerid,3);
								SetPlayerPos(playerid,2496.049804,-1695.238159,1014.742187);
								SetPlayerVirtualWorld(playerid,PropiedadInfo[i][CasaVirtual]);
								JugadorEnLaCasa[playerid] = i;
							}
						}
					}
	    	    }
	    	    case 1:
				{
					if(GetPlayerMoney(playerid) < HOUSE_UPGRADE_MONEY)
					{
						new string[129];
						format(string,sizeof(string),"Usted no tiene suficiente dinero para mejorar est� casa %d",HOUSE_UPGRADE_MONEY);
						SendClientMessage(playerid,COLOR_RED,string);
						return 0;
					}
					for(new i = 0; i < MAX_HOUSES; i++)
					{
					    if(PropiedadInfo[i][Nivel] > 4) return SendClientMessage(playerid,COLOR_RED,"Llegaste al m�ximo nivel.");
						PropiedadInfo[i][Nivel] ++;
						new file[100];
						format(file,sizeof(file),"Archivos de Casas/%i.ini",i);
						if(dini_Exists(file))
						{
						    dini_IntSet(file,"Level",PropiedadInfo[i][Nivel]);
						}
					}
					SendClientMessage(playerid,COLOR_RED,"Casa actualizada");
				}
				case 2:
				{
					new string[100];
				    for(new i = 0; i < MAX_HOUSES; i++)
					{
					    new pname[24];
					    GetPlayerName(playerid,pname,sizeof(pname));
					    new file[60],labelstring[500];
					    format(PropiedadInfo[i][Npropietario],24,"No tiene due�o.");
					    format(file,sizeof(file),"Archivos de Casas/%i.ini",i);
					    if(dini_Exists(file))
					    {
							dini_Set(file,"Owner","No owner");
							dini_IntSet(file,"Owned",0);
						}
						format(labelstring,sizeof(labelstring),"{0084FF}Nombre:{FFFFFF} %s {0084FF}Nivel:{FFFFFF} %i {0084FF}Precio: {51FF00}$ {FFFFFF}%i",PropiedadInfo[i][CaNombre],PropiedadInfo[i][Nivel],PropiedadInfo[i][Precio]);
                        Update3DTextLabelText(PropiedadInfo[i][CasaLabel],0xFF0000FF,labelstring);
                        format(string,sizeof(string),"Vendiste tu propiedad a :"COL_GREEN" %d",PropiedadInfo[i][Precio]/=2);
						GivePlayerMoney(playerid,PropiedadInfo[i][Precio]/=2);
						PropiedadInfo[i][Comprada] = 0;
					}
					SendClientMessage(playerid,-1,string);
				}
				case 3: {
				if(IsPlayerInRangeOfPoint(playerid,2.0,444.646911,508.239044,1001.419494)) {
 				for(new i = 0; i < MAX_HOUSES; i++)
				{
				LoadPos(playerid);
				}
				}
				if(IsPlayerInRangeOfPoint(playerid,2.0,2527.654052,-1679.388305,1015.498596)) {
				for(new i = 0; i < MAX_HOUSES; i++)
				{
				LoadPos(playerid);
				}
				}
				if(IsPlayerInRangeOfPoint(playerid,2.0,2807.619873,-1171.899902,1025.570312)) {
 				for(new i = 0; i < MAX_HOUSES; i++)
				{
				LoadPos(playerid);
				}
				}
				if(IsPlayerInRangeOfPoint(playerid,2.0,1527.229980,-11.574499,1002.097106)) {
 				for(new i = 0; i < MAX_HOUSES; i++)
				{
				LoadPos(playerid);
				}
				}
				if(IsPlayerInRangeOfPoint(playerid,2.0,2496.049804,-1695.238159,1014.742187)) {
 				for(new i = 0; i < MAX_HOUSES; i++)
				{
				LoadPos(playerid);
				}
				}
				}
			}
		}
    }
if(dialogid == DIALOG_CCasa) { if(response) {
    if(listitem == 0) {
	for(new i = 0; i < MAX_HOUSES; i++)
		{
			if(IsPlayerInRangeOfPoint(playerid,3.0,PropiedadInfo[i][CasaX],PropiedadInfo[i][CasaY],PropiedadInfo[i][CasaZ]))
			{
				if(PropiedadInfo[i][Comprada] == 0)
				{
					ShowPlayerDialog(playerid,D_COMPRARC,DIALOG_STYLE_MSGBOX,"Propiedad opciones.","{FFFFFF}Presion� el bot�n {0084FF}'Comprar'{FFFFFF}\n Para comprar est� propiedad.","Comprar","Cancelar");
				}
			}
		}
    }
    if(listitem == 1) {
    		for(new i = 0; i < MAX_HOUSES; i++)
		{
			new pname[24];
			GetPlayerName(playerid,pname,sizeof(pname));
			if(IsPlayerInRangeOfPoint(playerid,3.0,PropiedadInfo[i][CasaX],PropiedadInfo[i][CasaY],PropiedadInfo[i][CasaZ]))
			{
				if(PropiedadInfo[i][Comprada] == 1 && strcmp(pname,PropiedadInfo[i][Npropietario]) != 0) return SendClientMessage(playerid,-1,"Usted no es el due�o de est� Propiedad.");
				if(PropiedadInfo[i][Comprada] == 1 && strcmp(PropiedadInfo[i][Npropietario],pname) == 0)
				{
					ShowPlayerDialog(playerid,D_CASAC,DIALOG_STYLE_LIST,"Propiedad opciones.","{FFFFFF}-{FFFFFF}Entrar a la casa.\n{FFFFFF}-{FFFFFF}Actualizar casa.\n{FFFFFF}-{FFFFFF}Vender Casa.","Elegir","Cancelar");
					SavePos(playerid);
				}
			}
		}
    }
    
    } }
    
if(dialogid == D_ArmamentoPF) { if(response) {
if(listitem == 0) {//Guardia.
DDarma(playerid, 3, 1);
SSkin(playerid, 71);
}
if(listitem == 1) {//Policia
DDarma(playerid, 3, 1);
DDarma(playerid, 22, 50);
SSkin(playerid, 280);
}
if(listitem == 2) {//SubComisario
DDarma(playerid, 3, 1);
DDarma(playerid, 22, 50);
DDarma(playerid, 25, 30);
SSkin(playerid, 282);
}
if(listitem == 3) {//Comisario
DDarma(playerid, 3, 1);
DDarma(playerid, 22, 50);
DDarma(playerid, 25, 30);
SSkin(playerid, 283);
}
if(listitem == 4) {//Guardar ropa
PI[playerid][Skin2] = GetPlayerSkin(playerid);
SetTimer("guardadoderopa",1000,0);
Mensaje(playerid,Azul,"{555555}(Guardaste tu ropa).");
}
if(listitem == 5) {//Tomar ropa.
SSkin(playerid,PI[playerid][Skin2]);
Mensaje(playerid,Azul,"{555555}({FFFFFF}Tomaste y te colocaste tu ropa{555555}).");
}
}
}
if(dialogid == D_Bebida) { if(response) {
if(listitem == 0) {
Mensaje(playerid,COLOR_BLANCO,"Agarraste una bebida.");
DParacomprar[playerid] += 5;
Compro[playerid] = 1;
ComproGaseosa[playerid] += 1;
}
if(listitem == 1) {
Mensaje(playerid,COLOR_BLANCO,"Agarraste una bebida.");
DParacomprar[playerid] += 10;
Compro[playerid] = 1;
ComproGaseosa[playerid] += 1;
}
}
}
if(dialogid == D_Comida) { if(response) {
if(listitem == 0) {
Mensaje(playerid,COLOR_BLANCO,"Agarraste Paquete de pan - Jamon Y Queso. .");

Compro[playerid] = 1;
DParacomprar[playerid] += 5;
ComproPan[playerid] += 1;

}
if(listitem == 1) {
Mensaje(playerid,COLOR_BLANCO,"Agarraste paquete de galletas.");
ComproGalleta[playerid] += 2;
Compro[playerid] = 1;
DParacomprar[playerid] += 10;
}
}
}
if(dialogid == D_Consumir) {
if(response) {
if(listitem == 0) {
if(PI[playerid][CComida] >= 1){
PI[playerid][CComida] --;
new Float:Vida;
GetPlayerHealth(playerid,Vida);
SetPlayerHealth(playerid,Vida+10);
}
}
if(listitem == 1){
if(PI[playerid][CBebida] >= 1) {
PI[playerid][CBebida] --;
new Float:Vida;
GetPlayerHealth(playerid,Vida);
SetPlayerHealth(playerid,Vida+10);
}
}
if(listitem == 2) {
if(PI[playerid][TCocaina] >= 0)  {
Mensaje(playerid,COLOR_BLANCO,"Has consumido cocaina - El efecto durar� 3 minutos.");
SetTimer("ConsumirCocaina",180000,0);
PI[playerid][TCocaina] -= 3;
SetPlayerDrunkLevel(playerid,5000);
new String3[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String3, sizeof(String3), "[/Me] %s Saca su bolsa de cocaina, acerca su nariz y la consume.", Nombre);
ProxDetector(30.0, playerid, String3, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
TextDrawShowForPlayer(playerid, ECocaina);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes cocaina");
}
if(listitem == 3) {
if(PI[playerid][TPorro] >= 0)  {
Mensaje(playerid,COLOR_BLANCO,"Has consumido un porro - El efecto durar� 3 minutos.");
SetTimer("ConsumirMarihuana",180000,0);
PI[playerid][TPorro] -= 1;
SetPlayerDrunkLevel(playerid,5000);
new String3[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String3, sizeof(String3), "[/Me] %s Saca un porro , lo enciende , consume y lo vuelve a encender.", Nombre);
ProxDetector(30.0, playerid, String3, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
TextDrawShowForPlayer(playerid, EMarihuana1);
TextDrawShowForPlayer(playerid, EMarihuana2);
TextDrawShowForPlayer(playerid, EMarihuana3);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes un porro.");
}
}
}
if(dialogid == D_OBTENERDNI1) { if(response) {
SetTimer("ObtenerDni2",2000,0);
new String[120];
format(String, sizeof(String), "[/Me] %s pulsa sus pulgares en su documento.", NombreJugador(playerid));
ProxDetector(30.0, playerid, String, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME); } }
if(dialogid == MuestraDNI) { if(response) {
Dialog(playerid,D_PagarDNI,DIALOG_STYLE_MSGBOX,"Acci�n PJ","Pulsa el boton Pagar \nPara pagar tu documento.","Pagar","");
} }
if(dialogid == D_PagarDNI) { if(response) {
GivePlayerMoney(playerid,-50);
Mensaje(playerid,COLOR_BLANCO,"Pagaste tu documento.");
PI[playerid][Dni] = 1;
ControlP(playerid,1);
}
}
if(dialogid == D_NEGOCIOS) { if(response) {
if(listitem == 0) {
Dialog(playerid,D_InvertirN,DIALOG_STYLE_INPUT,"Invirtiendo en el negocio.","�Cu�nto quieres invertir en el negocio?\n Negocio de entre 50mil y 100mil m�ximo 2mil.\n Negocio de entre 150mil y 200mil m�ximo 5mil.","Invertir","Salir");
}
if(listitem == 1) {
Dialog(playerid,D_VenderN,DIALOG_STYLE_MSGBOX,"Vendiendo en el negocio.","�Seguro quieres vender el negocio?","Vender","Salir");
}
}
}
if(dialogid == D_InvertirN) { if(response) {
if(GetPlayerMoney(playerid) <= strval(inputtext)) return Mensaje(playerid,COLOR_BLANCO,"No tienes suficiente dinero.");
new String[120];
PI[playerid][InvirtioN] = strval(inputtext);
 /*
PI[playerid][InvirtioN] = strval(inputtext);*/
format(String,sizeof(String),"- Invertiste $%d en tu negocio. Recuerda que tienes que restaurarlo en el siguiente payday.",strval(inputtext));
SendClientMessage(playerid,COLOR_BLANCO,String);

}
}
if(dialogid == D_VenderN) { if(response) {
new string[100];
for(new i = 0; i < MAX_NEGOCIOS; i++)
{
new pname[24],NegocioV[MAX_PLAYERS];
GetPlayerName(playerid,pname,sizeof(pname));
new file[60],labelstring[500];
format(NegocioInfo[i][DuNombre],24,"No tiene due�o.");
format(file,sizeof(file),"Archivos de Negocios/%i.ini",i);
if(dini_Exists(file))
{
dini_Set(file,"Propietario","No Tiene");
dini_IntSet(file,"Comprado",0);
}
NegocioV[playerid] = NegocioInfo[i][Precio];
format(labelstring,sizeof(labelstring),"{555555}Negocio:{FFFFFF} %s {555555}Nivel:{FFFFFF} %i {555555}Precio: {51FF00}$ {FFFFFF}%i",NegocioInfo[i][NLema],NegocioInfo[i][Nivel],NegocioInfo[i][Precio]);
Update3DTextLabelText(NegocioInfo[i][NegocioLabel],0xFF0000FF,labelstring);
format(string,sizeof(string),"Vendiste tu propiedad a :"COL_GREEN" %d",NegocioInfo[i][Precio]/=2);
PI[playerid][TNegocio] = 0;
GivePlayerMoney(playerid,NegocioInfo[i][Precio]/=2);
NegocioInfo[i][Comprada] = 0;
SendClientMessage(playerid,-1,string);
NegocioInfo[i][Precio] = NegocioV[playerid];
}
}
}
if(dialogid == D_ComprarNeg) { if(response) {
for(new i = 0; i < MAX_NEGOCIOS; i++)
{
if(!IsPlayerInRangeOfPoint(playerid,8.0,NegocioInfo[i][NX],NegocioInfo[i][NY],NegocioInfo[i][NZ])) continue;
if(GetPlayerMoney(playerid) < NegocioInfo[i][Precio]) return SendClientMessage(playerid,COLOR_RED,"No tienes suficiente dinero para comprar la propiedad.");
if(NegocioInfo[i][Comprada] == 1) return SendClientMessage(playerid,COLOR_RED,"Est� propiedad ya est� vendida.");
NegocioInfo[i][Comprada] = 1;
new file[100],pname[24],labelstring[500];
GetPlayerName(playerid,pname,sizeof(pname));
format(NegocioInfo[i][DuNombre],24,"%s",pname);
format(file,sizeof(file),"Archivos de Negocios/%i.ini",i);
if(dini_Exists(file))
{
dini_Set(file,"Propietario",pname);
dini_IntSet(file,"Comprado",1);
}
PI[playerid][TNegocio] = 1;
format(labelstring,sizeof(labelstring),"{555555}Negocio:{FFFFFF} %s\n{555555}Estado: {FFFFFF}No disponible -Vendida-\n {555555}Nivel: {FFFFFF}%i\n{555555}Precio:{51FF00}${FFFFFF}%i\n{555555}Due�o: {FFFFFF}%s",NegocioInfo[i][DuNombre],NegocioInfo[i][Nivel],NegocioInfo[i][Precio],pname);
Update3DTextLabelText(NegocioInfo[i][NegocioLabel],0xFF0000FF,labelstring);
GivePlayerMoney(playerid,-NegocioInfo[i][Precio]);
}
}
}
if(dialogid == D_Prestamo) { if(response) {
if(listitem == 0) {
if(PI[playerid][Prestamo] >= 1) return Mensaje(playerid,COLOR_BLANCO,"Usted ya pidi� un prestamo.");
Mensaje(playerid,COLOR_BLANCO,"Has pedido un prestamo de $5000");
GivePlayerMoney(playerid,5000);
PI[playerid][Prestamo] = 1;
}
if(listitem == 1) {
if(PI[playerid][Prestamo] >= 1) return Mensaje(playerid,COLOR_BLANCO,"Usted ya pidi� un prestamo.");
Mensaje(playerid,COLOR_BLANCO,"Has pedido un prestamo de $15000");
GivePlayerMoney(playerid,15000);
PI[playerid][Prestamo] = 2;
}
if(listitem == 2) {
if(PI[playerid][Prestamo] >= 1) return Mensaje(playerid,COLOR_BLANCO,"Usted ya pidi� un prestamo.");
Mensaje(playerid,COLOR_BLANCO,"Has pedido un prestamo de $20000");
GivePlayerMoney(playerid,20000);
PI[playerid][Prestamo] = 3;
}
}
}
return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}


stock VelocidadVehiculo(playerid) { //GROVE4L
new Float:PV[4]; if(IsPlayerInAnyVehicle(playerid))
GetVehicleVelocity(GetPlayerVehicleID(playerid),PV[0],PV[1],PV[2]);
else GetPlayerVelocity(playerid,PV[0],PV[1],PV[2]);
PV[3] = floatsqroot(floatpower(floatabs(PV[0]), 2.0) + floatpower(floatabs(PV[1]), 2.0) + floatpower(floatabs(PV[2]), 2.0)) * 180.3;
return floatround(PV[3]);
}

/* COMANDOS*/
CMD:prender(playerid,parametros[]) {
new CocheID = GetPlayerVehicleID(playerid);
/*
if(Gasolina[CocheID] <= 0) return Mensaje(playerid,COLOR_BLANCO,"No puedes encender el coche sin gasolina.");*/
if(Motorencendido[CocheID] == 0) {
if(DCoche(playerid)) {
new enginem, lights, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, lights, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(GetPlayerVehicleID(playerid),VEHICLE_PARAMS_ON, lights, alarm, doors, bonnet, boot, objective);
} }
return 1; }
CMD:luces(playerid,params[]) {
if(luces[playerid] == 0) {
new enginem, lights, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, lights, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, VEHICLE_PARAMS_ON, alarm, doors, bonnet, boot, objective);
luces[playerid] = 1;
}
else if(luces[playerid] == 1) {
new enginem, lights, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, lights, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, VEHICLE_PARAMS_OFF, alarm, doors, bonnet, boot, objective);
luces[playerid] = 0;
}
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:apagarcoche(playerid,parametros[]) {
new CocheID = GetPlayerVehicleID(playerid);
if(Motorencendido[CocheID] == 1) {
if(DCoche(playerid)) {
new enginem, lights, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, lights, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(GetPlayerVehicleID(playerid),VEHICLE_PARAMS_OFF, lights, alarm, doors, bonnet, boot, objective);
} }
return 1; }


																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:cuenta(playerid,params[]) {
new Trabajos[30],Generos[20],String[600],User[MAX_PLAYER_NAME],FaccionN[35],Prestamos[40];
GetPlayerName(playerid,User,sizeof(User));
if(PI[playerid][Trabajo] == 0) { Trabajos = "Sin trabajo"; }
else if(PI[playerid][Trabajo] == 1){ Trabajos = "Basurero"; }
else if(PI[playerid][Trabajo] == 2){ Trabajos = "Piloto"; }
else if(PI[playerid][Trabajo] == 3){ Trabajos = "Conductor de bus"; }
else if(PI[playerid][Genero] == 0) { Generos = "Masculino"; }
else if(PI[playerid][Genero] == 1) { Generos = "Femenino"; }
/* Facciones DEFINIDAS Y LISTA*/
else if(PI[playerid][Faccion] == 0) { FaccionN = "Ninguna"; }
else if(PI[playerid][Faccion] == 1) { FaccionN = "Policia federal"; }
else if(PI[playerid][Faccion] == 2) { FaccionN = "Swat"; }
else if(PI[playerid][Faccion] == 3) { FaccionN = "Medico"; }
else if(PI[playerid][Prestamo] == 0) { Prestamos = "$0."; }
format(String,sizeof(String),"Usuario: %s\tGenero: %s\nTrabajo: %s\tFacci�n: %s.\nPrestamo: %d",User,Generos,Trabajos,FaccionN,Prestamos);
Dialog(playerid,D_Cuenta,DIALOG_STYLE_MSGBOX,"Tus estadisticas del servidor.",String,"Aceptar","");
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:ban(playerid,params[]) {
if(PI[playerid][Staff] == 2) {
if(!sscanf(params,"u",params[0])) {
Mensaje(params[0],COLOR_BLANCO,"Te han baneado.");
Ban(params[0]);

Mensaje(playerid,COLOR_BLANCO,"Lo has baneado.");
}
} else Mensaje(playerid,COLOR_BLANCO,"CMD:/Ban [Player-ID]");
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:kick(playerid,params[]) {
if(PI[playerid][Staff] == 2) {
if(!sscanf(params,"u",params[0])) {
Mensaje(params[0],COLOR_BLANCO,"Te han kickeado.");
Kick(params[0]);

Mensaje(playerid,COLOR_BLANCO,"Lo has kickeado.");
} else Mensaje(playerid,COLOR_BLANCO,"CMD:/kick [Player-ID]");
} 
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:darvida(playerid,params[]) {
if(!sscanf(params,"ud",params[0],params[1])) {
SetPlayerHealth(params[0],params[1]);
}
else Mensaje(playerid,COLOR_BLANCO,"/darvida [ID Player][Cantidad de vida]");
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:dardinero(playerid,params[]) {
if(!sscanf(params,"ud",params[0],params[1])) {
GivePlayerMoney(params[0],params[1]);
}
else Mensaje(playerid,COLOR_BLANCO,"/dardinero [ID Player][Cantidad de dinero]");
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:fly(playerid,parametros[]) {
new Float:X,Float:Y,Float:Z;
GetPlayerPos(playerid, X,Y,Z);
SetPlayerPos(playerid, X+15,Y+15,Z+15);
SetPlayerHealth(playerid, 1000);
return 1;
}
CMD:dartrabajo(playerid,params[]) {
if(!sscanf(params,"ud",params[0],params[1])) {
PI[params[0]][Trabajo] = params[1];
new String[140],Nombre[MAX_PLAYER_NAME],Nombre2[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
GetPlayerName(params[0],Nombre2,sizeof(Nombre));
format(String,sizeof(String),"El administrador %s asign� un trabajo a %s.",Nombre,Nombre2);
Mensaje(playerid,COLOR_BLANCO,String);
Mensaje(params[0],COLOR_BLANCO,String);
} else Mensaje(playerid,COLOR_BLANCO,"/dartrabajo{555555} [ID player] [ID Trabajo]");
return 1; }

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:darnivel(playerid,parametros[]) {
if(!sscanf(parametros,"ud",parametros[0],parametros[1])) {
SetPlayerScore(parametros[0],parametros[1]);
}
return 1; }

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:a(playerid,params[]) {
new String[128],RangoA[15],User[MAX_PLAYER_NAME];
GetPlayerName(playerid,User,sizeof(User));
if(PI[playerid][Staff] == 1) { RangoA = "Moderador"; }
else if(PI[playerid][Staff] == 2) { RangoA = "Administrador"; }
else if(isnull(params)) return Mensaje(playerid, COLOR_BLANCO,"CMD:/A [Chat administrativo]");
format(String,sizeof(String),"{006FFF}-[Chat Admin]{FFFFFF} %s %s: %s",User,RangoA,params);
StaffMensaje(Gris,String);
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:cadmin(playerid,params[]) {
new CMDAdminD[150];
strcat(CMDAdminD,"\t\t\t{006FFF}-{FFFFFF}{555555}Comandos administrativos.\n\t{FFFFFF}/Kick - /Ban - /A - /daradmin  - /fly -/darnivel");
if(PI[playerid][Staff] >= 1) {
Dialog(playerid,AAyuda,DIALOG_STYLE_MSGBOX,"Comandos administrativos",CMDAdminD,"Listo","Salir");
}
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:ayuda(playerid,params[]) {
Dialog(playerid,DAyuda,DIALOG_STYLE_LIST,"Dialogo de ayuda.","{006FFF}-{FFFFFF}General\n{006FFF}-{FFFFFF}Coche\n{006FFF}-{FFFFFF}Banco\n{006FFF}-{FFFFFF}Propiedad.\n{006FFF}-{FFFFFF}Facci�n.\n{006FFF}-{FFFFFF}Negocio.","Elegir","Salir");
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:reglas(playerid,params[]) {
Dialog(playerid,DReglas,DIALOG_STYLE_MSGBOX,"Reglas del servidor","-No DM\n-No RK","Listo","");
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:cajero(playerid,params[]) {
/* FALTAN COORDENADAS*/
Dialog(playerid,DBanco,DIALOG_STYLE_LIST,"Banco.","{006FFF}-{FFFFFF}Depositar\n{006FFF}-{FFFFFF}Sacar\n{006FFF}-{FFFFFF}Estado","Elegir","Salir");
return 1;
}
CMD:irtrabajo(playerid,params[]) {
Dialog(playerid,iratrabajo,DIALOG_STYLE_LIST,"Trabajo ir","Avi�n\nBasurero\nBus","Ir","Salir");
return 1;
}
																																																/*
________________________________________________________________________________________________________________
																																																*/
																																																
CMD:tadmin(playerid,params[]) { PI[playerid][Staff] = 2; return 1; }
CMD:gpos(playerid,params[]) {
new Float:X,Float:Y,Float:Z,String[50];
GetPlayerPos(playerid,X,Y,Z);
format(String,sizeof(String)," X:%f\n Y:%f\n Z:%f",X,Y,Z);
SendClientMessage(playerid,COLOR_BLANCO,String);
return 1;
}

CMD:creditos(playerid,params[]) {
new String[290] = "\t\t- {006FFF}Programador:{FFFFFF}Max_Contreras - Nazareno_Quintana .\n\t\t- {006FFF}Mapping:{FFFFFF}Max_Contreras - Nazareno_Quintana -  \n\n\n \n\n\n{555555}Gamemode creado desde 0 Sin ninguna base.\n Todos los derechos reservados.";
Dialog(playerid,DCreditos,DIALOG_STYLE_MSGBOX,"Equipo de desarrollo.(-Cr�ditos).",String,"Salir","");
return 1;
}
CMD:consulta(playerid,params[]) {
if(isnull(params)) return Mensaje(playerid,COLOR_BLANCO,"Utiliza: /Consulta [Duda]");
new String[280],Nombre[MAX_PLAYER_NAME];
GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String,sizeof(String),"{FF1212}(-Consultas- {FFFFFF} %s consulta: %s {FF1212}-)",Nombre,params);
ConsultaMensaje(String);
return 1;
}
CMD:dconsulta(playerid,params[]) {
ConsultaA[playerid] = 1;
SendClientMessage(playerid,COLOR_BLANCO,"Ahora no podr�s ver las consultas.");
return 1;
}
CMD:aconsulta(playerid,params[]) {
ConsultaA[playerid] = 0;
SendClientMessage(playerid,COLOR_BLANCO,"Ahora podr�s ver las consultas.");
return 1;
}
CMD:dskin(playerid,params[]) {
if(!sscanf(params,"ud",params[0],params[1])) {
if(params[1] > 299) return Mensaje(playerid,COLOR_BLANCO,"{FF1212}ERROR:{FFFFFF}No puedes ese n�mero solo:{006FFF} 0 - 299");
SetPlayerSkin(params[0],params[1]);
} else Mensaje(playerid, COLOR_BLANCO,"/Dskin [ID] [0 - 299]");
return 1;
}
CMD:basurero(playerid,params[]) {
Checkpoint(playerid,0.5,2647.1001000,2296.8999000,10.3000000);
Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'CheckPoint'.");
TrabajoBasurero[playerid] = 1;
return 1;
}
CMD:irbasura(playerid,params[]) {
SetPlayerPos(playerid,2655.1001000,2300.8999000,10.3000000);
return 1;
}

//_____________________________________________________________________________________________
command(staffenservicio, playerid, params[])
{
if(PI[playerid][Staff] < 1) return SendClientMessage(playerid, COLOR_BLANCO, "* No est� autorizado a utilizar este comando debido a que no es parte del Staff. ");
if (EstadoDuty[playerid] == false)
{
EstadoDuty[playerid] = true;
SetPlayerHealth(playerid, 999999);
SetPlayerArmour(playerid, 999999);
SetPlayerColor(playerid, COLOR_ADMIN);
new name[MAX_PLAYER_NAME+1], string[128];
GetPlayerName(playerid, name, sizeof(name));

new Skina = GetPlayerSkin(playerid);
SkinAdmin[playerid] = Skina;
SetTimer("PonerSkinAdmin",1000,0);
format(string, sizeof(string), "El Administrador {0C8EF8}%s {FFFFFF}Est� en servicio respondiendo dudas y/o consultas. (/w %d /duda)", name,playerid);
SendClientMessageToAll(0xC4C4C4FF, string);
return 1;
}
else if (EstadoDuty[playerid] == true)
{
SetPlayerSkin(playerid,SkinAdmin[playerid]);
EstadoDuty[playerid] = false;
SetPlayerHealth(playerid, 100);
SetPlayerArmour(playerid, 0);
SetPlayerColor(playerid, COLOR_BLANCO);
new name[MAX_PLAYER_NAME+1], string[128];
GetPlayerName(playerid, name, sizeof(name));

format(string, sizeof(string), "El Administrador {0C8EF8}%s {FFFFFF}Est� fuera de servicio y en ROL", name);
SendClientMessageToAll(0xC4C4C4FF, string);
return 1;
}
return 1;
}


CMD:entrar(playerid,parametros[]) {
if(Entradas(playerid)) {
Entradas(playerid);
}
return 1;
}
CMD:salir(playerid,parametros[]) {
Salidas(playerid);
return 1;
}
//_____________Comandos del RP_______________
CMD:b(playerid, params[])
{
new mensaje[128];
if(isnull(params)) return SendClientMessage(playerid, COLOR_BLANCO, "Uso: /b [MENSAJE OOC]");
format(mensaje, sizeof(mensaje), "(([OOC] %s dice: %s ))",NombreJugador(playerid), params);
ProxDetector(10.0, playerid, mensaje,Hablar,Hablar2,Hablar3,Hablar4,Hablar5);

return 1;
}

CMD:me(playerid, params[])
{
new mensaje[128];
if(isnull(params)) return SendClientMessage(playerid, COLOR_BLANCO, "Uso: /me [ACCI�N]");
format(mensaje, sizeof(mensaje), "[/Me] %s %s", NombreJugador(playerid), mensaje);
ProxDetector(30.0, playerid, mensaje, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//

return 1;
}
CMD:ccoche(playerid,params[]) {
new Float:X,Float:Y,Float:Z;
GetPlayerPos(playerid,X,Y,Z);
AddStaticVehicleEx(522,X,Y,Z,90.0000000,255,255,15); //Manana
return 1;
}
CMD:do(playerid, params[])
{
new mensaje[128];
if(isnull(params)) return SendClientMessage(playerid, COLOR_BLANCO, "Uso: /do [SONIDO-Sensaci�n]");
format(mensaje, sizeof(mensaje), "* %s [%s]", NombreJugador(playerid), mensaje);
ProxDetector(30.0, playerid, mensaje, COLOR_LIGHTGREEN,COLOR_LIGHTGREEN,COLOR_LIGHTGREEN,COLOR_LIGHTGREEN,COLOR_LIGHTGREEN);
return 1;
}

CMD:g(playerid, params[])
{
new mensaje[128];
if(isnull(params)) return SendClientMessage(playerid, COLOR_BLANCO, "Uso: /g [Grit�s..]");
format(mensaje, sizeof(mensaje), "%s grita: %s!", NombreJugador(playerid), mensaje);
ProxDetector(30.0, playerid, mensaje, Hablar,Hablar2,Hablar3,Hablar4,Hablar5);//
return 1;
}

CMD:s(playerid, params[])
{
new mensaje[128];
if(isnull(params)) return SendClientMessage(playerid, Gris, "Uso: /s [Susurr�]");
format(mensaje, sizeof(mensaje), "%s susurra: %s...", NombreJugador(playerid), mensaje);
ProxDetector(30.0, playerid, mensaje, Hablar,Hablar2,Hablar3,Hablar4,Hablar5);//
return 1;
}
CMD:f(playerid,params[]) {
if(PI[playerid][Faccion] == 0) return Mensaje(playerid,COLOR_BLANCO,"No eres miembro de ninguna facci�n.");
if(isnull(params)) return Mensaje(playerid,COLOR_BLANCO,"/f [Facci�n chat]");
new string1[160],Nombre[MAX_PLAYER_NAME];
GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(string1,sizeof(string1),"{00FF22}[{FFFFFF}Facci�n{00FF22}]{00DD1D}%s{FFFFFF} [Rango:%d]{00DD1D}:%s",Nombre,PI[playerid][Rangof],params);
if(PI[playerid][Faccion] == 1) { Faccionchat(1,string1); }
if(PI[playerid][Faccion] == 2) { Faccionchat(2,string1); }
if(PI[playerid][Faccion] == 3) { Faccionchat(3,string1); }
if(PI[playerid][Faccion] == 4) { Faccionchat(4,string1); }
return 1;
}
CMD:dfac(playerid,params[]) {
if(!sscanf(params,"ud",params[0],params[1])) {
new String[220],Nombre[MAX_PLAYER_NAME],Nombre2[MAX_PLAYER_NAME];

GetPlayerName(playerid,Nombre,sizeof(Nombre));
GetPlayerName(params[0],Nombre2,sizeof(Nombre2));
PI[params[0]][Faccion] = params[1];
PI[params[0]][Rangof] = 6;
format(String,sizeof(String),"{0084FF}-{FFFFFF} El administrador {555555}%s{FFFFFF} le asign� una facci�n a el usuario {555555}%s{FFFFFF}.",Nombre,Nombre2);
StaffMensaje(COLOR_BLANCO,String);
SendClientMessage(params[0],COLOR_BLANCO,String);
} else Mensaje(playerid,COLOR_BLANCO,"/dfac [ID] [FacID]");
return 1;
}
CMD:dstaff(playerid,params[]) {
if(!sscanf(params,"ud",params[0],params[1])) {
new String[220],Nombre[MAX_PLAYER_NAME],Nombre2[MAX_PLAYER_NAME];

GetPlayerName(playerid,Nombre,sizeof(Nombre));
GetPlayerName(params[0],Nombre2,sizeof(Nombre2));
PI[params[0]][Staff] = params[1];
format(String,sizeof(String),"{0084FF}-{FFFFFF} El administrador {555555}%s{FFFFFF} le asigno un rango administrativo a el usuario {555555}%s{FFFFFF}.",Nombre,Nombre2);
StaffMensaje(COLOR_BLANCO,String);
SendClientMessage(params[0],COLOR_BLANCO,String);
} else Mensaje(playerid,COLOR_BLANCO,"/dStaff [ID] [Staff]");
return 1;
}
CMD:drango(playerid,params[]) {
if(!sscanf(params,"ud",params[0],params[1])) {
PI[params[0]][Rangof] = params[1];
} else Mensaje(playerid,COLOR_BLANCO,"/drango [ID] [N1 Rango.]");
return 1;
}
CMD:r(playerid,params[]) {
if(PI[playerid][Faccion] == 0) return Mensaje(playerid,COLOR_BLANCO,"No eres miembro de ninguna facci�n.");
if(isnull(params)) return Mensaje(playerid,COLOR_BLANCO,"/r [Radio chat]");
new string1[120],Nombre[MAX_PLAYER_NAME];
GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(string1,sizeof(string1),"{D21CFF}[Radio]{B100DD}%s :%s",Nombre,params);
if(PI[playerid][Faccion] == 1) { Radiochat(1,string1); }
if(PI[playerid][Faccion] == 2) { Radiochat(2,string1); }
if(PI[playerid][Faccion] == 3) { Radiochat(3,string1); }
if(PI[playerid][Faccion] == 4) { Radiochat(4,string1); }
return 1;
}
/* CASAS*/
CMD:crearnegocio(playerid,params[])
{
	new Float:x,Float:y,Float:z,price,lvl/*NegoLema[24]*/,NInv,string[128],Archivo[100],labelstring[500],NID = ContarNegocios;
	if(!IsPlayerAdmin(playerid)) return 0;
	if(sscanf(params,"ddd",lvl,price,NInv)) return SendClientMessage(playerid,COLOR_BLANCO,"Coloc�: {0084FF}/{FFFFFF}CrearNegocios [Nivel] [Precio] [Nivel Invertir]");
	if(lvl < 0) return SendClientMessage(playerid,COLOR_RED,"Nivel minimo 1.");
	GetPlayerPos(playerid,x,y,z);/*
	NegocioInfo[NID][NLema] = NegoLema;*/
	NegocioInfo[NID][Nivel] = lvl;
	NegocioInfo[NID][Precio] = price;
	NegocioInfo[NID][Comprada] = 0;
	NegocioInfo[NID][NX] = x;
	NegocioInfo[NID][NY] = y;
	NegocioInfo[NID][NZ] = z;
	NegocioInfo[NID][Invert] = NInv;
	NegocioInfo[NID][NegocioID] = NID;
	format(NegocioInfo[NID][DuNombre],24,"Negocio en VENTA.");
	format(string,sizeof(string),"{555555}Negocio:{FFFFFF}  \n{555555}Nivel:{FFFFFF} %d \n{555555}Precio: \n{51FF00}$ {FFFFFF}%d\nNegocio ID: [%d]",NegocioInfo[NID][Nivel],NegocioInfo[NID][Precio],NegocioInfo[NID][NegocioID]);
    SendClientMessage(playerid,COLOR_RED,"{FFFFFF}Sistema de Negocios:{555555} Propiedad Creada.");
    SendClientMessage(playerid,COLOR_LIME,string);
    NegocioEntrada[NID] = CreatePickup(1272,1,x,y,z,GetPlayerVirtualWorld(playerid));

	format(Archivo,sizeof(Archivo),"Archivos de Negocios/%i.ini",NID);
	dini_Create(Archivo);
	if(dini_Exists(Archivo))
	{/*
	    dini_Set(Archivo,"Lema",NegoLema);*/
	    dini_Set(Archivo,"Propietario","No Tiene");
	    dini_IntSet(Archivo,"Comprado",0);
		dini_IntSet(Archivo,"Nivel",lvl);
		dini_IntSet(Archivo,"Precio",price);
		dini_FloatSet(Archivo,"NX",x);
		dini_FloatSet(Archivo,"NY",y);
		dini_FloatSet(Archivo,"NZ",z);
		dini_IntSet(Archivo,"Invert",NInv);
		dini_IntSet(Archivo,"NegocioID",NID);
	}
	else
	{
	    dini_Create(Archivo);
	}
	format(labelstring,sizeof(labelstring),"{555555}Negocio:{FFFFFF} \n{555555}Nivel:{FFFFFF} %d \n{555555}Precio: {51FF00}$ {FFFFFF}%d\nNegocio ID: [%d]",lvl,price,NegocioInfo[NID][NegocioID]);
	NegocioInfo[NID][NegocioLabel] = Create3DTextLabel(labelstring,0xFF0000FF,x,y,z,25.0,GetPlayerVirtualWorld(playerid));
	ContarNegocios ++;
	return 1;
}

CMD:crearcasa(playerid,params[])
{
	new Float:x,Float:y,Float:z,price,lvl,casanombre[24],string[128],Archivo[100],labelstring[500],hID = ContarCasas;
	if(!IsPlayerAdmin(playerid)) return 0;
	if(sscanf(params,"s[24]dd",casanombre,lvl,price)) return SendClientMessage(playerid,COLOR_RED,"Coloc�: {0084FF}/CrearCasa [A�o] [Nivel] [Precio]");
	if(lvl < 0) return SendClientMessage(playerid,COLOR_RED,"Nivel minimo 1.");
	GetPlayerPos(playerid,x,y,z);
	PropiedadInfo[hID][CaNombre] = casanombre;
	PropiedadInfo[hID][Nivel] = lvl;
	PropiedadInfo[hID][Precio] = price;
	PropiedadInfo[hID][Comprada] = 0;
	PropiedadInfo[hID][CasaX] = x;
	PropiedadInfo[hID][CasaY] = y;
	PropiedadInfo[hID][CasaZ] = z;
	PropiedadInfo[hID][CasaVirtual] = GetPlayerVirtualWorld(playerid);
	format(PropiedadInfo[hID][Npropietario],24,"Propiedad en VENTA.");
	format(string,sizeof(string),"Propiedad:\n{0084FF}Nivel:{FFFFFF} %d {0084FF}Precio: {51FF00}$ {FFFFFF}%d"/*,PropiedadInfo[hID][CaNombre]*/,PropiedadInfo[hID][Nivel],PropiedadInfo[hID][Precio]);
    SendClientMessage(playerid,COLOR_RED,"{FFFFFF}Sistema de casas:{555555} Propiedad Creada.");
    SendClientMessage(playerid,COLOR_LIME,string);
    CasaEntrada[hID] = CreatePickup(1273,1,x,y,z,GetPlayerVirtualWorld(playerid));

	format(Archivo,sizeof(Archivo),"Archivos de Casas/%i.ini",hID);
	dini_Create(Archivo);
	if(dini_Exists(Archivo))
	{
	    dini_Set(Archivo,"Name",casanombre);
	    dini_Set(Archivo,"Owner","No owner");
	    dini_IntSet(Archivo,"Owned",0);
		dini_IntSet(Archivo,"Level",lvl);
		dini_IntSet(Archivo,"Price",price);
		dini_FloatSet(Archivo,"X",x);
		dini_FloatSet(Archivo,"Y",y);
		dini_FloatSet(Archivo,"Z",z);
		dini_IntSet(Archivo,"VirtualWorld",GetPlayerVirtualWorld(playerid));
	}
	else
	{
	    dini_Create(Archivo);
	}
	format(labelstring,sizeof(labelstring),"Propiedad:\n{FFFFFF} %s {0084FF}Nivel:{FFFFFF} %d {0084FF}Precio: {51FF00}$ {FFFFFF}%d"/*,casanombre*/,lvl,price);
	PropiedadInfo[hID][CasaLabel] = Create3DTextLabel(labelstring,0xFF0000FF,x,y,z,25.0,GetPlayerVirtualWorld(playerid));
	ContarCasas ++;
	return 1;
}
CMD:minegocio(playerid,params[]) {
if(PI[playerid][TNegocio] == 1) {
for(new i = 0; i < MAX_NEGOCIOS; i++)
{
	
	if(PlayerToPoint(playerid,3.0,NegocioInfo[i][NX],NegocioInfo[i][NY],NegocioInfo[i][NZ])) {
	InvertirNumero[playerid] = NegocioInfo[i][Invert];
	Dialog(playerid,D_NEGOCIOS,DIALOG_STYLE_LIST,"Sistema de negoicio.","- Invertir negocio.\n- Vender Negocio.","Elegir","Salir");
	}
}
}
return 1;
}
CMD:casa(playerid,params[])
{
	for(new i = 0; i < MAX_HOUSES; i++)
		{
			new pname[24];
			GetPlayerName(playerid,pname,sizeof(pname));
			if(IsPlayerInRangeOfPoint(playerid,3.0,PropiedadInfo[i][CasaX],PropiedadInfo[i][CasaY],PropiedadInfo[i][CasaZ]))
			{
			Dialog(playerid,DIALOG_CCasa,DIALOG_STYLE_LIST,"Opciones de propiedad.","{006FFF}-{FFFFFF}Comprar departamento.\n{006FFF}-{FFFFFF}Opciones del departamento.","Elegir","Salir");
	}
	}
	return 1;
}
CMD:salirpropiedad(playerid,params[]) {
if(IsPlayerInRangeOfPoint(playerid,2.0,444.646911,508.239044,1001.419494)) {
for(new i = 0; i < MAX_HOUSES; i++)
{
LoadPos(playerid);
}
}
if(IsPlayerInRangeOfPoint(playerid,2.0,2527.654052,-1679.388305,1015.498596)) {
for(new i = 0; i < MAX_HOUSES; i++)
{
LoadPos(playerid);
}
}
if(IsPlayerInRangeOfPoint(playerid,2.0,2807.619873,-1171.899902,1025.570312)) {
for(new i = 0; i < MAX_HOUSES; i++)
{
LoadPos(playerid);
}
}
if(IsPlayerInRangeOfPoint(playerid,2.0,1527.229980,-11.574499,1002.097106)) {
for(new i = 0; i < MAX_HOUSES; i++)
{
LoadPos(playerid);
}
}
if(IsPlayerInRangeOfPoint(playerid,2.0,2496.049804,-1695.238159,1014.742187)) {
for(new i = 0; i < MAX_HOUSES; i++)
{
LoadPos(playerid);
}
}
return 1;
}
CMD:cn(playerid,params[]) {
for(new i = 0; i < MAX_NEGOCIOS; i++)
	{
	if(IsPlayerInRangeOfPoint(playerid,3.0,NegocioInfo[i][NX],NegocioInfo[i][NY],NegocioInfo[i][NZ]))
	{
	new String[400];
	strcat(String,"Para comprar �ste negocio tendr�s que aceptar\n Los terminos y condiciones.\n");
	strcat(String,"- Al comprar �ste negocio tendr�s que invertir en la bolsa.\n");
	strcat(String,"- Pagar los impuestos.");
	Dialog(playerid,D_ComprarNeg,DIALOG_STYLE_MSGBOX,"Contrato del negocio.",String,"Aceptar","Rechazar");
	}
}
return 1;
}
CMD:obtenerpasaporte(playerid,params[]) {
if(PI[playerid][Pasaporte] == 1) return Mensaje(playerid,COLOR_BLANCO,"Julia dice: �Por qu� quieres otro pasaporte? , solo se puede 1.");
PI[playerid][Pasaporte] = 1;
Mensaje(playerid,COLOR_BLANCO,"Julia dice: Bien, obtuviste tu pasaporte y tus pertenencias.");
GivePlayerMoney(playerid, 10000);
return 1;
}
CMD:obtenerdni(playerid,params[]) {
if(!PlayerToPoint(playerid,5.0,362.2000100,173.6000100,1008.0000000)) return Mensaje(playerid,COLOR_BLANCO,"No estas en la posici�n para pedir tu documento.");
if(PI[playerid][Dni] == 1) return Mensaje(playerid,COLOR_BLANCO,"Ya tienes tu documento.");/*
PI[playerid][Dni] = 1;*/
Mensaje(playerid,COLOR_BLANCO,"Se�ora: Espere por favor...(Espera 1 Minuto para recibir tu dni.)");
ControlP(playerid,0);
SetTimer("ObtenerDni1",10000,0);

return 1;
}

// 24-7 SISTEMA.
CMD:comprar(playerid,params[]) {
if(!PlayerToPoint(playerid,2.0,-31.0000000,-28.8000000,1003.2000100)) return Mensaje(playerid,COLOR_BLANCO,"No estas en la pos para comprar");
Compro[playerid] = 0;
Mensaje(playerid,COLOR_BLANCO,"Compraste en la tienda.");
GivePlayerMoney(playerid,-DParacomprar[playerid]);
if(ComproGaseosa[playerid] >= 1) {
PI[playerid][CBebida] += ComproGaseosa[playerid];
}
else if(ComproGalleta[playerid] >= 1) {
PI[playerid][CComida] += ComproGalleta[playerid];

}
else if(ComproPan[playerid] >= 1) {
PI[playerid][CComida] += ComproPan[playerid];
}

return 1;
}
CMD:consumir(playerid,params[]) {
new String[200];
format(String,sizeof(String),"-{FFFFFF}Comida Cantidad[{44FF00}%d{FFFFFF}]\n-Gaseosa Cantidad[{44FF00}%d{FFFFFF}]\n- Cocaina [{44FF00}%d{FFFFFF}]\n- Porro [{44FF00}%d{FFFFFF}]",PI[playerid][CComida],PI[playerid][CBebida],PI[playerid][TCocaina],PI[playerid][TPorro]);
Dialog(playerid,D_Consumir,DIALOG_STYLE_LIST,"Elige que quieres consumir.",String,"Elegir","Salir");
return 1;
}
CMD:pedirticket(playerid,params[]) {
/*
if(PlayerToPoint(playerid,-31.0000000,-28.8000000,1003.2000100,5.0)) {*/
TicketC[playerid] = 1;
Mensaje(playerid,COLOR_BLANCO,"Ya tienes tu ticket.");

return 1;
}

CMD:agarrarproducto(playerid,params[]) {
if(TicketC[playerid] == 1) {
if(PlayerToPoint(playerid,2.0,-31.1000000,-25.2000000,1002.2000100)) {
Dialog(playerid,D_Bebida,DIALOG_STYLE_LIST,"Elige el producto.","{FFFFFF}-Coca cola{00930F} $5{FF006B}(V+10)\n{FFFFFF}-Pepsi {00930F}$5 {FF006B}(V+10)","Elegir","Salir");
}
else if(PlayerToPoint(playerid,2.0,-34.7000000,-10.4000000,1002.000100)) {
Dialog(playerid,D_Comida,DIALOG_STYLE_LIST,"Elige el producto.","{FFFFFF}-Paquete de pan - Jamon Y Queso. {00930F}$5 {FF006B}(V+10)\n{FFFFFF}- Bolsa de galletas - Surtidas. {00930F}$10 {FF006B}(V+20)","Elegir","Salir");
}
} else Mensaje(playerid,COLOR_BLANCO,"No tienes ticket.");
return 1;
}

CMD:traer(playerid,params[]) {
if(!sscanf(params,"u",params[0])) {
new Float:X,Float:Y,Float:Z;
GetPlayerPos(playerid,X,Y,Z);
PPos(params[0],X,Y,Z);
} else Mensaje(playerid,COLOR_BLANCO,"/traer [ID-PLAYER]");
return 1;
}
CMD:ddinero(playerid,params[]) {
if(!sscanf(params,"ud",params[0],params[1])) {
GivePlayerMoney(params[0],params[1]);
} else Mensaje(playerid,COLOR_BLANCO,"/DDinero [ID-PLAYER][Monto]");
return 1;
}
CMD:dvida(playerid,params[]) {
if(!sscanf(params,"ud",params[0],params[1])) {
SetPlayerHealth(params[0],params[1]);
} else Mensaje(playerid,COLOR_BLANCO,"/DVida [ID-PLAYER][Porcentaje de vida {FF006B}0/100{FFFFFF}]");
return 1;
}
CMD:ir(playerid,params[]) {
if(!sscanf(params,"u",params[0])) {
new Float:X,Float:Y,Float:Z;
GetPlayerPos(params[0],X,Y,Z);
PPos(playerid,X,Y,Z);
} else Mensaje(playerid,COLOR_BLANCO,"/ir [ID-PLAYER]");
return 1;
}
																																									/*
														C�MANDOS DE FACCIONES:
																																									*/
																																									
			  /*POLICIA FEDERAL.
CMD:localizar(playerid,params[]) {
new Float:X,Float:Y,Float:Z;
if(!sscanf(params,"u",params[0])) {
if(params[0] != INVALID_PLAYER_ID) {
GetPlayerPos(params[0],X,Y,Z);
C


}
}
return 1;
}
CMD:revisar(playerid,params[])  {
new Arma,Municion,GArma[6];
if(!sscanf(params,"u",params[0])) {
for (new i=0; i<9; i++)
{
GetPlayerWeaponData(params[0], i, Arma, Municion);
if(Arma != 0 && Municion != 0)
{
GArma[6] = "| Armas.";
}
}
}
return 1;
}*/

CMD:armamento(playerid,params[]) {/*
if(PlayerToPoint(playerid,257.2999900,77.0000000,1004.2999900,10.0)) {*/
if(PI[playerid][Faccion] == 1) {
Dialog(playerid,D_ArmamentoPF,DIALOG_STYLE_LIST,"Armamento Policial.","{00B3FF}-{FFFFFF}Cadete\n{00B3FF}-{FFFFFF}Oficial\n{00B3FF}-{FFFFFF}Subcomisario\n{00B3FF}-{FFFFFF}Comisario\n{00B3FF}-{FFFFFF}Guardar ropa\n{00B3FF}-{FFFFFF}Colocar Ropa","Elegir","Salir");
}
return 1;
}
CMD:irls(playerid,params[]) {
PPos(playerid,1554.8000500,-1675.6999500,16.8000000);
return 1;
}
CMD:removerinv(playerid,params[]) {
PI[playerid][Inv1] = 0;
PI[playerid][Inv2] = 0;
PI[playerid][Inv3] = 0;
PI[playerid][Inv4] = 0;
return 1;
}
CMD:irinthosp(playerid,params[]) {
PPos(playerid,1124.54163, -1325.26929, 1633.40002);
return 1;
}
CMD:masinfo(playerid,params[]) {
new String[1200];
strcat(String,"{FFFFFF}- El d�a de paga son cada{0084FF} 1{FFFFFF} hora.\n- Para pasar de nivel tienes que tener {0084FF}12{FFFFFF} Horas s� o s�. {0084FF}Exp:{FFFFFF}12/12. En todos los niveles estar� en mayor {0084FF}12{FFFFFF}.\n");
strcat(String,"- El gamemode es creado desde {0084FF}0{FFFFFF}, puedes ver los cr�ditos en {0084FF}/creditos{FFFFFF}.\n- Puedes consultar al administrador con el c�mando {0084FF}/consulta{FFFFFF}.\n");
strcat(String,"- Para comprar en el {0084FF}24-7 {FFFFFF}tienes que ir a la caja registradora colocar \n{0084FF}/pedirticket{FFFFFF} y luego ir al lugar {0084FF}(Pickup){FFFFFF} Y poner {0084FF}/agarrarproducto{FFFFFF}\n");
strcat(String,"Una ves seleccionado el producto vas a la{0084FF} caja registradora {FFFFFF}y te cobrar�.\n- Puedes consumir el alimento con el c�mando {0084FF}/consumir{FFFFFF}.\n");
strcat(String,"- Si tienes un negocio tendr�s que poner {0084FF}/minegocio{FFFFFF}\n Y invertir tu{0084FF} dinero. {FFFFFF}Se le pagar� cada payday.\n Pero tendr�s que renovarlo todo los {0084FF}payday's{FFFFFF}.");
strcat(String,"\n- Si quieres un prestamo , ve al banco y coloca {0084FF}/pedirprestamo{FFFFFF} \n Tienes prestamos de {0084FF}$5000 {FFFFFF}hasta {0084FF}$20000 {FFFFFF}con cuotas sin intereses!");
strcat(String,"\n- Para llamar a un servicio utiliza {0084FF}/telefono{FFFFFF}");
Dialog(playerid,D_MASINFO,DIALOG_STYLE_MSGBOX,"Informaci�n completa,",String,"Listo","");
return 1;
}
CMD:advertencia(playerid,params[]) {
if(PI[playerid][Staff] >= 3) return Mensaje(playerid,COLOR_BLANCO,"No eres del staff Nivel 3.");
new NombreA[MAX_PLAYER_NAME],NombreS[MAX_PLAYER_NAME],String[150];
if(!sscanf(params,"uu",params[0],params[1])) {
GetPlayerName(params[0],NombreA,sizeof(NombreA));
GetPlayerName(playerid,NombreS,sizeof(NombreS));
PI[params[0]][Adv] += 1;
format(String,sizeof(String),"STAFF: %s recibi� una advertencia administrativa por %s.",NombreA,NombreS);
StaffMensaje(COLOR_BLANCO,String);
if(PI[params[0]][Adv] == 3) {
PI[params[0]][Staff] = 0;
PI[params[0]][Adv] = 0;
Mensaje(playerid,COLOR_BLANCO,"Fuiste automaticamente expulsado de la administraci�n.");
}
} else Mensaje(playerid,COLOR_BLANCO,"/Advertencia [AdminID]");
return 1;
}
CMD:pedirprestamo(playerid,params[]) {
new String[300];
strcat(String,"{0084FF}-{FFFFFF} ${00930F}5000 {FFFFFF}(10 Cuotas de $500 sin intereses)\n{0084FF}-{FFFFFF} ${00930F}15000 {FFFFFF} (15 Cuotas de $1000 sin intereses).\n{0084FF}-{FFFFFF} ${00930F}20000 {FFFFFF} (10 Cuotas de $2000 sin intereses).");
Dialog(playerid,D_Prestamo,DIALOG_STYLE_LIST,"Petici�n de prestamos.",String,"Pedir","Salir");
return 1;
}
CMD:tazer(playerid,params[]) {
if(IsPlayerConnected(playerid))
{
    if(PI[playerid][Faccion] == 1)
    {
    	SendClientMessage(playerid, COLOR_BLANCO, "Has sacado el tazer.");
		SetPlayerAttachedObject(playerid,3,18642,5,0.12,0.02,-0.05,0,0,45,1,1,1);
	}
}
return 1;
}
CMD:cajeros(playerid,params[]) {
new String[100],Nombre[MAX_PLAYER_NAME];
GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String,sizeof(String),"Nombre de cuenta: %s",Nombre);
TextDrawSetString(BText1[playerid],String);
SelectTextDraw(playerid, 0x555555555);
TextDrawShowForPlayer(playerid,BRetirar);
TextDrawShowForPlayer(playerid,BText1[playerid]);
TextDrawShowForPlayer(playerid,BEstado);
TextDrawShowForPlayer(playerid,BBox1);
TextDrawShowForPlayer(playerid,BBox2);
TextDrawShowForPlayer(playerid,BBox3);
TextDrawShowForPlayer(playerid,BBox4);
TextDrawShowForPlayer(playerid,BRetirar);
TextDrawShowForPlayer(playerid,BText4);
TextDrawShowForPlayer(playerid,BText5);
TextDrawShowForPlayer(playerid,BText6);
return 1;
}
CMD:elegirropa(playerid,params[]) {
ShowModelSelectionMenu(playerid, skinlist, "Elige tu conjunto de ~b~prenda~w~.");
return 1;
}

CMD:carid(playerid,params[]) {
new String[150];
format(String,sizeof(String),"%d",GetPlayerVehicleID(playerid)-600);
Mensaje(playerid,COLOR_BLANCO,String);
return 1;
}

CMD:cerrar(playerid,params[]) {
	if(gPlayerHasCar[playerid] == 1)
 		{
     	    new v, Float:vehx, Float:vehy, Float:vehz;
			v = Vehicle[playerid];
	    	GetVehiclePos(v, vehx, vehy, vehz);
    		if(IsPlayerInRangeOfPoint(playerid, 3.0, vehx, vehy, vehz))
    		{
    		    if(VehicleInfo[playerid][Locked] == 0)
    		    {
					SetVehicleParamsForPlayer(v, playerid, 0, 1);
			    	PlayerPlaySound(playerid, 1145, 0.0, 0.0, 0.0);
					Mensaje(playerid,COLOR_BLANCO,"Cerraste tu veh�culo.");
 					VehicleInfo[playerid][Locked] = 1;
	 				gVehLocked[v] = 1;
					return 1;
				}
				if(VehicleInfo[playerid][Locked] == 1)
    		    {
					SetVehicleParamsForPlayer(v, playerid, 0, 0);
			    	PlayerPlaySound(playerid, 1145, 0.0, 0.0, 0.0);
					Mensaje(playerid,COLOR_BLANCO,"Destrabaste tu veh�culo.");
 					VehicleInfo[playerid][Locked] = 0;
	 				gVehLocked[v] = 0;
					return 1;
				}
			}
			else
			{
			    SendClientMessage(playerid, COLOR_BLANCO, "Tienes que estar cerca de tu veh�culo.");
			    return 1;
   			}
		}
		else
		{
		    SendClientMessage(playerid, COLOR_BLANCO, "Usted no tiene un veh�culo.");
	}
	return 1;
}
CMD:estacionar(playerid,params[]) {
     	new Float:X, Float:Y, Float:Z, Float:Rot;
   	  	if(!IsPlayerInVehicle(playerid, Vehicle[playerid]))
   		{
   			SendClientMessage(playerid, 0xFFFFFFAA, "No estas en tu coche.");
			return 1;
		}
		new file[256], name[24];
    	GetPlayerName(playerid, name, 24);
		format(file,sizeof(file),"Archivos de Coches/%s.ini",name);
	    dini_IntSet(file, "Model", VehicleInfo[playerid][Model]);
		dini_IntSet(file, "Price", VehicleInfo[playerid][Price]);
		dini_FloatSet(file, "X", VehicleInfo[playerid][CarX]);
		dini_FloatSet(file, "Y", VehicleInfo[playerid][CarY]);
		dini_FloatSet(file, "Z", VehicleInfo[playerid][CarZ]);
		dini_FloatSet(file, "Rot", VehicleInfo[playerid][CarRot]);
		dini_IntSet(file, "Locked", VehicleInfo[playerid][Locked]);
		dini_Set(file, "Plate", VehPlate[Vehicle[playerid]]);
		dini_IntSet(file, "mod1", VehicleInfo[playerid][mod1]);
		dini_IntSet(file, "mod2", VehicleInfo[playerid][mod2]);
		dini_IntSet(file, "mod3", VehicleInfo[playerid][mod3]);
		dini_IntSet(file, "mod4", VehicleInfo[playerid][mod4]);
		dini_IntSet(file, "mod5", VehicleInfo[playerid][mod5]);
		dini_IntSet(file, "mod6", VehicleInfo[playerid][mod6]);
		dini_IntSet(file, "mod7", VehicleInfo[playerid][mod7]);
		dini_IntSet(file, "mod8", VehicleInfo[playerid][mod8]);
		dini_IntSet(file, "mod9", VehicleInfo[playerid][mod9]);
		dini_IntSet(file, "mod10", VehicleInfo[playerid][mod10]);
		dini_IntSet(file, "mod11", VehicleInfo[playerid][mod11]);
		dini_IntSet(file, "mod12", VehicleInfo[playerid][mod12]);
		dini_IntSet(file, "mod13", VehicleInfo[playerid][mod13]);
		dini_IntSet(file, "mod14", VehicleInfo[playerid][mod14]);
		dini_IntSet(file, "mod15", VehicleInfo[playerid][mod15]);
		dini_IntSet(file, "mod16", VehicleInfo[playerid][mod16]);
		dini_IntSet(file, "mod17", VehicleInfo[playerid][mod17]);
		dini_IntSet(file, "paintjob", VehicleInfo[playerid][paintjob]);
		dini_IntSet(file, "color1", VehicleInfo[playerid][colora]);
		dini_IntSet(file, "color2", VehicleInfo[playerid][colorb]);
  		SendClientMessage(playerid, COLOR_BLANCO, "Coche Estacionado con �xito.");
     	GetVehiclePos(Vehicle[playerid], X, Y, Z);
     	GetVehicleZAngle(Vehicle[playerid], Rot);
     	VehicleInfo[playerid][Model] = GetVehicleModel(playerid);
     	VehicleInfo[playerid][CarX] = X;
     	VehicleInfo[playerid][CarY] = Y;
     	VehicleInfo[playerid][CarZ] = Z;
     	VehicleInfo[playerid][CarRot] = Rot;
		return 1;
}
CMD:vendervehiculo(playerid,params[]) {
if(IsPlayerConnected(playerid))
{
if(!IsPlayerInVehicle(playerid, Vehicle[playerid]))
{
	SendClientMessage(playerid, COLOR_BLANCO, "No estas en tu veh�culo.");
	return 1;
}
if(ConfirmSale[playerid] == 0)
{
	SendClientMessage(playerid, COLOR_BLANCO, "�Estas seguro de vender tu veh�culo? , presiona otra ves /vendervehiculo.");
	ConfirmSale[playerid] = 1;
	return 1;
}
new string[128], file[256], name[MAX_PLAYER_NAME];
GetPlayerName(playerid, name, sizeof(name));
format(file,sizeof(file),"Archivos de Coches/%s.ini",name);
format(string, sizeof(string), "Vendiste tu veh�culo a: $%i.", VehicleInfo[playerid][Price]/2);
GivePlayerMoney(playerid, VehicleInfo[playerid][Price]/2);
DestroyVehicle(Vehicle[playerid]);
dini_Remove(file);
Vehicle[playerid] = 0;
gPlayerHasCar[playerid] = 0;
VehicleInfo[playerid][Model] = 0;
VehicleInfo[playerid][Price] = 0;
VehicleInfo[playerid][CarX] = 0;
VehicleInfo[playerid][CarY] = 0;
VehicleInfo[playerid][CarZ] = 0;
VehicleInfo[playerid][CarRot] = 0;
ConfirmSale[playerid] = 0;
SendClientMessage(playerid, COLOR_BLANCO, string);
return 1;
}
return 1;
}
CMD:ircoches(playerid,params[]) {
PPos(playerid,2135.7805,-1147.6683,24.2358);
return 1;
}
CMD:maletero(playerid,params[]) {
if(gPlayerHasCar[playerid] == 0) return SendClientMessage(playerid, 0xAFAFAFAA, "�ste no es tu veh�culo.");
Dialog(playerid,DMaletero,DIALOG_STYLE_LIST,"Opciones del maletero.","- Abrir\n- Cerrar\n- Guardar Arma\n- Sacar Arma.\n- Mirar lo que tienes.","Elegir","Salir");
return 1;
}
CMD:pedirpermiso(playerid,params[]){
if(!PlayerToPoint(playerid,2.0,2131.64,-1150.73,24.122)) return Mensaje(playerid,COLOR_BLANCO,"No est�s en la posici�n.");
PuedeProbarCoche[playerid] = 1;
Mensaje(playerid,COLOR_BLANCO,"Puedes probar los coches ahora.");
return 1;
}
CMD:sacardelcoche(playerid, params[])
    {
        if(IsPlayerInAnyVehicle(playerid))
        {
            new State = GetPlayerState(playerid), string[90], giveplayerid;
            if(State!=PLAYER_STATE_DRIVER) return Mensaje(playerid, COLOR_BLANCO, "No eres conductor!");
            new GetPlayerNameEx[MAX_PLAYER_NAME]; GetPlayerName(playerid,GetPlayerNameEx,sizeof(GetPlayerNameEx));
            
            if(!sscanf(params, "d", giveplayerid))
            {
                if(IsPlayerConnected(giveplayerid))
				{
    				if(giveplayerid == playerid) return Mensaje(playerid, COLOR_BLANCO, "No te puedes echar ati mismo!");
        			if(IsPlayerInAnyVehicle(giveplayerid))
			        {
						if(GetPlayerVehicleID(playerid) == GetPlayerVehicleID(giveplayerid))
						{
							new GetPlayerNameEx2[MAX_PLAYER_NAME]; GetPlayerName(giveplayerid,GetPlayerNameEx2,sizeof(GetPlayerNameEx2));
	      					format(string, sizeof(string), "%s agarra fuertemente a %s y lo expulsa del veh�culo", GetPlayerNameEx[playerid], GetPlayerNameEx2[giveplayerid]);
					    	ProxDetector(30.0, playerid, string,  MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);
				    	    RemovePlayerFromVehicle(giveplayerid);
						} else Mensaje(playerid, COLOR_BLANCO, "El jugador no est� en tu veh�culo");
					} else Mensaje(playerid, COLOR_BLANCO, "El jugador no est� en un veh�culo");
				} else Mensaje(playerid, COLOR_BLANCO, "Jugador desconectado.");
            } else Mensaje(playerid, COLOR_BLANCO, "/Sacardelcoche [ID]");
        } else Mensaje(playerid, COLOR_BLANCO, "No est�s en ning�n veh�culo!");
    	return 1;
}
CMD:multar(playerid,params[]) {
if(PI[playerid][Faccion] == 1) {
if(!sscanf(params, "dis[64]", params[0], params[1], params[2]))
{
if(params[1] < 0 || params[1] > 10000) return Mensaje(playerid, COLOR_BLANCO, "El m�ximo de multa son 10000$");
if(IsPlayerConnected(params[0]))
{/*
new Float:x,Float:y,Float:z;
GetPlayerPos(params[0],x,y,z);*/
new Nombre[MAX_PLAYER_NAME]; GetPlayerName(params[0],Nombre,sizeof(Nombre));
if(!PDS(5.0,playerid,params[0])) return Mensaje(playerid,COLOR_BLANCO,"Muy lejos del usuario.");/*
if(!ProxDetector(8.0,playerid,x,y,z)) return Mensaje(playerid, COLOR_BLANCO, "Muy lejos de el jugador.");*/
new String[128];/*
if(GetPlayerMoney(params[0]) => params[1]) return Mensaje(playerid,COLOR_BLANCO,"Al jugador le falta dinero.");*/
Mensaje(playerid,COLOR_BLANCO,String);
format(String,sizeof(String),"Infractor: %s Precio de la multa: %i Infracci�n: %s",Nombre,params[1],params[2]);
Mensaje(playerid,COLOR_BLANCO,String);
GivePlayerMoney(params[0],-params[1]);
GivePlayerMoney(playerid,params[1]);
}
} else Mensaje(playerid,COLOR_BLANCO,"/multar [ID] [Precio] [Infracci�n].");
}
return 1;
}
	CMD:m(playerid, params[])
    {
		new Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
        if(sscanf(params, "s[128]", params[0])) return Mensaje(playerid, COLOR_BLANCO, "/m <texto>");
        if(!IsPlayerInAnyVehicle(playerid)) return Mensaje(playerid, COLOR_BLANCO, "No est�s en un veh�culo!");
		if(PI[playerid][Faccion] == 1 || PI[playerid][Faccion] == 2)
        {
			new string[128];
			format(string, sizeof(string), "(Meg�fono) %s: %s",Nombre, params[0]);
			ProxDetector(60.0, playerid, string,0xFFF77F,0xFFF44C,0xFFF021,0xFFF021,0xFFF021);
        } else Mensaje(playerid, COLOR_BLANCO, "No puedes utilizar este comando.");
        return 1;
	}
CMD:placa(playerid,params[]) {
if(PI[playerid][Faccion] == 1 || PI[playerid][Faccion] == 2) {
if(!sscanf(params,"d",params[0])) {
if(!PDS(5.0,playerid,params[0])) return Mensaje(playerid,COLOR_BLANCO,"Muy lejos del usuario.");
new String[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
new FaccionN[40],RangoN[40];
if(PI[playerid][Faccion] == 1) { FaccionN = "Polic�a federal."; }
else if(PI[playerid][Faccion] == 2) { FaccionN = "G.E.O.F"; }
if(PI[playerid][Rangof] == 1) { if(PI[playerid][Faccion] == 1) {  RangoN = "Novato"; } else if(PI[playerid][Faccion] == 2) {  RangoN = "Cadete"; } }
else if(PI[playerid][Rangof] == 2) { if(PI[playerid][Faccion] == 1) {  RangoN = "E-Z"; } else if(PI[playerid][Faccion] == 2) {  RangoN = "Polic�a"; } }
else if(PI[playerid][Rangof] == 3) { if(PI[playerid][Faccion] == 1) {  RangoN = "E-B"; } else if(PI[playerid][Faccion] == 2) {  RangoN = "Investigador"; } }
else if(PI[playerid][Rangof] == 4) { if(PI[playerid][Faccion] == 1) {  RangoN = "Comandante"; } else if(PI[playerid][Faccion] == 2) {  RangoN = "Comandante"; } }
else if(PI[playerid][Rangof] == 5) { if(PI[playerid][Faccion] == 1) {  RangoN = "General"; } else if(PI[playerid][Faccion] == 2) {  RangoN = "Sub Comisario"; } }
else if(PI[playerid][Rangof] == 6) { if(PI[playerid][Faccion] == 1) {  RangoN = "Coronel"; } else if(PI[playerid][Faccion] == 2) {  RangoN = "Comisario"; } }
format(String,sizeof(String),"Nombre y apellido: %s - Facci�n: %s Rango: %s.",Nombre,FaccionN,RangoN);
} else Mensaje(playerid,COLOR_BLANCO,"/Placa [ID]");
}
return 1;
}
CMD:refuerzos(playerid,params[]) {
if(PI[playerid][Faccion] == 1 || PI[playerid][Faccion] == 2) {
new Float:X,Float:Y,Float:Z,Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
GetPlayerPos(playerid,X, Y, Z);
new String[150],String2[150];
format(String,sizeof(String),"%s : Atenci�n solicito refuerzos!! en el siguiente lugar! ((Sigue el checkpoint ROJO)).",Nombre);
StaffMensaje(COLOR_BLANCO,String);
format(String2,sizeof(String2),"%s : Atenci�n solicito refuerzos!! en el siguiente lugar! ((Sigue el checkpoint ROJO)).",Nombre);
Mensaje(playerid,COLOR_BLANCO,String2);
if(PI[playerid][Faccion] == 1) {
for(new i = 0; i < MAX_PLAYERS; i++)
{
if(IsPlayerConnected(i))
{
if(PI[playerid][Faccion] == 1) {
if( i != playerid)
SetPlayerCheckpoint(i, X, Y, Z, 5.0);
}
}
}
}
else if(PI[playerid][Faccion] == 2){
for(new i = 0; i < MAX_PLAYERS; i++)
{
if(IsPlayerConnected(i))
{
if(PI[playerid][Faccion] == 2) {
if( i != playerid)
SetPlayerCheckpoint(i, X, Y, Z, 5.0);
}
}
}
}
}
return 1;
}
/*CMD:sospechosos(playerid,params[]) {
if(PI[playerid][Faccion] == 1 || PI[playerid][Faccion] == 2) return Mensaje(playerid,COLOR_BLANCO,"!- Error no puedes utilizar �ste c�mando.");
new String[120];
for(new i = 0; i < MAX_PLAYERS; i++)
{

new Buscados = GetPlayerWantedLevel(i);
GetPlayerName(i,
format(String,sizeof(String),"Sospechoso : %s %d",Nombre,Buscados);
return 1;
}*/
CMD:d(playerid,params[]) {
if(PI[playerid][Faccion] == 1 && PI[playerid][Rangof] == 6 || PI[playerid][Faccion] == 2 && PI[playerid][Rangof] == 6 || PI[playerid][Faccion] == 3 && PI[playerid][Rangof] == 6 || PI[playerid][Faccion] == 4 && PI[playerid][Rangof] == 6) {
new String[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
if(isnull(params)) return Mensaje(playerid,COLOR_BLANCO,"/D 'epartamento' [Mensaje]");
new FaccionN[40];
if(PI[playerid][Faccion] == 1) { FaccionN = "Polic�a federal"; }
if(PI[playerid][Faccion] == 2) { FaccionN = "G.E.O.F"; }
if(PI[playerid][Faccion] == 3) { FaccionN = "Doctor"; }
if(PI[playerid][Faccion] == 4) { FaccionN = "Gobernador"; }
format(String,sizeof(String),"%s Cargo: %s dice: %s.",Nombre,FaccionN,params);
DepartamentoMensaje(COLOR_BLANCO,String);
}
return 1;
}


CMD:anunciopublico(playerid,params[]) {
if(PI[playerid][Faccion] == 1 && PI[playerid][Rangof] == 6 || PI[playerid][Faccion] == 2 && PI[playerid][Rangof] == 6 || PI[playerid][Faccion] == 3 && PI[playerid][Rangof] == 6 || PI[playerid][Faccion] == 4 && PI[playerid][Rangof] == 6) {
new String[300],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
if(isnull(params)) return Mensaje(playerid,COLOR_BLANCO,"/AnuncioPublico [Mensaje]");
new FaccionN[40];
if(PI[playerid][Faccion] == 1) { FaccionN = "Comisario"; }
if(PI[playerid][Faccion] == 2) { FaccionN = "G.E.O.F"; }
if(PI[playerid][Faccion] == 3) { FaccionN = "Doctor"; }
if(PI[playerid][Faccion] == 4) { FaccionN = "Gobernador"; }
format(String,sizeof(String),"-{001EFF}[AP] {FFFFFF}%s [%s] dice: {001EFF}%s{FFFFFF}.",Nombre,FaccionN,params);
SendClientMessageToAll(COLOR_BLANCO,String);
}
return 1;
}
CMD:servicio(playerid,params[]) {
ServicioMedico[playerid] = 1;
return 1;
}
CMD:prepararjeringa(playerid,params[]) {
if(ServicioMedico[playerid] == 1) return Mensaje(playerid,COLOR_BLANCO,"No estas en servicio.Por lo cual no traes el bolso m�dico.");
Dialog(playerid,PJeringa,DIALOG_STYLE_LIST,"- BOLSO -","- Jeringa 15ml. \n- Jeringa 50ml.","Elegir","Salir");/*
ControlP(playerid,0);
SetTimer("Prepararlajeringa",5000,0);*/
return 1;
}
CMD:curar(playerid,params[]) {
if(!sscanf(params,"u",params[0])) {
if(!PDS(1.0,playerid,params[0])) return Mensaje(playerid,COLOR_BLANCO,"Muy lejos del usuario.");
if(params[0] != playerid)
if(JeringaLista[playerid] == 1) { 
if(GetPlayerHealth(params[0]) <= 20)
{
if(Jeringa[playerid] == 1)  { PerdioJeringa(playerid); SetPlayerHealth(params[0],0); }
SetPlayerHealth(params[0],100);
}
else if(GetPlayerHealth(params[0]) >= 21)
{/*
	if(JeringaLista[playerid] == 1) return Mensaje(playerid,COLOR_BLANCO,"No tienes preparada la jeringa.");*/
if(Jeringa[playerid] == 2) { PerdioJeringa(playerid); SetPlayerHealth(params[0],0); }
SetPlayerHealth(params[0],100);
}
} else Mensaje(playerid,COLOR_BLANCO,"No tienes preparada la jeringa.");
} else Mensaje(playerid,COLOR_BLANCO,"/Curar [ID/Nombre]");
return 1;
}
CMD:sacardelfondom(playerid,params[]) {
if(PI[playerid][Faccion] == 4 && PI[playerid][Rangof] == 6) {
if(!sscanf(params,"d",params[0])) {
GuardarFondos(FondoM-params[0]);
new String[200];
format(String,sizeof(String),"Sacaste del fondo monetario una suma de: {17C300}$%d{FFFFFF} y queda un total de: {17C300}$%d.",params[0],FondoM);
Mensaje(playerid,COLOR_BLANCO,String);
} else Mensaje(playerid,COLOR_BLANCO,"/Fondo [Monto]");
}
return 1;
}
CMD:fondos(playerid,params[]) {
if(PI[playerid][Faccion] == 4 && PI[playerid][Rangof] == 6) {
new String[120];
format(String,sizeof(String),"Fondo Monetario: %d",FondoM);
SendClientMessage(playerid,COLOR_BLANCO,String);
}
return 1;
}
CMD:modificarimpuestos(playerid,params[]) {
if(PI[playerid][Faccion] == 4 && PI[playerid][Rangof] == 6) {
if(!sscanf(params,"d",params[0])) {
new String[200];
GuardarImpuestos(params[0]);
format(String,sizeof(String),"{0077FF}[Anuncio del gobierno]{FFFFFF} - El precio del impuesto total ahora es de: {17C300}$%d.",Impuestos);
SendClientMessageToAll(COLOR_BLANCO,String);
} else Mensaje(playerid,COLOR_BLANCO,"/ModificarImpuestos {0077FF}[Precio]");
}
return 1;
}
CMD:impuestop(playerid,params[]) {
if(PI[playerid][Faccion] == 4 && PI[playerid][Rangof] == 6) {
new String[200];
format(String,sizeof(String),"{0077FF}[Anuncio del gobierno]{FFFFFF} - El precio del impuesto total es de: {17C300}$%d.",Impuestos);
SendClientMessage(playerid,COLOR_BLANCO,String);
}
return 1;
}
CMD:redactarnoticias(playerid,params[]) {
if(Redactando[playerid] == 1) return Mensaje(playerid,COLOR_BLANCO,"Ya estas redactando.");
Redactando[playerid] = 1;
Mensaje(playerid,COLOR_BLANCO,"((Ahora empieza a hablar normalmente.))");
return 1;
}
CMD:entrevistara(playerid,params[]) {
if(!sscanf(params,"u",params[0])) {
if(!IsPlayerConnected(params[0])) return Mensaje(playerid,COLOR_BLANCO,"El jugador est� desconectado.");
if( params[0] != playerid)
Redactando[params[0]] = 1;
Mensaje(params[0],COLOR_BLANCO,"((Ahora empieza a hablar normalmente.))");
} else Mensaje(playerid,COLOR_BLANCO,"/EntrevistarA [ID/Nombre]");
return 1;
}
CMD:recogerdroga(playerid,params[]) {
GuardarDrogas(1,Marihuana+30);
GuardarDrogas(2,Cocaina+30);
DrogasInfo();
return 1;
}
CMD:comprardrogas(playerid,params[]) {
/*if(Marihuana <= 14) return Mensaje(playerid,COLOR_BLANCO,"No hay esa cantidad de drogas para que puedas comprar.");*/
Dialog(playerid,ComprarDrogas,DIALOG_STYLE_LIST,"Elige tu droga.","- Marihuana 15mg $10\n- Cocaina 3gm $25","Comprar","Salir");

return 1;
}
CMD:recolectardrogas(playerid,params[]) {
if(!DCoche(playerid)) return Mensaje(playerid,COLOR_BLANCO,"No estas en una cosechadora de drogas");
new vehicleid = GetPlayerVehicleID(playerid);
if(!GetVehicleModel(vehicleid) == 532) return Mensaje(playerid,COLOR_BLANCO,"�ste veh�culo no es una cosechadora.");
Mensaje(playerid,COLOR_BLANCO,"Sigue los checkpoints.");
RCosechadora[playerid] = 1;
Checkpoint(playerid,-1024.8000500,-1621.9000200,76.0000000,5.0);
return 1;
}
CMD:irtrabajocamion(playerid,params[]) {
PPos(playerid,-1048.1999500,-650.0999800,42.9000000);
return 1;
}
CMD:armar(playerid,params[]) {
if(PI[playerid][TMarihuana] >= 15) { 
Dialog(playerid,D_Armar,DIALOG_STYLE_LIST,"Elige tu opci�n.","- Armar porro.","Elegir","Salir");
} else Mensaje(playerid,COLOR_BLANCO,"No tienes 15 mg de marihuana.");
return 1;
}

CMD:llamar(playerid,params[]) {
new numero;
if(!sscanf(params,"d",numero)) {
if(numero == 0) {
Mensaje(playerid,COLOR_BLANCO,"No puedes usar ese n�mero.");
}
/*

if(!IsPlayerConnected(numero)) return Mensaje(playerid,COLOR_BLANCO,"El n�mero solicitado, no est� disponible.");*/
for(new i = 0; i < MAX_PLAYERS; i++)
{
if(PI[i][Telefono] == numero) { 
if(!IsPlayerConnected(i)) return Mensaje(i,COLOR_BLANCO,"El n�mero solicitado, no est� disponible.");
Mensaje(i,COLOR_BLANCO,"Te est�n llamando ./Atender");
Llamaaluser[playerid] = i;
Llamaaluser[i] = playerid;
Llamando[playerid] = 1;
Llamando[i] = 1;
}
}
} else Mensaje(playerid,COLOR_BLANCO,"/Llamar [N�mero]");
return 1;
}
CMD:atender(playerid,params[]) {/*
Llamaaluser[playerid] = numero;*/
Aceptollamada[playerid] = 1;
Mensaje(playerid,COLOR_BLANCO,"Ya puedes hablar.");
Mensaje(Llamaaluser[playerid],COLOR_BLANCO,"Ya puedes hablar.");
Aceptollamada[Llamaaluser[playerid]] = 1;
return 1;
}
CMD:comprartelefono(playerid,params[]) {
if(PI[playerid][Telefono] == 0) {
new RandomNumero = random(1 >= 10000);
PI[playerid][Telefono] = RandomNumero;
new String[120];
format(String,sizeof(String),"Tu n�mero de tel�fono es: %d.",PI[playerid][Telefono]);
Mensaje(playerid,COLOR_BLANCO,String);
} else Mensaje(playerid,COLOR_BLANCO,"Ya tienes un tel�fono.");
return 1;
}
CMD:minumero(playerid,params[]) {
new String[120];
format(String,sizeof(String),"Tu n�mero de tel�fono es: %d.",PI[playerid][Telefono]);
Mensaje(playerid,COLOR_BLANCO,String);
return 1;
}
CMD:telefono(playerid,params[]) {
if(PI[playerid][Telefono] >= 1) {
Dialog(playerid,D_Telefono,DIALOG_STYLE_LIST,"- TEL MEN� -","\t\t- Agenda.\n\t\t- Llamar.\n\t\t- Cortar.","[/]","[X]");
} else Mensaje(playerid,COLOR_BLANCO,"No tienes un tel�fono.");
return 1;
}

CMD:cargarcamion(playerid,params[]) {
if(PI[playerid][Trabajo] == 5) {
if(!GetVehicleModel(playerid) == 578) return Mensaje(playerid,COLOR_BLANCO,"No estas en un cami�n de carga.");
if(!PlayerToPoint(playerid,5.0,-1050.4000200,-650.2000100,32.1000000)) return Mensaje(playerid,COLOR_BLANCO,"No est�s en la posici�n de carga.");
MoveDynamicObject(ObjetoCarga,-1048.1999500,-650.0999800,42.9000000,2.0);
new vehicleid = GetPlayerVehicleID(playerid);
Objeto[vehicleid] = CreateObject(2934,-1048.1992200,-650.0996100,56.9000000,0.0000000,0.0000000,90.0000000);
new String[200],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String, sizeof(String), "[/Me] %s Carga el cami�n..", Nombre);
ProxDetector(30.0, playerid, String, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//

ControlP(playerid,0);
SetTimer("Cargandoelcamion",10000,0);
}
return 1;
}

CMD:llenartanque(playerid,params[]) {
if(!PlayerToPoint(playerid,5.0,-1050.4000200,-650.2000100,32.1000000)) return Mensaje(playerid,COLOR_BLANCO,"No est�s en la posici�n de carga.");
if(!DCoche(playerid)) return Mensaje(playerid,COLOR_BLANCO,"No est�s en ning�n veh�culo.");
TanqueTimer = SetTimer("Llenartanque",4000,1);
ControlP(playerid,0);
return 1;
}
