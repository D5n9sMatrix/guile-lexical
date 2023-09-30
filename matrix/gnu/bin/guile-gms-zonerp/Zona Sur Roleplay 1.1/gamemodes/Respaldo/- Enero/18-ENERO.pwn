																																																						/*
											Zona sur roleplay.						     -
					Programador:ScriptNoob- RZOONE                                       -
					Todos los derechos reservados.                                       -
																						 -
					Versión : BETA 0.1                                                   -      Pronto nuevas actualizaciones.


					____________________________________________________________________________________________________________________
															INFORMACIÓN:
					____________________________________________________________________________________________________________________
  Sistema administrativo:
  /cadmin (Comandos).
  Jugador:
  /Ayuda
					____________________________________________________________________________________________________________________
1-Sistema adminstrativo con 6 comandos.
2-Sistema de usuario - Comandos básicos.
3-Sistema de banco básico. - Depositar-Sacar-Estado. - Le faltan coordendas.-
4-Sistema de motor básico. -/prender -/Apagarcoche.
5-Sistema de trabajo.
6-Sistema de guardado de cuenta. Guarda -Dinero-Admin-Genero-PosX-Y-Z-Trabajo-Trabajos completados-Banco.
7-Sistema de registro y logueado. (Con dini). - Cargado-guardado de cuenta.
8-Chat administrativo.
9-Chat de usuario
10-Sistema de orina y cansancio.
11-Sistema de ROL.
12-Sistema de facción.
13-Sistema de rango de facción.
14-Sistema de radio y chat en facciones[OOC].
15-Sistema de sed (En progreso).
16-Sistema de Dni(Documento)//Faltan coordenadas.
17-Sistema de Pasaporte con devolución de propiedad.(Dinero)//Faltan coordenadas.
18-Entrada y salida con rol. - CMD /Entrar /Salir
19-Sistema de día de paga.
20-Sistemas de niveles cada 12 de exp Subis un nivel.
21-Sistema de inicio administrativo, para poder usar el cómando.
22-

					____________________________________________________________________________________________________________________
  Rangos administrativos:
  1* Moderador.
  2* Administrador ( El dueño del servidor).
  
					____________________________________________________________________________________________________________________

LISTA DE FACCIONES:

														1-Policia federal.
														2-Swat.
                                                        3-Medico.
                                                        4-Gobernador.
                                                        5-Noticiero.
                                                        6-Mecánico.
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
									6-Transportador de mercadería.
									7-Taxista.(Nivel > 2).- Tener conocimiento previo de la ciudad.
					
					
					____________________________________________________________________________________________________________________
  Si tienes alguna duda mandáme un MP a mi usuario (ScriptNoob).
  
 															

					____________________________________________________________________________________________________________________
  
                                                                INFORMACION ADICIONAL:
											- Basado en LS 'Los santos'.
											- Mappeado con MTA última versión.
											- Sistemas en progreso..
					____________________________________________________________________________________________________________________

							La programación está echa por RZoone y scriptnoob. Éste gamemode es totalmente desde 0   -
							Por lo cual es total nuestro derecho si queremos liberarlo o No. Estaremos bajo licencia -
							El gamemode quizás se libere cuando el servidor no cresca más de 0 usuarios habiles y no -
							Tengamos ganas de seguir con el proyecto Roleplay , por lo cual no pasará nunca.
									Copyright(C)- 2013 - 2014 Y para las próximas generaciones.



		IDEAS:
		Sistema de gps.(Localizar sospechoso).
		Sistema de Gasolina.
		Sistema de Negocios.
		Sistema de concesionarios.
		Sistema de compras de productos con canasta- Poner /obtenercanasta , se le aplicará un objeto al jugador , irá a un pick up y pondrá /agarrarp
		el cual abrá 2 - Comida y bebida. , Luego irá al lugar de compra y se le facturará. Se le quitará el objeto y se el quitará el dinero.
		Sistema de inventario.
		Sistema de renta de vehículos.
		Bares.
		
		
		

																																						Copyright(C).
																																																																														*/

#include <a_samp>
#include <dini>
#include <sscanf2>
#include <a_cmd>
#include <foreach>
#include <progress>
#include <Streamer>



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


    #define Checkpoint SetPlayerCheckpoint
	#define Dialog ShowPlayerDialog
	#define Mensaje SendClientMessage
	#define DCoche IsPlayerInAnyVehicle
	#define CT Create3DTextLabel
	#define TDSFP TextDrawShowForPlayer
	#define ControlP TogglePlayerControllable
	
	#define Facciones PI[playerid][Faccion] == 1 || PI[playerid][Faccion] == 2 || PI[playerid][Faccion] == 3 || PI[playerid][Faccion] == 4 || PI[playerid][Faccion] == 5 || PI[playerid][Faccion] == 6 || PI[playerid][Faccion] == 7 || PI[playerid][Faccion] == 8 || PI[playerid][Faccion] == 9

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
    #define Hablar5 0x6E6E6E6E
    
    


																																																/*
________________________________________________________________________________________________________________
																																																*/
enum Necesidades
{
pOrina,
pHambre
};
new NInfo[MAX_PLAYERS][Necesidades];
new Bar:OrinaB[MAX_PLAYERS] = {INVALID_BAR_ID, ...}; // Orina
new Bar:HambreB[MAX_PLAYERS] = {INVALID_BAR_ID, ...}; // Hambre
new Text:MRP,Text:LogoSV;
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
SubNivel
}
new Gasolina[MAX_PLAYERS];
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
new SkinAdmin[MAX_PLAYERS];
new RentaV[10];
new Rentado[MAX_PLAYERS];
new RentadoV[MAX_PLAYERS];
// Gasolina.
new SinGasolina[MAX_PLAYERS];

#define MAX_HOUSES 100

#define HOUSE_UPGRADE_MONEY 1000

new CasaEntrada[MAX_HOUSES];

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
	JugadorEnLaCasa[MAX_PLAYERS];                                                                                                                                                 /*



________________________________________________________________________________________________________________
																																																*/

																																																/*
________________________________________________________________________________________________________________
																																																*/


stock CAvion2(cocheid){
for(new c = 0; c < sizeof(CAvion); c++) { if(cocheid == CAvion[c]) return 1; }
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
stock Rentavehiculos(cocheid) {
for(new c = 0; c < sizeof(RentaV); c++) { if(cocheid == RentaV[c]) return 1; }
return 0;
}
//Sistema de gasolina.
forward GasolinaCheck();
public GasolinaCheck() {
for(new i=0;i<MAX_PLAYERS;i++) {
if(IsPlayerConnected(i))
{
if(GetPlayerState(i) == PLAYER_STATE_DRIVER)
{
new Coche = GetPlayerVehicleID(i);
if(Gasolina[Coche] >= 1) {
Gasolina[Coche] --;
}
/*
else if(Gasolina[Coche] <= 0) {
SinGasolina[Coche] = 1;
new enginem, lights, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(Coche,enginem, lights, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(Coche,VEHICLE_PARAMS_OFF, lights, alarm, doors, bonnet, boot, objective);
Mensaje(i,COLOR_BLANCO,"El coche se quedó sin gasolina.");
}*/
}
}
}
return 1;
}
																																																/*
________________________________________________________________________________________________________________
																																																*/



forward Entradas(playerid);
public Entradas(playerid) {
return 1;
}
forward Salidas(playerid);
public Salidas(playerid) {
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
GivePlayerMoney(playerid, 15000);/*
SetPlayerPos(playerid, 1484.2617,-1744.8719,13.5469);*/
SetPlayerColor(playerid, 0xF7F7F7);
dini_IntSet(Archivo, "Dinero", 2000);
dini_IntSet(Archivo, "Nivel", 1);
dini_IntSet(Archivo, "Faccion", 0);
Dialog(playerid,Dgenero,DIALOG_STYLE_LIST,"-Tu genero.","-Masculino.\n-Femenino.","Elegir","");
print(String);

TextDrawHideForPlayer(playerid, Tit1);
TextDrawHideForPlayer(playerid, Tit2);
TextDrawHideForPlayer(playerid, Tit3);
TextDrawHideForPlayer(playerid, Box1);
TextDrawHideForPlayer(playerid, Box2);
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
format(String,sizeof(String),"Se cargó la cuenta de %s",User);
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
return 1;
}



																																																/*
________________________________________________________________________________________________________________
																																																*/
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
				case 0:{format(labelstring,sizeof(labelstring),"{0084FF}Nombre:{FFFFFF} %s {0084FF}Nivel:{FFFFFF} %i {0084FF}Precio: {51FF00}$ {FFFFFF}%i",PropiedadInfo[i][CaNombre],PropiedadInfo[i][Nivel],PropiedadInfo[i][Precio]);}
				case 1:{format(labelstring,sizeof(labelstring),"{0084FF}Nombre:{FFFFFF} %s\n{0084FF}Estado: {FFFFFF}No disponible -Vendida-\n {0084FF}Nivel: {FFFFFF}%i\n{0084FF}Precio:{51FF00}${FFFFFF}%i\n{0084FF}Dueño: {FFFFFF}%s",PropiedadInfo[i][CaNombre],PropiedadInfo[i][Nivel],PropiedadInfo[i][Precio],PropiedadInfo[i][Npropietario]);}
			}
			PropiedadInfo[i][CasaLabel] = Create3DTextLabel(labelstring,0xFF0000FF,PropiedadInfo[i][CasaX],PropiedadInfo[i][CasaY],PropiedadInfo[i][CasaZ],25.0,PropiedadInfo[i][CasaVirtual]);
			ContarCasas ++;
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
}


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
}

forward ReiniciarHambre(playerid);
public ReiniciarHambre(playerid)
{
NInfo[playerid][pHambre] = 100;
return 1;
}

stock ActualizarProgress(playerid){
SetProgressBarValue(OrinaB[playerid], NInfo[playerid][pOrina]);
UpdateProgressBar(OrinaB[playerid], playerid);

SetProgressBarValue(HambreB[playerid], NInfo[playerid][pHambre]);
UpdateProgressBar(HambreB[playerid], playerid);
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


																																																/*
________________________________________________________________________________________________________________
																																																*/




main()
{
    print("-__________________-");
	print("\t\t\t\tZona sur Roleplay");
	print("\t\t\t\t\t\t Equipo de programación.");
}




																																																/*
________________________________________________________________________________________________________________
																																																*/



public OnGameModeInit()
{
	SetGameModeText("Simulacion de trabajos");
	AddPlayerClass(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0); //No borrar, Evita algunos bug's.
 	ManualVehicleEngineAndLights(); ShowPlayerMarkers(0); DisableInteriorEnterExits(); AllowInteriorWeapons(1);
    UsePlayerPedAnims();
    AntiDeAMX();
    LoadHouses();
    SetTimer("MenosOrina",2000,1);
    SetTimer("GasolinaCheck",2000,1);
    SetTimer("PagaD",3600000,1);
    SetTimer("Mensaje",240000,1);
	/* Textdraw's*/
	Tit1 = TextDrawCreate(230.000000, 101.000000, "Work"); TextDrawBackgroundColor(Tit1, 255); TextDrawFont(Tit1, 3); TextDrawLetterSize(Tit1, 0.500000, 2.000000);
	TextDrawColor(Tit1, -1); TextDrawSetOutline(Tit1, 0); TextDrawSetProportional(Tit1, 1); TextDrawSetShadow(Tit1, 1);
	Tit2 = TextDrawCreate(350.000000, 117.000000, "0.1 beta"); TextDrawBackgroundColor(Tit2, 255); TextDrawFont(Tit2, 2); TextDrawLetterSize(Tit2, 0.200000, 1.000000);
	TextDrawColor(Tit2, -1); TextDrawSetOutline(Tit2, 0); TextDrawSetProportional(Tit2, 1); TextDrawSetShadow(Tit2, 1);
	Tit3 = TextDrawCreate(283.000000, 101.000000, "Simulator"); TextDrawBackgroundColor(Tit3, 255); TextDrawFont(Tit3, 3); TextDrawLetterSize(Tit3, 0.500000, 2.000000);
	TextDrawColor(Tit3, -65281); TextDrawSetOutline(Tit3, 0); TextDrawSetProportional(Tit3, 1); TextDrawSetShadow(Tit3, 1);
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
	LogoSV = TextDrawCreate(30.000000, 428.000000, "Zona Sur"); TextDrawBackgroundColor(LogoSV, 255); TextDrawFont(LogoSV, 2); TextDrawLetterSize(LogoSV, 0.280000, 1.200000);
	TextDrawColor(LogoSV, -1); TextDrawSetOutline(LogoSV, 0); TextDrawSetProportional(LogoSV, 1); TextDrawSetShadow(LogoSV, 1);
	MRP = TextDrawCreate(90.000000, 428.000000, "roleplay"); TextDrawBackgroundColor(MRP, 255); TextDrawFont(MRP, 2); TextDrawLetterSize(MRP, 0.280000, 1.200000); TextDrawColor(MRP, 7864319);
	TextDrawSetOutline(MRP, 0); TextDrawSetProportional(MRP, 1); TextDrawSetShadow(MRP, 1);

	//                      PICKUP'S.
	CreatePickup(1318, 2, 54,432,324,0);
	
	//                      TEXTLABEL'S.
	CT("Holas",COLOR_BLANCO,54,432,324,10.0,0,0);
	CT("Trabajo:\n\n{555555} - PILOTO",COLOR_BLANCO,1319.3000500,1251.4000200,10.5000000,10.0,0,0);
    CT("Trabajo:\n\n{555555} - BASURERO",COLOR_BLANCO,2919.6001000,2118.0000000,17.2000000,10.0,0,0);
    CT("Trabajo:\n\n{555555} - BUS",COLOR_BLANCO,2847.3999000,1287.0999800,11.0000000,10.0,0,0);
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
	
	/* RENTA VEHÍCULOS*/
	RentaV[0] =	AddStaticVehicleEx(410,1561.8000500,-2308.8999000,13.3000000,90.0000000,255,255,15); //Manana
	RentaV[1] =	AddStaticVehicleEx(410,1561.8000500,-2312.3000500,13.3000000,90.0000000,255,255,15); //Manana
	RentaV[2] =	AddStaticVehicleEx(410,1561.9000200,-2315.3999000,13.3000000,90.0000000,255,255,15); //Manana
	RentaV[3] =	AddStaticVehicleEx(410,1562.0000000,-2318.5000000,13.3000000,90.0000000,255,255,15); //Manana
	RentaV[4] =	AddStaticVehicleEx(410,1561.8000500,-2321.6999500,13.3000000,90.0000000,255,255,15); //Manana
	RentaV[5] =	AddStaticVehicleEx(410,1561.5999800,-2325.6001000,13.3000000,90.0000000,255,255,15); //Manana
	RentaV[6] =	AddStaticVehicleEx(410,1561.6999500,-2328.8000500,13.3000000,90.0000000,255,255,15); //Manana
	RentaV[7] =	AddStaticVehicleEx(410,1561.8000500,-2332.1999500,13.3000000,90.0000000,255,255,15); //Manana
	RentaV[8] =	AddStaticVehicleEx(410,1561.8000500,-2335.3000500,13.3000000,90.0000000,255,255,15); //Manana
	RentaV[9] =	AddStaticVehicleEx(410,1561.8000500,-2338.6001000,13.3000000,90.0000000,255,255,15); //Manana

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

	return 1;
}

public OnGameModeExit()
{
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
	if(fexist(Archivo)) { Dialog(playerid, Inicio,DIALOG_STYLE_INPUT,"{FFFFFF}Inicio al servidor.","{65BAFF}Zona Sur {FFFFFF}Roleplay\n\n Ingresá tu contraseña y Inícia","Iniciar","Salir");
	} else { Dialog(playerid, Registro,DIALOG_STYLE_INPUT,"{FFFFFF}Bienvenido","{FFFFFF}Eres nuevo , entonces tendrás que crear\n\t una cuenta coloca una contraseña.","Registrarme","Salir");
}
	return 1;
}

public OnPlayerConnect(playerid)
{
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
	TextDrawShowForPlayer(playerid, Tit3);
	TextDrawShowForPlayer(playerid, Box1);
	TextDrawShowForPlayer(playerid, Box2);
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
DestroyProgressBar(OrinaB[playerid]);
OrinaB[playerid] = INVALID_BAR_ID;

DestroyProgressBar(HambreB[playerid]);
HambreB[playerid] = INVALID_BAR_ID;
return 1;
}

public OnPlayerSpawn(playerid)
{
    MostrarProgress(playerid);
	TextDrawHideForPlayer(playerid, Tit1);
	TextDrawHideForPlayer(playerid, Tit2);
	TextDrawHideForPlayer(playerid, Tit3);
	TextDrawHideForPlayer(playerid, Box1);
	TextDrawHideForPlayer(playerid, Box2);
	TDSFP(playerid,MRP); TDSFP(playerid,LogoSV);/*
	TextDrawShowForPlayer(playerid, BoxAbajo);
	TextDrawShowForPlayer(playerid, TNivel);
	TextDrawShowForPlayer(playerid, Trabajoscompletos);
	TextDrawShowForPlayer(playerid, NivelT[playerid]);
	TextDrawShowForPlayer(playerid, CompletadosT[playerid]);*/
	if(PI[playerid][Registroc] == 0) {
	SetPlayerPos(playerid,1642.0999800,-2334.5000000,13.5000000);
	SetTimer("rtuto",3000,false);
	}
	if(PI[playerid][Registroc] == 1) {
    SetPlayerPos(playerid,PI[playerid][PX],PI[playerid][PY],PI[playerid][PZ]);
    }
	return 1;
}
forward rtuto(playerid);
public rtuto(playerid) { PI[playerid][Registroc] = 1; return 1; }
public OnPlayerDeath(playerid, killerid, reason)
{
    SetTimerEx("ReiniciarHambre", 5000, 0, "d", playerid);
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
if(!IsPlayerConnected(playerid)) return 0;

new nombre[MAX_PLAYER_NAME];
new mensaje[128];
GetPlayerName(playerid, nombre, sizeof(nombre));
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

    if(Motorencendido[playerid] == 0) { Mensaje(playerid,Gris,"Atención:{FFFFFF} El motor del coche está apagado.Coloca{555555} /prender"); }

    if(CAvion2(vehicleid)){ if(PI[playerid][Trabajo] == 2) { Dialog(playerid,DTrabajoAvion,DIALOG_STYLE_LIST,"","Trabajar\nSalir del coche","Elegir","");  }  else Quitarcoche(playerid); }
    
    if(Basurero2(vehicleid)){  if(PI[playerid][Trabajo] == 1) { Dialog(playerid,DTrabajoBasurero,DIALOG_STYLE_LIST,"","Trabajar\nSalir del coche","Elegir","");  }  else Quitarcoche(playerid); }
    
    if(Bus2(vehicleid)){ if(PI[playerid][Trabajo] == 3) { Dialog(playerid,DTrabajoBus,DIALOG_STYLE_LIST,"","Trabajar\nSalir del coche","Elegir","");  }  else Quitarcoche(playerid); }

	if(Rentavehiculos(vehicleid)) {
	if(Rentado[playerid] == 0 && RentadoV[vehicleid] == 0) return Quitarcoche(playerid);
	Dialog(playerid,RentarCocheD,DIALOG_STYLE_MSGBOX,"Renta.","\t ¿Deseas rentar éste vehículo?\n\n\tValor a pagar: $300","Sí","No");
	}
	
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
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
*/	return 1;
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

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
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
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
if(dialogid == Registro) {
if(response) {
new User[MAX_PLAYER_NAME],Archivo[MAX_PLAYERS];
GetPlayerName(playerid, User, sizeof(User));
format(Archivo,sizeof(Archivo),"Archivos de usuarios/%s.ini",User);
dini_Create(Archivo);
SpawnPlayer(playerid);
dini_Set(Archivo,"NombreYApellido",User);
dini_Set(Archivo,"Password",inputtext);
CrearData(playerid);
}
}

																																																/*
________________________________________________________________________________________________________________
																																																*/

if(dialogid == Inicio) {
if(!response) return Dialog(playerid, Inicio,DIALOG_STYLE_INPUT,"Bienvenido","{555555}Zona Sur{FFFFFF}Roleplay\n\n Ingresá tu contraseña y Inícia","Iniciar","");
new User[MAX_PLAYER_NAME],Archivo[MAX_PLAYERS],comprobante[50];
GetPlayerName(playerid, User, sizeof(User));
format(Archivo,sizeof(Archivo),"Archivos de usuarios/%s.ini",User);
format(comprobante, sizeof(comprobante), "%s", dini_Get(Archivo, "Password"));
if (!strcmp (inputtext, comprobante)) {
CD(playerid);
SpawnPlayer(playerid);
}
else {
Dialog(playerid, Inicio,DIALOG_STYLE_INPUT,"Bienvenido","Inícia, La contraseña es {FFFFFF}Incorrecta.","Iniciar","");
}
}

																																																/*
________________________________________________________________________________________________________________
																																																*/

if(dialogid == Dgenero) {
if(response) {
if(listitem == 0) { PI[playerid][Genero] = 0;  SetPlayerSkin(playerid,250); SpawnPlayer(playerid); AD(playerid); } //Masculino
if(listitem == 1) { PI[playerid][Genero] = 0;  SpawnPlayer(playerid); AD(playerid); } } }//Femenino
if(dialogid == DAyuda) {
if(response) {
if(listitem == 0) { Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/Créditos  /Reglas "); }
if(listitem == 1) { Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/Prender /ApagarCoche "); }
if(listitem == 2) { Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/Cajero (Tienes que estár en la posición del cajero.) "); }
if(listitem == 3) {
Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/Propiedad (Tienes que estár en la posición de tu propiedad.) ");
Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/SalirPropiedad {FFFFFF}(Tienes que estár en la posición de salida de tu propiedad.) ");
if(listitem == 4) {
if(PI[playerid][Faccion] == 1) {
Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [FacciónOOC] "); }
	
if(PI[playerid][Faccion] == 2) {
Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [FacciónOOC] ");  }

if(PI[playerid][Faccion] == 3) { Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [FacciónOOC] ");  }

if(PI[playerid][Faccion] == 4) { Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [FacciónOOC] ");  }

if(PI[playerid][Faccion] == 5) { Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [FacciónOOC] ");  }
	
if(PI[playerid][Faccion] == 6) {
	Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [FacciónOOC] ");  }
	
if(PI[playerid][Faccion] == 7) {
	Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [FacciónOOC] ");  }
	
if(PI[playerid][Faccion] == 8) {
	Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [FacciónOOC] ");  }

if(PI[playerid][Faccion] == 9) {
	Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [FacciónOOC] ");  }

if(PI[playerid][Faccion] == 10) {
	Mensaje(playerid,COLOR_BLANCO,"Comandos: {555555}/R [Radio] - /F [FacciónOOC] ");
}}}}}

																																																/*
________________________________________________________________________________________________________________
																																																*/

if(dialogid == DBanco) { if(response) {
if(listitem == 0) {
Dialog(playerid,DDepositar,DIALOG_STYLE_INPUT,"Pon el número que quieras depositar.","Escribe tu monto.","Elegir","Salir"); }

if(listitem == 1) {
new String[190];
format(String,sizeof(String),"-Retirar Monto completo (${45AE00}%d{FFFFFF}).\n-Retirar el numero deseable.",PI[playerid][Bancod]);
Dialog(playerid,DSacar,DIALOG_STYLE_LIST,"Elige la acción.",String,"Elegir","Salir");
/*
Dialog(playerid,DSacar,DIALOG_STYLE_INPUT,"Pon el número que quieras sacar.","Escribe tu monto.","Elegir","Salir"); */ }
if(listitem == 2) {
new User[MAX_PLAYER_NAME],String[128]; GetPlayerName(playerid,User,sizeof(User));
format(String,sizeof(String),"Nombre de usuario:%s {555555}Deposito de banco: $%d",User,PI[playerid][Bancod]);
Mensaje(playerid,COLOR_BLANCO,String); }
} }

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
Mensaje(playerid,0xFFFFFFF,"{555555}Acción:{FFFFFF} Has sacado todo el dinero del banco.");
}
if(listitem == 1) {
Dialog(playerid,DDSacar,DIALOG_STYLE_INPUT,"Pon el número que quieras sacar.","Escribe tu monto.","Elegir","Salir");
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


/*if(dialogid == RentarCocheD) { if(!response) return Quitarcoche(playerid);
new Coche = GetPlayerVehicleID(playerid);
Rentado[Coche] = 1;
Mensaje(playerid,COLOR_BLANCO,"Rentaste el coche");
RentadoV[playerid] = 1;

}*/
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
                if(PropiedadInfo[i][Comprada] == 1) return SendClientMessage(playerid,COLOR_RED,"Está propiedad ya está vendida.");
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
    			format(labelstring,sizeof(labelstring),"{0084FF}Nombre:{FFFFFF} %s\n{0084FF}Estado: {FFFFFF}No disponible -Vendida-\n {0084FF}Nivel: {FFFFFF}%i\n{0084FF}Precio:{51FF00}${FFFFFF}%i\n{0084FF}Dueño: {FFFFFF}%s",PropiedadInfo[i][CaNombre],PropiedadInfo[i][Nivel],PropiedadInfo[i][Precio],pname);
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
						format(string,sizeof(string),"Usted no tiene suficiente dinero para mejorar está casa %d",HOUSE_UPGRADE_MONEY);
						SendClientMessage(playerid,COLOR_RED,string);
						return 0;
					}
					for(new i = 0; i < MAX_HOUSES; i++)
					{
					    if(PropiedadInfo[i][Nivel] > 4) return SendClientMessage(playerid,COLOR_RED,"Llegaste al máximo nivel.");
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
					    format(PropiedadInfo[i][Npropietario],24,"No tiene dueño.");
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
					ShowPlayerDialog(playerid,D_COMPRARC,DIALOG_STYLE_MSGBOX,"Propiedad opciones.","{FFFFFF}Presioná el botón {0084FF}'Comprar'{FFFFFF}\n Para comprar está propiedad.","Comprar","Cancelar");
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
				if(PropiedadInfo[i][Comprada] == 1 && strcmp(pname,PropiedadInfo[i][Npropietario]) != 0) return SendClientMessage(playerid,-1,"Usted no es el dueño de está Propiedad.");
				if(PropiedadInfo[i][Comprada] == 1 && strcmp(PropiedadInfo[i][Npropietario],pname) == 0)
				{
					ShowPlayerDialog(playerid,D_CASAC,DIALOG_STYLE_LIST,"Propiedad opciones.","{FFFFFF}-{FFFFFF}Entrar a la casa.\n{FFFFFF}-{FFFFFF}Actualizar casa.\n{FFFFFF}-{FFFFFF}Vender Casa.","Elegir","Cancelar");
					SavePos(playerid);
				}
			}
		}
    }
    
    } }
return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
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
new Trabajos[30],Generos[20],String[128],User[MAX_PLAYER_NAME],FaccionN[35];
GetPlayerName(playerid,User,sizeof(User));
if(PI[playerid][Trabajo] == 0) { Trabajos = "Sin trabajo"; }
else if(PI[playerid][Trabajo] == 1){ Trabajos = "Basurero"; }
else if(PI[playerid][Trabajo] == 2){ Trabajos = "Piloto"; }
else if(PI[playerid][Trabajo] == 3){ Trabajos = "Conductor de bus"; }
else if(PI[playerid][Genero] == 0) { Generos = "Masculino"; }
else if(PI[playerid][Genero] == 1) { Generos = "Femenino"; }
/* Facciones DEFINIDAS Y LISTA*/
else if(PI[playerid][Faccion] == 1) { FaccionN = "Policia federal"; }
else if(PI[playerid][Faccion] == 2) { FaccionN = "Swat"; }
else if(PI[playerid][Faccion] == 3) { FaccionN = "Medico"; }
format(String,sizeof(String)," Usuario: %s\n Genero: %s\n Trabajo: %s\n	Facción: %s.",User,Generos,Trabajos,FaccionN);
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
Dialog(playerid,DAyuda,DIALOG_STYLE_LIST,"Dialogo de ayuda.","{006FFF}-{FFFFFF}General\n{006FFF}-{FFFFFF}Coche\n{006FFF}-{FFFFFF}Banco\n{006FFF}-{FFFFFF}Propiedad.\n{006FFF}-{FFFFFF}Facción.","Elegir","Salir");
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
Dialog(playerid,iratrabajo,DIALOG_STYLE_LIST,"Trabajo ir","Avión\nBasurero\nBus","Ir","Salir");
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
new String[290] = "\t\t- {006FFF}Programador:{FFFFFF}ScriptNoob .\n\t\t- {006FFF}Mapping:{FFFFFF}ScriptNoob \n\n\n \n\n\n{555555}Gamemode creado desde 0 Sin ninguna base.\n Todos los derechos reservados.";
Dialog(playerid,DCreditos,DIALOG_STYLE_MSGBOX,"Equipo de desarrollo.(-Créditos).",String,"Salir","");
return 1;
}
CMD:consulta(playerid,params[]) {
if(isnull(params)) return Mensaje(playerid,COLOR_BLANCO,"Utiliza: /Consulta [Duda]");
new String[280],Nombre[MAX_PLAYER_NAME];
GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String,sizeof(String),"{FF1212}(-Consultas- {FFFFFF} %s consulta:%s {FF1212}-)",Nombre,params);
ConsultaMensaje(String);
return 1;
}
CMD:dconsulta(playerid,params[]) {
ConsultaA[playerid] = 1;
SendClientMessage(playerid,COLOR_BLANCO,"Ahora no podrás ver las consultas.");
return 1;
}
CMD:aconsulta(playerid,params[]) {
ConsultaA[playerid] = 0;
SendClientMessage(playerid,COLOR_BLANCO,"Ahora podrás ver las consultas.");
return 1;
}
CMD:dskin(playerid,params[]) {
if(!sscanf(params,"ud",params[0],params[1])) {
if(params[1] > 299) return Mensaje(playerid,COLOR_BLANCO,"{FF1212}ERROR:{FFFFFF}No puedes ese número solo:{006FFF} 0 - 299");
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
command(adminduty, playerid, params[])
{
if(PI[playerid][Staff] < 1) return SendClientMessage(playerid, COLOR_BLANCO, "* No está autorizado a utilizar este comando debido a que no es parte del Staff. ");
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
format(string, sizeof(string), "El Administrador {0C8EF8}%s {FFFFFF}Está en servicio respondiendo dudas y/o consultas. (/w %d /duda)", name,playerid);
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

format(string, sizeof(string), "El Administrador {0C8EF8}%s {FFFFFF}Está fuera de servicio y en ROL", name);
SendClientMessageToAll(0xC4C4C4FF, string);
return 1;
}
return 1;
}

//_____________Comandos del RP_______________
CMD:b(playerid, params[])
{
new mensaje[128];
if(isnull(params)) {
format(mensaje, sizeof(mensaje), "(([OOC] %s dice: %s ))",NombreJugador(playerid), mensaje);
ProxDetector(10.0, playerid, mensaje,Hablar,Hablar2,Hablar3,Hablar4,Hablar5);
} else SendClientMessage(playerid, COLOR_BLANCO, "Uso: /b [MENSAJE OOC]");
return 1;
}

CMD:me(playerid, params[])
{
new mensaje[128];
if(isnull(params)) {
format(mensaje, sizeof(mensaje), "[/Me] %s %s", NombreJugador(playerid), mensaje);
ProxDetector(30.0, playerid, mensaje, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
} else SendClientMessage(playerid, Gris, "Uso: /me [ACCIÓN RP]");
return 1;
}

CMD:do(playerid, params[])
{
new mensaje[128];
if(isnull(params)) {
format(mensaje, sizeof(mensaje), "* %s [%s]", NombreJugador(playerid), mensaje);
ProxDetector(30.0, playerid, mensaje, COLOR_LIGHTGREEN,COLOR_LIGHTGREEN,COLOR_LIGHTGREEN,COLOR_LIGHTGREEN,COLOR_LIGHTGREEN);
} else SendClientMessage(playerid, Gris, "Uso: /do [PENSAMIENTO Y/O SONIDO]");
return 1;
}

CMD:g(playerid, params[])
{
new mensaje[128];
if(isnull(params)) {
format(mensaje, sizeof(mensaje), "%s grita: %s!", NombreJugador(playerid), mensaje);
ProxDetector(30.0, playerid, mensaje, Hablar,Hablar2,Hablar3,Hablar4,Hablar5);//
} else SendClientMessage(playerid, Gris, "Uso: /g [Gritas..]");
return 1;
}

CMD:s(playerid, params[])
{
new mensaje[128];
if(isnull(params)) {
format(mensaje, sizeof(mensaje), "%s susurra: %s...", NombreJugador(playerid), mensaje);
ProxDetector(30.0, playerid, mensaje, Hablar,Hablar2,Hablar3,Hablar4,Hablar5);//
} else SendClientMessage(playerid, Gris, "Uso: /s [Susurrá]");
return 1;
}
CMD:f(playerid,params[]) {
if(PI[playerid][Faccion] == 0) return Mensaje(playerid,COLOR_BLANCO,"No eres miembro de ninguna facción.");
if(isnull(params)) return Mensaje(playerid,COLOR_BLANCO,"/f [Facción chat]");
new string1[160],Nombre[MAX_PLAYER_NAME];
GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(string1,sizeof(string1),"{00FF22}[{FFFFFF}Facción{00FF22}]{00DD1D}%s{FFFFFF} [Rango:%d]{00DD1D}:%s",Nombre,PI[playerid][Rangof],params);
if(PI[playerid][Faccion] == 1) { Faccionchat(1,string1); }
if(PI[playerid][Faccion] == 2) { Faccionchat(2,string1); }
if(PI[playerid][Faccion] == 3) { Faccionchat(3,string1); }
if(PI[playerid][Faccion] == 4) { Faccionchat(4,string1); }
return 1;
}
CMD:dfac(playerid,params[]) {
if(!sscanf(params,"ud",params[0],params[1])) {
PI[params[0]][Faccion] = params[1];
} else Mensaje(playerid,COLOR_BLANCO,"/dfac [ID] [FacID]");
return 1;
}

CMD:drango(playerid,params[]) {
if(!sscanf(params,"ud",params[0],params[1])) {
PI[params[0]][Rangof] = params[1];
} else Mensaje(playerid,COLOR_BLANCO,"/drango [ID] [N1 Rango.]");
return 1;
}
CMD:r(playerid,params[]) {
if(PI[playerid][Faccion] == 0) return Mensaje(playerid,COLOR_BLANCO,"No eres miembro de ninguna facción.");
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
CMD:crearcasa(playerid,params[])
{
	new Float:x,Float:y,Float:z,price,lvl,casanombre[24],string[128],Archivo[100],labelstring[500],hID = ContarCasas;
	if(!IsPlayerAdmin(playerid)) return 0;
	if(sscanf(params,"s[24]ii",casanombre,lvl,price)) return SendClientMessage(playerid,COLOR_RED,"Colocá: {0084FF}/CrearCasaZS [Nombre] [Nivel] [Precio]");
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
	format(string,sizeof(string),"{0084FF}Nombre:{FFFFFF} %s {0084FF}Nivel:{FFFFFF} %i {0084FF}Precio: {51FF00}$ {FFFFFF}%i",PropiedadInfo[hID][CaNombre],PropiedadInfo[hID][Nivel],PropiedadInfo[hID][Precio]);
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
	format(labelstring,sizeof(labelstring),"{0084FF}Nombre:{FFFFFF} %s {0084FF}Nivel:{FFFFFF} %i {0084FF}Precio: {51FF00}$ {FFFFFF}%i",casanombre,lvl,price);
	PropiedadInfo[hID][CasaLabel] = Create3DTextLabel(labelstring,0xFF0000FF,x,y,z,25.0,GetPlayerVirtualWorld(playerid));
	ContarCasas ++;
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
			Dialog(playerid,DIALOG_CCasa,DIALOG_STYLE_LIST,"Opciones de habitad.","{006FFF}-{FFFFFF}Comprar departamento.\n{006FFF}-{FFFFFF}Opciones del departamento.","Elegir","Salir");
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
CMD:obtenerpasaporte(playerid,params[]) {
if(PI[playerid][Pasaporte] == 1) return Mensaje(playerid,COLOR_BLANCO,"Julia dice: ¿Por qué quieres otro pasaporte? , solo se puede 1.");
PI[playerid][Pasaporte] = 1;
Mensaje(playerid,COLOR_BLANCO,"Julia dice: Bien, obtuviste tu pasaporte y tus pertenencias.");
GivePlayerMoney(playerid, 10000);
return 1;
}
CMD:obtenerdni(playerid,params[]) {
if(PI[playerid][Dni] == 1) return Mensaje(playerid,COLOR_BLANCO,"Ya tienes tu documento.");
PI[playerid][Dni] = 1;
Mensaje(playerid,COLOR_BLANCO,"Roch: Bien, obtuviste tu dni, cuidelo.");
return 1;
}
CMD:comprar(playerid,params[]) {
return 1;
}
CMD:recogerbolso(playerid,params[]) {
return 1;
}
CMD:agarrarp(playerid,params[]) {
return 1;
}


																																									/*
														CÓMANDOS DE FACCIONES:
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
CMD:ccoche(playerid,params[]) {
new Float:X,Float:Y,Float:Z;
GetPlayerPos(playerid,X,Y,Z);
AddStaticVehicleEx(410,X,Y,Z,90.0000000,255,255,15); //Manana
return 1;
}
