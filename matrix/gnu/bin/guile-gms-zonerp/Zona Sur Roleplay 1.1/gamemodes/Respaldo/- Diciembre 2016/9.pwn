/*
																								Zona Sur Roleplay - Todos los derechos reservados 2012-2016.(C) - Develop M4XSTUDIOS.COM
																								GM totalmente programa desde 0. 22 Mayo 2012.

																																																																														*/

#include <a_samp>
#include <dini>
#include <sscanf2>
#include <zcmd>
#include <progress>
#include <Streamer>
#include <mSelection>
#include <SII>
#pragma 			tabsize 					(0)
AntiDeAMX()
{
   new a[][] =
   {
      "Unarmed (Fist)",
      "Brass K"
   };
   #pragma unused a
}
#pragma unused Demanda
#pragma unused PrecioPer
#if !defined isnull
	#define isnull(%1) \
				((!(%1[0])) || (((%1[0]) == '\1') && (!(%1[1]))))
#endif
new NombreCoches[][] = {
    "Landstalker", "Bravura", "Buffalo", "Linerunner", "Perrenial", "Sentinel",
    "Dumper", "Firetruck", "Trashmaster", "Stretch", "Manana", "Infernus", "Voodoo",
    "Pony", "Mule", "Cheetah", "Ambulance", "Leviathan", "Moonbeam", "Esperanto",
    "Taxi", "Washington", "Bobcat", "Whoopee", "BF Injection", "Hunter", "Premier",
    "Enforcer", "Securicar", "Banshee", "Predator", "Bus", "Rhino", "Barracks",
    "Hotknife", "Trailer 1", "Previon", "Coach", "Cabbie", "Stallion", "Rumpo",
    "RC Bandit", "Romero", "Packer", "Monster", "Admiral", "Squalo", "Seasparrow",
    "Pizzaboy", "Tram", "Trailer 2", "Turismo", "Speeder", "Reefer", "Tropic", "Flatbed",
    "Yankee", "Caddy", "Solair", "Berkley's RC Van", "Skimmer", "PCJ-600", "Faggio",
    "Freeway", "RC Baron", "RC Raider", "Glendale", "Oceanic", "Sanchez", "Sparrow",
    "Patriot", "Quad", "Coastguard", "Dinghy", "Hermes", "Sabre", "Rustler", "ZR-350",
    "Walton", "Regina", "Comet", "BMX", "Burrito", "Camper", "Marquis", "Baggage",
    "Dozer", "Maverick", "Chopper", "Rancher", "FBI Rancher", "Virgo", "Greenwood",
    "Jetmax", "Hotring", "Sandking", "Blista Compact", "Police Maverick", "Boxvillde",
    "Benson", "Mesa", "RC Goblin", "Hotring Racer A", "Hotring Racer B", "Bloodring Banger",
    "Rancher", "Super GT", "Elegant", "Journey", "Bike", "Mountain Bike", "Beagle",
    "Cropduster", "Stunt", "Tanker", "Roadtrain", "Nebula", "Majestic", "Buccaneer",
    "Shamal", "Hydra", "FCR-900", "NRG-500", "HPV1000", "Cement Truck", "Tow Truck",
    "Fortune", "Cadrona", "FBI Truck", "Willard", "Forklift", "Tractor", "Combine",
    "Feltzer", "Remington", "Slamvan", "Blade", "Freight", "Streak", "Vortex", "Vincent",
    "Bullet", "Clover", "Sadler", "Firetruck", "Hustler", "Intruder", "Primo", "Cargobob",
    "Tampa", "Sunrise", "Merit", "Utility", "Nevada", "Yosemite", "Windsor", "Monster",
    "Monster", "Uranus", "Jester", "Sultan", "Stratum", "Elegy", "Raindance", "RC Tiger",
    "Flash", "Tahoma", "Savanna", "Bandito", "Freight Flat", "Streak Carriage", "Kart",
    "Mower", "Dune", "Sweeper", "Broadway", "Tornado", "AT-400", "DFT-30", "Huntley",
    "Stafford", "BF-400", "News Van", "Tug", "Trailer 3", "Emperor", "Wayfarer", "Euros",
    "Hotdog", "Club", "Freight Box", "Trailer", "Andromada", "Dodo", "RC Cam", "Launch",
    "LShowPlayerDialog Car", "SFPD Car", "LVPD Car", "Police Ranger", "Picador", "S.W.A.T Tank", "Alpha",
    "Phoenix", "Glendale", "Sadler", "Luggage Trailer 1", "Luggage Trailer 2", "Stairs Trailer",
    "Boxville", "Utility Trailer 1", "Utility Trailer 2"
};
new PrecioCoches[] = {
	90000,70000,350000,0,40000,74000,0,0,0,0,
	35000,500000,90000,0,0,900000,0,0,50000,60000,
	0,68000,90000,0,150000,0,72000,0,0,350000,
	0,0,0,0,400000,0,65000,0,0,90000,
	0,0,0,0,0,70000,0,0,0,0,
	0,1100000,0,0,0,0,0,0,120000,
	0,0,80000,15000,90000,0,0,60000,60000,120000,0,
	0,7000,0,0,55000,65000,0,150000,45000,50000,
	250000,2000,0,45000,0,0,0,0,0,100000,
	0,65000,70000,0,500000,450000,80000,0,0,0,
	80000,0,600000,600000,400000,130000,750000,90000,150000,2000,
	3000,0,0,0,0,0,70000,60000,70000,0,
	0,200000,300000,0,0,0,80000,65000,0,60000,
	0,0,0,80000,70000,150000,150000,0,0,0,
	65000,800000,60000,50000,0,100000,70000,70000,0,60000,
	90000,80000,0,0,120000,80000,0,0,200000,350000,
	500000,300000,400000,0,0,250000,60000,70000,0,0,
	0,0,0,0,0,70000,60000,0,0,100000,
	65000,90000,0,0,0,70000,25000,200000,0,300000,
	0,0,0,0,0,0,0,0,0,0,
	40000,0,50000,250000,0,0,0,0,0,0,
	0,0

};
new Text:ConcecionarioT[MAX_PLAYERS][22];
new ConteoC[MAX_PLAYERS][4],ListaC[MAX_PLAYERS],PrecioC[MAX_PLAYERS][4];
new Text:VelocimetroT[MAX_PLAYERS][4];
	#define Inicio (01)
	#define Registro (02)
	#define Dgenero (03)
	#define AAyuda (04)
	#define DAyuda (05)
	#define DReglas (06)
	#define DBanco (07)
	#define DDepositar (08)
	#define DSacar (09)
	#define DTrabajoAvion (10)
	#define DTrabajoBasurero (11)
	#define DTrabajoBus (12)
	#define iratrabajo (13)
	#define DDSacar (14)
	#define D_Cuenta (15)
	#define DCreditos (16)
	#define RentarCocheD (17)


	#define D_ArmamentoPF (22)
	#define D_Bebida (23)
	#define D_Comida (24)
	#define D_Consumir (25)
	#define D_EdadIC (26)
	#define D_EdadOOC (27)
	#define D_MASINFO (28)
	#define D_OBTENERDNI1 (29)
	#define MuestraDNI (30)
	#define D_PagarDNI (31)

	#define D_Prestamo (36)
	#define ConcePlate (37)
	#define ConceCompra (38)
	#define DMaletero (39)
	#define DPArma (40)
	#define DSArma (41)
	#define PJeringa (42)
	#define D_Armar (43)
	#define ComprarDrogas (44)
	#define D_Telefono (45)
	#define D_Agenda (46)
	#define D_Agenda1 (47)
    #define D_Agenda2 (48)
    #define D_Agenda3 (49)
    #define D_Agenda4 (50)
    #define D_Agenda5 (51)
    #define D_CNAgenda1 (52)
    #define D_CNAgenda2 (53)
    #define D_CNAgenda3 (54)
    #define D_CNAgenda4 (55)
    #define D_CNAgenda5 (56)
    #define D_CNumAgenda1 (57)
    #define D_CNumAgenda2 (58)
    #define D_CNumAgenda3 (59)
    #define D_CNumAgenda4 (60)
    #define D_CNumAgenda5 (61)
    #define D_TELEFONOM (62)
    #define D_MODIFICAR (63)
	#define D_MColor (64)
	#define D_MColor2 (65)
	#define D_MERCADONEGRO (66)
	#define D_LicenciaV1 (67)
	#define D_LicenciaV2 (68)
	#define D_LicenciaV3 (69)
	#define D_LicenciaV4 (70)
	#define D_LicenciaV5 (71)
	#define D_LicenciaV6 (72)
	#define D_CONTROLVEHICULAR (73)
	#define D_LSERVICIO (74)
	#define D_BANCON (75)
	#define D_SerieBanco (76)
	#define D_Transferirdinero (77)
	#define D_Transferirdinero2 (78)
	#define D_ELEGIRRUBRO (79)
	#define D_ESCRIBERUBRO (80)
	#define D_PMultas (81)
	#define D_Ammu (82)
	#define DemandaC1 (83)
	#define DemandaC2 (84)
	#define D_DARFAC (85)
	#define D_DARFAC2 (86)
	#define D_Vendercochea (87)
	#define Dartrabajo (88)
	#define Dartrabajo2 (89)
	#define D_Gasolina (90)
	#define D_Gasolina2 (91)
	#define D_ElegirFondo (92)
	#define D_COMANDOSA (93)
	#define D_MecanicoMod (94)
	#define D_MecanicoMod2 (95)
	#define D_Canasto (96)
	#define D_Canasto2 (97)
	#define D_PedirPermiso (98)
	#define D_PrenderMotorAvion (99)
	#define D_Revisaravion (100)
	#define D_PrenderTurbinas (101)
	#define D_Basurero1 (102)
	#define D_Basurero2 (103)
	#define D_ConcesionarioC (104)
	#define D_ConcesionarioC2 (105)
	#define D_TransferenciaVeh1 (106)
	#define D_TransferenciaVeh2 (107)
	#define D_TransferenciaVeh3 (108)
	#define D_TransferenciaVeh4 (109)
	#define D_Periodico1 (110)
	#define D_Periodico2 (111)
	#define D_Periodico3 (112)
	#define D_Periodico4 (113)
	#define D_Periodico5 (114)
	#define D_Periodico6 (115)
	#define D_Periodico7 (116)
	#define D_Periodico8 (117)
	#define D_Periodico9 (118)
	#define D_Periodico10 (119)
	#define D_Periodico11 (120)
	#define D_CasilleroMeca (121)
	#define D_PagarMultas (122)
	#define D_Negocio_Menu1 (123)
	#define D_Negocio_Menu2 (124)
	#define D_Negocio_Menu3 (125)
	#define D_Negocio_Menu4 (126)
	#define D_Negocio_Menu5 (127)
	#define D_Negocio_Menu6 (128)
	#define D_Negocio_Menu7 (129)
	#define D_Negocio_Menu8 (130)
	#define D_Negocio_Menu9 (131)
	#define D_Negocio_Menu10 (132)
	#define D_Negocio_Menu11 (133)
	#define D_Negocio_Menu12 (134)
	#define D_CompraNeg (135)
	#define D_ConsumirMenu (136)
	
	#define MAX_VEHICULOS 149
	#define MAX_NEGOCIOS 100
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
	
	#define color_white         0xFFFFFFFF
	#define color_grey          0xAFAFAFFF
	#define color_yellow        0xFFFF00FF
	#define color_lightblue     0x33CCFFFF
	#define color_orange        0xFF8300FF
	#define COLOR_ZS 0x069CFF069
	

	#define ArmamentoFac PlayerToPoint(playerid,257.2999900,77.0000000,1004.2999900,5.0)
	#define 			function%0(%1) 				forward %0(%1); public %0(%1)
	//_______COLORES_______________________
    #define PUBLICRADIO_COLOR 		0x6DFB6DFF
	#define COLOR_GRAD2  			0xBFC0C2FF
	#define COLOR_TWWHITE  			0xFFFFFFAA
	#define COLOR_TWYELLOW  		0xFFFF00AA
	#define COLOR_TWPINK  			0xE75480AA
	#define COLOR_TWRED  			0xFF0000AA
	#define COLOR_TWBROWN  			0x654321AA
	#define COLOR_TWGRAY  			0x808080AA
	#define COLOR_TWOLIVE  			0x808000AA
	#define COLOR_TWPURPLE  		0x800080AA
	#define COLOR_TWTAN  			0xD2B48CAA
	#define COLOR_TWAQUA  			0x00FFFFAA
	#define COLOR_TWORANGE  		0xFF8C00AA
	#define COLOR_TWAZURE  			0x007FFFAA
	#define COLOR_TWGREEN  			0x008000AA
	#define COLOR_TWBLUE  			0x0000FFAA
	#define COLOR_TWBLACK  			0x000000AA

	#define Gris 0xA6F200
	#define Celeste 0xFFFFFF
	#define COLOR_GREY 0x555555 //gris
    #define COLOR_WHITE 		0xFFFFFFFF
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
	
	#define Pickupinfo 1239
	#define Pickupentrada 1318
	
	

    


																																																/*
________________________________________________________________________________________________________________
																																																*/
enum Necesidades
{
pOrina,
pHambre
};
new Text:Tel1;
new Text:Tel2[MAX_PLAYERS];
new Text:Tel3;
new Text:Tel4;
new Text:Tel5;
new Text:Tel6;
new Text:Tel7[MAX_PLAYERS];
new Text:Tel8;
new Text:Tel9;
new Text:Tel10;
new Text:Tel11;
new Text:Tel12;
new Text:Tel13;
new Impresion[MAX_PLAYERS];
new Text:Tel14;
new NoticieroG;
new Text:Tel15;
new NotC[7];
new Text:Tel16;
new Text:Tel17;
new Text:Tel18;
new EligioT[MAX_PLAYERS];
new FondoM; new GasolinaF;
new textdrawscount;
new Text:txtAnimHelper;
new gPlayerUsingLoopingAnim[MAX_PLAYERS];
new Text:BoxIPJ1;
new Text:TextPJ1;
new Text:TextPJ2;
new Text:PeriodicosT[15][MAX_PLAYERS];
new Text:TextPJ3;
new Text:TextPJ4;
new Text:BoxIPJ2;
new Text:TextPJ5;
new Text:TextPJ6;
new Text:TextPJ7;
new Text:TextPJ8;
new Text:TextPJ9;
new NumTrabajo[MAX_PLAYERS];
new PuertaB[3];
new bool:RadiON[MAX_PLAYERS];
new PrecioPer;
new Text:BoxC1;
new Text:BoxC2;
new Text:BoxC3;
new ActivoTuto[MAX_PLAYERS];
new Float:POLX,Float:POLY,Float:POLZ;
new Float:MOLX,Float:MOLY,Float:MOLZ;
new C4CAJAS[MAX_PLAYERS];
new Text:BoxC4;
new GasVehiculo[12];
new BallasC[4];
new Text:BoxC5;
new Text:TextC1;
new GasolinaP;
new Text:TextC2;
new Text:TextC3;
new Text:TextC4;
new Bar:BarGas[MAX_PLAYERS] = {INVALID_BAR_ID, ...};
new CargoGasolina[MAX_PLAYERS],CargarGas[MAX_PLAYERS];
new Bar:EnergiaBar[MAX_PLAYERS] = {INVALID_BAR_ID, ...};
new Text:BoxTuto1;
new Text:BoxTuto2;
new PilotoC[4];
new Text:TitTuto[MAX_PLAYERS];
new Text:TextoTuto[MAX_PLAYERS];
new Compro[MAX_PLAYERS];
new NInfo[MAX_PLAYERS][Necesidades];
new Bar:OrinaB[MAX_PLAYERS] = {INVALID_BAR_ID, ...}; // Orina
new Bar:HambreB[MAX_PLAYERS] = {INVALID_BAR_ID, ...}; // Hambre
new Bar:SedBar[MAX_PLAYERS] = {INVALID_BAR_ID, ...}; //
new Bar:ApetitoBar[MAX_PLAYERS] = {INVALID_BAR_ID, ...}; //
new PuertaB1,PuertaB2;
new MurioJP[MAX_PLAYERS];
new Objeto[MAX_VEHICLES];
new Marihuana,Cocaina;
new Canasta[MAX_PLAYERS][10];
new Murio[MAX_PLAYERS];
new PortonLCN;
enum Coch {
	Propietario[24],
	Float:CX,
	Float:CY,
	Float:CZ,
	InteriorC,
	VWC,
	ColorC1,
	ColorC2,
	CID,
	ModeloC,
	CCerrado,

}
new CI[MAX_VEHICLES][Coch];

/*Sistema de negocios*/
enum NEG {
	nPropietario[24],
	nComprado,
	nTipo,
	Float:nEX,
	Float:nEY,
	Float:nEZ,
	Text3D:nLabel,
	nProductos[5],
	nPTipo[5],
	nPCantidad[5],
	nPPrecio[5],
	nPrecio,
	nEmpleados[3],
	nEmpleado1Nom[24],
	nEmpleado2Nom[24],
	nEmpleado3Nom[24],
	nCajaReg,
	nVentaConG,
	nGanancias,
	nEmpleadoSueldo[3]
}
new ContarNegocios,SeleccionoEmpleado[MAX_PLAYERS],SeleccionoProducto[MAX_PLAYERS];
new NI[MAX_NEGOCIOS][NEG];
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
FrecR,
Pasaporte,
Dni,
SubNivel,
Skin2,
Radiot,
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
Casco,
TC4,
Ganzuas,
LicenciaV,
LicenciaA,
LicenciaF,
Interior,
MV,
NBanco,
TelefonoR,
DniR,
Multas,
PrecioMultas,
Encarcelado,
EnCarcel,
Vendas,
Sogas,
Propiedad,
TPizza,
VehiculoID1,
VehiculoID2,
FechaPeriodicoD,
FechaPeriodicoM,
FechaPeriodicoA,
TPeriodico,
SkinCasillero,
TSprunk,
THamburguesa,
TAMineral,
TJEnvasado,
TTorta,
TCerveza,
TVino,
TWhisky,
TChampagne,
TRadio,
TGPS
}
enum Mec {	PCambio,PRuedas,PModificaciones,PPintura,PArreglar }
new Mecanico[Mec];
new Estelefono[MAX_PLAYERS];
new EstaEnruta[MAX_PLAYERS];
new Text:TextPrueba[MAX_PLAYERS];
new IDSos[MAX_PLAYERS];
new EstaEnConce[MAX_PLAYERS];
new TaxiC[10];
new CochePrendido[MAX_VEHICLES];
new EnergiaPJ[MAX_PLAYERS];
new CambioprecioT;
new Text:BoxB1;
new PuertaLSPDINT[4];
new Text:BoxB2;
new Text:DineroB3[MAX_PLAYERS];
new TieneServicio[MAX_PLAYERS];
new TrabajoPiloto[MAX_PLAYERS];
new ObjetoCarga;
new ColocarP[MAX_PLAYERS];
new CamioneroV[11];
new MecaC[5];

new Text:EMarihuana1;
new Cajas[10]=1,CajasA[10];

new Text:EMarihuana2;
new RBasurero[MAX_PLAYERS];
new GrooveC[4];
enum PerT {
	Fecha[20],
	Imagen[30],
	Subti1[50],
	TextoS1[200],
	Subti2[50],
	TextoS2[200],
	Subti3[50],
	TextoS3[200],

};
new PerI[PerT];
enum PerTS {
	FechaS[20],
	ImagenS[30],
	Subti1S[50],
	TextoS1S[200],
	Subti2S[50],
	TextoS2S[200],
	Subti3S[50],
	TextoS3S[200],

};
new PerIS[PerTS];
new Text:EMarihuana3;
new SedPJ[MAX_PLAYERS],ApetitoPJ[MAX_PLAYERS];
new Tranfeder = mS_INVALID_LISTID;
new Tornado = mS_INVALID_LISTID;
new Broadway = mS_INVALID_LISTID;
new Redactando[MAX_PLAYERS];
new Elegy = mS_INVALID_LISTID;
new Flash = mS_INVALID_LISTID;
new Jester = mS_INVALID_LISTID;
new PocoTun = mS_INVALID_LISTID;
new Remington = mS_INVALID_LISTID;
new BuzonDePeriodicos[8];
new Savanna = mS_INVALID_LISTID;
new Slamvan = mS_INVALID_LISTID;
new Atado[MAX_PLAYERS];
new FechaPer[3];
new Stratum = mS_INVALID_LISTID;
new Sultan = mS_INVALID_LISTID;
new HoraPer;
new Uranus = mS_INVALID_LISTID;
new FondosMecanicos;
new Text:ECocaina;
new EligioColorC[MAX_PLAYERS],EligioItemC[MAX_PLAYERS];

new Aceptollamada[MAX_PLAYERS];
new MostrarVel[MAX_PLAYERS];
new Text:VendaB;
new ComproGalleta[MAX_PLAYERS];
new JugadorTransferencia[MAX_PLAYERS],EligioListaC[MAX_PLAYERS],EligioPrecioC[MAX_PLAYERS],ConcesionarioBajaG[MAX_PLAYERS];
new IDLTaxi;
new Estaentuto[MAX_PLAYERS];
new Ingreso[MAX_PLAYERS];
new ComproPan[MAX_PLAYERS];
new ComproGaseosa[MAX_PLAYERS];
new Vendado[MAX_PLAYERS];
new DParacomprar[MAX_PLAYERS];
new Gasolina[MAX_VEHICLES] = 100;
new TimerTaxi[MAX_PLAYERS];
new Tarifa[MAX_PLAYERS];
new Costodelviaje[MAX_PLAYERS];
new EstaenTaxi[MAX_PLAYERS];
new JeringaLista[MAX_PLAYERS];
new ServicioMedico[MAX_PLAYERS];
//new Text:Tit1;
new Text:Box1;
new AbrioInfo[MAX_PLAYERS];
new LSPDCoche[16];
new Text:Box2;
new Text:BoxAbajo;
new Motorencendido[MAX_PLAYERS];
new YakC[10];
new FLSTV;
new PI[MAX_PLAYERS][PD];
new TrabajoBasurero[MAX_PLAYERS];
new MedicoPedido;
new TrabajoBus[MAX_PLAYERS];
new CAvion[7];
new Float:TX,Float:TY,Float:TZ;
new CBasurero[6];
new CBus[7];
new ConsultaA[MAX_PLAYERS];
new bool:EstadoDuty[MAX_PLAYERS];
new Text:BBox1;
new PreparoBoceto[MAX_PLAYERS];
new LTAXI;
new LineaA[MAX_PLAYERS];
new LineaB[MAX_PLAYERS];
new Pidiotaxi[MAX_PLAYERS];
new Text:BText1[MAX_PLAYERS];/*
new Text:BText2;
new Text:BText3;*/
new Text:BText4;
new Text:BText6,Text:BBox3,Text:BBox4,Text:BEstado,Text:BRetirar;
new Text:BBox2;
new Demanda;
new Text:BText5;
new RCosechadora[MAX_PLAYERS];
new SkinAdmin[MAX_PLAYERS];
new RentaV[10];
new Rentado[MAX_PLAYERS];
new RentadoV[MAX_PLAYERS];
new TicketC[MAX_PLAYERS];
new MedCoche[12];
new PortonYak;
/*Gasolina.*/
new SinGasolina[MAX_PLAYERS];
new Jeringa[MAX_PLAYERS];
new CosechaDrogas[6];
new Eligiolaropa[MAX_PLAYERS];
new skinlist = mS_INVALID_LISTID;
new EligioRubro[MAX_PLAYERS];
//Parkings
#define MAX_PARKINGS 10
enum Park {
	IDP,
	Float:PAX,
	Float:PAY,
	Float:PAZ,
	PAVW,
	PickUp,
	Text3D:PALabel,
}
new Parkings;
new PAI[MAX_PARKINGS][Park];
new CamionTrabajo[MAX_PLAYERS];
new EServicioT[MAX_PLAYERS];
new LoLocalizo[MAX_PLAYERS];
new Text:TaximetroT[MAX_PLAYERS][4];
new Eseltaxista[MAX_PLAYERS];
new Llamaaluser[MAX_PLAYERS],Llamando[MAX_PLAYERS];
new BusUrbanoC[9];
new GarageLSPD[2];
new ECajero[MAX_PLAYERS];
new ColorP[MAX_PLAYERS],ColorS[MAX_PLAYERS];
new Text3D:Drogast;
new TieneLinea[MAX_PLAYERS];
new Text:TXDNI[MAX_PLAYERS][14];
new GMeca[2];
new GobiernoV[5];
new Text:PasaporteText[MAX_PLAYERS][14];
new TanqueTimer;
new Impuestos;
new Facciondar[MAX_PLAYERS];
new lucesp[MAX_PLAYERS];
new TimerContratoV[MAX_PLAYERS];
new LugarG[MAX_PLAYERS];
new CarroLicencia[MAX_PLAYERS];
new RLicenciaV[MAX_PLAYERS];
new VehiculoLICENCIA[MAX_PLAYERS];
new TiempoCajas=-1;
new TerminoCamion[MAX_PLAYERS];
new TransportistaGasR[MAX_PLAYERS];
new LCNC[5];
new VehiculosCreados;
new VehiculosC[MAX_VEHICLES];
                                                                                                                 /*



________________________________________________________________________________________________________________
																																																*/

																																																/*
________________________________________________________________________________________________________________
																																																*/




forward CargarPeriodicos();
public CargarPeriodicos() {
	if(dini_Exists("Archivos de Periodicos/Precio.ini")) {
	PrecioPer=dini_Int("Archivos de Periodicos/Precio.ini","Precio");
	} else  {dini_Create("Archivos de Periodicos/Precio.ini");}
	
	if(dini_Exists("Archivos de Periodicos/Puestos.ini")) {
	BuzonDePeriodicos[0]=dini_Int("Archivos de Periodicos/Puestos.ini","Puesto0");
	BuzonDePeriodicos[1]=dini_Int("Archivos de Periodicos/Puestos.ini","Puesto1");
	BuzonDePeriodicos[2]=dini_Int("Archivos de Periodicos/Puestos.ini","Puesto2");
	BuzonDePeriodicos[3]=dini_Int("Archivos de Periodicos/Puestos.ini","Puesto3");
	BuzonDePeriodicos[4]=dini_Int("Archivos de Periodicos/Puestos.ini","Puesto4");
	BuzonDePeriodicos[5]=dini_Int("Archivos de Periodicos/Puestos.ini","Puesto5");
	BuzonDePeriodicos[6]=dini_Int("Archivos de Periodicos/Puestos.ini","Puesto6");
	BuzonDePeriodicos[7]=dini_Int("Archivos de Periodicos/Puestos.ini","Puesto7");
	}
	else {
	dini_Create("Archivos de Periodicos/Puestos.ini");
	dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto0",20);
	dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto1",20);
	dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto2",20);
	dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto3",20);
	dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto4",20);
	dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto5",20);
	dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto6",20);
	dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto7",20);
	
	}
	if(dini_Exists("Archivos de Periodicos/Textos.ini")) {
	format(PerI[Fecha],20,"%s",dini_Get("Archivos de Periodicos/Textos.ini","Fecha"));
	format(PerI[Imagen],30,"%s",dini_Get("Archivos de Periodicos/Textos.ini","Imagen"));
	format(PerI[Subti1],50,"%s",dini_Get("Archivos de Periodicos/Textos.ini","Subti1"));
	format(PerI[TextoS1],200,"%s",dini_Get("Archivos de Periodicos/Textos.ini","TextoS1"));
	format(PerI[Subti2],50,"%s",dini_Get("Archivos de Periodicos/Textos.ini","Subti2"));
	format(PerI[TextoS2],200,"%s",dini_Get("Archivos de Periodicos/Textos.ini","TextoS2"));
	format(PerI[Subti3],50,"%s",dini_Get("Archivos de Periodicos/Textos.ini","Subti3"));
	format(PerI[TextoS3],200,"%s",dini_Get("Archivos de Periodicos/Textos.ini","TextoS3"));

	}
	else {
	dini_Create("Archivos de Periodicos/Textos.ini");
	dini_Set("Archivos de Periodicos/Textos.ini","Fecha","25/03/2016");
	dini_Set("Archivos de Periodicos/Textos.ini","Imagen","loadsc9:loadsc9");
	dini_Set("Archivos de Periodicos/Textos.ini","Subti1","A la carcel");
	dini_Set("Archivos de Periodicos/Textos.ini","TextoS1","La policia encontro dos delincuentes~n~que intentaron robar un 24-7");
	dini_Set("Archivos de Periodicos/Textos.ini","Subti2","BOCAMPEON");
	dini_Set("Archivos de Periodicos/Textos.ini","TextoS2","Boca le gano al real madrid~n~y se corono campeon del mundo");
	dini_Set("Archivos de Periodicos/Textos.ini","Subti3","Trabajos");
	dini_Set("Archivos de Periodicos/Textos.ini","TextoS3","Debido al aumento de la delincuencia~n~la Policia de Los Santos busca~n~nuevos reclutas para combatirla.");
	}

	return 1;
}
forward CargarNegocios();
public CargarNegocios() {
	for(new i=0;i<MAX_NEGOCIOS;i++) {
	new Archivo[60],String[300],Tipo[30];
	format(Archivo,sizeof(Archivo),"Archivos de Negocios/%d.ini",i);
	if(dini_Exists(Archivo)) {
	format(NI[i][nPropietario],24,"%s",dini_Get(Archivo,"nPropietario"));
	NI[i][nComprado]=dini_Int(Archivo,"nComprado");
	NI[i][nTipo]=dini_Int(Archivo,"nTipo");
	NI[i][nEX]=dini_Float(Archivo,"nEX");
	NI[i][nEY]=dini_Float(Archivo,"nEY");
	NI[i][nEZ]=dini_Float(Archivo,"nEZ");
//	NI[i][nLabel]=dini_Int(Archivo,"nTipo");
	for(new p=0;p<5;p++) {
	format(String,sizeof(String),"nProductos%d",p);
	NI[i][nProductos][p]=dini_Int(Archivo,String);
	format(String,sizeof(String),"nPTipo%d",p);
	NI[i][nPTipo][p]=dini_Int(Archivo,String);
	format(String,sizeof(String),"nPCantidad%d",p);
	NI[i][nPCantidad][p]=dini_Int(Archivo,String);
	format(String,sizeof(String),"nPPrecio%d",p);
	NI[i][nPPrecio][p]=dini_Int(Archivo,String);
	}
	NI[i][nPrecio]=dini_Int(Archivo,"nPrecio");
	for(new p=0;p<3;p++) {
	format(String,sizeof(String),"nEmpleados%d",p);
	NI[i][nEmpleados][p]=dini_Int(Archivo,String);
	format(String,sizeof(String),"nEmpleadoSueldo%d",p);
	NI[i][nEmpleadoSueldo][p]=dini_Int(Archivo,String);
	}
	format(NI[i][nEmpleado1Nom],24,"%s",dini_Get(Archivo,"nEmpleado1Nom"));
	format(NI[i][nEmpleado2Nom],24,"%s",dini_Get(Archivo,"nEmpleado2Nom"));
	format(NI[i][nEmpleado3Nom],24,"%s",dini_Get(Archivo,"nEmpleado3Nom"));
	
	
	NI[i][nCajaReg]=dini_Int(Archivo,"nCajaReg");

	if(NI[i][nTipo] == 1) Tipo="24-7";
	else if(NI[i][nTipo] == 2) Tipo="Bar";
	else if(NI[i][nTipo] == 3) Tipo="Gasolineria";
	else if(NI[i][nTipo] == 4) Tipo="Local er�tico";
	else if(NI[i][nTipo] == 5) Tipo="Ammu-Nation";
	else if(NI[i][nTipo] == 6) Tipo="Tienda de electr�nica";
	
	if(NI[i][nComprado] == 0) {format(String,sizeof(String),"[ {0099e0}%s{FFFFFF} ]\n� Precio: {00e038}$%d{ffffff}\n\n[/ComprarNegocio]\n\n ID: %d",Tipo,NI[i][nPrecio],i);}
	else if(NI[i][nComprado] == 1) {format(String,sizeof(String),"[ {0099e0}%s{FFFFFF} ]\n� Propietario: %s\n\n ID: %d",Tipo,NI[i][nPropietario],i);}
	NI[i][nLabel]=Create3DTextLabel(String,-1,NI[i][nEX],NI[i][nEY],NI[i][nEZ],6.0,0);
	ContarNegocios++;
	}
	}
	return 1;
}
forward GuardarNegocio(Neg);
public GuardarNegocio(Neg) {

	new Archivo[60],String[30];
	format(Archivo,sizeof(Archivo),"Archivos de Negocios/%d.ini",Neg);
	if(!dini_Exists(Archivo)) dini_Create(Archivo);
	if(dini_Exists(Archivo)) {
	dini_Set(Archivo,"nPropietario",NI[Neg][nPropietario]);
	dini_IntSet(Archivo,"nComprado",NI[Neg][nComprado]);
	dini_IntSet(Archivo,"nTipo",NI[Neg][nTipo]);
	dini_FloatSet(Archivo,"nEX",NI[Neg][nEX]);
	dini_FloatSet(Archivo,"nEY",NI[Neg][nEY]);
	dini_FloatSet(Archivo,"nEZ",NI[Neg][nEZ]);
	for(new p=0;p<5;p++) {
	format(String,sizeof(String),"nProductos%d",p);
	dini_IntSet(Archivo,String,NI[Neg][nProductos][p]);
	format(String,sizeof(String),"nPTipo%d",p);
	dini_IntSet(Archivo,String,NI[Neg][nPTipo][p]);
	format(String,sizeof(String),"nPCantidad%d",p);
	dini_IntSet(Archivo,String,NI[Neg][nPCantidad][p]);
	format(String,sizeof(String),"nPPrecio%d",p);
	dini_IntSet(Archivo,String,NI[Neg][nPPrecio][p]);
	}
	dini_IntSet(Archivo,"nPrecio",NI[Neg][nPrecio]);
	for(new p=0;p<3;p++) {
	format(String,sizeof(String),"nEmpleados%d",p);
	dini_IntSet(Archivo,String,NI[Neg][nEmpleados][p]);
	format(String,sizeof(String),"nEmpleadoSueldo%d",p);
	dini_IntSet(Archivo,String,NI[Neg][nEmpleadoSueldo][p]);
	
	}
	dini_IntSet(Archivo,"nCajaReg",NI[Neg][nCajaReg]);
	dini_Set(Archivo,"nEmpleado1Nom",NI[Neg][nEmpleado1Nom]);
	dini_Set(Archivo,"nEmpleado2Nom",NI[Neg][nEmpleado2Nom]);
	dini_Set(Archivo,"nEmpleado3Nom",NI[Neg][nEmpleado3Nom]);
	
	
	
	}
	return 1;
}
forward CargarVehiculosCreados();
public CargarVehiculosCreados() {
	if(dini_Exists("Archivos de Vehiculos/VehiculosCreados.ini")) {
	VehiculosCreados=dini_Int("Archivos de Vehiculos/VehiculosCreados.ini","Creados");
	printf("Vehiculo ID:%i Cargado",VehiculosCreados);
	}
	else {
	dini_Create("Archivos de Vehiculos/VehiculosCreados.ini");
	dini_IntSet("Archivos de Vehiculos/VehiculosCreados.ini","Creados",0);
	}
	return 1;
}
forward CargarVehiculos();
public CargarVehiculos() {
	new String[100];
	for(new i=0;i<VehiculosCreados;i++) {
	format(String,sizeof(String),"Archivos de Vehiculos/%i.ini",i);
	if(dini_Exists(String)) {
	format(CI[i+MAX_VEHICULOS+1][Propietario],128,"%s",dini_Int(String,"Propietario"));
    CI[i+MAX_VEHICULOS+1][CX]=dini_Float(String,"CX");
    CI[i+MAX_VEHICULOS+1][CY]=dini_Float(String,"CY");
    CI[i+MAX_VEHICULOS+1][CZ]=dini_Float(String,"CZ");
    CI[i+MAX_VEHICULOS+1][ModeloC]=dini_Int(String,"ModeloC1");
    CreateVehicle(CI[i+MAX_VEHICULOS+1][ModeloC], CI[i+MAX_VEHICULOS+1][CX],CI[i+MAX_VEHICULOS+1][CY],CI[i+MAX_VEHICULOS+1][CZ], 82.2873, -1, -1, 6000);
    CI[i+MAX_VEHICULOS+1][InteriorC]=dini_Int(String,"InteriorC");
    CI[i+MAX_VEHICULOS+1][VWC]=dini_Int(String,"VWC");
    CI[i+MAX_VEHICULOS+1][ColorC1]=dini_Int(String,"ColorC1");
    CI[i+MAX_VEHICULOS+1][ColorC2]=dini_Int(String,"ColorC2");
    CI[i+MAX_VEHICULOS+1][CCerrado]=dini_Int(String,"CCerrado");
    printf("Vehiculo ID:%i Cargado X: %f Y: %f Z: %f Modelo: %d",i+MAX_VEHICULOS+1,CI[i+MAX_VEHICULOS+1][CX],CI[i+MAX_VEHICULOS+1][CY],CI[i+MAX_VEHICULOS+1][CZ],CI[i+MAX_VEHICULOS+1][ModeloC]);
    ///
	}
	}
	return 1;
}
forward PortonLaCN();
public PortonLaCN() {
	MoveDynamicObject(PortonLCN,1240.5000000,-741.5000000,97.0000000,0.5);
}
forward PortonYakuza();
public PortonYakuza() {
	MoveDynamicObject(PortonYak,318.0000000,-1190.9000000,75.5000000,0.5);
}
forward EnergiaPJT(playerid);
public EnergiaPJT(playerid) {
SedPJ[playerid] --;
ApetitoPJ[playerid] --;
if(EnergiaPJ[playerid] <= 50) {
Mensaje(playerid,COLOR_BLANCO,"! Te est�s quedando sin energ�a, ve a comer algo nutritivo.");
new Float:Vida;
GetPlayerHealth(playerid,Vida);
SetPlayerHealth(playerid,Vida-5);
}
if(SedPJ[playerid] <= 50) {
Mensaje(playerid,COLOR_BLANCO,"! Tienes mucha sed, ve a tomar algo. De lo contrario perder�s energ�a.");
EnergiaPJ[playerid] -= 4;
}
if(ApetitoPJ[playerid] <= 50) {
Mensaje(playerid,COLOR_BLANCO,"! Tienes mucho apetito, ve a comer algo nutritivo.");
EnergiaPJ[playerid] -= 2;
}
return 1;
}
forward guardadoderopa(playerid);
public guardadoderopa(playerid) {
SSkin(playerid, 154);
return 1;
}
new IdTun[MAX_PLAYERS];
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
new HayMedicos;
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
stock CocheTaxi(cocheid){
for(new c = 0; c < sizeof(TaxiC); c++) { if(cocheid == TaxiC[c]) return 1; }
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
stock PoliciaFederalC(cocheid) {
for(new c = 0; c < sizeof(LSPDCoche); c++) { if(cocheid == LSPDCoche[c]) return 1; }
return 0;
}
stock TransportistaGas(cocheid) {
for(new c = 0; c < sizeof(GasVehiculo); c++) { if(cocheid == GasVehiculo[c]) return 1; }
return 0;
}
stock YakuzaCoches(cocheid) {
for(new c = 0; c < sizeof(YakC); c++) { if(cocheid == YakC[c]) return 1; }
return 0;
}
stock MecaCoche(cocheid) {
for(new c = 0; c < sizeof(MecaC); c++) { if(cocheid == MecaC[c]) return 1; }
return 0;
}


stock LCNCoches(cocheid) {
for(new c = 0; c < sizeof(LCNC); c++) { if(cocheid == LCNC[c]) return 1; }
return 0;
}
stock GrooveCoches(cocheid) {
for(new c = 0; c < sizeof(GrooveC); c++) { if(cocheid == GrooveC[c]) return 1; }
return 0;
}
stock PilotoAvion(cocheid) {
for(new c = 0; c < sizeof(PilotoC); c++) { if(cocheid == PilotoC[c]) return 1; }
return 0;
}
stock NotCoches(cocheid) {
for(new c = 0; c < sizeof(NotC); c++) { if(cocheid == NotC[c]) return 1; }
return 0;
}


stock BallasCoches(cocheid) {
for(new c = 0; c < sizeof(BallasC); c++) { if(cocheid == BallasC[c]) return 1; }
return 0;
}

stock GobiernoVehiculo(cocheid) {
for(new c = 0; c < sizeof(GobiernoV); c++) { if(cocheid == GobiernoV[c]) return 1; }
return 0;
}
stock BusUrbano(cocheid) {
for(new c = 0; c < sizeof(BusUrbanoC); c++) { if(cocheid == BusUrbanoC[c]) return 1; }
return 0;
}

stock LSMDC(cocheid) {
for(new c = 0; c < sizeof(MedCoche); c++) { if(cocheid == MedCoche[c]) return 1; }
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
stock cargarjugador(playerid) {
SetTimerEx("CJugador", 3000, false, "i", playerid);
ControlP(playerid,0);
Mensaje(playerid,COLOR_BLANCO,"Espere por favor, se est�n cargando los objetos..");
}
forward CJugador(playerid);
public CJugador(playerid) {
ControlP(playerid,1);
return 1;
}
stock QuitarTel(playerid) {

TextDrawHideForPlayer(playerid,Tel1); TextDrawHideForPlayer(playerid,Tel2[playerid]); TextDrawHideForPlayer(playerid,Tel3); TextDrawHideForPlayer(playerid,Tel4);
TextDrawHideForPlayer(playerid,Tel5); TextDrawHideForPlayer(playerid,Tel6); TextDrawHideForPlayer(playerid,Tel7[playerid]); TextDrawHideForPlayer(playerid,Tel8);
TextDrawHideForPlayer(playerid,Tel9); TextDrawHideForPlayer(playerid,Tel10); TextDrawHideForPlayer(playerid,Tel11); TextDrawHideForPlayer(playerid,Tel12);
TextDrawHideForPlayer(playerid,Tel13); TextDrawHideForPlayer(playerid,Tel14); TextDrawHideForPlayer(playerid,Tel15); TextDrawHideForPlayer(playerid,Tel16);
TextDrawHideForPlayer(playerid,Tel17); TextDrawHideForPlayer(playerid,Tel18);
CancelSelectTextDraw(playerid);
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


stock GuardarPreciosMecanicos() {
if(fexist("Archivos del servidor/PreciosMecanico.txt")) {
dini_IntSet("Archivos del servidor/PreciosMecanico.txt","PCambio",Mecanico[PCambio]);
dini_IntSet("Archivos del servidor/PreciosMecanico.txt","PRuedas",Mecanico[PRuedas]);
dini_IntSet("Archivos del servidor/PreciosMecanico.txt","PModificaciones",Mecanico[PModificaciones]);
dini_IntSet("Archivos del servidor/PreciosMecanico.txt","PPintura",Mecanico[PPintura]);
dini_IntSet("Archivos del servidor/PreciosMecanico.txt","PArreglar",Mecanico[PArreglar]);

} else {
dini_Create("Archivos del servidor/PreciosMecanico.txt");
}
}

forward CargarPreciosMecanicos();
public CargarPreciosMecanicos()
{
Mecanico[PCambio] = dini_Int("Archivos del servidor/PreciosMecanico.txt","PCambio");
Mecanico[PRuedas] = dini_Int("Archivos del servidor/PreciosMecanico.txt","PRuedas");
Mecanico[PModificaciones] = dini_Int("Archivos del servidor/PreciosMecanico.txt","PModificaciones");
Mecanico[PPintura] = dini_Int("Archivos del servidor/PreciosMecanico.txt","PPintura");
Mecanico[PArreglar] = dini_Int("Archivos del servidor/PreciosMecanico.txt","PArreglar");
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
new enginem, luces, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(Coche,enginem, luces, alarm, doors, bonnet, boot, objective);
if(CochePrendido[Coche] == 1) {
if(Gasolina[Coche] >= 1) {
Gasolina[Coche] --;
new String[120];
format(String,sizeof(String),"%dl",Gasolina[Coche]);
TextDrawSetString(VelocimetroT[i][3],String);
SetProgressBarValue(BarGas[i], Gasolina[Coche]);
UpdateProgressBar(BarGas[i], i);
}
else if(Gasolina[Coche] <= 0) {
SinGasolina[Coche] = 1;

SetVehicleParamsEx(Coche,VEHICLE_PARAMS_OFF, luces, alarm, doors, bonnet, boot, objective);
Mensaje(i,COLOR_BLANCO,"El coche se qued� sin gasolina.");
}
}
}
}
}
return 1;
}
forward GasolinaCheckBar();
public GasolinaCheckBar() {

for(new i=0;i<MAX_VEHICLES;i++) {
SetProgressBarMaxValue(BarGas[i], 100);
if(IsPlayerConnected(i))
{
if(GetPlayerState(i) == PLAYER_STATE_DRIVER)
{
new Coche = GetPlayerVehicleID(i);
new enginem, luces, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(Coche,enginem, luces, alarm, doors, bonnet, boot, objective);
if(CochePrendido[Coche] == 1) {
if(Gasolina[Coche] >= 1) {
new String[120];
format(String,sizeof(String),"%dl",Gasolina[Coche]);
TextDrawSetString(VelocimetroT[i][3],String);
SetProgressBarValue(BarGas[i], Gasolina[Coche]);
UpdateProgressBar(BarGas[i], i);
}
}
}
}
}
return 1;
}
stock AccionP(playerid,string[]) {
new Nombre[MAX_PLAYER_NAME],String2[200];
GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String2, sizeof(String2), "[/Me] %s %s", Nombre,string);
ProxDetector(30.0, playerid, String2, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
}
stock TextoNombre(playerid,string[]) {
new Nombre[MAX_PLAYER_NAME],String2[200]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String2, sizeof(String2),string,Nombre);
SendClientMessage(playerid,0xFFFFFFFF,String2);
}
forward CosT(playerid);
public CosT(playerid) {
ControlP(playerid,1);
return 1;
}

public OnPlayerTakeDamage(playerid, issuerid, Float: amount, weaponid)
{
    if(issuerid != INVALID_PLAYER_ID)
    {
        new Float:Vida;
        GetPlayerHealth(playerid,Vida);
        switch(weaponid) {
        case 22: { SetPlayerHealth(playerid,Vida-10); }
        case 28: { SetPlayerHealth(playerid,Vida-20); }
        case 29: { SetPlayerHealth(playerid,Vida-30); }
        case 30: { SetPlayerHealth(playerid,Vida-30); }
        case 31: { SetPlayerHealth(playerid,Vida-30); }
        case 32: { SetPlayerHealth(playerid,Vida-30); }
        case 36: { SetPlayerHealth(playerid,Vida-10); }
        }
    }
    return 1;
}
stock ReturnVehicleSlot(playerid)
{
	if(IsPlayerInAnyVehicle(playerid))
	{
		new
		    vehicleid = GetPlayerVehicleID(playerid),
		    var[32];

		for(new s = 1; s <= MAX_OWNABLE_CARS; s++)
		{
			format(var, sizeof(var), "Carkey_%d", s);
	    	if(vehicleid == GetPVarInt(playerid, var)) return s;
		}
	}
	return 0;
}
forward Qinfopj(playerid);
public Qinfopj(playerid) {
TextDrawHideForPlayer(playerid, BoxIPJ1);
TextDrawHideForPlayer(playerid, TextPJ1);
TextDrawHideForPlayer(playerid, TextPJ2);
TextDrawHideForPlayer(playerid, TextPJ3);
TextDrawHideForPlayer(playerid, TextPJ4);
TextDrawHideForPlayer(playerid, BoxIPJ2);
TextDrawHideForPlayer(playerid, TextPJ5);
TextDrawHideForPlayer(playerid, TextPJ6);
TextDrawHideForPlayer(playerid, TextPJ7);
TextDrawHideForPlayer(playerid, TextPJ8);
TextDrawHideForPlayer(playerid, TextPJ9);
DestroyProgressBar(EnergiaBar[playerid]);
DestroyProgressBar(ApetitoBar[playerid]);
DestroyProgressBar(SedBar[playerid]);
AbrioInfo[playerid] = 0;
if(IsPlayerInAnyVehicle(playerid)) {
SetTimerEx("Entrovelocimetro", 1000, false, "i", playerid);
}
return 1; }



																																																/*
________________________________________________________________________________________________________________
																																																*/




stock PTuneado(playerid) {
new ModelC = GetVehicleModel(GetPlayerVehicleID(playerid));
if(ModelC == 402 || ModelC == 411  || ModelC == 415 || ModelC == 419 || ModelC == 421 || ModelC == 422 || ModelC == 429 || ModelC == 439 || ModelC == 445
 || ModelC == 451 || ModelC == 466 || ModelC == 467 || ModelC == 474 || ModelC == 475 || ModelC == 480 || ModelC == 482 || ModelC == 489
 || ModelC == 491 || ModelC == 492 || ModelC == 500 || ModelC == 505 || ModelC == 506 || ModelC == 508 || ModelC == 518
 || ModelC == 526 || ModelC == 527 || ModelC == 541 || ModelC == 543 || ModelC == 545 || ModelC == 579 || ModelC == 580 || ModelC == 603){
}
return 1;
}
stock EsTranfeder(playerid) {
new ModelC = GetVehicleModel(GetPlayerVehicleID(playerid));
if(ModelC == 400 || ModelC == 401  || ModelC == 404 || ModelC == 405 || ModelC == 409 || ModelC == 410 || ModelC == 418 || ModelC == 424 || ModelC == 426
 || ModelC == 436 || ModelC == 458 || ModelC == 477 || ModelC == 478 || ModelC == 479 || ModelC == 496 || ModelC == 507 || ModelC == 542
 || ModelC == 547 || ModelC == 549 || ModelC == 550 || ModelC == 551 || ModelC == 554 || ModelC == 555 || ModelC == 575
 || ModelC == 585 || ModelC == 587 || ModelC == 589 || ModelC == 602){
}
return 1;
}
forward Colocac4puerta1B(playerid);
public Colocac4puerta1B(playerid) {
CreateExplosion(2554.8000000,-1789.7000000,711.8000000, 12, 4.0);
DestroyObject(PuertaB1);
ClearAnimations(playerid);
SetTimer("RegenerarpuertaB1",2800000,0);
return 1;
}
forward RPuertaB1();
public RPuertaB1() {
PuertaB[0]=CreateDynamicObject(3089, -945.46143, 1450.05933, 1540.64404,   0.00000, 0.00000, 0.00000);
return 1;
}
forward RPuertaB2();
public RPuertaB2() {
PuertaB[1]=CreateDynamicObject(2951, -948.23767, 1472.04175, 1539.20068,   0.00000, 0.00000, 0.00000);
PuertaB[2]=CreateDynamicObject(2983, -948.14111, 1472.17712, 1540.49695,   0.00000, 0.00000, 0.00000);
return 1;
}

/*
forward RegenerarpuertaB2();
public RegenerarpuertaB2() {
PuertaB2 = CreateObject(1495,2540.5000000,-1784.9000000,711.8000000,0.0000000,0.0000000,90.0000000); //puertaexplota2
return 1;
}*/
forward Colocac4puerta2B(playerid);
public Colocac4puerta2B(playerid) {
CreateExplosion(2540.5000000,-1784.9000000,711.8000000, 12, 4.0);
DestroyObject(PuertaB2);
ClearAnimations(playerid);
SetTimer("RegenerarpuertaB2",2800000,0);
return 1;
}
forward Entradas(playerid);
public Entradas(playerid) {
if(PlayerToPoint(playerid, 2.0, 1486.919067,-1767.753906,15.390213)) { //Entrada A Distrito Federal
PPos(playerid,390.2000100,173.8000000,1008.0000000);
SetPlayerInterior(playerid, 3);
abrirpuerta(playerid);
cargarjugador(playerid);
Mensaje(playerid,Azul,"{FFFFFF}Entraste al distrito Federal");
}
else if(PlayerToPoint(playerid, 2.0,1554.0999800,-1676.0999800,16.9000000)) { //Policia federal.
PPos(playerid,246.8000000,62.7000000,1004.2999900);
SetPlayerInterior(playerid,6);
abrirpuerta(playerid);
cargarjugador(playerid);
}
else if(PlayerToPoint(playerid, 2.0,1730.3,-2334.69,13.54)) { //Aero ext
PPos(playerid,-1822.86,6,1061.1);
SetPlayerInterior(playerid,14);
abrirpuerta(playerid);
cargarjugador(playerid);
}
else if(PlayerToPoint(playerid, 2.0,1525.1999500,-1678.0000000,6.5000000)) { //Garage PF
PPos(playerid,242.7000000,66.3000000,1004.2999900);
SetPlayerInterior(playerid,6);
abrirpuerta(playerid);
cargarjugador(playerid);
}
else if(PlayerToPoint(playerid,2.0,1125.54, -1334.84, 1566.06)) {//hospital int salida
}
else if(PlayerToPoint(playerid, 2.0,2244.3999000,-1665.0000000,16.1000000)) { //Binco Groove
PPos(playerid,207.7000000,-110.6000000,1005.7999900);
SetPlayerInterior(playerid,15);
abrirpuerta(playerid);
cargarjugador(playerid);
}
else if(PlayerToPoint(playerid, 2.0,1456.8000000,-1012.2000000,27.3000000)) { //Entrada al banco
PPos(playerid,-947.88,1434.25,1540.32);
abrirpuerta(playerid);
cargarjugador(playerid);
}

else if(PlayerToPoint(playerid, 8.0,1165.5000000,-1308.7000000,13.8000000)) { //Hospital GARAGE
if(DCoche(playerid)) {
cargarjugador(playerid);
new Vehi = GetPlayerVehicleID(playerid);
SetVehiclePos(Vehi,1255.0000000,-1380.3000000,2638.5000000);
}
else
{
PPos(playerid,1255.0000000,-1380.3000000,2638.5000000);
} }

else if(PlayerToPoint(playerid, 5.0,646,-1357,14)) { //Interior Noticieros
PPos(playerid,287.38,2081.69,1001.80);
abrirpuerta(playerid);
cargarjugador(playerid);
}
else if(PlayerToPoint(playerid, 5.0,276.84,2085.69,1001.80)) { //Helipuerto noticiero
PPos(playerid,687.58,-1359.48,49.61);
abrirpuerta(playerid);
cargarjugador(playerid);
}
else if(PlayerToPoint(playerid,4.0,747.76,-1362.46,13.4)) {
PPos(playerid,-115.92,799.86,1993);
abrirpuerta(playerid);
cargarjugador(playerid);


}
else if(PlayerToPoint(playerid,4.0,747.67,-1352.41,13.40)) {
PPos(playerid,-115.64,810.32,1991.61);
abrirpuerta(playerid);
cargarjugador(playerid);
}
for(new i=0;i<MAX_NEGOCIOS;i++) {
if(PlayerToPoint(playerid, 3.0, NI[i][nEX],NI[i][nEY],NI[i][nEZ])) {
if(NI[i][nTipo] == 1) {
SetPlayerPos(playerid,-27.4000000,-31.1000000,1004.2000100);
SetPlayerInterior(playerid,4);
SetPlayerVirtualWorld(playerid,i);
}
else if(NI[i][nTipo] == 2) {
SetPlayerPos(playerid,377.02,-192.94,1000.64);
SetPlayerInterior(playerid,17);
SetPlayerVirtualWorld(playerid,i);
}
else if(NI[i][nTipo] == 3) {
SetPlayerPos(playerid,-30.93,-91.51,1003.54);
SetPlayerInterior(playerid,18);
SetPlayerVirtualWorld(playerid,i);
}
else if(NI[i][nTipo] == 4) {
SetPlayerPos(playerid,1204.91,-13.51,1000.92);
SetPlayerInterior(playerid,2);
SetPlayerVirtualWorld(playerid,i);
}
else if(NI[i][nTipo] == 5) {
SetPlayerPos(playerid,285.36,-41.29,1001.51);
SetPlayerInterior(playerid,1);
SetPlayerVirtualWorld(playerid,i);
}
else if(NI[i][nTipo] == 6) {
SetPlayerPos(playerid,-2240.65,137.27,1035.41);
SetPlayerInterior(playerid,6);
SetPlayerVirtualWorld(playerid,i);
}
}
}
return 1;
}
stock abrirpuerta(playerid) {
AccionP(playerid,"Abri� la puerta y entr�");
return 1; }
stock cerrolapuerta(playerid) {
AccionP(playerid,"Abri� la puerta y sali�");
return 1; }


/*_________________________________________________________________________________*/
forward Salidas(playerid);
public Salidas(playerid) {
if(PlayerToPoint(playerid, 5.0, 390.2000100,173.8000000,1008.0000000)) { //Salida del Distrito Federal
PPos(playerid,1486.919067,-1767.753906,15.390213);
cerrolapuerta(playerid);
cargarjugador(playerid);
Mensaje(playerid,Azul,"{FFFFFF}Saliste del distrito Federal");
SetPlayerInterior(playerid, 0);
}
else if(PlayerToPoint(playerid, 5.0,687.58,-1359.48,49.61)) { //Helipuerto Noticieros
if(Compro[playerid] == 1) return Mensaje(playerid,COLOR_BLANCO,"Tienes que pagar por los productos.");
PPos(playerid,276.84,2085.69,1001.80);
SetPlayerInterior(playerid,0);
TicketC[playerid] = 0;
cargarjugador(playerid);
cerrolapuerta(playerid);
}
else if(PlayerToPoint(playerid, 5.0,246.8000000,62.7000000,1004.2999900)) { //Policia federal.
PPos(playerid,1554.0999800,-1676.0999800,16.9000000);
SetPlayerInterior(playerid,0);
cargarjugador(playerid);
cerrolapuerta(playerid);
}

else if(PlayerToPoint(playerid, 4.0,-115.92,799.86,1993)) { //Fab ntocieros
PPos(playerid,747.76,-1362.46,13.4);
cargarjugador(playerid);
cerrolapuerta(playerid);
}
else if(PlayerToPoint(playerid, 4.0,-115.64,810.32,1991.61)) { //Fab Noticieros
PPos(playerid,747.67,-1352.41,13.40);
cargarjugador(playerid);
cerrolapuerta(playerid);
}




else if(PlayerToPoint(playerid, 5.0,242.7000000,66.3000000,1004.2999900)) { //Policia federal Garage.
PPos(playerid,1525.1999500,-1678.0000000,6.5000000);
SetPlayerInterior(playerid,0);
cerrolapuerta(playerid);
cargarjugador(playerid);
}
else if(PlayerToPoint(playerid, 5.0,-1822.86,6,1061.1)) { //Aerop int
PPos(playerid,1730.3,-2334.69,13.54);
SetPlayerInterior(playerid,0);
cerrolapuerta(playerid);
cargarjugador(playerid);
}
else if(PlayerToPoint(playerid, 5.0,287.38,2081.69,1001.80)) { //Noticieros Interior
PPos(playerid,646,-1357,14);
cerrolapuerta(playerid);
cargarjugador(playerid);
}
else if(PlayerToPoint(playerid, 2.0,207.7000000,-110.6000000,1005.7999900)) { //Binco Groove
if(Eligiolaropa[playerid] == 0) {
PPos(playerid,2244.3999000,-1665.0000000,16.1000000);
SetPlayerInterior(playerid,0);
cargarjugador(playerid);
cerrolapuerta(playerid);
} else Mensaje(playerid,COLOR_BLANCO,"Tienes que pagar la ropa o utiliza /Dejarropa.");
}
else if(PlayerToPoint(playerid, 2.0,-947.88,1434.25,1540.32)) { //Banco Salida
PPos(playerid,1456.8000000,-1012.2000000,27.3000000);
SetPlayerInterior(playerid,0);
cerrolapuerta(playerid);
cargarjugador(playerid);
TextDrawHideForPlayer(playerid,BoxB1);
TextDrawHideForPlayer(playerid,BoxB2);
TextDrawHideForPlayer(playerid,DineroB3[playerid]);

}
else if(PlayerToPoint(playerid, 8.0,1255.0000000,-1380.3000000,2638.5000000)) { //Hospital GARAGE AL EXT
if(DCoche(playerid)) {
new Vehi = GetPlayerVehicleID(playerid);
cargarjugador(playerid);
SetVehiclePos(Vehi,1165.5000000,-1308.7000000,13.8000000);
}
else
{
PPos(playerid,1165.5000000,-1308.7000000,13.8000000);
} }

if(PlayerToPoint(playerid, 3.0,-27.4000000,-31.1000000,1004.2000100)) {//Tipo 1 Negocio
SetPlayerPos(playerid,NI[GetPlayerVirtualWorld(playerid)][nEX],NI[GetPlayerVirtualWorld(playerid)][nEY],NI[GetPlayerVirtualWorld(playerid)][nEZ]);
SetPlayerInterior(playerid,0);
SetPlayerVirtualWorld(playerid,0);
}
else if(PlayerToPoint(playerid, 3.0,377.02,-192.94,1000.64)) {//Tipo 2 Negocio
SetPlayerPos(playerid,NI[GetPlayerVirtualWorld(playerid)][nEX],NI[GetPlayerVirtualWorld(playerid)][nEY],NI[GetPlayerVirtualWorld(playerid)][nEZ]);
SetPlayerInterior(playerid,0);
SetPlayerVirtualWorld(playerid,0);
}
else if(PlayerToPoint(playerid, 3.0,-30.93,-91.51,1003.54)) {//Tipo 3 Negocio
SetPlayerPos(playerid,NI[GetPlayerVirtualWorld(playerid)][nEX],NI[GetPlayerVirtualWorld(playerid)][nEY],NI[GetPlayerVirtualWorld(playerid)][nEZ]);
SetPlayerInterior(playerid,0);
SetPlayerVirtualWorld(playerid,0);
}
else if(PlayerToPoint(playerid, 3.0,1204.91,-13.51,1000.92)) {//Tipo 4 Negocio
SetPlayerPos(playerid,NI[GetPlayerVirtualWorld(playerid)][nEX],NI[GetPlayerVirtualWorld(playerid)][nEY],NI[GetPlayerVirtualWorld(playerid)][nEZ]);
SetPlayerInterior(playerid,0);
SetPlayerVirtualWorld(playerid,0);
}
else if(PlayerToPoint(playerid, 3.0,285.36,-41.29,1001.51)) {//Tipo 5 Negocio
SetPlayerPos(playerid,NI[GetPlayerVirtualWorld(playerid)][nEX],NI[GetPlayerVirtualWorld(playerid)][nEY],NI[GetPlayerVirtualWorld(playerid)][nEZ]);
SetPlayerInterior(playerid,0);
SetPlayerVirtualWorld(playerid,0);
}
else if(PlayerToPoint(playerid, 3.0,-2240.65,137.27,1035.41)) {//Tipo 6 Negocio
SetPlayerPos(playerid,NI[GetPlayerVirtualWorld(playerid)][nEX],NI[GetPlayerVirtualWorld(playerid)][nEY],NI[GetPlayerVirtualWorld(playerid)][nEZ]);
SetPlayerInterior(playerid,0);
SetPlayerVirtualWorld(playerid,0);
}

return 1;
}
stock PlayerPlaySoundEx(soundid, Float:x, Float:y, Float:z) { // Realistic sound playback
	foreach(Player, i) {
		if(IsPlayerInRangeOfPoint(i, 20.0, x, y, z))
			PlayerPlaySound(i, soundid, x, y, z);
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
SetPlayerColor(playerid, COLOR_BLANCO);
dini_IntSet(Archivo, "Dinero", 0);
dini_IntSet(Archivo, "Nivel", 1);
dini_IntSet(Archivo, "Faccion", 0);
dini_IntSet(Archivo,"VehiculOID1",999);
dini_IntSet(Archivo,"VehiculOID2",999);
PI[playerid][VehiculoID1] =999;
PI[playerid][VehiculoID2] =999;
Dialog(playerid,Dgenero,DIALOG_STYLE_LIST,"-Tu genero.","{0095FF}-{FFFFFF} Masculino.\n{0095FF}-{FFFFFF} Femenino.","Elegir","");/*
SpawnPlayer(playerid);*/
print(String);

///TextDrawHideForPlayer(playerid, Tit1);

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
// GASOLINA SISTEMA
stock GG(Monto) {
if(fexist("Archivos del servidor/Gasolina.txt")) {
dini_IntSet("Archivos del servidor/Gasolina.txt","Gasolina",Monto);
AG();
} else {
dini_Create("Archivos del servidor/Gasolina.txt");
}
}
forward CG();
public CG() {
GasolinaF = dini_Int("Archivos del servidor/Gasolina.txt","Gasolina");
return 1;
}
forward AG();
public AG() {
GasolinaF = dini_Int("Archivos del servidor/Gasolina.txt","Gasolina");
return 1;
}
stock GuardarPrecioG(Monto) {
if(fexist("Archivos del servidor/GasolinaPrecio.txt")) {
dini_IntSet("Archivos del servidor/GasolinaPrecio.txt","Precio",Monto);
ActualizarPrecioG();
} else {
dini_Create("Archivos del servidor/GasolinaPrecio.txt");
}
}
forward CargarPrecioG();
public CargarPrecioG() {
GasolinaP = dini_Int("Archivos del servidor/GasolinaPrecio.txt","Precio");
return 1;
}

forward ActualizarPrecioG();
public ActualizarPrecioG() {
GasolinaP = dini_Int("Archivos del servidor/GasolinaPrecio.txt","Precio");
return 1;
}
//FONDOS MEC�NICOS.
stock GuardarFMecanicos(Monto) {
if(fexist("Archivos del servidor/FMecanicos.txt")) {
dini_IntSet("Archivos del servidor/FMecanicos.txt","FMecanicos",Monto);
ActualizarFMecanicos();
} else {
dini_Create("Archivos del servidor/FMecanicos.txt");
}
}
forward CargarFMecanicos();
public CargarFMecanicos() {
FondosMecanicos = dini_Int("Archivos del servidor/FMecanicos.txt","FMecanicos");
return 1;
}
forward ActualizarFMecanicos();
public ActualizarFMecanicos() {
FondosMecanicos = dini_Int("Archivos del servidor/FMecanicos.txt","FMecanicos");
return 1;
}
//LSTIV
stock GuardarFLSTV(Monto) {
if(fexist("Archivos del servidor/FLSTV.txt")) {
dini_IntSet("Archivos del servidor/FLSTV.txt","FLSTV",Monto);
ActualizarFLSTV();
} else {
dini_Create("Archivos del servidor/FLSTV.txt");
}
}
forward CargarFLSTV();
public CargarFLSTV() {
FLSTV = dini_Int("Archivos del servidor/FLSTV.txt","FLSTV");
return 1;
}
forward ActualizarFLSTV();
public ActualizarFLSTV() {
FLSTV = dini_Int("Archivos del servidor/FLSTV.txt","FLSTV");
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
stock PlaySoundAtPoint(soundid, Float:radius, Float:pos_x, Float:pos_y, Float:pos_z)
{
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
	    if(IsPlayerConnected(i) && IsPlayerInRangeOfPoint(i, radius, pos_x, pos_y, pos_z))
	        return PlayerPlaySound(i, soundid, 0.0, 0.0, 0.0);
	}
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
PI[playerid][FrecR] = dini_Int(Archivo,"FrecR");
PI[playerid][Radiot] = dini_Int(Archivo,"Radiot");
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
PI[playerid][AN1] = dini_Int(Archivo,"AN1");
PI[playerid][ANom1] = strval(dini_Get(Archivo,"ANom1"));
format(PI[playerid][ANom1],24,"%s", dini_Get(Archivo,"ANom1"));
PI[playerid][AN2] = dini_Int(Archivo,"AN2");
PI[playerid][ANom2] = strval(dini_Get(Archivo,"ANom2"));
PI[playerid][AN3] = dini_Int(Archivo,"AN3");
PI[playerid][ANom3] = strval(dini_Get(Archivo,"ANom3"));
PI[playerid][AN4] = dini_Int(Archivo,"AN4");
PI[playerid][ANom4] = strval(dini_Get(Archivo,"ANom4"));
PI[playerid][AN5] = dini_Int(Archivo,"AN5");
PI[playerid][ANom5] = strval(dini_Get(Archivo,"ANom5"));
PI[playerid][Casco] = dini_Int(Archivo,"Casco");
PI[playerid][TC4] = dini_Int(Archivo,"TC4");
PI[playerid][Ganzuas] = dini_Int(Archivo,"Ganzuas");
GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma1"),dini_Int(Archivo,"BArma1"));
GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma2"),dini_Int(Archivo,"BArma2"));
GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma3"),dini_Int(Archivo,"BArma3"));
GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma4"),dini_Int(Archivo,"BArma4"));
GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma5"),dini_Int(Archivo,"BArma5"));
GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma6"),dini_Int(Archivo,"BArma6"));
GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma7"),dini_Int(Archivo,"BArma7"));
GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma8"),dini_Int(Archivo,"BArma8"));
GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma9"),dini_Int(Archivo,"BArma9"));
GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma10"),dini_Int(Archivo,"BArma10"));
GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma11"),dini_Int(Archivo,"BArma11"));
GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma12"),dini_Int(Archivo,"BArma12"));
GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma13"),dini_Int(Archivo,"BArma13"));
PI[playerid][LicenciaV] = dini_Int(Archivo,"LicenciaV");
PI[playerid][LicenciaA] = dini_Int(Archivo,"LicenciaA");
PI[playerid][LicenciaF] = dini_Int(Archivo,"LicenciaF");
PI[playerid][Interior] = dini_Int(Archivo,"Interior");
PI[playerid][MV] = dini_Int(Archivo,"MV");
PI[playerid][NBanco] = dini_Int(Archivo,"NBanco");
PI[playerid][TelefonoR] = dini_Int(Archivo,"TelefonoR");
PI[playerid][DniR] = dini_Int(Archivo,"DniR");
PI[playerid][Multas] = dini_Int(Archivo,"Multas");
PI[playerid][PrecioMultas] = dini_Int(Archivo,"PrecioMultas");
PI[playerid][Encarcelado] = dini_Int(Archivo,"Encarcelado");
PI[playerid][EnCarcel] = dini_Int(Archivo,"EnCarcel");
PI[playerid][Vendas] = dini_Int(Archivo,"Vendas");
PI[playerid][Sogas] = dini_Int(Archivo,"Sogas");
PI[playerid][Propiedad] = dini_Int(Archivo,"PropiedadID");
PI[playerid][TPizza] = dini_Int(Archivo,"TPizza");
PI[playerid][VehiculoID1] = dini_Int(Archivo,"VehiculoID1");
PI[playerid][VehiculoID2] = dini_Int(Archivo,"VehiculoID2");
PI[playerid][FechaPeriodicoD] = dini_Int(Archivo,"FechaPeriodicoD");
PI[playerid][FechaPeriodicoM] = dini_Int(Archivo,"FechaPeriodicoM");
PI[playerid][FechaPeriodicoA] = dini_Int(Archivo,"FechaPeriodicoA");
PI[playerid][TPeriodico] = dini_Int(Archivo,"TPeriodico");
PI[playerid][SkinCasillero] = dini_Int(Archivo,"SkinCasillero");
PI[playerid][TSprunk] = dini_Int(Archivo,"TSprunk");
PI[playerid][TAMineral] = dini_Int(Archivo,"TAMineral");
PI[playerid][TJEnvasado] = dini_Int(Archivo,"TJEnvasado");
PI[playerid][TTorta] = dini_Int(Archivo,"TTorta");
PI[playerid][TCerveza] = dini_Int(Archivo,"TCerveza");
PI[playerid][TVino] = dini_Int(Archivo,"TVino");
PI[playerid][TWhisky] = dini_Int(Archivo,"TWhisky");
PI[playerid][TChampagne] = dini_Int(Archivo,"TChampagne");
PI[playerid][TRadio] = dini_Int(Archivo,"TRadio");
PI[playerid][TGPS] = dini_Int(Archivo,"TGPS");


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
dini_IntSet(Archivo,"FrecR",PI[playerid][FrecR]);
dini_IntSet(Archivo,"Radiot",PI[playerid][Radiot]);
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
dini_IntSet(Archivo,"Casco",PI[playerid][Casco]);
dini_IntSet(Archivo,"TC4",PI[playerid][TC4]);
dini_IntSet(Archivo,"Ganzuas",PI[playerid][Ganzuas]);
dini_IntSet(Archivo,"LicenciaV",PI[playerid][LicenciaV]);
dini_IntSet(Archivo,"LicenciaA",PI[playerid][LicenciaA]);
dini_IntSet(Archivo,"LicenciaF",PI[playerid][LicenciaF]);
dini_IntSet(Archivo,"Interior",GetPlayerInterior(playerid));
dini_IntSet(Archivo,"MV",GetPlayerVirtualWorld(playerid));
dini_IntSet(Archivo,"NBanco",PI[playerid][NBanco]);
dini_IntSet(Archivo,"TelefonoR",PI[playerid][TelefonoR]);
dini_IntSet(Archivo,"DniR",PI[playerid][DniR]);
dini_IntSet(Archivo,"Multas",PI[playerid][Multas]);
dini_IntSet(Archivo,"PrecioMultas",PI[playerid][PrecioMultas]);
dini_IntSet(Archivo,"Encarcelado",PI[playerid][Encarcelado]);
dini_IntSet(Archivo,"EnCarcel",PI[playerid][EnCarcel]);
dini_IntSet(Archivo,"Vendas",PI[playerid][Vendas]);
dini_IntSet(Archivo,"Sogas",PI[playerid][Sogas]);
dini_IntSet(Archivo,"PropiedadID",PI[playerid][Propiedad]);
dini_IntSet(Archivo,"TPizza",PI[playerid][TPizza]);
dini_IntSet(Archivo,"VehiculoID1",PI[playerid][VehiculoID1]);
dini_IntSet(Archivo,"VehiculoID2",PI[playerid][VehiculoID2]);
dini_IntSet(Archivo,"FechaPeriodicoD",PI[playerid][FechaPeriodicoD]);
dini_IntSet(Archivo,"FechaPeriodicoM",PI[playerid][FechaPeriodicoM]);
dini_IntSet(Archivo,"FechaPeriodicoA",PI[playerid][FechaPeriodicoA]);
dini_IntSet(Archivo,"TPeriodico",PI[playerid][TPeriodico]);
dini_IntSet(Archivo,"SkinCasillero",PI[playerid][SkinCasillero]);
dini_IntSet(Archivo,"TSprunk",PI[playerid][TSprunk]);
dini_IntSet(Archivo,"THamburguesa",PI[playerid][THamburguesa]);
dini_IntSet(Archivo,"TAMineral",PI[playerid][TAMineral]);
dini_IntSet(Archivo,"TJEnvasado",PI[playerid][TJEnvasado]);
dini_IntSet(Archivo,"TTorta",PI[playerid][TTorta]);
dini_IntSet(Archivo,"TCerveza",PI[playerid][TCerveza]);
dini_IntSet(Archivo,"TVino",PI[playerid][TVino]);
dini_IntSet(Archivo,"TWhisky",PI[playerid][TWhisky]);
dini_IntSet(Archivo,"TChampagne",PI[playerid][TChampagne]);
dini_IntSet(Archivo,"TRadio",PI[playerid][TRadio]);
dini_IntSet(Archivo,"TRadio",PI[playerid][TGPS]);
/*
*/
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
ControlP(playerid,1);
Mensaje(playerid,COLOR_BLANCO,"Objetivo: Vuelve a la empresa.");
Checkpoint(playerid,-1050.4000200,-650.2000100,32.1000000,5.0);
new vehicleid = GetPlayerVehicleID(playerid);
DestroyObject(Objeto[vehicleid]);
return 1;
}
forward Tutorial1(playerid);
public Tutorial1(playerid) {
TDSFP(playerid,BoxTuto1);
TDSFP(playerid,BoxTuto2);
SetPlayerCameraPos(playerid,741.6017,-1710.3555,1.7415);
SetPlayerCameraLookAt(playerid,720.6004,-1684.1858,12.1298);
//TextDrawShowForPlayer(playerid, Tit1);

TDSFP(playerid,TitTuto[playerid]);
TDSFP(playerid,TextoTuto[playerid]);
TextDrawSetString(TitTuto[playerid],"- Bienvenida al usuario -");
TextDrawSetString(TextoTuto[playerid],"Bienvenidos al servidor zona sur roleplay, Este servidor es roleplay ~n~y no aceptamos Ningun tipo de rompimiento de reglas. Asi que~n~ Lee el reglamento del servidor.");
SetTimerEx("Tutorial2", 5000, false, "i", playerid);
return 1;
}
forward Tutorial2(playerid);
public Tutorial2(playerid) {
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],"Bien, te ayudaremos a aprender los conceptos basicos de rol en ~n~el cual tu usaras esta informacion Para rolear. ~n~Por eso tendras que ver este ~b~tutorial.");
SetTimerEx("Tutorial3", 5000, false, "i", playerid);
return 1;
}
forward Tutorial3(playerid);
public Tutorial3(playerid) {
new String[180] = "El concepto llamado Death Mach, conocido como ~n~~r~DM~w~ es matar a un integrante sin ningun tipo de razon ~n~ no puedes ir a matar a alguien por que si.";
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimerEx("Tutorial4", 5000, false, "i", playerid);
return 1;
}
forward Tutorial4(playerid);
public Tutorial4(playerid) {
new String[150] = "El concepto llamado Meta Gaming, conocido como ~n~ ~r~MG~r~ es la confucion de canales ~b~OOC ~w~con ~b~IC~w~ o viceversa.";
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimerEx("Tutorial5", 5000, false, "i", playerid);
return 1;
}
forward Tutorial5(playerid);
public Tutorial5(playerid) {
new String[200] = "El concepto llamado Reverenge Kill, conocido como~n~~r~RK ~w~significa que si te matan en un tipo de rol~n~no puedes volver al lugar , por que tu y perdiste la memoria.";
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimerEx("Tutorial6", 5000, false, "i", playerid);
return 1;
}
forward Tutorial6(playerid);
public Tutorial6(playerid) {
new String[200] = "El concepto llamado Spawn Killer, conocido como~n~~r~SK~w~ es matar a un integrante en un punto de spawn~n~Ejemplo: ~g~al estar herido(muerto) estas en el hospital.";
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimerEx("Tutorial7", 5000, false, "i", playerid);
return 1;
}
forward Tutorial7(playerid);
public Tutorial7(playerid) {
new String[150] = "El concepto llamado Car jack, conocido como ~n~~r~CJ~w~ es robar cualquier tipo de coche sin rol.";
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimerEx("Tutorial8", 5000, false, "i", playerid);
return 1;
}
forward Tutorial8(playerid);
public Tutorial8(playerid) {
new String[200] = "El concepto llamado Car kill, conocido como~n~~r~CK~w~ es matar a un integrante para matarlo~n~mas rapido o alguna otra razon.";
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimerEx("Tutorial9", 5000, false, "i", playerid);
return 1;
}
forward Tutorial9(playerid);
public Tutorial9(playerid) {
new String[200] = "El concepto llamado Power Gaming, conocido como~n~~r~PG~w~ es hacer cosas imposibles dentro del juego.~n~Por Ejemplo:~r~ Rolea saltar un edificio de 10 pisos~n~Y cae ileso.";
TextDrawSetString(TitTuto[playerid],"- Tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimerEx("Tutorial10", 5000, false, "i", playerid);
return 1;
}
forward Tutorial10(playerid);
public Tutorial10(playerid) {
Mensaje(playerid,COLOR_BLANCO,"Para m�s informaci�n: {0084FF}/{FFFFFF}Consulta {0084FF}/{FFFFFF}Masinfo {0084FF}[Informaci�n Completa]{FFFFFF} .");
new String[200] = "Llegaste al final del tutorial, recuerda leer el reglamento ~n~Si tienes alguna duda el staff te respondera.~n~~g~Atencion:~w~No se dara stats.";
TextDrawSetString(TitTuto[playerid],"- Fin del tutorial de conceptos -");
TextDrawSetString(TextoTuto[playerid],String);
SetTimerEx("Tutorial11", 5000, false, "i", playerid);
return 1;
}
forward Tutorial11(playerid);
public Tutorial11(playerid) {
SpawnPlayer(playerid);
TextDrawHideForPlayer(playerid,BoxTuto1);
TextDrawHideForPlayer(playerid,BoxTuto2);
//TextDrawHideForPlayer(playerid, Tit1);

TextDrawHideForPlayer(playerid,TitTuto[playerid]);
TextDrawHideForPlayer(playerid,TextoTuto[playerid]);
GivePlayerMoney(playerid,10000);/*
SetPlayerPos(playerid,1642.0999800,-2334.5000000,13.5000000);*/
SetCameraBehindPlayer(playerid);
Estaentuto[playerid] = 0;
ActivoTuto[playerid] = 0;
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
forward CargarParkings();
public CargarParkings(){
	new ArchivoP[80],String[128];
	for(new i=0;i<MAX_PARKINGS;i++) {
	format(ArchivoP,sizeof(ArchivoP),"Archivos de Parkings/%i.ini",i);
	if(dini_Exists(ArchivoP)) {
	PAI[i][IDP]=i;
	PAI[i][PAX]=dini_Float(ArchivoP,"PAX");
	PAI[i][PAY]=dini_Float(ArchivoP,"PAY");
	PAI[i][PAZ]=dini_Float(ArchivoP,"PAZ");
	format(String,sizeof(String),"{FF003C}[Parking]{FFFFFF}\nPrecio con veh�culo: {61E32D}$200\n\n{FFFB00}[/EntrarParking]",Parkings);
	PAI[i][PickUp]=CreatePickup(1239, 2,PAI[i][PAX],PAI[i][PAY],PAI[i][PAZ], -1);
	PAI[i][PALabel]=Create3DTextLabel(String,-1,PAI[i][PAX],PAI[i][PAY],PAI[i][PAZ],25.0,0);
	Parkings++;
	}
	}
	printf("Parkings cargados: [%i]",Parkings);
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
stock RIlegal(faccionid,string[]) {
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
forward CargarTextDrawsUser(playerid);
public CargarTextDrawsUser(playerid){
	PasaporteText[playerid][0] = TextDrawCreate(210.250000, 138.044433, "box");
	TextDrawLetterSize(PasaporteText[playerid][0], 0.000000, 11.600000);
	TextDrawTextSize(PasaporteText[playerid][0], 406.000000, 0.000000);
	TextDrawAlignment(PasaporteText[playerid][0], 1);
	TextDrawColor(PasaporteText[playerid][0], -1);
	TextDrawUseBox(PasaporteText[playerid][0], 1);
	TextDrawBoxColor(PasaporteText[playerid][0], -1378294017);
	TextDrawSetShadow(PasaporteText[playerid][0], 0);
	TextDrawSetOutline(PasaporteText[playerid][0], 0);
	TextDrawBackgroundColor(PasaporteText[playerid][0], 255);
	TextDrawFont(PasaporteText[playerid][0], 1);
	TextDrawSetProportional(PasaporteText[playerid][0], 1);
	TextDrawSetShadow(PasaporteText[playerid][0], 0);
	PasaporteText[playerid][1] = TextDrawCreate(215.250000, 140.222167, "Pasaporte_-_san_andreas");
	TextDrawLetterSize(PasaporteText[playerid][1], 0.257750, 1.466222);
	TextDrawAlignment(PasaporteText[playerid][1], 1);
	TextDrawColor(PasaporteText[playerid][1], -1);
	TextDrawSetShadow(PasaporteText[playerid][1], 0);
	TextDrawSetOutline(PasaporteText[playerid][1], 0);
	TextDrawBackgroundColor(PasaporteText[playerid][1], 255);
	TextDrawFont(PasaporteText[playerid][1], 2);
	TextDrawSetProportional(PasaporteText[playerid][1], 1);
	TextDrawSetShadow(PasaporteText[playerid][1], 0);
	PasaporteText[playerid][2] = TextDrawCreate(220.250000, 165.577789, "");
	TextDrawLetterSize(PasaporteText[playerid][2], 0.000000, 0.000000);
	TextDrawTextSize(PasaporteText[playerid][2], 59.000000, 60.000000);
	TextDrawAlignment(PasaporteText[playerid][2], 1);
	TextDrawColor(PasaporteText[playerid][2], -1);
	TextDrawSetShadow(PasaporteText[playerid][2], 0);
	TextDrawSetOutline(PasaporteText[playerid][2], 0);
	TextDrawBackgroundColor(PasaporteText[playerid][2], 255);
	TextDrawFont(PasaporteText[playerid][2], 5);
	TextDrawSetProportional(PasaporteText[playerid][2], 0);
	TextDrawSetShadow(PasaporteText[playerid][2], 0);
	TextDrawSetPreviewModel(PasaporteText[playerid][2], 20);
	TextDrawSetPreviewRot(PasaporteText[playerid][2], 0.000000, 0.000000, 0.000000, 1.000000);
	PasaporteText[playerid][3] = TextDrawCreate(284.000000, 170.088867, "Nombre_y_apellido:");
	TextDrawLetterSize(PasaporteText[playerid][3], 0.109250, 0.819110);
	TextDrawAlignment(PasaporteText[playerid][3], 1);
	TextDrawColor(PasaporteText[playerid][3], -1);
	TextDrawSetShadow(PasaporteText[playerid][3], 0);
	TextDrawSetOutline(PasaporteText[playerid][3], 0);
	TextDrawBackgroundColor(PasaporteText[playerid][3], 255);
	TextDrawFont(PasaporteText[playerid][3], 2);
	TextDrawSetProportional(PasaporteText[playerid][3], 1);
	TextDrawSetShadow(PasaporteText[playerid][3], 0);
	PasaporteText[playerid][4] = TextDrawCreate(335.103118, 170.088867, "Max_Contreras");
	TextDrawLetterSize(PasaporteText[playerid][4], 0.109250, 0.819110);
	TextDrawAlignment(PasaporteText[playerid][4], 1);
	TextDrawColor(PasaporteText[playerid][4], -1);
	TextDrawSetShadow(PasaporteText[playerid][4], 0);
	TextDrawSetOutline(PasaporteText[playerid][4], 0);
	TextDrawBackgroundColor(PasaporteText[playerid][4], 255);
	TextDrawFont(PasaporteText[playerid][4], 2);
	TextDrawSetProportional(PasaporteText[playerid][4], 1);
	TextDrawSetShadow(PasaporteText[playerid][4], 0);
	PasaporteText[playerid][5] = TextDrawCreate(284.000000, 181.689575, "fecha_de_nacimiento:__21/04/1980");
	TextDrawLetterSize(PasaporteText[playerid][5], 0.109250, 0.819110);
	TextDrawAlignment(PasaporteText[playerid][5], 1);
	TextDrawColor(PasaporteText[playerid][5], -1);
	TextDrawSetShadow(PasaporteText[playerid][5], 0);
	TextDrawSetOutline(PasaporteText[playerid][5], 0);
	TextDrawBackgroundColor(PasaporteText[playerid][5], 255);
	TextDrawFont(PasaporteText[playerid][5], 2);
	TextDrawSetProportional(PasaporteText[playerid][5], 1);
	TextDrawSetShadow(PasaporteText[playerid][5], 0);
	PasaporteText[playerid][6] = TextDrawCreate(284.000000, 193.690307, "dOMICILIO:_PF-200");
	TextDrawLetterSize(PasaporteText[playerid][6], 0.109250, 0.819110);
	TextDrawAlignment(PasaporteText[playerid][6], 1);
	TextDrawColor(PasaporteText[playerid][6], -1);
	TextDrawSetShadow(PasaporteText[playerid][6], 0);
	TextDrawSetOutline(PasaporteText[playerid][6], 0);
	TextDrawBackgroundColor(PasaporteText[playerid][6], 255);
	TextDrawFont(PasaporteText[playerid][6], 2);
	TextDrawSetProportional(PasaporteText[playerid][6], 1);
	TextDrawSetShadow(PasaporteText[playerid][6], 0);
	PasaporteText[playerid][7] = TextDrawCreate(284.000000, 203.990936, "EstadO:_Los_santos");
	TextDrawLetterSize(PasaporteText[playerid][7], 0.109250, 0.819110);
	TextDrawAlignment(PasaporteText[playerid][7], 1);
	TextDrawColor(PasaporteText[playerid][7], -1);
	TextDrawSetShadow(PasaporteText[playerid][7], 0);
	TextDrawSetOutline(PasaporteText[playerid][7], 0);
	TextDrawBackgroundColor(PasaporteText[playerid][7], 255);
	TextDrawFont(PasaporteText[playerid][7], 2);
	TextDrawSetProportional(PasaporteText[playerid][7], 1);
	TextDrawSetShadow(PasaporteText[playerid][7], 0);
	PasaporteText[playerid][8] = TextDrawCreate(284.000000, 215.491638, "genero:_m");
	TextDrawLetterSize(PasaporteText[playerid][8], 0.109250, 0.819110);
	TextDrawAlignment(PasaporteText[playerid][8], 1);
	TextDrawColor(PasaporteText[playerid][8], -1);
	TextDrawSetShadow(PasaporteText[playerid][8], 0);
	TextDrawSetOutline(PasaporteText[playerid][8], 0);
	TextDrawBackgroundColor(PasaporteText[playerid][8], 255);
	TextDrawFont(PasaporteText[playerid][8], 2);
	TextDrawSetProportional(PasaporteText[playerid][8], 1);
	TextDrawSetShadow(PasaporteText[playerid][8], 0);
	PasaporteText[playerid][9] = TextDrawCreate(346.250000, 203.057601, "VENCIMIENTO:_26/3/2019");
	TextDrawLetterSize(PasaporteText[playerid][9], 0.109250, 0.819110);
	TextDrawAlignment(PasaporteText[playerid][9], 1);
	TextDrawColor(PasaporteText[playerid][9], -1);
	TextDrawSetShadow(PasaporteText[playerid][9], 0);
	TextDrawSetOutline(PasaporteText[playerid][9], 0);
	TextDrawBackgroundColor(PasaporteText[playerid][9], 255);
	TextDrawFont(PasaporteText[playerid][9], 2);
	TextDrawSetProportional(PasaporteText[playerid][9], 1);
	TextDrawSetShadow(PasaporteText[playerid][9], 0);
	PasaporteText[playerid][10] = TextDrawCreate(266.000000, 227.022186, "firma:");
	TextDrawLetterSize(PasaporteText[playerid][10], 0.400000, 1.600000);
	TextDrawAlignment(PasaporteText[playerid][10], 1);
	TextDrawColor(PasaporteText[playerid][10], -1);
	TextDrawSetShadow(PasaporteText[playerid][10], 0);
	TextDrawSetOutline(PasaporteText[playerid][10], 0);
	TextDrawBackgroundColor(PasaporteText[playerid][10], 255);
	TextDrawFont(PasaporteText[playerid][10], 3);
	TextDrawSetProportional(PasaporteText[playerid][10], 1);
	TextDrawSetShadow(PasaporteText[playerid][10], 0);
	PasaporteText[playerid][11] = TextDrawCreate(315.500000, 230.133300, "MAX_CONTRERAS");
	TextDrawLetterSize(PasaporteText[playerid][11], 0.308249, 1.052444);
	TextDrawAlignment(PasaporteText[playerid][11], 1);
	TextDrawColor(PasaporteText[playerid][11], 255);
	TextDrawSetShadow(PasaporteText[playerid][11], 0);
	TextDrawSetOutline(PasaporteText[playerid][11], 0);
	TextDrawBackgroundColor(PasaporteText[playerid][11], 255);
	TextDrawFont(PasaporteText[playerid][11], 3);
	TextDrawSetProportional(PasaporteText[playerid][11], 1);
	TextDrawSetShadow(PasaporteText[playerid][11], 0);
	PasaporteText[playerid][12] = TextDrawCreate(314.750000, 235.733383, "box");
	TextDrawLetterSize(PasaporteText[playerid][12], 0.000000, -0.125000);
	TextDrawTextSize(PasaporteText[playerid][12], 396.000000, 0.000000);
	TextDrawAlignment(PasaporteText[playerid][12], 1);
	TextDrawColor(PasaporteText[playerid][12], -1);
	TextDrawUseBox(PasaporteText[playerid][12], 1);
	TextDrawBoxColor(PasaporteText[playerid][12], 255);
	TextDrawSetShadow(PasaporteText[playerid][12], 0);
	TextDrawSetOutline(PasaporteText[playerid][12], 0);
	TextDrawBackgroundColor(PasaporteText[playerid][12], 255);
	TextDrawFont(PasaporteText[playerid][12], 1);
	TextDrawSetProportional(PasaporteText[playerid][12], 1);
	TextDrawSetShadow(PasaporteText[playerid][12], 0);
	PasaporteText[playerid][13] = TextDrawCreate(339.649597, 192.790924, "NACIONALIDAD:_LIBERTY_CITY");
	TextDrawLetterSize(PasaporteText[playerid][13], 0.109250, 0.819110);
	TextDrawAlignment(PasaporteText[playerid][13], 1);
	TextDrawColor(PasaporteText[playerid][13], -1);
	TextDrawSetShadow(PasaporteText[playerid][13], 0);
	TextDrawSetOutline(PasaporteText[playerid][13], 0);
	TextDrawBackgroundColor(PasaporteText[playerid][13], 255);
	TextDrawFont(PasaporteText[playerid][13], 2);
	TextDrawSetProportional(PasaporteText[playerid][13], 1);
	TextDrawSetShadow(PasaporteText[playerid][13], 0);
	TXDNI[playerid][0] = TextDrawCreate(210.250000, 138.044433, "box");
	TextDrawLetterSize(TXDNI[playerid][0], 0.000000, 11.600000);
	TextDrawTextSize(TXDNI[playerid][0], 406.000000, 0.000000);
	TextDrawAlignment(TXDNI[playerid][0], 1);
	TextDrawColor(TXDNI[playerid][0], -1);
	TextDrawUseBox(TXDNI[playerid][0], 1);
	TextDrawBoxColor(TXDNI[playerid][0], -1378294017);
	TextDrawSetShadow(TXDNI[playerid][0], 0);
	TextDrawSetOutline(TXDNI[playerid][0], 0);
	TextDrawBackgroundColor(TXDNI[playerid][0], 255);
	TextDrawFont(TXDNI[playerid][0], 1);
	TextDrawSetProportional(TXDNI[playerid][0], 1);
	TextDrawSetShadow(TXDNI[playerid][0], 0);
	TXDNI[playerid][1] = TextDrawCreate(215.250000, 140.222167, "Identificacion_de_ciudadania");
	TextDrawLetterSize(TXDNI[playerid][1], 0.257750, 1.466222);
	TextDrawAlignment(TXDNI[playerid][1], 1);
	TextDrawColor(TXDNI[playerid][1], -1);
	TextDrawSetShadow(TXDNI[playerid][1], 0);
	TextDrawSetOutline(TXDNI[playerid][1], 0);
	TextDrawBackgroundColor(TXDNI[playerid][1], 255);
	TextDrawFont(TXDNI[playerid][1], 2);
	TextDrawSetProportional(TXDNI[playerid][1], 1);
	TextDrawSetShadow(TXDNI[playerid][1], 0);
	TXDNI[playerid][2] = TextDrawCreate(220.250000, 165.577789, "");
	TextDrawLetterSize(TXDNI[playerid][2], 0.000000, 0.000000);
	TextDrawTextSize(TXDNI[playerid][2], 59.000000, 60.000000);
	TextDrawAlignment(TXDNI[playerid][2], 1);
	TextDrawColor(TXDNI[playerid][2], -1);
	TextDrawSetShadow(TXDNI[playerid][2], 0);
	TextDrawSetOutline(TXDNI[playerid][2], 0);
	TextDrawBackgroundColor(TXDNI[playerid][2], 255);
	TextDrawFont(TXDNI[playerid][2], 5);
	TextDrawSetProportional(TXDNI[playerid][2], 0);
	TextDrawSetShadow(TXDNI[playerid][2], 0);
	TextDrawSetPreviewModel(TXDNI[playerid][2], 20);
	TextDrawSetPreviewRot(TXDNI[playerid][2], 0.000000, 0.000000, 0.000000, 1.000000);
	TXDNI[playerid][3] = TextDrawCreate(284.000000, 170.088867, "Nombre_y_apellido:");
	TextDrawLetterSize(TXDNI[playerid][3], 0.109250, 0.819110);
	TextDrawAlignment(TXDNI[playerid][3], 1);
	TextDrawColor(TXDNI[playerid][3], -1);
	TextDrawSetShadow(TXDNI[playerid][3], 0);
	TextDrawSetOutline(TXDNI[playerid][3], 0);
	TextDrawBackgroundColor(TXDNI[playerid][3], 255);
	TextDrawFont(TXDNI[playerid][3], 2);
	TextDrawSetProportional(TXDNI[playerid][3], 1);
	TextDrawSetShadow(TXDNI[playerid][3], 0);
	TXDNI[playerid][4] = TextDrawCreate(335.103118, 170.088867, "Max_Contreras");
	TextDrawLetterSize(TXDNI[playerid][4], 0.109250, 0.819110);
	TextDrawAlignment(TXDNI[playerid][4], 1);
	TextDrawColor(TXDNI[playerid][4], -1);
	TextDrawSetShadow(TXDNI[playerid][4], 0);
	TextDrawSetOutline(TXDNI[playerid][4], 0);
	TextDrawBackgroundColor(TXDNI[playerid][4], 255);
	TextDrawFont(TXDNI[playerid][4], 2);
	TextDrawSetProportional(TXDNI[playerid][4], 1);
	TextDrawSetShadow(TXDNI[playerid][4], 0);
	TXDNI[playerid][5] = TextDrawCreate(284.000000, 181.689575, "fecha_de_nacimiento:__21/04/1980");
	TextDrawLetterSize(TXDNI[playerid][5], 0.109250, 0.819110);
	TextDrawAlignment(TXDNI[playerid][5], 1);
	TextDrawColor(TXDNI[playerid][5], -1);
	TextDrawSetShadow(TXDNI[playerid][5], 0);
	TextDrawSetOutline(TXDNI[playerid][5], 0);
	TextDrawBackgroundColor(TXDNI[playerid][5], 255);
	TextDrawFont(TXDNI[playerid][5], 2);
	TextDrawSetProportional(TXDNI[playerid][5], 1);
	TextDrawSetShadow(TXDNI[playerid][5], 0);
	TXDNI[playerid][6] = TextDrawCreate(284.000000, 193.690307, "dOMICILIO:_PF-200");
	TextDrawLetterSize(TXDNI[playerid][6], 0.109250, 0.819110);
	TextDrawAlignment(TXDNI[playerid][6], 1);
	TextDrawColor(TXDNI[playerid][6], -1);
	TextDrawSetShadow(TXDNI[playerid][6], 0);
	TextDrawSetOutline(TXDNI[playerid][6], 0);
	TextDrawBackgroundColor(TXDNI[playerid][6], 255);
	TextDrawFont(TXDNI[playerid][6], 2);
	TextDrawSetProportional(TXDNI[playerid][6], 1);
	TextDrawSetShadow(TXDNI[playerid][6], 0);
	TXDNI[playerid][7] = TextDrawCreate(284.000000, 203.990936, "EstadO:_Los_santos");
	TextDrawLetterSize(TXDNI[playerid][7], 0.109250, 0.819110);
	TextDrawAlignment(TXDNI[playerid][7], 1);
	TextDrawColor(TXDNI[playerid][7], -1);
	TextDrawSetShadow(TXDNI[playerid][7], 0);
	TextDrawSetOutline(TXDNI[playerid][7], 0);
	TextDrawBackgroundColor(TXDNI[playerid][7], 255);
	TextDrawFont(TXDNI[playerid][7], 2);
	TextDrawSetProportional(TXDNI[playerid][7], 1);
	TextDrawSetShadow(TXDNI[playerid][7], 0);
	TXDNI[playerid][8] = TextDrawCreate(284.000000, 215.491638, "genero:_m");
	TextDrawLetterSize(TXDNI[playerid][8], 0.109250, 0.819110);
	TextDrawAlignment(TXDNI[playerid][8], 1);
	TextDrawColor(TXDNI[playerid][8], -1);
	TextDrawSetShadow(TXDNI[playerid][8], 0);
	TextDrawSetOutline(TXDNI[playerid][8], 0);
	TextDrawBackgroundColor(TXDNI[playerid][8], 255);
	TextDrawFont(TXDNI[playerid][8], 2);
	TextDrawSetProportional(TXDNI[playerid][8], 1);
	TextDrawSetShadow(TXDNI[playerid][8], 0);
	TXDNI[playerid][9] = TextDrawCreate(334.500000, 152.666717, "SAN_ANDREAS");
	TextDrawLetterSize(TXDNI[playerid][9], 0.322000, 1.323110);
	TextDrawAlignment(TXDNI[playerid][9], 1);
	TextDrawColor(TXDNI[playerid][9], -1);
	TextDrawSetShadow(TXDNI[playerid][9], 0);
	TextDrawSetOutline(TXDNI[playerid][9], 0);
	TextDrawBackgroundColor(TXDNI[playerid][9], 255);
	TextDrawFont(TXDNI[playerid][9], 3);
	TextDrawSetProportional(TXDNI[playerid][9], 1);
	TextDrawSetShadow(TXDNI[playerid][9], 0);
	TXDNI[playerid][10] = TextDrawCreate(266.000000, 227.022186, "firma:");
	TextDrawLetterSize(TXDNI[playerid][10], 0.400000, 1.600000);
	TextDrawAlignment(TXDNI[playerid][10], 1);
	TextDrawColor(TXDNI[playerid][10], -1);
	TextDrawSetShadow(TXDNI[playerid][10], 0);
	TextDrawSetOutline(TXDNI[playerid][10], 0);
	TextDrawBackgroundColor(TXDNI[playerid][10], 255);
	TextDrawFont(TXDNI[playerid][10], 3);
	TextDrawSetProportional(TXDNI[playerid][10], 1);
	TextDrawSetShadow(TXDNI[playerid][10], 0);
	TXDNI[playerid][11] = TextDrawCreate(315.500000, 230.133300, "MAX_CONTRERAS");
	TextDrawLetterSize(TXDNI[playerid][11], 0.308249, 1.052444);
	TextDrawAlignment(TXDNI[playerid][11], 1);
	TextDrawColor(TXDNI[playerid][11], 255);
	TextDrawSetShadow(TXDNI[playerid][11], 0);
	TextDrawSetOutline(TXDNI[playerid][11], 0);
	TextDrawBackgroundColor(TXDNI[playerid][11], 255);
	TextDrawFont(TXDNI[playerid][11], 3);
	TextDrawSetProportional(TXDNI[playerid][11], 1);
	TextDrawSetShadow(TXDNI[playerid][11], 0);
	TXDNI[playerid][12] = TextDrawCreate(314.750000, 235.733383, "box");
	TextDrawLetterSize(TXDNI[playerid][12], 0.000000, -0.125000);
	TextDrawTextSize(TXDNI[playerid][12], 396.000000, 0.000000);
	TextDrawAlignment(TXDNI[playerid][12], 1);
	TextDrawColor(TXDNI[playerid][12], -1);
	TextDrawUseBox(TXDNI[playerid][12], 1);
	TextDrawBoxColor(TXDNI[playerid][12], 255);
	TextDrawSetShadow(TXDNI[playerid][12], 0);
	TextDrawSetOutline(TXDNI[playerid][12], 0);
	TextDrawBackgroundColor(TXDNI[playerid][12], 255);
	TextDrawFont(TXDNI[playerid][12], 1);
	TextDrawSetProportional(TXDNI[playerid][12], 1);
	TextDrawSetShadow(TXDNI[playerid][12], 0);
	TXDNI[playerid][13] = TextDrawCreate(319.250000, 215.322174, "D.N.I:_42234565");
	TextDrawLetterSize(TXDNI[playerid][13], 0.109250, 0.819110);
	TextDrawAlignment(TXDNI[playerid][13], 1);
	TextDrawColor(TXDNI[playerid][13], -1);
	TextDrawSetShadow(TXDNI[playerid][13], 0);
	TextDrawSetOutline(TXDNI[playerid][13], 0);
	TextDrawBackgroundColor(TXDNI[playerid][13], 255);
	TextDrawFont(TXDNI[playerid][13], 2);
	TextDrawSetProportional(TXDNI[playerid][13], 1);
	TextDrawSetShadow(TXDNI[playerid][13], 0);
	VelocimetroT[playerid][0] = TextDrawCreate(561.750000, 149.866638, "box");
	TextDrawLetterSize(VelocimetroT[playerid][0], 0.000000, 5.149994);
	TextDrawTextSize(VelocimetroT[playerid][0], 640.000000, 0.000000);
	TextDrawAlignment(VelocimetroT[playerid][0], 1);
	TextDrawColor(VelocimetroT[playerid][0], -1);
	TextDrawUseBox(VelocimetroT[playerid][0], 1);
	TextDrawBoxColor(VelocimetroT[playerid][0], 90);
	TextDrawSetShadow(VelocimetroT[playerid][0], 0);
	TextDrawSetOutline(VelocimetroT[playerid][0], 0);
	TextDrawBackgroundColor(VelocimetroT[playerid][0], 255);
	TextDrawFont(VelocimetroT[playerid][0], 1);
	TextDrawSetProportional(VelocimetroT[playerid][0], 1);
	TextDrawSetShadow(VelocimetroT[playerid][0], 0);
	VelocimetroT[playerid][1] = TextDrawCreate(577.447509, 153.922180, "100_Km/h");
	TextDrawLetterSize(VelocimetroT[playerid][1], 0.305750, 1.584444);
	TextDrawAlignment(VelocimetroT[playerid][1], 1);
	TextDrawColor(VelocimetroT[playerid][1], -1);
	TextDrawSetShadow(VelocimetroT[playerid][1], 0);
	TextDrawSetOutline(VelocimetroT[playerid][1], 0);
	TextDrawBackgroundColor(VelocimetroT[playerid][1], 255);
	TextDrawFont(VelocimetroT[playerid][1], 2);
	TextDrawSetProportional(VelocimetroT[playerid][1], 1);
	TextDrawSetShadow(VelocimetroT[playerid][1], 0);
	VelocimetroT[playerid][2] = TextDrawCreate(561.750000, 150.488861, "box");
	TextDrawLetterSize(VelocimetroT[playerid][2], 0.000000, 2.599998);
	TextDrawTextSize(VelocimetroT[playerid][2], 644.000000, 0.000000);
	TextDrawAlignment(VelocimetroT[playerid][2], 1);
	TextDrawColor(VelocimetroT[playerid][2], -1);
	TextDrawUseBox(VelocimetroT[playerid][2], 1);
	TextDrawBoxColor(VelocimetroT[playerid][2], 90);
	TextDrawSetShadow(VelocimetroT[playerid][2], 0);
	TextDrawSetOutline(VelocimetroT[playerid][2], 0);
	TextDrawBackgroundColor(VelocimetroT[playerid][2], 255);
	TextDrawFont(VelocimetroT[playerid][2], 1);
	TextDrawSetProportional(VelocimetroT[playerid][2], 1);
	TextDrawSetShadow(VelocimetroT[playerid][2], 0);
	VelocimetroT[playerid][3] = TextDrawCreate(564.000000, 181.522171, "100l");
	TextDrawLetterSize(VelocimetroT[playerid][3], 0.201999, 1.015111);
	TextDrawAlignment(VelocimetroT[playerid][3], 1);
	TextDrawColor(VelocimetroT[playerid][3], -1);
	TextDrawSetShadow(VelocimetroT[playerid][3], 0);
	TextDrawSetOutline(VelocimetroT[playerid][3], 0);
	TextDrawBackgroundColor(VelocimetroT[playerid][3], 255);
	TextDrawFont(VelocimetroT[playerid][3], 3);
	TextDrawSetProportional(VelocimetroT[playerid][3], 1);
	TextDrawSetShadow(VelocimetroT[playerid][3], 0);
	TaximetroT[playerid][0] = TextDrawCreate(553.250000, 133.688827, "box");
	TextDrawLetterSize(TaximetroT[playerid][0], 0.000000, 2.800000);
	TextDrawTextSize(TaximetroT[playerid][0], 641.000000, 0.000000);
	TextDrawAlignment(TaximetroT[playerid][0], 1);
	TextDrawColor(TaximetroT[playerid][0], -1);
	TextDrawUseBox(TaximetroT[playerid][0], 1);
	TextDrawBoxColor(TaximetroT[playerid][0], 90);
	TextDrawSetShadow(TaximetroT[playerid][0], 0);
	TextDrawSetOutline(TaximetroT[playerid][0], 0);
	TextDrawBackgroundColor(TaximetroT[playerid][0], 255);
	TextDrawFont(TaximetroT[playerid][0], 1);
	TextDrawSetProportional(TaximetroT[playerid][0], 1);
	TextDrawSetShadow(TaximetroT[playerid][0], 0);
	TaximetroT[playerid][1] = TextDrawCreate(553.250000, 133.688827, "box");
	TextDrawLetterSize(TaximetroT[playerid][1], 0.000000, 0.725000);
	TextDrawTextSize(TaximetroT[playerid][1], 642.000000, 0.000000);
	TextDrawAlignment(TaximetroT[playerid][1], 1);
	TextDrawColor(TaximetroT[playerid][1], -1);
	TextDrawUseBox(TaximetroT[playerid][1], 1);
	TextDrawBoxColor(TaximetroT[playerid][1], 90);
	TextDrawSetShadow(TaximetroT[playerid][1], 0);
	TextDrawSetOutline(TaximetroT[playerid][1], 0);
	TextDrawBackgroundColor(TaximetroT[playerid][1], 255);
	TextDrawFont(TaximetroT[playerid][1], 1);
	TextDrawSetProportional(TaximetroT[playerid][1], 1);
	TextDrawSetShadow(TaximetroT[playerid][1], 0);
	TaximetroT[playerid][2] = TextDrawCreate(566.500000, 131.911132, "Taximetro");
	TextDrawLetterSize(TaximetroT[playerid][2], 0.288749, 0.987110);
	TextDrawAlignment(TaximetroT[playerid][2], 1);
	TextDrawColor(TaximetroT[playerid][2], -1);
	TextDrawSetShadow(TaximetroT[playerid][2], 0);
	TextDrawSetOutline(TaximetroT[playerid][2], 0);
	TextDrawBackgroundColor(TaximetroT[playerid][2], 255);
	TextDrawFont(TaximetroT[playerid][2], 2);
	TextDrawSetProportional(TaximetroT[playerid][2], 1);
	TextDrawSetShadow(TaximetroT[playerid][2], 0);
	TaximetroT[playerid][3] = TextDrawCreate(573.500000, 141.777725, "$20.00");
	TextDrawLetterSize(TaximetroT[playerid][3], 0.428250, 1.752444);
	TextDrawAlignment(TaximetroT[playerid][3], 1);
	TextDrawColor(TaximetroT[playerid][3], 651248965);
	TextDrawSetShadow(TaximetroT[playerid][3], 0);
	TextDrawSetOutline(TaximetroT[playerid][3], 0);
	TextDrawBackgroundColor(TaximetroT[playerid][3], 255);
	TextDrawFont(TaximetroT[playerid][3], 3);
	TextDrawSetProportional(TaximetroT[playerid][3], 1);
	TextDrawSetShadow(TaximetroT[playerid][3], 0);
	ConcecionarioT[playerid][0] = TextDrawCreate(79.500000, 62.911056, "splash1:splash1");
	TextDrawLetterSize(ConcecionarioT[playerid][0], 0.000000, 0.000000);
	TextDrawTextSize(ConcecionarioT[playerid][0], 498.000000, 330.000000);
	TextDrawAlignment(ConcecionarioT[playerid][0], 1);
	TextDrawColor(ConcecionarioT[playerid][0], -1);
	TextDrawSetShadow(ConcecionarioT[playerid][0], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][0], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][0], 255);
	TextDrawFont(ConcecionarioT[playerid][0], 4);
	TextDrawSetProportional(ConcecionarioT[playerid][0], 0);
	TextDrawSetShadow(ConcecionarioT[playerid][0], 0);
	ConcecionarioT[playerid][1] = TextDrawCreate(80.000000, 86.088874, "box");
	TextDrawLetterSize(ConcecionarioT[playerid][1], 0.000000, 20.274999);
	TextDrawTextSize(ConcecionarioT[playerid][1], 577.000000, 0.000000);
	TextDrawAlignment(ConcecionarioT[playerid][1], 1);
	TextDrawColor(ConcecionarioT[playerid][1], -1);
	TextDrawUseBox(ConcecionarioT[playerid][1], 1);
	TextDrawBoxColor(ConcecionarioT[playerid][1], -5963521);
	TextDrawSetShadow(ConcecionarioT[playerid][1], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][1], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][1], 255);
	TextDrawFont(ConcecionarioT[playerid][1], 1);
	TextDrawSetProportional(ConcecionarioT[playerid][1], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][1], 0);
	ConcecionarioT[playerid][2] = TextDrawCreate(76.500000, 209.288879, "box");
	TextDrawLetterSize(ConcecionarioT[playerid][2], 0.000000, 2.349999);
	TextDrawTextSize(ConcecionarioT[playerid][2], 580.000000, 0.000000);
	TextDrawAlignment(ConcecionarioT[playerid][2], 1);
	TextDrawColor(ConcecionarioT[playerid][2], -1);
	TextDrawUseBox(ConcecionarioT[playerid][2], 1);
	TextDrawBoxColor(ConcecionarioT[playerid][2], 255);
	TextDrawSetShadow(ConcecionarioT[playerid][2], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][2], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][2], 90);
	TextDrawFont(ConcecionarioT[playerid][2], 1);
	TextDrawSetProportional(ConcecionarioT[playerid][2], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][2], 0);
	ConcecionarioT[playerid][3] = TextDrawCreate(98.000000, 110.822204, "");
	TextDrawLetterSize(ConcecionarioT[playerid][3], 0.000000, 0.000000);
	TextDrawTextSize(ConcecionarioT[playerid][3], 90.000000, 90.000000);
	TextDrawAlignment(ConcecionarioT[playerid][3], 1);
	TextDrawColor(ConcecionarioT[playerid][3], -1);
	TextDrawSetShadow(ConcecionarioT[playerid][3], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][3], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][3], 90);
	TextDrawFont(ConcecionarioT[playerid][3], 5);
	TextDrawSetProportional(ConcecionarioT[playerid][3], 0);
	TextDrawSetShadow(ConcecionarioT[playerid][3], 0);
	TextDrawSetPreviewModel(ConcecionarioT[playerid][3], 400);
	TextDrawSetPreviewRot(ConcecionarioT[playerid][3], 0.000000, 0.000000, 40.000000, 1.000000);
	TextDrawSetPreviewVehCol(ConcecionarioT[playerid][3], 1, 1);
	TextDrawSetSelectable(ConcecionarioT[playerid][3], true);
	ConcecionarioT[playerid][4] = TextDrawCreate(221.250000, 110.199951, "");
	TextDrawLetterSize(ConcecionarioT[playerid][4], 0.000000, 0.000000);
	TextDrawTextSize(ConcecionarioT[playerid][4], 90.000000, 90.000000);
	TextDrawAlignment(ConcecionarioT[playerid][4], 1);
	TextDrawColor(ConcecionarioT[playerid][4], -1);
	TextDrawSetShadow(ConcecionarioT[playerid][4], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][4], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][4], 90);
	TextDrawFont(ConcecionarioT[playerid][4], 5);
	TextDrawSetProportional(ConcecionarioT[playerid][4], 0);
	TextDrawSetShadow(ConcecionarioT[playerid][4], 0);
	TextDrawSetPreviewModel(ConcecionarioT[playerid][4], 401);
	TextDrawSetPreviewRot(ConcecionarioT[playerid][4], 0.000000, 0.000000, 40.000000, 1.000000);
	TextDrawSetPreviewVehCol(ConcecionarioT[playerid][4], 1, 1);
	TextDrawSetSelectable(ConcecionarioT[playerid][4], true);
	ConcecionarioT[playerid][5] = TextDrawCreate(346.950714, 110.077674, "");
	TextDrawLetterSize(ConcecionarioT[playerid][5], 0.000000, 0.000000);
	TextDrawTextSize(ConcecionarioT[playerid][5], 90.000000, 90.000000);
	TextDrawAlignment(ConcecionarioT[playerid][5], 1);
	TextDrawColor(ConcecionarioT[playerid][5], -1);
	TextDrawSetShadow(ConcecionarioT[playerid][5], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][5], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][5], 90);
	TextDrawFont(ConcecionarioT[playerid][5], 5);
	TextDrawSetProportional(ConcecionarioT[playerid][5], 0);
	TextDrawSetShadow(ConcecionarioT[playerid][5], 0);
	TextDrawSetPreviewModel(ConcecionarioT[playerid][5], 402);
	TextDrawSetPreviewRot(ConcecionarioT[playerid][5], 0.000000, 0.000000, 40.000000, 1.000000);
	TextDrawSetPreviewVehCol(ConcecionarioT[playerid][5], 1, 1);
	TextDrawSetSelectable(ConcecionarioT[playerid][5], true);
	ConcecionarioT[playerid][6] = TextDrawCreate(471.200714, 109.244338, "");
	TextDrawLetterSize(ConcecionarioT[playerid][6], 0.000000, 0.000000);
	TextDrawTextSize(ConcecionarioT[playerid][6], 90.000000, 90.000000);
	TextDrawAlignment(ConcecionarioT[playerid][6], 1);
	TextDrawColor(ConcecionarioT[playerid][6], -1);
	TextDrawSetShadow(ConcecionarioT[playerid][6], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][6], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][6], 90);
	TextDrawFont(ConcecionarioT[playerid][6], 5);
	TextDrawSetProportional(ConcecionarioT[playerid][6], 0);
	TextDrawSetShadow(ConcecionarioT[playerid][6], 0);
	TextDrawSetPreviewModel(ConcecionarioT[playerid][6], 404);
	TextDrawSetPreviewRot(ConcecionarioT[playerid][6], 0.000000, 0.000000, 40.000000, 1.000000);
	TextDrawSetPreviewVehCol(ConcecionarioT[playerid][6], 1, 1);
	TextDrawSetSelectable(ConcecionarioT[playerid][6], true);
	ConcecionarioT[playerid][7] = TextDrawCreate(110.500000, 211.466705, "Esperanto");
	TextDrawLetterSize(ConcecionarioT[playerid][7], 0.400000, 1.600000);
	TextDrawAlignment(ConcecionarioT[playerid][7], 1);
	TextDrawColor(ConcecionarioT[playerid][7], -1);
	TextDrawSetShadow(ConcecionarioT[playerid][7], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][7], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][7], 255);
	TextDrawFont(ConcecionarioT[playerid][7], 1);
	TextDrawSetProportional(ConcecionarioT[playerid][7], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][7], 0);
	ConcecionarioT[playerid][8] = TextDrawCreate(76.500000, 235.733337, "box");
	TextDrawLetterSize(ConcecionarioT[playerid][8], 0.000000, 2.349999);
	TextDrawTextSize(ConcecionarioT[playerid][8], 580.000000, 0.000000);
	TextDrawAlignment(ConcecionarioT[playerid][8], 1);
	TextDrawColor(ConcecionarioT[playerid][8], -1);
	TextDrawUseBox(ConcecionarioT[playerid][8], 1);
	TextDrawBoxColor(ConcecionarioT[playerid][8], 90);
	TextDrawSetShadow(ConcecionarioT[playerid][8], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][8], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][8], 255);
	TextDrawFont(ConcecionarioT[playerid][8], 1);
	TextDrawSetProportional(ConcecionarioT[playerid][8], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][8], 0);
	ConcecionarioT[playerid][9] = TextDrawCreate(110.250000, 238.844375, "$80000");
	TextDrawLetterSize(ConcecionarioT[playerid][9], 0.400000, 1.600000);
	TextDrawAlignment(ConcecionarioT[playerid][9], 1);
	TextDrawColor(ConcecionarioT[playerid][9], 8388863);
	TextDrawSetShadow(ConcecionarioT[playerid][9], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][9], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][9], 255);
	TextDrawFont(ConcecionarioT[playerid][9], 2);
	TextDrawSetProportional(ConcecionarioT[playerid][9], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][9], 0);
	ConcecionarioT[playerid][10] = TextDrawCreate(236.000000, 211.777816, "Esperanto");
	TextDrawLetterSize(ConcecionarioT[playerid][10], 0.400000, 1.600000);
	TextDrawAlignment(ConcecionarioT[playerid][10], 1);
	TextDrawColor(ConcecionarioT[playerid][10], -1);
	TextDrawSetShadow(ConcecionarioT[playerid][10], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][10], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][10], 255);
	TextDrawFont(ConcecionarioT[playerid][10], 1);
	TextDrawSetProportional(ConcecionarioT[playerid][10], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][10], 0);
	ConcecionarioT[playerid][11] = TextDrawCreate(235.000000, 239.577697, "$80000");
	TextDrawLetterSize(ConcecionarioT[playerid][11], 0.400000, 1.600000);
	TextDrawAlignment(ConcecionarioT[playerid][11], 1);
	TextDrawColor(ConcecionarioT[playerid][11], 8388863);
	TextDrawSetShadow(ConcecionarioT[playerid][11], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][11], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][11], 255);
	TextDrawFont(ConcecionarioT[playerid][11], 2);
	TextDrawSetProportional(ConcecionarioT[playerid][11], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][11], 0);
	ConcecionarioT[playerid][12] = TextDrawCreate(360.000000, 211.777801, "Esperanto");
	TextDrawLetterSize(ConcecionarioT[playerid][12], 0.400000, 1.600000);
	TextDrawAlignment(ConcecionarioT[playerid][12], 1);
	TextDrawColor(ConcecionarioT[playerid][12], -1);
	TextDrawSetShadow(ConcecionarioT[playerid][12], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][12], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][12], 255);
	TextDrawFont(ConcecionarioT[playerid][12], 1);
	TextDrawSetProportional(ConcecionarioT[playerid][12], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][12], 0);
	ConcecionarioT[playerid][13] = TextDrawCreate(360.500000, 239.466598, "$80000");
	TextDrawLetterSize(ConcecionarioT[playerid][13], 0.400000, 1.600000);
	TextDrawAlignment(ConcecionarioT[playerid][13], 1);
	TextDrawColor(ConcecionarioT[playerid][13], 8388863);
	TextDrawSetShadow(ConcecionarioT[playerid][13], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][13], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][13], 255);
	TextDrawFont(ConcecionarioT[playerid][13], 2);
	TextDrawSetProportional(ConcecionarioT[playerid][13], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][13], 0);
	ConcecionarioT[playerid][14] = TextDrawCreate(483.750000, 211.777786, "Esperanto");
	TextDrawLetterSize(ConcecionarioT[playerid][14], 0.400000, 1.600000);
	TextDrawAlignment(ConcecionarioT[playerid][14], 1);
	TextDrawColor(ConcecionarioT[playerid][14], -1);
	TextDrawSetShadow(ConcecionarioT[playerid][14], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][14], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][14], 255);
	TextDrawFont(ConcecionarioT[playerid][14], 1);
	TextDrawSetProportional(ConcecionarioT[playerid][14], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][14], 0);
	ConcecionarioT[playerid][15] = TextDrawCreate(484.000000, 238.844375, "$80000");
	TextDrawLetterSize(ConcecionarioT[playerid][15], 0.400000, 1.600000);
	TextDrawAlignment(ConcecionarioT[playerid][15], 1);
	TextDrawColor(ConcecionarioT[playerid][15], 8388863);
	TextDrawSetShadow(ConcecionarioT[playerid][15], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][15], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][15], 255);
	TextDrawFont(ConcecionarioT[playerid][15], 2);
	TextDrawSetProportional(ConcecionarioT[playerid][15], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][15], 0);
	ConcecionarioT[playerid][16] = TextDrawCreate(78.750000, 63.377723, "box");
	TextDrawLetterSize(ConcecionarioT[playerid][16], 0.000000, 3.299999);
	TextDrawTextSize(ConcecionarioT[playerid][16], 579.000000, 0.000000);
	TextDrawAlignment(ConcecionarioT[playerid][16], 1);
	TextDrawColor(ConcecionarioT[playerid][16], -1);
	TextDrawUseBox(ConcecionarioT[playerid][16], 1);
	TextDrawBoxColor(ConcecionarioT[playerid][16], 1515870810);
	TextDrawSetShadow(ConcecionarioT[playerid][16], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][16], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][16], 255);
	TextDrawFont(ConcecionarioT[playerid][16], 1);
	TextDrawSetProportional(ConcecionarioT[playerid][16], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][16], 0);
	ConcecionarioT[playerid][17] = TextDrawCreate(205.500000, 69.911079, "Catalogo_de_vehiculos_-_Alta_Gama.");
	TextDrawLetterSize(ConcecionarioT[playerid][17], 0.400000, 1.600000);
	TextDrawAlignment(ConcecionarioT[playerid][17], 1);
	TextDrawColor(ConcecionarioT[playerid][17], -1);
	TextDrawSetShadow(ConcecionarioT[playerid][17], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][17], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][17], 255);
	TextDrawFont(ConcecionarioT[playerid][17], 3);
	TextDrawSetProportional(ConcecionarioT[playerid][17], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][17], 0);
	ConcecionarioT[playerid][18] = TextDrawCreate(82.500000, 148.622222, "~<~");
	TextDrawLetterSize(ConcecionarioT[playerid][18], 0.400000, 1.600000);
	TextDrawAlignment(ConcecionarioT[playerid][18], 1);
	TextDrawColor(ConcecionarioT[playerid][18], -1);
	TextDrawSetShadow(ConcecionarioT[playerid][18], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][18], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][18], 255);
	TextDrawFont(ConcecionarioT[playerid][18], 1);
	TextDrawSetProportional(ConcecionarioT[playerid][18], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][18], 0);
	TextDrawSetSelectable(ConcecionarioT[playerid][18], true);
	ConcecionarioT[playerid][19] = TextDrawCreate(565.500000, 150.177780, "~>~");
	TextDrawLetterSize(ConcecionarioT[playerid][19], 0.400000, 1.600000);
	TextDrawAlignment(ConcecionarioT[playerid][19], 1);
	TextDrawColor(ConcecionarioT[playerid][19], -1);
	TextDrawSetShadow(ConcecionarioT[playerid][19], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][19], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][19], 255);
	TextDrawFont(ConcecionarioT[playerid][19], 1);
	TextDrawSetProportional(ConcecionarioT[playerid][19], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][19], 0);
	TextDrawSetSelectable(ConcecionarioT[playerid][19], true);
	ConcecionarioT[playerid][20] = TextDrawCreate(75.500000, 344.932769, "box");
	TextDrawLetterSize(ConcecionarioT[playerid][20], 0.000000, 3.299999);
	TextDrawTextSize(ConcecionarioT[playerid][20], 582.000000, 0.000000);
	TextDrawAlignment(ConcecionarioT[playerid][20], 1);
	TextDrawColor(ConcecionarioT[playerid][20], -1);
	TextDrawUseBox(ConcecionarioT[playerid][20], 1);
	TextDrawBoxColor(ConcecionarioT[playerid][20], 1515870810);
	TextDrawSetShadow(ConcecionarioT[playerid][20], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][20], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][20], 255);
	TextDrawFont(ConcecionarioT[playerid][20], 1);
	TextDrawSetProportional(ConcecionarioT[playerid][20], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][20], 0);
	ConcecionarioT[playerid][21] = TextDrawCreate(229.000000, 351.466705, "Precios_aplicados_con_IVA,_la_concesionaria_no_permite_cambios._~n~La_concesionaria_esta_adherida_a_bussines_San_Andreas.~n~________All_rights_SA.Bussines.");
	TextDrawLetterSize(ConcecionarioT[playerid][21], 0.244000, 0.613777);
	TextDrawAlignment(ConcecionarioT[playerid][21], 1);
	TextDrawColor(ConcecionarioT[playerid][21], -1);
	TextDrawSetShadow(ConcecionarioT[playerid][21], 0);
	TextDrawSetOutline(ConcecionarioT[playerid][21], 0);
	TextDrawBackgroundColor(ConcecionarioT[playerid][21], 255);
	TextDrawFont(ConcecionarioT[playerid][21], 1);
	TextDrawSetProportional(ConcecionarioT[playerid][21], 1);
	TextDrawSetShadow(ConcecionarioT[playerid][21], 0);
	TextPrueba[playerid] = TextDrawCreate(3.000000, 434.000000, "~r~Nivel: ~w~_ ~g~Edad: ~w~_ ~y~Telefono: ~w~_ ~y~Skin: ~w~_ ~p~Exp: ~w~_/_");
	TextDrawBackgroundColor(TextPrueba[playerid],255);
	TextDrawFont(TextPrueba[playerid], 1);
	TextDrawLetterSize(TextPrueba[playerid], 0.509999, 1.300000);
	TextDrawColor(TextPrueba[playerid], -1);
	TextDrawSetOutline(TextPrueba[playerid], 0);
	TextDrawSetProportional(TextPrueba[playerid], 1);
	TextDrawSetShadow(TextPrueba[playerid], 1);
	TextDrawUseBox(TextPrueba[playerid], 1);
	TextDrawBoxColor(TextPrueba[playerid], 255);
	TextDrawTextSize(TextPrueba[playerid], 640.000000, 0.000000);
	PeriodicosT[0][playerid] = TextDrawCreate(126.750000, 44.399974, "box");
	TextDrawLetterSize(PeriodicosT[0][playerid], 0.000000, 40.874992);
	TextDrawTextSize(PeriodicosT[0][playerid], 496.000000, 0.000000);
	TextDrawAlignment(PeriodicosT[0][playerid], 1);
	TextDrawColor(PeriodicosT[0][playerid], -1);
	TextDrawUseBox(PeriodicosT[0][playerid], 1);
	TextDrawBoxColor(PeriodicosT[0][playerid], -1);
	TextDrawSetShadow(PeriodicosT[0][playerid], 0);
	TextDrawSetOutline(PeriodicosT[0][playerid], 0);
	TextDrawBackgroundColor(PeriodicosT[0][playerid], 255);
	TextDrawFont(PeriodicosT[0][playerid], 1);
	TextDrawSetProportional(PeriodicosT[0][playerid], 1);
	TextDrawSetShadow(PeriodicosT[0][playerid], 0);
	PeriodicosT[1][playerid] = TextDrawCreate(138.250000, 83.911048, "box");
	TextDrawLetterSize(PeriodicosT[1][playerid], 0.000000, 0.074998);
	TextDrawTextSize(PeriodicosT[1][playerid], 483.000000, 0.000000);
	TextDrawAlignment(PeriodicosT[1][playerid], 1);
	TextDrawColor(PeriodicosT[1][playerid], -1);
	TextDrawUseBox(PeriodicosT[1][playerid], 1);
	TextDrawBoxColor(PeriodicosT[1][playerid], 255);
	TextDrawSetShadow(PeriodicosT[1][playerid], 0);
	TextDrawSetOutline(PeriodicosT[1][playerid], 0);
	TextDrawBackgroundColor(PeriodicosT[1][playerid], 255);
	TextDrawFont(PeriodicosT[1][playerid], 1);
	TextDrawSetProportional(PeriodicosT[1][playerid], 1);
	TextDrawSetShadow(PeriodicosT[1][playerid], 0);
	PeriodicosT[2][playerid] = TextDrawCreate(141.500000, 47.199989, "Los_Santos_New's");
	TextDrawLetterSize(PeriodicosT[2][playerid], 0.697250, 3.267554);
	TextDrawAlignment(PeriodicosT[2][playerid], 1);
	TextDrawColor(PeriodicosT[2][playerid], 255);
	TextDrawSetShadow(PeriodicosT[2][playerid], 0);
	TextDrawSetOutline(PeriodicosT[2][playerid], 0);
	TextDrawBackgroundColor(PeriodicosT[2][playerid], 255);
	TextDrawFont(PeriodicosT[2][playerid], 0);
	TextDrawSetProportional(PeriodicosT[2][playerid], 1);
	TextDrawSetShadow(PeriodicosT[2][playerid], 0);
	PeriodicosT[3][playerid] = TextDrawCreate(385.750000, 46.577758, "25/03/2016");
	TextDrawLetterSize(PeriodicosT[3][playerid], 0.400000, 1.600000);
	TextDrawAlignment(PeriodicosT[3][playerid], 1);
	TextDrawColor(PeriodicosT[3][playerid], 255);
	TextDrawSetShadow(PeriodicosT[3][playerid], 0);
	TextDrawSetOutline(PeriodicosT[3][playerid], 0);
	TextDrawBackgroundColor(PeriodicosT[3][playerid], 255);
	TextDrawFont(PeriodicosT[3][playerid], 2);
	TextDrawSetProportional(PeriodicosT[3][playerid], 1);
	TextDrawSetShadow(PeriodicosT[3][playerid], 0);
	PeriodicosT[4][playerid] = TextDrawCreate(132.500000, 89.977706, "loadsc3:loadsc3");
	TextDrawLetterSize(PeriodicosT[4][playerid], 0.000000, 0.000000);
	TextDrawTextSize(PeriodicosT[4][playerid], 357.000000, 271.000000);
	TextDrawAlignment(PeriodicosT[4][playerid], 1);
	TextDrawColor(PeriodicosT[4][playerid], -1);
	TextDrawSetShadow(PeriodicosT[4][playerid], 0);
	TextDrawSetOutline(PeriodicosT[4][playerid], 0);
	TextDrawBackgroundColor(PeriodicosT[4][playerid], 255);
	TextDrawFont(PeriodicosT[4][playerid], 4);
	TextDrawSetProportional(PeriodicosT[4][playerid], 0);
	TextDrawSetShadow(PeriodicosT[4][playerid], 0);
	PeriodicosT[5][playerid] = TextDrawCreate(134.750000, 367.333282, "box");
	TextDrawLetterSize(PeriodicosT[5][playerid], 0.000000, 0.074998);
	TextDrawTextSize(PeriodicosT[5][playerid], 486.000000, 0.000000);
	TextDrawAlignment(PeriodicosT[5][playerid], 1);
	TextDrawColor(PeriodicosT[5][playerid], -1);
	TextDrawUseBox(PeriodicosT[5][playerid], 1);
	TextDrawBoxColor(PeriodicosT[5][playerid], 255);
	TextDrawSetShadow(PeriodicosT[5][playerid], 0);
	TextDrawSetOutline(PeriodicosT[5][playerid], 0);
	TextDrawBackgroundColor(PeriodicosT[5][playerid], 255);
	TextDrawFont(PeriodicosT[5][playerid], 1);
	TextDrawSetProportional(PeriodicosT[5][playerid], 1);
	TextDrawSetShadow(PeriodicosT[5][playerid], 0);
	PeriodicosT[6][playerid] = TextDrawCreate(133.750000, 227.644470, "box");
	TextDrawLetterSize(PeriodicosT[6][playerid], 0.000000, 11.875000);
	TextDrawTextSize(PeriodicosT[6][playerid], 266.000000, 0.000000);
	TextDrawAlignment(PeriodicosT[6][playerid], 1);
	TextDrawColor(PeriodicosT[6][playerid], -1);
	TextDrawUseBox(PeriodicosT[6][playerid], 1);
	TextDrawBoxColor(PeriodicosT[6][playerid], 255);
	TextDrawSetShadow(PeriodicosT[6][playerid], 0);
	TextDrawSetOutline(PeriodicosT[6][playerid], 0);
	TextDrawBackgroundColor(PeriodicosT[6][playerid], 255);
	TextDrawFont(PeriodicosT[6][playerid], 1);
	TextDrawSetProportional(PeriodicosT[6][playerid], 1);
	TextDrawSetShadow(PeriodicosT[6][playerid], 0);
	PeriodicosT[7][playerid] = TextDrawCreate(157.500000, 233.555496, "a_la_carcel");
	TextDrawLetterSize(PeriodicosT[7][playerid], 0.400000, 1.600000);
	TextDrawAlignment(PeriodicosT[7][playerid], 1);
	TextDrawColor(PeriodicosT[7][playerid], -1);
	TextDrawSetShadow(PeriodicosT[7][playerid], 0);
	TextDrawSetOutline(PeriodicosT[7][playerid], 0);
	TextDrawBackgroundColor(PeriodicosT[7][playerid], 255);
	TextDrawFont(PeriodicosT[7][playerid], 3);
	TextDrawSetProportional(PeriodicosT[7][playerid], 1);
	TextDrawSetShadow(PeriodicosT[7][playerid], 0);
	PeriodicosT[8][playerid] = TextDrawCreate(137.500000, 266.533203, "Policia_de_Los_Santos_encarcelo_a_un_grupo~n~de_maliantes_que_intentaba_robar_un_24-7~n~El_hecho_sucedido_se_produjo_a_dos_cuadras~n~del_Ayuntamiento_de_Los_Santos_dos_delin-~n~cuentes_armados_a_las_20pm_intentaron~n~atracar_al_negocio,_pero_justo_un_patrullero~n~estaba_cerca_y_los_detuvieron.~n~_");
	TextDrawLetterSize(PeriodicosT[8][playerid], 0.260000, 0.853333);
	TextDrawAlignment(PeriodicosT[8][playerid], 1);
	TextDrawColor(PeriodicosT[8][playerid], -1);
	TextDrawSetShadow(PeriodicosT[8][playerid], 0);
	TextDrawSetOutline(PeriodicosT[8][playerid], 0);
	TextDrawBackgroundColor(PeriodicosT[8][playerid], 255);
	TextDrawFont(PeriodicosT[8][playerid], 0);
	TextDrawSetProportional(PeriodicosT[8][playerid], 1);
	TextDrawSetShadow(PeriodicosT[8][playerid], 0);
	PeriodicosT[9][playerid] = TextDrawCreate(134.250000, 376.666595, "box");
	TextDrawLetterSize(PeriodicosT[9][playerid], 0.000000, 2.975000);
	TextDrawTextSize(PeriodicosT[9][playerid], 206.000000, 0.000000);
	TextDrawAlignment(PeriodicosT[9][playerid], 1);
	TextDrawColor(PeriodicosT[9][playerid], -1);
	TextDrawUseBox(PeriodicosT[9][playerid], 1);
	TextDrawBoxColor(PeriodicosT[9][playerid], 255);
	TextDrawSetShadow(PeriodicosT[9][playerid], 0);
	TextDrawSetOutline(PeriodicosT[9][playerid], 0);
	TextDrawBackgroundColor(PeriodicosT[9][playerid], 255);
	TextDrawFont(PeriodicosT[9][playerid], 1);
	TextDrawSetProportional(PeriodicosT[9][playerid], 1);
	TextDrawSetShadow(PeriodicosT[9][playerid], 0);
	PeriodicosT[10][playerid] = TextDrawCreate(142.000000, 382.266662, "BOCAMPEON");
	TextDrawLetterSize(PeriodicosT[10][playerid], 0.277999, 1.780444);
	TextDrawAlignment(PeriodicosT[10][playerid], 1);
	TextDrawColor(PeriodicosT[10][playerid], -1);
	TextDrawSetShadow(PeriodicosT[10][playerid], 0);
	TextDrawSetOutline(PeriodicosT[10][playerid], 0);
	TextDrawBackgroundColor(PeriodicosT[10][playerid], 255);
	TextDrawFont(PeriodicosT[10][playerid], 1);
	TextDrawSetProportional(PeriodicosT[10][playerid], 1);
	TextDrawSetShadow(PeriodicosT[10][playerid], 0);
	PeriodicosT[11][playerid] = TextDrawCreate(212.250000, 378.844635, "Boca_le_gano_2-0_al_real_madrid~n~y_se_corono_campeon_del_mundo");
	TextDrawLetterSize(PeriodicosT[11][playerid], 0.116249, 1.127111);
	TextDrawAlignment(PeriodicosT[11][playerid], 1);
	TextDrawColor(PeriodicosT[11][playerid], 255);
	TextDrawSetShadow(PeriodicosT[11][playerid], 0);
	TextDrawSetOutline(PeriodicosT[11][playerid], 0);
	TextDrawBackgroundColor(PeriodicosT[11][playerid], 255);
	TextDrawFont(PeriodicosT[11][playerid], 1);
	TextDrawSetProportional(PeriodicosT[11][playerid], 1);
	TextDrawSetShadow(PeriodicosT[11][playerid], 0);
	PeriodicosT[12][playerid] = TextDrawCreate(291.500000, 376.977691, "box");
	TextDrawLetterSize(PeriodicosT[12][playerid], 0.000000, 2.975000);
	TextDrawTextSize(PeriodicosT[12][playerid], 370.000000, 0.000000);
	TextDrawAlignment(PeriodicosT[12][playerid], 1);
	TextDrawColor(PeriodicosT[12][playerid], -1);
	TextDrawUseBox(PeriodicosT[12][playerid], 1);
	TextDrawBoxColor(PeriodicosT[12][playerid], 255);
	TextDrawSetShadow(PeriodicosT[12][playerid], 0);
	TextDrawSetOutline(PeriodicosT[12][playerid], 0);
	TextDrawBackgroundColor(PeriodicosT[12][playerid], 255);
	TextDrawFont(PeriodicosT[12][playerid], 1);
	TextDrawSetProportional(PeriodicosT[12][playerid], 1);
	TextDrawSetShadow(PeriodicosT[12][playerid], 0);
	PeriodicosT[13][playerid] = TextDrawCreate(302.500000, 382.888763, "Trabajos");
	TextDrawLetterSize(PeriodicosT[13][playerid], 0.400000, 1.600000);
	TextDrawAlignment(PeriodicosT[13][playerid], 1);
	TextDrawColor(PeriodicosT[13][playerid], -1);
	TextDrawSetShadow(PeriodicosT[13][playerid], 0);
	TextDrawSetOutline(PeriodicosT[13][playerid], 0);
	TextDrawBackgroundColor(PeriodicosT[13][playerid], 255);
	TextDrawFont(PeriodicosT[13][playerid], 3);
	TextDrawSetProportional(PeriodicosT[13][playerid], 1);
	TextDrawSetShadow(PeriodicosT[13][playerid], 0);
	PeriodicosT[14][playerid] = TextDrawCreate(378.250000, 378.844421, "Policia_de_los_santos_esta_reclutando~n~nuevos_cadetes,_por_el_aumento_de_la_~n~delincuencia_necesitan_mas_hombres.");
	TextDrawLetterSize(PeriodicosT[14][playerid], 0.135250, 0.884444);
	TextDrawAlignment(PeriodicosT[14][playerid], 1);
	TextDrawColor(PeriodicosT[14][playerid], 255);
	TextDrawSetShadow(PeriodicosT[14][playerid], 0);
	TextDrawSetOutline(PeriodicosT[14][playerid], 0);
	TextDrawBackgroundColor(PeriodicosT[14][playerid], 255);
	TextDrawFont(PeriodicosT[14][playerid], 3);
	TextDrawSetProportional(PeriodicosT[14][playerid], 1);
	TextDrawSetShadow(PeriodicosT[14][playerid], 0);
	Tel1 = TextDrawCreate(630.000000, 252.916671, "usebox");
	TextDrawLetterSize(Tel1, 0.000000, 20.829633);
	TextDrawTextSize(Tel1, 504.500000, 0.000000);
	TextDrawAlignment(Tel1, 1);
	TextDrawColor(Tel1, 0);
	TextDrawUseBox(Tel1, true);
	TextDrawBoxColor(Tel1, 102);
	TextDrawSetShadow(Tel1, 0);
	TextDrawSetOutline(Tel1, 0);
	TextDrawFont(Tel1, 0);
	TextDrawSetPreviewModel(Tel1, 416);
	TextDrawSetPreviewRot(Tel1, 0.000000, 0.000000, 90.000000, 1.000000);
	Tel2[playerid] = TextDrawCreate(509.000000, 261.333312, "LOADSC2:loadsc2");
	TextDrawLetterSize(Tel2[playerid], 0.000000, 0.000000);
	TextDrawTextSize(Tel2[playerid], 116.500000, 151.666687);
	TextDrawAlignment(Tel2[playerid], 1);
	TextDrawColor(Tel2[playerid], -1);
	TextDrawSetShadow(Tel2[playerid], 0);
	TextDrawSetOutline(Tel2[playerid], 0);
	TextDrawFont(Tel2[playerid], 4);
	TextDrawSetPreviewModel(Tel2[playerid], 416);
	TextDrawSetPreviewRot(Tel2[playerid], 0.000000, 0.000000, 90.000000, 1.000000);
	Tel3 = TextDrawCreate(627.500000, 393.500061, "usebox");
	TextDrawLetterSize(Tel3, 0.000000, 1.887041);
	TextDrawTextSize(Tel3, 507.000000, 0.000000);
	TextDrawAlignment(Tel3, 1);
	TextDrawColor(Tel3, 0);
	TextDrawUseBox(Tel3, true);
	TextDrawBoxColor(Tel3, 102);
	TextDrawSetShadow(Tel3, 0);
	TextDrawSetOutline(Tel3, 0);
	TextDrawFont(Tel3, 0);
	TextDrawSetPreviewModel(Tel3, 416);
	TextDrawSetPreviewRot(Tel3, 0.000000, 0.000000, 90.000000, 1.000000);
	Tel4 = TextDrawCreate(627.500000, 368.250030, "usebox");
	TextDrawLetterSize(Tel4, 0.000000, 0.887041);
	TextDrawTextSize(Tel4, 507.000000, 0.000000);
	TextDrawAlignment(Tel4, 1);
	TextDrawColor(Tel4, 0);
	TextDrawUseBox(Tel4, true);
	TextDrawBoxColor(Tel4, 102);
	TextDrawSetShadow(Tel4, 0);
	TextDrawSetOutline(Tel4, 0);
	TextDrawFont(Tel4, 0);
	TextDrawSetPreviewModel(Tel4, 416);
	TextDrawSetPreviewRot(Tel4, 0.000000, 0.000000, 90.000000, 1.000000);
	Tel5 = TextDrawCreate(564.500000, 288.166748, "12:00");
	TextDrawLetterSize(Tel5, 0.565999, 3.285834);
	TextDrawAlignment(Tel5, 1);
	TextDrawColor(Tel5, -1);
	TextDrawSetShadow(Tel5, 0);
	TextDrawSetOutline(Tel5, 1);
	TextDrawBackgroundColor(Tel5, 51);
	TextDrawFont(Tel5, 3);
	TextDrawSetProportional(Tel5, 1);
	Tel6 = TextDrawCreate(539.500000, 260.166687, "21 julio 2014");
	TextDrawLetterSize(Tel6, 0.218500, 1.150833);
	TextDrawAlignment(Tel6, 1);
	TextDrawColor(Tel6, -1);
	TextDrawSetShadow(Tel6, 0);
	TextDrawSetOutline(Tel6, 1);
	TextDrawBackgroundColor(Tel6, 51);
	TextDrawFont(Tel6, 2);
	TextDrawSetProportional(Tel6, 1);
	Tel7[playerid] = TextDrawCreate(524.000000, 366.166717, "Agenda");
	TextDrawLetterSize(Tel7[playerid], 0.218500, 1.150833);
	TextDrawAlignment(Tel7[playerid], 1);
	TextDrawColor(Tel7[playerid], -1);
	TextDrawSetShadow(Tel7[playerid], 0);
	TextDrawSetOutline(Tel7[playerid], 1);
	TextDrawBackgroundColor(Tel7[playerid], 51);
	TextDrawFont(Tel7[playerid], 2);
	TextDrawSetProportional(Tel7[playerid], 1);
	Tel8 = TextDrawCreate(515.000000, 396.666564, "LD_ROUL:roulred"); //Agenda
	TextDrawLetterSize(Tel8, 0.000000, 0.000000);
	TextDrawTextSize(Tel8, 12.500000, 16.916625);
	TextDrawAlignment(Tel8, 1);
	TextDrawColor(Tel8, -1);
	TextDrawSetShadow(Tel8, 0);
	TextDrawSetOutline(Tel8, 0);
	TextDrawFont(Tel8, 4);
	TextDrawSetSelectable(Tel8, true);
	TextDrawSetPreviewModel(Tel8, 416);
	TextDrawSetPreviewRot(Tel8, 0.000000, 0.000000, 90.000000, 1.000000);
	Tel9 = TextDrawCreate(543.000000, 396.500000, "LD_ROUL:roulgre"); //Llamar
	TextDrawLetterSize(Tel9, 0.000000, 0.000000);
	TextDrawTextSize(Tel9, 12.500000, 16.916625);
	TextDrawAlignment(Tel9, 1);
	TextDrawColor(Tel9, -1);
	TextDrawSetShadow(Tel9, 0);
	TextDrawSetOutline(Tel9, 0);
	TextDrawFont(Tel9, 4);
	TextDrawSetSelectable(Tel9, true);
	TextDrawSetPreviewModel(Tel9, 416);
	TextDrawSetPreviewRot(Tel9, 0.000000, 0.000000, 90.000000, 1.000000);
	Tel10 = TextDrawCreate(572.000000, 396.916687, "LD_ROUL:roulbla"); //Radio
	TextDrawLetterSize(Tel10, 0.000000, 0.000000);
	TextDrawTextSize(Tel10, 12.500000, 16.916625);
	TextDrawAlignment(Tel10, 1);
	TextDrawColor(Tel10, -1);
	TextDrawSetShadow(Tel10, 0);
	TextDrawSetOutline(Tel10, 0);
	TextDrawFont(Tel10, 4);
	TextDrawSetSelectable(Tel10, true);
	TextDrawSetPreviewModel(Tel10, 416);
	TextDrawSetPreviewRot(Tel10, 0.000000, 0.000000, 90.000000, 1.000000);
	Tel11 = TextDrawCreate(601.500000, 390.833282, "+"); //Configuracion
	TextDrawLetterSize(Tel11, 0.598999, 2.749166);
	TextDrawAlignment(Tel11, 1);
	TextDrawColor(Tel11, -1);
	TextDrawSetShadow(Tel11, 0);
	TextDrawSetOutline(Tel11, 1);
	TextDrawBackgroundColor(Tel11, 51);
	TextDrawFont(Tel11, 1);
	TextDrawSetProportional(Tel11, 1);
	TextDrawSetSelectable(Tel11, true);
	TextDrawSetPreviewModel(Tel11, 416);
	TextDrawSetPreviewRot(Tel11, 0.000000, 0.000000, 90.000000, 1.000000);
	Tel12 = TextDrawCreate(514.000000, 419.416687, "LD_BEAT:left");
	TextDrawLetterSize(Tel12, 0.000000, 0.000000);
	TextDrawTextSize(Tel12, 21.500000, 16.916679);
	TextDrawAlignment(Tel12, 1);
	TextDrawColor(Tel12, -1);
	TextDrawSetShadow(Tel12, 0);
	TextDrawSetOutline(Tel12, 0);
	TextDrawFont(Tel12, 4);
	TextDrawSetPreviewModel(Tel12, 416);
	TextDrawSetPreviewRot(Tel12, 0.000000, 0.000000, 90.000000, 1.000000);
	Tel13 = TextDrawCreate(598.500000, 421.000091, "LD_BEAT:right");
	TextDrawLetterSize(Tel13, 0.000000, 0.000000);
	TextDrawTextSize(Tel13, 21.500000, 16.916679);
	TextDrawAlignment(Tel13, 1);
	TextDrawColor(Tel13, -1);
	TextDrawSetShadow(Tel13, 0);
	TextDrawSetOutline(Tel13, 0);
	TextDrawFont(Tel13, 4);
	TextDrawSetPreviewModel(Tel13, 416);
	TextDrawSetPreviewRot(Tel13, 0.000000, 0.000000, 90.000000, 1.000000);
	Tel14 = TextDrawCreate(549.000000, 412.666748, "LD_BEAT:cring");
	TextDrawLetterSize(Tel14, 0.000000, 0.000000);
	TextDrawTextSize(Tel14, 33.000000, 30.916679);
	TextDrawAlignment(Tel14, 1);
	TextDrawColor(Tel14, -1);
	TextDrawSetShadow(Tel14, 0);
	TextDrawSetOutline(Tel14, 0);
	TextDrawFont(Tel14, 4);
	TextDrawSetPreviewModel(Tel14, 416);
	TextDrawSetPreviewRot(Tel14, 0.000000, 0.000000, 90.000000, 1.000000);
	Tel15 = TextDrawCreate(556.500000, 420.583465, "LD_POOL:ball");
	TextDrawLetterSize(Tel15, 0.000000, 0.000000);
	TextDrawTextSize(Tel15, 17.500000, 15.749983);
	TextDrawAlignment(Tel15, 1);
	TextDrawColor(Tel15, -2139062017);
	TextDrawSetShadow(Tel15, 0);
	TextDrawSetOutline(Tel15, 0);
	TextDrawFont(Tel15, 4);
	TextDrawSetSelectable(Tel15, true);
	TextDrawSetPreviewModel(Tel15, 416);
	TextDrawSetPreviewRot(Tel15, 0.000000, 0.000000, 90.000000, 1.000000);
	Tel16 = TextDrawCreate(544.500000, 250.250000, "-");
	TextDrawLetterSize(Tel16, 3.126499, 0.975833);
	TextDrawAlignment(Tel16, 1);
	TextDrawColor(Tel16, -1);
	TextDrawSetShadow(Tel16, 0);
	TextDrawSetOutline(Tel16, 1);
	TextDrawBackgroundColor(Tel16, 51);
	TextDrawFont(Tel16, 1);
	TextDrawSetProportional(Tel16, 1);
	TextDrawSetPreviewModel(Tel16, 416);
	TextDrawSetPreviewRot(Tel16, 0.000000, 0.000000, 90.000000, 1.000000);
	Tel17 = TextDrawCreate(527.000000, 264.583374, "usebox");
	TextDrawLetterSize(Tel17, 0.000000, 0.072222);
	TextDrawTextSize(Tel17, 508.500000, 0.000000);
	TextDrawAlignment(Tel17, 1);
	TextDrawColor(Tel17, 0);
	TextDrawUseBox(Tel17, true);
	TextDrawBoxColor(Tel17, 102);
	TextDrawSetShadow(Tel17, 0);
	TextDrawSetOutline(Tel17, 0);
	TextDrawFont(Tel17, 0);
	TextDrawSetPreviewModel(Tel17, 416);
	TextDrawSetPreviewRot(Tel17, 0.000000, 0.000000, 90.000000, 1.000000);
	Tel18 = TextDrawCreate(524.500000, 265.000000, "usebox");
	TextDrawLetterSize(Tel18, 0.000000, -0.077777);
	TextDrawTextSize(Tel18, 509.500000, 0.000000);
	TextDrawAlignment(Tel18, 1);
	TextDrawColor(Tel18, 0);
	TextDrawUseBox(Tel18, true);
	TextDrawBoxColor(Tel18, 8388863);
	TextDrawSetShadow(Tel18, 0);
	TextDrawSetOutline(Tel18, 0);
	TextDrawFont(Tel18, 0);
	TextDrawSetPreviewModel(Tel18, 416);
	TextDrawSetPreviewRot(Tel18, 0.000000, 0.000000, 90.000000, 1.000000);
	DineroB3[playerid] = TextDrawCreate(549.000000, 403.000000, "~g~$ ~w~10000");
	TextDrawBackgroundColor(DineroB3[playerid], 255);
	TextDrawFont(DineroB3[playerid], 2);
	TextDrawLetterSize(DineroB3[playerid], 0.500000, 1.399999);
	TextDrawColor(DineroB3[playerid], 16717311);
	TextDrawSetOutline(DineroB3[playerid], 0);
	TextDrawSetProportional(DineroB3[playerid], 1);
	TextDrawSetShadow(DineroB3[playerid], 1);
	TextDrawSetSelectable(DineroB3[playerid], 0);
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
	return 1;
}
forward CargarRemoves(playerid);
public CargarRemoves(playerid) {
	//Noticieros
	RemoveBuildingForPlayer(playerid, 6491, 717.4844, -1357.3047, 20.2969, 0.25);
	RemoveBuildingForPlayer(playerid, 1689, 650.8359, -1377.6641, 21.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 642.0938, -1359.8203, 16.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 1689, 650.8359, -1356.5859, 21.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1689, 650.8359, -1338.2422, 21.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1635, 677.1953, -1328.8750, 25.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 1689, 745.5859, -1381.1094, 25.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 1689, 751.3359, -1368.0313, 25.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 6490, 717.4844, -1357.3047, 20.2969, 0.25);
	RemoveBuildingForPlayer(playerid, 6516, 717.6875, -1357.2813, 18.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 1635, 696.1953, -1328.8750, 25.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 1635, 702.2344, -1328.8750, 25.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 1635, 721.2109, -1328.8750, 25.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 1415, 732.8516, -1332.8984, 12.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 1439, 732.7266, -1341.7734, 12.6328, 0.25);
	//Meca
	RemoveBuildingForPlayer(playerid, 4051, 1371.8203, -1754.8203, 19.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 4194, 1360.3828, -1840.6172, 26.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 4226, 1359.2813, -1796.4688, 24.3438, 0.25);
	RemoveBuildingForPlayer(playerid, 1265, 1336.1563, -1844.0156, 12.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 1372, 1336.3359, -1842.8516, 12.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 1265, 1336.3750, -1841.5391, 13.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 1265, 1337.2578, -1841.8750, 13.0000, 0.25);
	RemoveBuildingForPlayer(playerid, 4193, 1360.3828, -1840.6172, 26.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 1220, 1340.8906, -1835.3672, 12.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 1230, 1340.1328, -1835.0391, 12.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 1220, 1340.8672, -1834.4844, 12.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 1220, 1342.2734, -1806.2031, 12.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 1230, 1342.6328, -1807.0391, 12.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 1221, 1342.5156, -1805.0703, 12.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 4023, 1359.2813, -1796.4688, 24.3438, 0.25);
	RemoveBuildingForPlayer(playerid, 4021, 1371.8203, -1754.8203, 19.0469, 0.25);
	//Hospital
	RemoveBuildingForPlayer(playerid, 6073, 1003.8906, -1598.0391, 17.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 6074, 1003.2734, -1666.1563, 20.7109, 0.25);
	RemoveBuildingForPlayer(playerid, 759, 982.0156, -1640.8281, 12.3672, 0.25);
	RemoveBuildingForPlayer(playerid, 6044, 984.0938, -1668.5859, 20.1797, 0.25);
	RemoveBuildingForPlayer(playerid, 6038, 1003.2734, -1666.1563, 20.7109, 0.25);
	RemoveBuildingForPlayer(playerid, 6036, 1003.8906, -1598.0391, 17.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1184.0078, -1353.5000, 12.5781, 0.25);
	// Trabajo transportista
	RemoveBuildingForPlayer(playerid, 13195, 36.8281, -256.2266, 0.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 1426, 29.1719, -292.2734, 1.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, 33.6016, -279.3516, 1.1172, 0.25);
	RemoveBuildingForPlayer(playerid, 12861, 36.8281, -256.2266, 0.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 1450, 43.4844, -252.5703, 1.2031, 0.25);
	RemoveBuildingForPlayer(playerid, 1449, 43.1094, -254.9609, 1.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 12956, 96.3281, -261.1953, 3.8594, 0.25);
	//BUS LARGA DISTANCIA
	RemoveBuildingForPlayer(playerid, 4025, 1777.8359, -1773.9063, 12.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 4215, 1777.5547, -1775.0391, 36.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 4019, 1777.8359, -1773.9063, 12.5234, 0.25);
	//Ayuntamiento
	RemoveBuildingForPlayer(playerid, 4024, 1479.8672, -1790.3984, 56.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 4044, 1481.1875, -1785.0703, 22.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 4002, 1479.8672, -1790.3984, 56.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 3980, 1481.1875, -1785.0703, 22.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 4003, 1481.0781, -1747.0313, 33.5234, 0.25);
	//Hospital
	RemoveBuildingForPlayer(playerid, 5935, 1120.1563, -1303.4531, 18.5703, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, 1141.9844, -1346.1094, 13.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 5737, 1120.1563, -1303.4531, 18.5703, 0.25);
	//Mec�nico
	RemoveBuildingForPlayer(playerid, 5156, 2838.0391, -2423.8828, 10.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 5159, 2838.0313, -2371.9531, 7.2969, 0.25);
	RemoveBuildingForPlayer(playerid, 5160, 2829.9531, -2479.5703, 5.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 5161, 2838.0234, -2358.4766, 21.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 5162, 2838.0391, -2423.8828, 10.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 5163, 2838.0391, -2532.7734, 17.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 5164, 2838.1406, -2447.8438, 15.7266, 0.25);
	RemoveBuildingForPlayer(playerid, 5165, 2838.0313, -2520.1875, 18.4141, 0.25);
	RemoveBuildingForPlayer(playerid, 5166, 2829.9531, -2479.5703, 5.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 5167, 2838.0313, -2371.9531, 7.2969, 0.25);
	RemoveBuildingForPlayer(playerid, 3689, 2685.3828, -2366.0547, 19.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 3689, 2430.5859, -2583.9453, 20.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 3707, 2716.2344, -2452.5938, 20.2031, 0.25);
	RemoveBuildingForPlayer(playerid, 3707, 2720.3203, -2530.9141, 19.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 3707, 2480.8594, -2460.0547, 20.4922, 0.25);
	RemoveBuildingForPlayer(playerid, 3707, 2539.1797, -2424.3594, 20.4922, 0.25);
	RemoveBuildingForPlayer(playerid, 3690, 2685.3828, -2366.0547, 19.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 3690, 2430.5859, -2583.9453, 20.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 3687, 2503.5391, -2366.5078, 16.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 3687, 2475.2578, -2394.7891, 16.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 3687, 2450.5078, -2419.5391, 16.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 3709, 2511.9609, -2608.0156, 17.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 3709, 2511.9609, -2571.2422, 17.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 3709, 2511.9609, -2535.4531, 17.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 3709, 2660.4766, -2429.2969, 17.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 3709, 2639.5469, -2429.2969, 17.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 3709, 2618.8594, -2429.2969, 17.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 3708, 2720.3203, -2530.9141, 19.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 3708, 2716.2344, -2452.5938, 20.2031, 0.25);
	RemoveBuildingForPlayer(playerid, 3708, 2480.8594, -2460.0547, 20.4922, 0.25);
	RemoveBuildingForPlayer(playerid, 3708, 2539.1797, -2424.3594, 20.4922, 0.25);
	RemoveBuildingForPlayer(playerid, 3710, 2415.4609, -2468.5781, 16.7266, 0.25);
	RemoveBuildingForPlayer(playerid, 3744, 2789.2109, -2377.6250, 15.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 3744, 2774.7969, -2386.8516, 15.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 3744, 2437.2109, -2490.0938, 15.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 3744, 2399.4219, -2490.6797, 15.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 3744, 2391.8750, -2503.5078, 15.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 3709, 2544.2500, -2524.0938, 16.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 3709, 2544.2500, -2548.8125, 16.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 3746, 2814.2656, -2356.5703, 25.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 3746, 2814.2656, -2521.4922, 25.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 3746, 2563.1563, -2563.5781, 25.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 3746, 2531.7031, -2629.2266, 25.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 3746, 2422.7031, -2411.9219, 25.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 3746, 2472.4453, -2362.9375, 25.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 3758, 2702.3984, -2324.2578, 3.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 5335, 2829.9531, -2479.5703, 5.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 5336, 2829.9531, -2479.5703, 5.2656, 0.25);
	RemoveBuildingForPlayer(playerid, 3770, 2746.4063, -2453.4844, 14.0781, 0.25);
	RemoveBuildingForPlayer(playerid, 3769, 2464.1250, -2571.6328, 15.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 5352, 2838.1953, -2488.6641, 29.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 3574, 2391.8750, -2503.5078, 15.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 3574, 2399.4219, -2490.6797, 15.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 3624, 2415.4609, -2468.5781, 16.7266, 0.25);
	RemoveBuildingForPlayer(playerid, 3620, 2531.7031, -2629.2266, 25.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 3625, 2464.1250, -2571.6328, 15.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, 2496.5547, -2585.1797, 13.9063, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, 2501.8359, -2585.2422, 13.9063, 0.25);
	RemoveBuildingForPlayer(playerid, 3623, 2511.9609, -2608.0156, 17.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 3623, 2511.9609, -2571.2422, 17.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, 2496.5547, -2557.3359, 13.9063, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, 2501.8359, -2557.3984, 13.9063, 0.25);
	RemoveBuildingForPlayer(playerid, 3578, 2470.1406, -2530.5547, 13.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 3574, 2437.2109, -2490.0938, 15.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 1635, 2471.5859, -2494.0703, 15.0781, 0.25);
	RemoveBuildingForPlayer(playerid, 3578, 2526.4297, -2561.3047, 13.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 3623, 2544.2500, -2548.8125, 16.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 3623, 2511.9609, -2535.4531, 17.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 3623, 2544.2500, -2524.0938, 16.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 3620, 2563.1563, -2563.5781, 25.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 1635, 2459.3359, -2427.8281, 16.7422, 0.25);
	RemoveBuildingForPlayer(playerid, 3622, 2450.5078, -2419.5391, 16.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 3578, 2468.8594, -2413.5234, 13.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 3620, 2422.7031, -2411.9219, 25.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 1635, 2483.7188, -2403.3438, 16.7422, 0.25);
	RemoveBuildingForPlayer(playerid, 3622, 2475.2578, -2394.7891, 16.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 3578, 2495.8438, -2386.9375, 13.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 3620, 2472.4453, -2362.9375, 25.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 3622, 2503.5391, -2366.5078, 16.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 3578, 2546.0469, -2396.5938, 13.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 3578, 2571.1641, -2421.1328, 13.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 3623, 2618.8594, -2429.2969, 17.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 3623, 2639.5469, -2429.2969, 17.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 3623, 2660.4766, -2429.2969, 17.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 3578, 2639.1953, -2392.8203, 13.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 3578, 2663.8359, -2392.8203, 13.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 3578, 2747.0078, -2480.2422, 13.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 3626, 2746.4063, -2453.4844, 14.0781, 0.25);
	RemoveBuildingForPlayer(playerid, 3577, 2744.5703, -2436.1875, 13.3438, 0.25);
	RemoveBuildingForPlayer(playerid, 3577, 2744.5703, -2427.3203, 13.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 3620, 2814.2656, -2521.4922, 25.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 5157, 2838.0391, -2532.7734, 17.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 5154, 2838.1406, -2447.8438, 15.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 3724, 2838.1953, -2488.6641, 29.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 3620, 2814.2656, -2356.5703, 25.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 5155, 2838.0234, -2358.4766, 21.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 3724, 2838.1953, -2407.1406, 29.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 3753, 2702.3984, -2324.2578, 3.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 5158, 2837.7734, -2334.4766, 11.9922, 0.25);
	//CNN
	RemoveBuildingForPlayer(playerid, 1226, 778.8594, -1391.1563, 16.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 1689, 745.5859, -1381.1094, 25.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 1689, 751.3359, -1368.0313, 25.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 6516, 717.6875, -1357.2813, 18.0469, 0.25);
	return 1;
}
forward PonerSkinAdmin(playerid);
public PonerSkinAdmin(playerid) { SetPlayerSkin(playerid, 217); return 1; }
forward ReiniciarHambre(playerid);
public ReiniciarHambre(playerid)
{
NInfo[playerid][pHambre] = 100;
return 1;
}
forward Llenartanque(playerid);
public Llenartanque(playerid) {
new vehicleid = GetPlayerVehicleID(playerid);
if(Gasolina[vehicleid] != 100) {
Gasolina[vehicleid] += 1; CargoGasolina[playerid] += 1;
if(CargoGasolina[playerid] == CargarGas[playerid]) {
KillTimer(TanqueTimer);
Mensaje(playerid,COLOR_BLANCO,"- Se ha cargado completamente la gasolina.");
CargarGas[playerid] = 0;
ControlP(playerid,1);
CargoGasolina[playerid] = 0;
}
} else Mensaje(playerid,-1,"No puedes cargar m�s de 100 l�tros.");

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
SetTimerEx("ArmarPorro2", 2000, false, "i", playerid);
new String3[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String3, sizeof(String3), "[/Me] %s Pone la marihuana en el papel de liyo.", Nombre);
ProxDetector(30.0, playerid, String3, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
return 1;
}
stock CrearTextPick(x,y,z,string[],string2[],tipodepickup) {
new String3[400];
format(String3,sizeof(String3),"{B4DB4F}[ %s ].\n{FFFFFF}%s",string,string2);
CT(String3,COLOR_BLANCO,x,y,z,20.0,0,0);
CreatePickup(tipodepickup, 2, x,y,z,0);
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


forward Mappeosdelservidor();
public Mappeosdelservidor() {
	//Interior Aerop
	CreateDynamicObject(1651,-1810.4000000,18.5000000,1061.2000000,0.0000000,0.0000000,90.0000000); //object(od_copwindows) (1)
	CreateDynamicObject(1651,-1840.4004000,18.5000000,1061.2000000,0.0000000,0.0000000,90.0000000); //object(od_copwindows) (2)
	CreateDynamicObject(1651,-1837.4004000,18.5000000,1061.2000000,0.0000000,0.0000000,90.0000000); //object(od_copwindows) (3)
	CreateDynamicObject(1651,-1835.4004000,18.5000000,1061.2000000,0.0000000,0.0000000,90.0000000); //object(od_copwindows) (4)
	CreateDynamicObject(1651,-1833.4004000,18.5000000,1061.2000000,0.0000000,0.0000000,90.0000000); //object(od_copwindows) (5)
	CreateDynamicObject(1651,-1830.4004000,18.5000000,1061.2000000,0.0000000,0.0000000,90.0000000); //object(od_copwindows) (6)
	CreateDynamicObject(1651,-1828.4004000,18.5000000,1061.2000000,0.0000000,0.0000000,90.0000000); //object(od_copwindows) (7)
	CreateDynamicObject(1651,-1825.4004000,18.5000000,1061.2000000,0.0000000,0.0000000,90.0000000); //object(od_copwindows) (8)
	CreateDynamicObject(1651,-1822.4004000,18.5000000,1061.2000000,0.0000000,0.0000000,90.0000000); //object(od_copwindows) (9)
	CreateDynamicObject(1651,-1819.4004000,18.5000000,1061.2000000,0.0000000,0.0000000,90.0000000); //object(od_copwindows) (10)
	CreateDynamicObject(1651,-1816.4004000,18.5000000,1061.2000000,0.0000000,0.0000000,90.0000000); //object(od_copwindows) (11)
	CreateDynamicObject(1651,-1813.4004000,18.5000000,1061.2000000,0.0000000,0.0000000,90.0000000); //object(od_copwindows) (12)
	CreateDynamicObject(1651,-1841.6000000,20.1000000,1061.2000000,0.0000000,0.0000000,180.0000000); //object(od_copwindows) (13)
	CreateDynamicObject(1651,-1849.0000000,20.9000000,1061.2000000,0.0000000,0.0000000,90.0000000); //object(od_copwindows) (14)
	CreateDynamicObject(1651,-1843.0000000,20.9003900,1061.2000000,0.0000000,0.0000000,90.0000000); //object(od_copwindows) (15)
	CreateDynamicObject(1651,-1846.0000000,20.9003900,1061.2000000,0.0000000,0.0000000,90.0000000); //object(od_copwindows) (16)
	CreateDynamicObject(1651,-1841.5996000,20.0996100,1061.2000000,0.0000000,0.0000000,0.0000000); //object(od_copwindows) (17)
	CreateDynamicObject(3967,-1837.3000000,-1.6000000,1062.3000000,90.0000000,0.0000000,90.0000000); //object(airport_int2) (1)
	CreateDynamicObject(3967,-1798.2000000,18.2000000,1062.3000000,90.0000000,0.0000000,180.0000000); //object(airport_int2) (2)
	CreateDynamicObject(3967,-1823.3000000,46.0000000,1062.3000000,90.0000000,0.0000000,270.0000000); //object(airport_int2) (3)
	CreateDynamicObject(1569,-1821.4000000,5.1998000,1060.1000000,0.0000000,0.0000000,180.0000000); //object(adam_v_door) (1)
	CreateDynamicObject(1569,-1824.2998000,5.1998000,1060.1000000,0.0000000,0.0000000,0.0000000); //object(adam_v_door) (2)
	CreateDynamicObject(8034,-1819.4000000,21.3000000,1075.2000000,180.0000000,0.0000000,180.0000000); //object(flghtschl01_lvs) (1)
	//Puestos de peri�dicos.
	CreateDynamicObject(1258,1519.8000000,-1718.2000000,13.2000000,0.0000000,0.0000000,0.0000000); //object(mpostbox1) (1)
	CreateDynamicObject(1258,2092.8000000,-1803.6000000,13.2000000,0.0000000,0.0000000,0.0000000); //object(mpostbox1) (2)
	CreateDynamicObject(1258,1812.1000000,-1861.8000000,13.2000000,0.0000000,0.0000000,0.0000000); //object(mpostbox1) (3)
	CreateDynamicObject(1258,375.1000100,-1826.3000000,7.5000000,0.0000000,0.0000000,0.0000000); //object(mpostbox1) (4)
	CreateDynamicObject(1258,1227.2002000,-1385.2998000,13.0000000,0.0000000,0.0000000,0.0000000); //object(mpostbox1) (5)
	CreateDynamicObject(1258,1005.3000000,-950.0999800,41.8000000,0.0000000,0.0000000,6.0000000); //object(mpostbox1) (6)
	//Interior Fab LSTV
	CreateDynamicObject(14588, 86.11490, 1748.81299, 505163.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14784, -143.64252, 825.54620, 2000.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -115.31320, 821.91840, 1992.21704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -115.31320, 821.91840, 1995.71704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 821.38232, 1992.21704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -115.31320, 831.55841, 1995.71704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -123.05860, 835.88013, 1992.21704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -123.05860, 835.88013, 1995.71704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -132.69859, 835.88013, 1992.21704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -132.69859, 835.88013, 1995.71704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -142.33859, 835.88013, 1992.21704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -142.33859, 835.88013, 1995.71704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -115.31320, 831.55841, 1992.21704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 830.97882, 1995.71704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 830.97882, 1992.21704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 821.38232, 1995.71704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 811.76233, 1992.21704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 811.76233, 1995.71704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 802.14227, 1992.21704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 802.14227, 1995.71704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 802.14227, 1999.21704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 811.76233, 1999.21704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 821.38232, 1999.21704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 830.97882, 1999.21704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -142.33859, 835.85730, 1999.21704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -132.69859, 835.88013, 1999.21704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -123.05860, 835.88013, 1999.21704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(5820, -127.66510, 798.06232, 1994.43225,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19447, -115.31320, 831.55841, 1999.57703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -115.31320, 821.91840, 1999.57703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 792.52228, 1992.21704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 792.52228, 1995.71704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -127.30980, 787.82440, 1999.57703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -151.97861, 835.88013, 1992.21704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -151.97861, 835.88013, 1995.71704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -151.97861, 835.88013, 1999.21704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -113.41860, 835.88013, 1999.21704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -113.41860, 835.88013, 1995.71704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -113.41860, 835.88013, 1992.21704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -147.72211, 782.88232, 1995.71704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 782.88232, 1992.21704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 782.88232, 1999.21704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -115.31320, 812.27838, 1999.57703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -115.31320, 802.63843, 1999.57703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -115.31320, 793.01837, 1999.57703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -114.29830, 792.80182, 1999.57703,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19448, -130.38150, 791.15485, 1997.82068,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19448, -140.01320, 791.17108, 1997.82068,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19448, -130.39320, 787.67108, 1997.82068,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19448, -140.01320, 787.67108, 1997.82068,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19447, -123.92440, 792.80182, 1999.57703,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -135.92439, 792.80182, 1999.57703,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -145.54440, 792.80182, 1999.57703,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19448, -149.63161, 791.17108, 1997.82068,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19448, -149.63161, 787.67108, 1997.82068,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19447, -115.12370, 792.79651, 2003.07703,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -124.74440, 792.80182, 2003.07703,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -134.36440, 792.80182, 2003.07703,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -144.00439, 792.80182, 2003.07703,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -147.72211, 792.52228, 2002.71704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 802.14227, 2002.71704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 811.76233, 2002.71704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 821.38232, 2002.71704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -147.72211, 830.97882, 2002.71704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -142.33859, 835.85730, 2002.71704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -151.97861, 835.88013, 2002.71704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -132.69540, 835.85199, 2002.71704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -123.05860, 835.88013, 2002.71704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -113.41860, 835.88013, 2002.71704,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -115.31320, 831.55841, 2003.07703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -115.31320, 821.91840, 2003.07703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -115.31320, 812.27838, 2003.07703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -115.31320, 802.63843, 2003.07703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -115.31320, 793.01837, 2003.07703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -135.92439, 786.74182, 1999.57703,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -145.54440, 786.74182, 1999.57703,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -126.30440, 786.74182, 1999.57703,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -147.72211, 782.88232, 2002.71704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -145.54440, 786.74182, 2003.07703,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -135.92439, 786.74182, 2003.07703,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -126.30440, 786.74182, 2003.07703,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19447, -147.72211, 792.52228, 1999.21704,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19447, -127.30980, 787.82440, 2003.07703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19385, -130.30370, 792.83423, 1999.57703,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1703, -130.86047, 787.31213, 1997.88623,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2200, -147.60550, 790.83350, 1997.88733,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2200, -147.60550, 787.83350, 1997.88733,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2200, -145.38800, 786.90973, 1997.88733,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(2200, -142.38800, 786.90973, 1997.88733,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(2200, -139.38800, 786.90973, 1997.88733,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(1703, -133.86050, 787.31207, 1997.88623,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1523, -131.10069, 792.85321, 1997.81848,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19127, -130.55521, 792.88062, 1997.83740,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19127, -130.03520, 792.88062, 1997.83740,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(929, -128.39873, 826.76550, 1991.41956,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(934, -133.13226, 826.84430, 1991.77002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(922, -127.82448, 835.38885, 1991.35498,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(922, -144.23529, 835.23590, 1991.35498,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(922, -136.16574, 835.30591, 1991.35498,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(929, -137.84366, 826.87286, 1991.41956,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19903, -139.22540, 825.88409, 1990.49268,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2008, -128.85635, 814.97681, 1990.50012,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2008, -128.85640, 817.97681, 1990.50012,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2008, -131.85640, 814.97681, 1990.50012,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2008, -131.85640, 817.97681, 1990.50012,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1714, -130.09590, 814.26556, 1990.49878,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, -130.09590, 817.26563, 1990.49878,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, -133.09590, 814.26563, 1990.49878,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, -133.09590, 817.26563, 1990.49878,   0.00000, 0.00000, 90.00000);
	//Interior Noticieros
	CreateDynamicObject(19376, 283.29694, 2080.91187, 1000.71436,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19376, 273.67990, 2080.91187, 1000.71442,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19376, 283.29691, 2070.41187, 1000.71442,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19376, 273.67990, 2070.41187, 1000.71442,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19460, 287.99820, 2081.31812, 1002.50922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, 287.99820, 2071.69824, 1002.50922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, 283.11813, 2086.17651, 1002.50922,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, 273.49820, 2086.17651, 1002.50922,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, 273.49820, 2066.93652, 1002.50922,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, 283.11810, 2066.93652, 1002.50922,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, 268.69821, 2083.11816, 1002.50922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, 250.33299, 2070.15015, 1002.50922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19396, 268.69821, 2076.70776, 1002.50922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19376, 264.02551, 2080.91187, 1000.71442,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19460, 264.37820, 2086.83813, 1002.50922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19396, 264.37820, 2080.41675, 1002.50922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, 264.37820, 2073.99805, 1002.50922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19396, 264.37820, 2067.57666, 1002.50922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, 269.28061, 2086.44678, 1002.50922,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, 259.47986, 2074.89795, 1002.50922,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19376, 254.40559, 4056.00000, 2070.41187,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19376, 264.02551, 2070.41187, 1000.71442,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19376, 254.40559, 2070.41187, 1000.71442,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19378, 254.42696, 2080.89331, 1000.71442,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19378, 254.42700, 2091.38794, 1000.71442,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19376, 264.02551, 2091.41138, 1000.71442,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19460, 254.51880, 2066.09473, 1002.50922,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, 249.85989, 2074.89795, 1002.50922,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, 264.13882, 2066.09473, 1002.50922,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, 268.69821, 2070.29810, 1002.50922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14391, 260.89297, 2087.04077, 1001.79102,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1713, 284.29416, 2085.79834, 1000.79846,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2180, 253.41541, 2087.90283, 1000.98163,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2180, 253.40311, 2085.94702, 1000.98163,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1663, 252.32576, 2088.55688, 1001.23907,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1663, 253.62366, 2070.57617, 1001.23907,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19446, 264.41226, 2091.47876, 1002.50922,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19446, 259.95239, 2088.11157, 1000.50922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 259.91321, 2085.57642, 1002.72937,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1649, 259.91321, 2089.93628, 1002.72937,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19446, 259.95239, 2088.11157, 1005.50922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19384, 262.70248, 2083.44116, 1002.50922,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19427, 260.69211, 2083.44116, 1002.50922,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19446, 254.77229, 2091.47876, 1002.50922,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19446, 250.06181, 2086.75220, 1002.50922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19446, 250.06180, 2077.13208, 1002.50922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2232, 258.23166, 2085.00317, 1001.37970,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2232, 258.23169, 2084.00317, 1001.37970,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2232, 258.23169, 2090.00317, 1001.37970,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2232, 258.23169, 2091.00317, 1001.37970,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2571, 252.17346, 2077.97412, 1000.79901,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2606, 269.00171, 2079.50317, 1003.30078,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2258, 282.96381, 2067.04468, 1002.79602,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2254, 280.96381, 2067.04468, 1002.79602,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2700, 259.60620, 2087.63892, 1001.80139,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3387, 263.66339, 2091.37817, 1000.80212,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1808, 279.27475, 2085.92139, 1000.80237,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1808, 278.35471, 2085.92139, 1000.80243,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1713, 272.38031, 2085.44897, 1000.79852,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1713, 284.38031, 2067.44897, 1000.79852,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1713, 278.86029, 2067.44897, 1000.79852,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1713, 273.38031, 2067.44897, 1000.79852,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1808, 268.43732, 2080.56665, 1000.80078,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1808, 268.43729, 2081.56665, 1000.80078,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2191, 250.94650, 2067.08960, 1000.80127,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2200, 255.13789, 2074.69824, 1000.83838,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2199, 250.61055, 2073.73926, 1000.80219,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1663, 252.32581, 2086.13696, 1001.23907,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2173, 254.91370, 2070.83374, 1000.75989,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2200, 250.71049, 2070.08350, 1000.83838,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2200, 258.13791, 2074.69824, 1000.83838,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2200, 261.13791, 2074.69824, 1000.83838,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1502, 261.91599, 2083.41650, 1000.76068,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1502, 268.70731, 2075.95435, 1000.80072,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1502, 264.40851, 2066.81592, 1000.80072,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1536, 287.90259, 2080.14819, 1000.80151,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1536, 274.22229, 2067.00806, 1000.78149,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19380, 283.29691, 2080.91187, 1004.11438,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19380, 283.29691, 2070.41187, 1004.11438,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19380, 273.67990, 2070.41187, 1004.11438,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19380, 273.67990, 2080.91187, 1004.11438,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19380, 264.02551, 2080.91187, 1004.11438,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19380, 264.02551, 2070.41187, 1004.11438,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19380, 254.40559, 2070.41187, 1004.11438,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19380, 254.42700, 2080.89331, 1004.11438,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19380, 254.39439, 2091.38794, 1004.11438,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19380, 264.02551, 2091.41138, 1004.11438,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1502, 264.40851, 2079.67603, 1000.80072,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1536, 287.90259, 2083.14819, 1000.80151,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1536, 276.24509, 2086.08276, 1000.78149,   0.00000, 0.00000, 0.00000);
	//Noticieros
 	CreateDynamicObject(19545, 780.61835, -1360.60950, 12.40570,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19545, 765.66962, -1360.63965, 12.40570,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19545, 750.79211, -1360.66467, 12.40570,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19545, 735.96777, -1360.61450, 12.40570,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19545, 721.06689, -1360.65796, 12.40570,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19545, 706.24371, -1360.59351, 12.40570,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19545, 691.27350, -1360.54419, 12.38570,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19545, 676.32281, -1360.49585, 12.38570,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19545, 661.41742, -1360.57397, 12.40570,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19545, 654.41553, -1360.63025, 12.40570,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(4141, 668.49963, -1362.23157, 23.32910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1569, 647.89063, -1355.56458, 12.48250,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1569, 662.72827, -1339.91162, 12.34250,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1569, 647.98474, -1356.96887, 12.48250,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1569, 679.94397, -1383.82446, 12.40150,   0.00000, 0.00000, 179.00000);
	CreateDynamicObject(1569, 676.92859, -1383.83313, 12.40150,   0.00000, 0.00000, 2.00000);
	CreateDynamicObject(5835, 721.68542, -1356.72131, 19.62000,   0.00000, -1.00000, 0.00000);
	CreateDynamicObject(19641, 783.29852, -1384.97021, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 755.69415, -1384.95654, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 747.91461, -1384.94751, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 740.11456, -1384.93848, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 732.31458, -1384.92273, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 724.49377, -1384.93933, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 716.69299, -1384.93628, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 708.89301, -1384.94995, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 701.07269, -1384.96301, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 693.34784, -1384.28052, 12.41150,   0.00000, 0.00000, -11.00000);
	CreateDynamicObject(19641, 787.20007, -1381.06030, 12.41150,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19641, 787.21716, -1373.25964, 12.41150,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19641, 787.21442, -1365.46008, 12.41150,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19641, 787.21759, -1357.67407, 12.41150,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19641, 787.19916, -1349.83191, 12.41150,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19641, 787.19012, -1341.99194, 12.41150,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19641, 787.20013, -1334.23218, 12.41150,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19641, 783.30121, -1330.27710, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 775.55219, -1330.10706, 12.41150,   0.00000, 0.00000, -2.00000);
	CreateDynamicObject(19641, 767.79901, -1329.98584, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 760.02228, -1329.98193, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 752.21484, -1329.98511, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 744.44843, -1330.00842, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 736.68811, -1330.02832, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 728.92603, -1330.02075, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 721.14520, -1329.99512, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 713.36444, -1329.96912, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 705.58344, -1329.96350, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 697.78314, -1329.91772, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 690.00238, -1329.89099, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 682.12238, -1329.82336, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 674.30157, -1329.81714, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 666.52081, -1329.81213, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 658.70032, -1329.76550, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 651.78705, -1329.84534, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19641, 647.85333, -1333.92053, 12.41150,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19641, 647.95441, -1335.34473, 12.41150,   0.00000, 0.00000, 88.00000);
	CreateDynamicObject(19641, 775.47260, -1384.97107, 12.41150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18284, 783.63641, -1349.16931, 15.21740,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18284, 783.64825, -1365.65027, 15.21540,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3031, 748.41388, -1357.35413, 13.98560,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3928, 688.01270, -1349.22498, 48.61530,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1361, 759.11542, -1385.40466, 13.43770,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1361, 771.93927, -1385.52283, 13.43770,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 642.83514, -1363.18945, 13.03180,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 642.85901, -1367.35327, 13.03180,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 642.85327, -1371.48132, 13.03180,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 642.76794, -1350.94080, 13.03180,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 642.78406, -1346.79565, 13.03180,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 642.77820, -1342.68921, 13.03180,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1364, 647.07312, -1351.11926, 13.33190,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1364, 647.11792, -1362.86462, 13.33190,   0.00000, 0.00000, -89.00000);
	CreateDynamicObject(640, 758.64575, -1382.18298, 12.90850,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(640, 758.61542, -1376.88293, 12.90850,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(640, 758.62494, -1371.48315, 12.90850,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(640, 758.66956, -1332.78333, 12.90850,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(640, 758.66010, -1338.18384, 12.90850,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(640, 758.67059, -1343.54407, 12.90850,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(640, 758.70129, -1348.98450, 12.90850,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(640, 758.60571, -1366.09814, 12.90850,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(717, 759.02350, -1362.68140, 12.57220,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(717, 759.30518, -1352.59021, 12.57220,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19425, 769.81177, -1385.01550, 12.39946,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19425, 766.51178, -1385.01550, 12.39950,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19425, 763.21179, -1385.01550, 12.39950,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19425, 760.00000, -1385.01550, 12.39950,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1569, 647.89032, -1358.59985, 12.48250,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1569, 686.77112, -1360.06921, 48.56250,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19463, 685.77832, -1361.80090, 47.26750,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19463, 687.56677, -1360.13501, 47.26750,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19463, 689.27832, -1361.80090, 47.26750,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19463, 687.56677, -1363.43506, 47.26750,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 687.57611, -1361.05920, 51.98770,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19435, 687.57611, -1362.57922, 51.98770,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19460, 652.28271, -1384.90076, 10.97840,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, 647.56079, -1380.10913, 10.97840,   0.00000, 0.00000, 0.00000);
	//Meca
	CreateObject(19580, 2086.50171, -1582.50403, 12.43620,   0.00000, 0.00000, 0.00000);
	CreateObject(19580, 2086.50171, -1582.50403, 12.43620,   0.00000, 0.00000, 0.00000);
	CreateObject(352, 2081.76953, -1576.16846, 12.52150,   98.00000, -62.00000, 338.00000);
	CreateObject(1080, 2080.80444, -1566.00305, 14.88180,   0.00000, 0.00000, 0.00000);
	CreateObject(19868, 1379.07104, -1764.51025, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1379.08289, -1769.77563, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1379.09851, -1773.60010, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(18284, 1347.05981, -1782.49280, 15.44000,   0.00000, 0.00000, 179.00000);
	CreateObject(19868, 1378.99390, -1790.54102, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1378.99780, -1795.85059, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1378.97290, -1801.06909, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1379.00989, -1806.39514, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1378.96948, -1811.65833, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1378.88196, -1816.89832, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1376.12781, -1819.49268, 12.52720,   0.00000, 0.00000, -1.00000);
	CreateObject(19868, 1370.88489, -1819.37732, 12.52720,   0.00000, 0.00000, -1.00000);
	CreateObject(19868, 1365.65637, -1819.36279, 12.52720,   0.00000, 0.00000, -1.00000);
	CreateObject(19868, 1360.42859, -1819.32837, 12.52720,   0.00000, 0.00000, -1.00000);
	CreateObject(19868, 1355.17017, -1819.22168, 12.52720,   0.00000, 0.00000, -1.00000);
	CreateObject(19868, 1342.06079, -1816.37512, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1342.13440, -1811.12000, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1342.24597, -1805.82251, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1342.33972, -1800.56567, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(4231, 1342.05469, -1800.21875, 25.42969,   356.85840, 0.00000, 3.14159);
	CreateObject(19868, 1342.40759, -1795.28442, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1342.47559, -1790.02332, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1342.52344, -1784.66296, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1342.60986, -1779.38232, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1342.69360, -1774.10327, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1345.43420, -1771.62744, 12.52720,   0.00000, 0.00000, -1.00000);
	CreateObject(19868, 1350.66333, -1771.78638, 12.52720,   0.00000, 0.00000, -1.00000);
	CreateObject(19868, 1355.93665, -1771.95374, 12.52720,   0.00000, 0.00000, -1.00000);
	CreateObject(19868, 1361.21484, -1772.14087, 12.52720,   0.00000, 0.00000, -1.00000);
	CreateObject(19868, 1364.23181, -1769.53992, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1364.28516, -1764.29773, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(18284, 1346.92310, -1799.01306, 15.42000,   0.00000, 0.00000, 180.00000);
	CreateObject(19903, 1376.73425, -1817.73999, 12.33710,   0.00000, 0.00000, 120.00000);
	CreateObject(12943, 1374.27295, -1811.10535, 12.51380,   0.00000, 0.00000, 90.00000);
	CreateObject(0, 1350.82922, -1781.93286, 12.53380,   0.00000, 0.00000, 0.00000);
	CreateObject(19815, 1378.09595, -1814.49536, 14.55180,   181.00000, 0.00000, 91.00000);
	CreateObject(3632, 1370.59314, -1817.55408, 13.00130,   0.00000, 0.00000, 0.00000);
	CreateObject(12943, 1360.80347, -1810.79248, 12.51380,   0.00000, 0.00000, 90.00000);
	CreateObject(1705, -91.53424, -1172.79529, 6.27719,   0.00000, 0.00000, 0.00000);
	CreateObject(3465, 1345.70276, -1807.21143, 13.80930,   0.00000, 0.00000, 92.00000);
	CreateObject(3465, 1347.84937, -1807.23767, 13.80930,   0.00000, 0.00000, 92.00000);
	CreateObject(19868, 1378.96826, -1789.53748, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(3666, 1372.10474, -1802.75671, 13.00260,   0.00000, 0.00000, 0.00000);
	CreateObject(3666, 1376.34521, -1802.86267, 13.00260,   0.00000, 0.00000, 0.00000);
	CreateObject(3666, 1362.98193, -1802.62964, 13.00260,   0.00000, 0.00000, 0.00000);
	CreateObject(3666, 1358.62061, -1802.62439, 13.00260,   0.00000, 0.00000, 0.00000);
	CreateObject(11474, 1326.44092, -1815.24976, 31.47402,   0.00000, 0.00000, 0.00000);
	CreateObject(19868, 1352.51013, -1851.95020, 12.52720,   0.00000, 0.00000, -28.00000);
	CreateObject(19868, 1347.92566, -1849.49341, 12.52720,   0.00000, 0.00000, -28.00000);
	CreateObject(19868, 1343.24084, -1847.27783, 12.52720,   0.00000, 0.00000, -23.00000);
	CreateObject(19868, 1357.11682, -1854.45703, 12.52720,   0.00000, 0.00000, -30.00000);
	CreateObject(19868, 1361.93652, -1856.35681, 12.52720,   0.00000, 0.00000, -11.00000);
	CreateObject(19868, 1367.12964, -1856.88037, 12.52720,   0.00000, 0.00000, -1.00000);
	CreateObject(19868, 1372.33154, -1856.97278, 12.52720,   0.00000, 0.00000, -1.00000);
	CreateObject(19868, 1376.37146, -1857.05884, 12.52720,   0.00000, 0.00000, -1.00000);
	CreateObject(19868, 1379.04700, -1854.51453, 12.52720,   0.00000, 0.00000, -90.00000);
	CreateObject(19868, 1379.04565, -1849.27283, 12.52720,   0.00000, 0.00000, -90.00000);
	CreateObject(19868, 1379.05420, -1844.05237, 12.52720,   0.00000, 0.00000, -90.00000);
	CreateObject(19868, 1379.07312, -1827.31592, 12.52720,   0.00000, 0.00000, -90.00000);
	CreateObject(19868, 1378.91980, -1822.03271, 12.52720,   0.00000, 0.00000, -85.00000);
	CreateObject(19868, 1338.47852, -1845.18201, 12.52720,   0.00000, 0.00000, -23.00000);
	CreateObject(19868, 1336.36597, -1841.28210, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1336.45105, -1836.03906, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1336.51733, -1830.81665, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1336.61230, -1825.63599, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1336.66211, -1822.19714, 12.52720,   0.00000, 0.00000, -91.00000);
	CreateObject(19868, 1339.50806, -1819.13525, 12.52720,   0.00000, 0.00000, 11.00000);
	CreateObject(1251, 1339.49390, -1843.83960, 12.62040,   0.00000, -74.00000, -91.00000);
	CreateObject(1251, 1339.66187, -1840.50146, 12.62040,   0.00000, -74.00000, -91.00000);
	CreateObject(1251, 1339.77515, -1837.00244, 12.62040,   0.00000, -74.00000, -91.00000);
	CreateObject(1251, 1339.74939, -1833.45959, 12.62040,   0.00000, -74.00000, -91.00000);
	CreateObject(1251, 1339.84131, -1829.99939, 12.62040,   0.00000, -74.00000, -91.00000);
	CreateObject(1251, 1339.85242, -1826.55750, 12.62040,   0.00000, -74.00000, -91.00000);
	CreateObject(1251, 1339.85242, -1826.55750, 12.62040,   0.00000, -74.00000, -91.00000);
	CreateObject(1251, 1340.08398, -1823.10315, 12.62040,   0.00000, -74.00000, -91.00000);
	CreateObject(1251, 1340.11267, -1819.44934, 12.62040,   0.00000, -74.00000, -91.00000);
	CreateObject(1251, 1339.66187, -1840.50146, 12.62040,   0.00000, -74.00000, -91.00000);
	CreateObject(1251, 1346.54163, -1845.28113, 12.62040,   0.00000, -74.00000, -47.00000);
	CreateObject(1251, 1349.51978, -1846.78992, 12.62040,   0.00000, -74.00000, -47.00000);
	CreateObject(1251, 1352.64990, -1848.57739, 12.62040,   0.00000, -74.00000, -47.00000);
	CreateObject(1251, 1355.60181, -1850.27393, 12.62040,   0.00000, -74.00000, -47.00000);
	CreateObject(1251, 1358.70593, -1851.80200, 12.62040,   0.00000, -74.00000, -47.00000);
	CreateObject(1251, 1361.73621, -1853.69556, 12.62040,   0.00000, -74.00000, -47.00000);
	CreateObject(1251, 1352.84998, -1822.80017, 12.62040,   0.00000, -74.00000, 3.00000);
	CreateObject(1251, 1356.28577, -1822.71130, 12.62040,   0.00000, -74.00000, 3.00000);
	CreateObject(1251, 1359.74634, -1822.66028, 12.62040,   0.00000, -74.00000, 3.00000);
	CreateObject(1251, 1363.26147, -1822.56213, 12.62040,   0.00000, -74.00000, 3.00000);
	CreateObject(1251, 1366.79382, -1822.60315, 12.62040,   0.00000, -74.00000, 3.00000);
	CreateObject(1251, 1370.34119, -1822.76270, 12.62040,   0.00000, -74.00000, 3.00000);
	CreateObject(1251, 1373.77954, -1822.69482, 12.62040,   0.00000, -74.00000, 3.00000);
	CreateObject(1251, 1377.41357, -1822.74377, 12.62040,   0.00000, -74.00000, 3.00000);
	CreateObject(1251, 1378.52393, -1853.77478, 12.62040,   0.00000, -74.00000, 3.00000);
	CreateObject(1251, 1375.06372, -1853.80676, 12.62040,   0.00000, -74.00000, 3.00000);
	CreateObject(1251, 1371.32446, -1853.65662, 12.62040,   0.00000, -74.00000, 3.00000);
	CreateObject(939, 1376.90918, -1809.87512, 13.10780,   0.00000, 0.00000, 90.00000);
	CreateObject(19921, 1374.41443, -1818.63867, 12.68760,   0.00000, 2.00000, 184.00000);
	CreateObject(19627, 1374.12231, -1818.35889, 12.78309,   0.00000, 0.00000, 0.00000);
	CreateObject(18635, 1373.67627, -1818.81482, 12.54890,   0.00000, -69.00000, 0.00000);
	CreateObject(19921, 1361.62439, -1818.16870, 12.68760,   0.00000, 2.00000, 184.00000);
	CreateObject(3632, 1357.49084, -1817.76489, 13.00130,   0.00000, 0.00000, 0.00000);
	CreateObject(19903, 1363.86646, -1818.04712, 12.33710,   0.00000, 0.00000, 120.00000);
	CreateObject(19815, 1378.09595, -1814.49536, 14.55180,   181.00000, 0.00000, 91.00000);
	CreateObject(19627, 1361.14575, -1817.76489, 12.78309,   0.00000, 0.00000, 0.00000);
	CreateObject(18635, 1361.15625, -1818.34241, 12.54890,   0.00000, -69.00000, 0.00000);
	CreateObject(939, 1357.81775, -1808.42273, 13.10780,   0.00000, 0.00000, 90.00000);
	CreateObject(1010, 1358.60901, -1810.45544, 14.36320,   0.00000, 0.00000, 0.00000);
	CreateObject(1073, 1357.05945, -1803.23511, 12.93400,   0.00000, -25.00000, -33.00000);
	CreateObject(1193, 1364.55811, -1811.81714, 14.83960,   0.00000, 0.00000, -88.00000);
	CreateObject(1163, 1364.41248, -1811.73120, 15.37350,   -33.00000, 4.00000, 87.00000);
	CreateObject(1163, 1378.02869, -1812.01721, 15.37350,   -33.00000, 4.00000, 87.00000);
	CreateObject(1193, 1378.22888, -1814.53088, 15.39960,   0.00000, 0.00000, -88.00000);
	CreateObject(19817, 1374.03833, -1811.03125, 11.03990,   0.00000, 0.00000, 180.00000);
	CreateObject(19817, 1360.69824, -1811.03125, 11.03990,   0.00000, 0.00000, 180.00000);
	CreateObject(19460, 1379.04541, -1747.42004, 14.22310,   0.00000, 0.00000, 0.00000);
	CreateObject(19460, 1379.04541, -1757.02014, 14.22310,   0.00000, 0.00000, 0.00000);
	CreateObject(19460, 1364.04541, -1757.02014, 14.22310,   0.00000, 0.00000, 0.00000);
	CreateObject(19460, 1364.04541, -1747.42004, 14.22310,   0.00000, 0.00000, 0.00000);
	CreateObject(19460, 1374.31873, -1742.68225, 14.22310,   0.00000, 0.00000, 90.00000);
	CreateObject(19460, 1368.92822, -1742.68225, 14.22310,   0.00000, 0.00000, 90.00000);
	CreateObject(19396, 1365.69714, -1752.00513, 14.22310,   0.00000, 0.00000, 90.00000);
	CreateObject(19460, 1368.82825, -1761.74719, 14.22310,   0.00000, 0.00000, 90.00000);
	CreateObject(19441, 1367.18835, -1752.00806, 14.24110,   0.00000, 0.00000, 90.00000);
	CreateObject(19441, 1375.33472, -1761.74719, 14.24110,   0.00000, 0.00000, 90.00000);
	CreateObject(1491, 1364.88672, -1752.03833, 12.53830,   0.00000, 0.00000, 0.00000);
	CreateObject(19379, 1368.78906, -1747.91235, 12.53420,   0.00000, 90.00000, 90.00000);
	CreateObject(19379, 1368.78906, -1756.53235, 12.53420,   0.00000, 90.00000, 90.00000);
	CreateObject(19379, 1374.30908, -1747.91235, 12.53420,   0.00000, 90.00000, 90.00000);
	CreateObject(19379, 1374.32910, -1756.53198, 12.53420,   0.00000, 90.00000, 90.00000);
	CreateObject(19377, 1374.30908, -1756.53235, 15.77420,   0.00000, 90.00000, 90.00000);
	CreateObject(19379, 1374.30908, -1747.91235, 15.77420,   0.00000, 90.00000, 90.00000);
	CreateObject(19379, 1368.78906, -1747.91235, 15.77420,   0.00000, 90.00000, 90.00000);
	CreateObject(19377, 1368.78906, -1756.53235, 15.77420,   0.00000, 90.00000, 90.00000);
	CreateObject(19377, 1374.30908, -1747.91235, 15.77420,   0.00000, 90.00000, 90.00000);
	CreateObject(19377, 1368.78906, -1747.91235, 15.77420,   0.00000, 90.00000, 90.00000);
	CreateObject(19460, 1367.90527, -1756.86975, 14.22310,   0.00000, 0.00000, 0.00000);
	CreateObject(19396, 1377.40845, -1761.74719, 14.22310,   0.00000, 0.00000, 90.00000);
	CreateObject(19441, 1374.05469, -1761.74719, 14.24110,   0.00000, 0.00000, 90.00000);
	CreateObject(1491, 1376.58130, -1761.81885, 12.53834,   0.00000, 0.00000, 0.00000);
	CreateObject(2200, 1364.17993, -1761.03369, 12.61260,   0.00000, 0.00000, 90.00000);
	CreateObject(2200, 1364.17993, -1758.61365, 12.61260,   0.00000, 0.00000, 90.00000);
	CreateObject(2191, 1377.95935, -1743.28540, 12.50000,   0.00000, 0.00000, 0.00000);
	CreateObject(2191, 1375.83936, -1743.28540, 12.50000,   0.00000, 0.00000, 0.00000);
	CreateObject(2173, 1377.54480, -1746.43555, 12.62180,   0.00000, 0.00000, 180.00000);
	CreateObject(2002, 1378.47632, -1752.09729, 12.62180,   0.00000, 0.00000, -90.00000);
	CreateObject(2002, 1378.47632, -1752.69727, 12.62180,   0.00000, 0.00000, -90.00000);
	CreateObject(2700, 1372.51465, -1761.40784, 14.94240,   0.00000, 0.00000, 90.00000);
	CreateObject(2258, 1368.07947, -1755.21619, 14.92140,   0.00000, 0.00000, 90.00000);
	CreateObject(2200, 1371.40088, -1742.82007, 12.62080,   0.00000, 0.00000, 0.00000);
	CreateObject(1713, 1368.66089, -1755.65344, 12.62200,   0.00000, 0.00000, 90.00000);
	CreateObject(1713, 1368.66089, -1759.65344, 12.62200,   0.00000, 0.00000, 90.00000);
	CreateObject(1714, 1377.33777, -1745.16138, 12.62290,   0.00000, 0.00000, 0.00000);
	CreateObject(1663, 1377.76624, -1747.87769, 13.06260,   0.00000, 0.00000, 180.00000);
	CreateObject(1663, 1376.76624, -1747.87769, 13.06260,   0.00000, 0.00000, 180.00000);
	CreateObject(19425, 1378.95886, -1778.33008, 12.52150,   0.00000, 0.00000, 90.00000);
	CreateObject(19425, 1378.95886, -1781.63025, 12.52150,   0.00000, 0.00000, 90.00000);
	CreateObject(19425, 1360.76794, -1803.03564, 12.52150,   0.00000, 0.00000, 0.00000);
	CreateObject(19425, 1378.95886, -1784.93005, 12.52150,   0.00000, 0.00000, 90.00000);
	CreateObject(19425, 1374.33997, -1803.35205, 12.52150,   0.00000, 0.00000, 0.00000);
	//Hospital new
	CreateDynamicObject(5708, 976.18787, -1671.16162, 23.19470,   -0.06000, 0.00000, 0.00000);
	CreateDynamicObject(3928, 1004.90302, -1702.10339, 25.74160,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19545, 1005.35736, -1613.40454, 12.55010,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19545, 990.97565, -1613.42896, 12.51010,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19545, 986.34113, -1613.16016, 12.49010,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19545, 990.69250, -1675.17712, 12.49010,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19545, 991.97089, -1698.55750, 12.51010,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1652, 1014.82324, -1582.16565, 13.22560,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1652, 991.72015, -1582.19189, 13.22560,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1652, 979.06262, -1595.09460, 13.22560,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1652, 983.80316, -1613.79797, 13.22560,   0.00000, 0.00000, 129.00000);
	CreateDynamicObject(1652, 1004.63452, -1623.85876, 13.22560,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1652, 1027.57520, -1594.95898, 13.22560,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1652, 1027.58215, -1599.75867, 13.22560,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1652, 1014.71509, -1623.79260, 13.22560,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19545, 1019.97369, -1614.09448, 12.53010,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1251, 979.11670, -1585.61597, 12.52758,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1251, 979.11670, -1585.61597, 12.52758,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1251, 983.74335, -1585.63391, 12.56270,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1251, 988.52472, -1585.57202, 12.56270,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1251, 993.36426, -1585.67102, 12.56270,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1251, 998.08466, -1585.69702, 12.56270,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1251, 1002.18585, -1585.67371, 12.56270,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1251, 1006.20770, -1585.61023, 12.56270,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1251, 1010.14709, -1585.66492, 12.56270,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1980, 1014.58734, -1641.70984, 14.16456,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 1021.30542, -1664.10278, 12.58880,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 1021.44586, -1649.87268, 12.58880,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(792, 1026.76208, -1636.93054, 19.70313,   356.85840, 0.00000, 3.14159);
	CreateDynamicObject(792, 1026.47144, -1628.87573, 19.70313,   356.85840, 0.00000, 3.14159);
	CreateDynamicObject(792, 1026.53589, -1632.67285, 19.70313,   356.85840, 0.00000, 3.14159);
	CreateDynamicObject(792, 1020.15320, -1698.53809, 13.17969,   356.85840, 0.00000, 3.14159);
	CreateDynamicObject(792, 1024.14771, -1692.44226, 13.17969,   356.85840, 0.00000, 3.14159);
	CreateDynamicObject(792, 1025.66687, -1680.60669, 13.17969,   356.85840, 0.00000, 3.14159);
	CreateDynamicObject(792, 1019.10474, -1690.90723, 13.17969,   356.85840, 0.00000, 3.14159);
	CreateDynamicObject(870, 1025.04553, -1697.68567, 13.50940,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1025.45020, -1685.26453, 13.50940,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1017.59723, -1666.46936, 13.50940,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1361, 1022.63086, -1662.56750, 13.24600,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1361, 1022.74133, -1651.12427, 13.24600,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1364, 1023.24377, -1665.60999, 13.36970,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1364, 1023.19153, -1647.89111, 13.36970,   0.00000, 0.00000, 91.00000);
	CreateDynamicObject(19121, 1023.11859, -1665.18958, 12.61077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 1018.13000, -1662.27515, 13.60280,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 1018.03223, -1651.45361, 13.60280,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1652, 1027.58020, -1601.37903, 13.22560,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(967, 1026.77942, -1622.94934, 12.52170,   0.00000, 0.00000, -270.00000);
	CreateDynamicObject(968, 1027.20679, -1622.13672, 13.30570,   -3.00000, -90.00000, -91.00000);
	//Garages
	CreateDynamicObject(7636,591.7000100,-1355.9000000,1000.6000000,0.0000000,0.0000000,0.0000000); //object(venetiancpark03) (1)
	CreateDynamicObject(3998,611.2999900,-1380.5000000,998.5000000,0.0000000,270.0000000,0.0000000); //object(court1_lan) (1)
	CreateDynamicObject(3998,611.2999900,-1350.3000000,998.5000000,0.0000000,270.0000000,0.0000000); //object(court1_lan) (2)
	CreateDynamicObject(6037,583.5000000,-1330.0000000,994.9000200,0.0000000,90.0000000,270.0000000); //object(filler02_law) (1)
	CreateDynamicObject(6037,580.2999900,-1380.9000000,994.9000200,0.0000000,90.0000000,90.0000000); //object(filler02_law) (2)
	CreateDynamicObject(6037,565.0999800,-1357.1000000,994.9000200,270.0000000,0.0000000,270.0000000); //object(filler02_law) (3)
	CreateDynamicObject(3055,567.4000200,-1358.0000000,993.9000200,0.0000000,0.0000000,90.0000000); //object(kmb_shutter) (1)
	CreateDynamicObject(3055,567.4000200,-1350.7000000,993.9000200,0.0000000,0.0000000,90.0000000); //object(kmb_shutter) (2)
	CreateDynamicObject(3055,597.9000200,-1376.1000000,993.9000200,0.0000000,0.0000000,90.0000000); //object(kmb_shutter) (3)
	CreateDynamicObject(3055,597.9003900,-1368.4004000,993.9000200,0.0000000,0.0000000,90.0000000); //object(kmb_shutter) (4)
	CreateDynamicObject(3055,598.0000000,-1335.9000000,993.9002700,0.0000000,0.0000000,90.0000000); //object(kmb_shutter) (5)
	CreateDynamicObject(3055,598.0000000,-1343.7004000,993.9002700,0.0000000,0.0000000,90.0000000); //object(kmb_shutter) (6)
	CreateDynamicObject(2987,581.2500000,-1352.4000000,992.9000200,0.0000000,0.0000000,90.0000000); //object(lxr_motel_doorsim) (1)
	//Yakuza
 	CreateDynamicObject(1290,1250.7000000,-2023.6000000,64.7000000,0.0000000,0.0000000,0.0000000); //object(lamppost2) (1)
	CreateDynamicObject(1290,1270.0996000,-2024.2002000,64.2000000,0.0000000,0.0000000,0.0000000); //object(lamppost2) (2)
	CreateDynamicObject(1290,301.7999900,-1170.3000000,85.9000000,0.0000000,0.0000000,46.0000000); //object(lamppost2) (3)
	CreateDynamicObject(1290,292.7998000,-1161.7998000,85.9000000,0.0000000,0.0000000,46.0000000); //object(lamppost2) (4)
	//Basura
	CreateDynamicObject(1372,1827.1000000,-1884.3000000,12.5000000,0.0000000,0.0000000,270.0000000); //object(cj_dump2_low) (1)
	CreateDynamicObject(1372,1827.6000000,-1665.3000000,12.5000000,0.0000000,0.0000000,270.0000000); //object(cj_dump2_low) (2)
	CreateDynamicObject(1372,2009.4000000,-1455.2000000,12.6000000,0.0000000,0.0000000,0.0000000); //object(cj_dump2_low) (3)
	CreateDynamicObject(1372,2336.8999000,-1471.5000000,23.1000000,0.0000000,0.0000000,90.0000000); //object(cj_dump2_low) (4)
	CreateDynamicObject(1372,2134.9004000,-1401.9004000,23.1000000,0.0000000,0.0000000,270.0000000); //object(cj_dump2_low) (5)
	CreateDynamicObject(1372,2336.8999000,-1722.0000000,12.6000000,0.0000000,0.0000000,90.0000000); //object(cj_dump2_low) (6)
	CreateDynamicObject(1372,1817.5000000,-2054.6001000,12.6000000,0.0000000,0.0000000,90.0000000); //object(cj_dump2_low) (7)
	CreateDynamicObject(1372,2407.7998000,-1934.7998000,12.6000000,0.0000000,0.0000000,90.0000000); //object(cj_dump2_low) (8)
	CreateDynamicObject(1372,2146.0000000,-2210.3994000,12.6000000,0.0000000,0.0000000,43.9950000); //object(cj_dump2_low) (9)
	CreateDynamicObject(1372,1956.0996000,-2106.7998000,12.6000000,0.0000000,0.0000000,90.0000000); //object(cj_dump2_low) (10)
	CreateDynamicObject(1372,1349.0000000,-1726.2000000,12.6000000,0.0000000,0.0000000,0.0000000); //object(cj_dump2_low) (11)
	//LCN
	CreateDynamicObject(3749,1241.2000000,-742.2000100,100.0000000,0.0000000,4.0000000,26.0000000); //object(clubgate01_lax) (1)
	//Groove street
	CreateDynamicObject(1230,2487.0000000,-1665.2000000,12.8000000,0.0000000,0.0000000,0.0000000); //object(cardboardbox) (1)
	CreateDynamicObject(1265,2486.8999000,-1666.0000000,12.8000000,0.0000000,0.0000000,0.0000000); //object(blackbag2) (1)
	CreateDynamicObject(1265,2486.0000000,-1665.1000000,12.8000000,0.0000000,0.0000000,0.0000000); //object(blackbag2) (2)
	//Casa de gobienro
	CreateDynamicObject(1290,1250.7000000,-2023.6000000,64.7000000,0.0000000,0.0000000,0.0000000); //object(lamppost2) (1)
	CreateDynamicObject(1290,1270.0996000,-2024.2002000,64.2000000,0.0000000,0.0000000,0.0000000); //object(lamppost2) (2)
	//Taxista
	CreateDynamicObject(966,1811.7000000,-1893.5000000,12.4000000,0.0000000,0.0000000,270.0000000); //object(bar_gatebar01) (1)
	CreateDynamicObject(968,1811.7000000,-1893.5000000,13.4000000,0.0000000,0.0000000,90.0000000); //object(barrierturn) (1)
	CreateDynamicObject(970,1811.7000000,-1897.5000000,13.1000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (1)
	CreateDynamicObject(970,1811.7000000,-1884.5000000,13.1000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (2)
	CreateDynamicObject(970,1811.7000000,-1880.4000000,13.1000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (3)
	CreateDynamicObject(970,1811.7000000,-1876.3000000,13.1000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (4)
	CreateDynamicObject(970,1809.6100000,-1874.2000000,13.1000000,0.0000000,0.0000000,0.0000000); //object(fencesmallb) (5)
	CreateDynamicObject(982,1791.3000000,-1922.7000000,13.1000000,0.0000000,0.0000000,0.0000000); //object(fenceshit) (1)
	CreateDynamicObject(982,1788.8000000,-1922.7000000,13.1000000,0.0000000,0.0000000,0.0000000); //object(fenceshit) (2)
	CreateDynamicObject(983,1789.4399000,-1909.9000000,10.5000000,90.0000000,0.0000000,90.0000000); //object(fenceshit3) (1)
	CreateDynamicObject(983,1790.7002000,-1909.9004000,10.5000000,90.0000000,0.0000000,90.0000000); //object(fenceshit3) (2)
	CreateDynamicObject(808,1790.4000000,-1932.4000000,13.6000000,0.0000000,0.0000000,0.0000000); //object(genveg_bush12) (1)
	CreateDynamicObject(808,1790.0996000,-1934.0996000,13.6000000,0.0000000,0.0000000,0.0000000); //object(genveg_bush12) (2)
	CreateDynamicObject(808,1790.4000000,-1930.4000000,13.6000000,0.0000000,0.0000000,0.0000000); //object(genveg_bush12) (3)
	CreateDynamicObject(808,1790.4000000,-1919.8000000,13.6000000,0.0000000,0.0000000,0.0000000); //object(genveg_bush12) (4)
	CreateDynamicObject(808,1790.0996000,-1928.7002000,13.6000000,0.0000000,0.0000000,0.0000000); //object(genveg_bush12) (5)
	CreateDynamicObject(808,1790.0996000,-1927.0000000,13.6000000,0.0000000,0.0000000,0.0000000); //object(genveg_bush12) (6)
	CreateDynamicObject(808,1790.2998000,-1925.0996000,13.6000000,0.0000000,0.0000000,0.0000000); //object(genveg_bush12) (7)
	CreateDynamicObject(808,1790.5996000,-1923.2998000,13.6000000,0.0000000,0.0000000,0.0000000); //object(genveg_bush12) (8)
	CreateDynamicObject(808,1790.5996000,-1921.5000000,13.6000000,0.0000000,0.0000000,0.0000000); //object(genveg_bush12) (9)
	CreateDynamicObject(808,1790.2000000,-1916.0000000,13.6000000,0.0000000,0.0000000,0.0000000); //object(genveg_bush12) (10)
	CreateDynamicObject(808,1790.2998000,-1917.9004000,13.6000000,0.0000000,0.0000000,0.0000000); //object(genveg_bush12) (11)
	CreateDynamicObject(808,1790.1000000,-1911.7000000,13.6000000,0.0000000,0.0000000,0.0000000); //object(genveg_bush12) (12)
	CreateDynamicObject(808,1790.0996000,-1914.0000000,13.6000000,0.0000000,0.0000000,0.0000000); //object(genveg_bush12) (13)
	CreateDynamicObject(8855,1790.1000000,-1920.6000000,12.5500000,0.0000000,0.0000000,0.0000000); //object(vgeplntr04_lvs) (1)
	CreateDynamicObject(8855,1790.0996000,-1925.1996000,12.5500000,0.0000000,0.0000000,0.0000000); //object(vgeplntr04_lvs) (2)
	CreateDynamicObject(8557,1776.1000000,-1917.6000000,13.9000000,0.0000000,0.0000000,90.0000000); //object(vgshseing27) (1)
	CreateDynamicObject(8557,1804.9000000,-1917.8000000,13.9000000,0.0000000,0.0000000,270.0000000); //object(vgshseing27) (2)
	CreateDynamicObject(1262,1812.4100000,-1899.6699000,15.9000000,0.0000000,90.0000000,0.0000000); //object(mtraffic4) (1)
	CreateDynamicObject(1223,1812.1000000,-1894.7000000,12.6000000,0.0000000,0.0000000,0.0000000); //object(lampost_coast) (1)
	CreateDynamicObject(1223,1812.2998000,-1884.2998000,12.6000000,0.0000000,0.0000000,0.0000000); //object(lampost_coast) (2)
	CreateDynamicObject(1262,1811.2000000,-1899.3101000,15.5000000,0.0000000,0.0000000,90.0000000); //object(mtraffic4) (2)
	CreateDynamicObject(1290,1790.0000000,-1911.9000000,18.6000000,0.0000000,0.0000000,0.0000000); //object(lamppost2) (1)
	CreateDynamicObject(1290,1790.3000000,-1922.1000000,18.6000000,0.0000000,0.0000000,0.0000000); //object(lamppost2) (2)
	CreateDynamicObject(1290,1790.3000000,-1934.7000000,18.6000000,0.0000000,0.0000000,0.0000000); //object(lamppost2) (3)
	//LSPD
	CreateDynamicObject(3749, 1545.04626, -1627.71631, 16.75243,   0.00000, 0.00000, 89.84164);
	//Trabajo transportista de gasolina.
	CreateDynamicObject(5126,125.9000000,-269.9000000,15.7000000,0.0000000,0.0000000,0.0000000); //object(dockcranescale0) (1)
	CreateDynamicObject(16337,109.3000000,-224.1000000,0.6000000,0.0000000,0.0000000,0.0000000); //object(des_cranecontrol) (1)
	CreateDynamicObject(3675,258.9000000,1386.0000000,16.4000000,270.0000000,180.0000000,90.0000000); //object(laxrf_refinerypipe) (1)
	CreateDynamicObject(3675,256.2000000,1361.6000000,16.5000000,269.9950000,179.9950000,90.0000000); //object(laxrf_refinerypipe) (2)
	CreateDynamicObject(3675,257.0000000,1410.3000000,16.4000000,269.9950000,179.9950000,90.0000000); //object(laxrf_refinerypipe) (3)
	CreateDynamicObject(3675,256.7000000,1435.6000000,15.5000000,269.9950000,179.9950000,90.0000000); //14.7
	//Propiedad del gobernador.
	CreateDynamicObject(3749, 1426.28052, -1884.81555, 17.96580,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(980, 1426.00342, -1883.19971, 14.22260,   0.00000, 0.00000, 180.33859);
	CreateDynamicObject(3627, 1260.81250, -2018.54529, 62.63885,   0.00000, 0.00000, 273.07486);
	CreateDynamicObject(6965, 1174.82800, -2037.12109, 71.35338,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9241, 1152.76904, -2055.31030, 69.75190,   0.00000, 0.00000, 272.48889);
	// Ayuntamiento
	CreateObject(10377, 1487.06421, -1788.35950, 30.69089,   0.00000, 0.00000, 89.46577);
	CreateObject(4003, 1487.31848, -1767.26819, 35.68660,   0.00000, 0.00000, 0.00000);
	CreateObject(1693, 1517.64648, -1793.33191, 36.14608,   0.00000, 0.00000, 0.00000);
	CreateObject(1693, 1458.06042, -1793.26721, 36.13217,   0.00000, 0.00000, 0.00000);
	//Int del banco
	CreateDynamicObject(19376, -946.18378, 1438.25977, 1539.23828,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -946.18378, 1447.89050, 1539.23828,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -946.18378, 1467.12500, 1539.23828,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -946.18378, 1457.51392, 1539.23828,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -956.68378, 1467.12500, 1539.23828,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -956.68378, 1457.51392, 1539.23828,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -956.68378, 1447.89050, 1539.23828,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -956.68378, 1438.25977, 1539.23828,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -967.18378, 1467.12500, 1539.23828,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -967.18378, 1457.51392, 1539.23828,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -967.18378, 1447.89050, 1539.23828,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -967.18378, 1438.25977, 1539.23828,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19460, -943.58228, 1467.19006, 1540.90015,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -967.53119, 1433.40613, 1540.90015,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -972.30640, 1447.92126, 1540.90015,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -972.30640, 1457.53894, 1540.90015,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -972.30640, 1438.29626, 1540.90015,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -948.30151, 1433.40613, 1540.90015,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -957.91083, 1433.40613, 1540.90015,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -967.53119, 1471.90613, 1540.90015,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -957.91083, 1471.90613, 1540.90015,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -972.30640, 1467.15002, 1540.90015,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -943.58228, 1457.53894, 1540.90015,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -943.58228, 1447.92126, 1540.90015,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -943.58228, 1438.29626, 1540.90015,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3437, -944.09216, 1433.60022, 1539.32263,   0.00000, 0.00000, 12.37600);
	CreateDynamicObject(1703, -952.99530, 1440.43665, 1539.32141,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1703, -964.84570, 1440.43665, 1539.32141,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1703, -962.83179, 1441.45251, 1539.34143,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1703, -953.96338, 1441.41235, 1539.32141,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1808, -943.86829, 1441.89734, 1539.32166,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1808, -943.86829, 1441.28967, 1539.32166,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1703, -955.99530, 1440.43665, 1539.32141,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1703, -950.95477, 1441.42542, 1539.32141,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1703, -967.84570, 1440.43665, 1539.32141,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1703, -965.82568, 1441.43250, 1539.34143,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1616, -948.71216, 1433.75708, 1542.67944,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19446, -968.67120, 1460.29822, 1539.46326,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19459, -959.91083, 1450.01636, 1539.04321,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19459, -950.27081, 1450.01636, 1540.90015,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19304, -970.47638, 1450.04004, 1541.52686,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, -966.97638, 1450.04004, 1541.52686,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, -963.49640, 1450.04004, 1541.52686,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, -960.01642, 1450.04004, 1541.52686,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, -956.55640, 1450.04004, 1541.52686,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19459, -969.53119, 1450.01636, 1543.86316,   180.00000, 0.00000, 90.00000);
	CreateDynamicObject(19459, -959.91083, 1450.01636, 1543.86316,   180.00000, 0.00000, 90.00000);
	CreateDynamicObject(1536, -946.39227, 1433.52026, 1539.32056,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1536, -949.26593, 1433.42480, 1539.32056,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1536, -946.02429, 1450.01636, 1542.00061,   180.00000, 90.00000, 0.00000);
	CreateDynamicObject(2754, -971.83099, 1434.32788, 1540.20374,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2754, -971.83099, 1436.32788, 1540.20374,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2754, -971.83099, 1438.32788, 1540.20374,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2773, -972.06873, 1448.93384, 1539.82385,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, -970.06873, 1448.93384, 1539.82385,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, -968.06873, 1448.93384, 1539.82385,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, -966.06873, 1448.93384, 1539.82385,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, -964.06091, 1448.91541, 1539.82385,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, -962.06091, 1448.91541, 1539.82385,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, -960.06091, 1448.91541, 1539.82385,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, -958.06091, 1448.91541, 1539.82385,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, -956.06091, 1448.91541, 1539.82385,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2775, -953.46918, 1449.92444, 1541.74414,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2775, -949.46918, 1449.92444, 1541.74414,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2886, -945.80017, 1449.96094, 1541.09656,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2961, -943.66937, 1437.74036, 1540.40735,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2774, -971.24396, 1441.48254, 1539.32568,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2774, -959.50000, 1441.48254, 1539.32568,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2921, -947.01868, 1449.88928, 1542.13159,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2173, -970.71729, 1450.56604, 1539.30457,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2173, -968.71729, 1450.56604, 1539.30457,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2173, -966.71729, 1450.56604, 1539.30457,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2173, -964.71729, 1450.56604, 1539.30457,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2173, -962.71729, 1450.56604, 1539.30457,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2173, -960.71729, 1450.56604, 1539.30457,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2173, -958.71729, 1450.56604, 1539.30457,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2173, -956.71729, 1450.56604, 1539.30457,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(7313, -967.04761, 1449.62524, 1541.84277,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2700, -952.82709, 1449.71460, 1540.78064,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1663, -971.36621, 1451.39600, 1539.78296,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1663, -969.28619, 1451.39600, 1539.78296,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1663, -967.22620, 1451.39600, 1539.78296,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1663, -965.20618, 1451.39600, 1539.78296,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1663, -963.20618, 1451.39600, 1539.78296,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1663, -961.20618, 1451.39600, 1539.78296,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1663, -959.20618, 1451.39600, 1539.78296,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1663, -957.20618, 1451.39600, 1539.78296,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1616, -972.10107, 1453.28442, 1542.13574,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2774, -959.50000, 1460.39697, 1539.32312,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2774, -971.42578, 1460.39697, 1539.32312,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2200, -970.13281, 1460.21350, 1539.32581,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2200, -967.95282, 1460.21350, 1539.32581,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2200, -965.73279, 1460.21350, 1539.32581,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2200, -963.51282, 1460.21350, 1539.32581,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2200, -961.31281, 1460.21350, 1539.32581,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2191, -971.76300, 1457.91541, 1539.32312,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2191, -971.76300, 1455.91541, 1539.32312,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2191, -971.76300, 1453.91541, 1539.32312,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2191, -966.76300, 1455.91541, 1539.32312,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2191, -966.76300, 1453.91541, 1539.32312,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2191, -966.76300, 1457.91541, 1539.32312,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2191, -961.76300, 1453.91541, 1539.32312,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2191, -961.76300, 1455.91541, 1539.32312,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2191, -961.76300, 1457.91541, 1539.32312,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2200, -958.19281, 1460.21350, 1539.32581,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2200, -955.99280, 1460.21350, 1539.32581,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2200, -954.40057, 1459.26550, 1539.32581,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2200, -954.40057, 1457.06555, 1539.32581,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19459, -969.53119, 1450.01636, 1539.04321,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19446, -959.05121, 1460.29822, 1539.46326,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19427, -954.23077, 1459.30603, 1539.46533,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19427, -954.23077, 1457.70520, 1539.46533,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19427, -954.23077, 1456.12524, 1539.46533,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19538, -946.91284, 1503.21167, 1539.23828,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11711, -947.76898, 1433.52185, 1542.20276,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -953.18103, 1476.16162, 1539.76013,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2332, -953.18103, 1477.16162, 1539.76013,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2332, -953.18103, 1478.16162, 1539.76013,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2332, -953.18103, 1479.14160, 1539.76013,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2332, -953.18103, 1475.12158, 1540.64026,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2332, -953.18103, 1476.16162, 1540.64026,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2332, -953.18103, 1477.16162, 1540.64026,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2332, -953.18103, 1478.16162, 1540.64026,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2332, -953.18103, 1479.16162, 1540.64026,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2332, -943.66101, 1475.12158, 1539.76013,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2332, -953.18103, 1475.12158, 1539.76013,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2332, -943.66101, 1476.16162, 1539.76013,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2332, -943.66101, 1477.18152, 1539.76013,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2332, -943.66101, 1478.16162, 1539.76013,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2332, -943.66101, 1479.16162, 1539.76013,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2332, -943.66101, 1479.16162, 1540.64026,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2332, -943.66101, 1478.16162, 1540.64026,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2332, -943.66101, 1477.16162, 1540.64026,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2332, -943.66101, 1476.16162, 1540.64026,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2332, -943.66101, 1475.12158, 1540.64026,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19376, -946.18378, 1438.25977, 1542.71826,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -956.68378, 1438.25977, 1542.71826,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -967.18378, 1438.25977, 1542.71826,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -967.18378, 1447.89050, 1542.71826,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -956.68378, 1447.89050, 1542.71826,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -946.18378, 1447.89050, 1542.71826,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -967.18378, 1467.12500, 1542.71826,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -956.68378, 1467.12500, 1542.71826,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -946.18378, 1467.12500, 1542.71826,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -946.18378, 1457.51392, 1542.71826,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -956.68378, 1457.51392, 1542.71826,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19376, -967.18378, 1457.51392, 1542.71826,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19459, -939.20520, 1450.01636, 1540.90015,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1536, -949.41730, 1433.48035, 1539.32056,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19461, -953.18958, 1476.65149, 1540.90015,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19461, -943.58228, 1476.81152, 1540.90015,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19461, -948.29950, 1481.17004, 1540.90015,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2951, -942.59772, 1472.04175, 1539.20068,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2951, -953.85919, 1472.03418, 1539.20068,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19538, -946.93262, 1503.20850, 1542.63831,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -943.66101, 1479.16162, 1541.60034,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2332, -943.66101, 1478.16162, 1541.60034,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2332, -943.66101, 1477.16162, 1541.60034,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2332, -943.66101, 1476.16162, 1541.60034,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2332, -943.66101, 1475.12158, 1541.60034,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2332, -953.18103, 1475.12158, 1541.60034,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2332, -953.18103, 1476.16162, 1541.60034,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2332, -953.18103, 1477.16162, 1541.60034,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2332, -953.18103, 1478.16162, 1541.60034,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2332, -953.18103, 1479.16162, 1541.60034,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2332, -951.85828, 1481.16357, 1541.60034,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -951.85828, 1481.16357, 1540.64026,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -951.85828, 1481.16357, 1539.76013,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -950.85828, 1481.16357, 1541.60034,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -949.85828, 1481.16357, 1541.60034,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -948.85828, 1481.16357, 1541.60034,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -947.85828, 1481.16357, 1541.60034,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -946.85828, 1481.16357, 1541.60034,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -945.85828, 1481.16357, 1541.60034,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -950.85828, 1481.16357, 1540.64026,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -950.85828, 1481.16357, 1539.76013,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -949.85828, 1481.16357, 1540.64026,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -949.85828, 1481.16357, 1539.76013,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -948.85828, 1481.16357, 1540.64026,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -948.85828, 1481.16357, 1539.76013,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -947.85828, 1481.16357, 1540.64026,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -947.85828, 1481.16357, 1539.76013,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -946.85828, 1481.16357, 1540.64026,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -946.85828, 1481.16357, 1539.76013,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -945.85828, 1481.16357, 1540.64026,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, -945.85828, 1481.16357, 1539.76013,   0.00000, 0.00000, 0.00000);
	//Interior SAMD
	CreateDynamicObject(19449, -207.39999, -1739.69995, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(17038, -205.89941, -1747.69922, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -204.39941, -1747.69922, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -202.89999, -1747.69995, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -201.39941, -1747.69922, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(19460, -207.39900, -1739.69995, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19449, -202.60001, -1734.80005, 676.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -206.20000, -1734.80103, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1569, -206.00000, -1734.90002, 674.79999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1569, -203.00000, -1734.90002, 674.79999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19387, -196.69922, -1744.50000, 676.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19357, -201.39941, -1736.50000, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, -201.40039, -1736.50000, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2885, -211.79980, -1734.79980, 678.40002,   270.00000, 180.00000, 180.00000);
	CreateDynamicObject(17038, -199.89941, -1747.69922, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -198.39999, -1747.69995, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -196.89941, -1747.69922, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(19449, -196.60001, -1738.01599, 676.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -196.67200, -1738.01697, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19449, -195.39941, -1742.89941, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(17038, -195.39941, -1747.69922, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(19460, -195.40100, -1742.90002, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19449, -201.10001, -1739.69995, 674.09998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -201.10059, -1739.69922, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19357, -199.88379, -1744.50000, 676.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -191.15039, -1744.49902, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -191.15039, -1744.50098, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -199.07500, -1744.49902, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -199.07500, -1744.50098, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -199.88499, -1744.49805, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -201.09900, -1739.59998, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19357, -201.39941, -1746.09961, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19387, -201.39941, -1749.29980, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19357, -201.39999, -1752.50000, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19387, -201.39999, -1755.69995, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19357, -201.39999, -1758.90002, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(17038, -205.89941, -1768.39941, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -204.39999, -1768.40002, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -202.89999, -1768.40002, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -201.39999, -1768.40002, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -199.89941, -1768.39941, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -198.39941, -1768.39941, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -196.89999, -1768.40002, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -195.39941, -1768.39941, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(19368, -201.40199, -1746.09998, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, -201.40100, -1746.92505, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19387, -201.39941, -1762.09961, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19449, -206.20000, -1763.69995, 676.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -201.40100, -1751.63696, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, -201.40199, -1753.32495, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, -201.40100, -1758.03699, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, -201.40199, -1759.72498, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, -201.40100, -1764.43701, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -206.30000, -1763.69897, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19387, -207.39941, -1746.09961, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19387, -207.39941, -1758.89941, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19357, -207.39999, -1762.09998, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19449, -195.39941, -1752.50000, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19449, -195.39941, -1762.09961, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19449, -196.59961, -1758.79980, 676.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -206.00000, -1733.29980, 672.59998,   270.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -203.00000, -1733.30005, 672.59998,   270.00000, 179.99451, 0.00000);
	CreateDynamicObject(19441, -203.71400, -1733.30103, 677.39801,   0.00000, 270.00000, 90.00000);
	CreateDynamicObject(19441, -205.28700, -1733.30103, 677.39703,   0.00000, 270.00000, 90.00000);
	CreateDynamicObject(2885, -200.89941, -1734.79980, 678.40002,   270.00000, 0.00000, 0.00000);
	CreateDynamicObject(2885, -200.89941, -1741.50000, 678.40002,   270.00000, 0.00000, 0.00000);
	CreateDynamicObject(2885, -211.79980, -1741.50000, 678.40002,   270.00000, 179.99451, 179.99451);
	CreateDynamicObject(2885, -211.79980, -1748.19922, 678.40002,   270.00000, 0.00000, 0.00000);
	CreateDynamicObject(2885, -200.89999, -1748.19995, 678.40002,   270.00000, 0.00000, 0.00000);
	CreateDynamicObject(2885, -200.89941, -1754.89941, 678.40002,   270.00000, 0.00000, 0.00000);
	CreateDynamicObject(2885, -200.89941, -1761.59961, 678.40002,   270.00000, 0.00000, 0.00000);
	CreateDynamicObject(2885, -211.79980, -1761.59961, 678.40002,   270.00000, 0.00000, 0.00000);
	CreateDynamicObject(17038, -207.39941, -1747.69922, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -208.89941, -1747.69922, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -210.39999, -1747.69995, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -211.89999, -1747.69995, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -213.39941, -1747.69922, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -213.39941, -1768.39941, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -211.89999, -1768.40002, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -210.39941, -1768.39941, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -208.89941, -1768.39941, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(17038, -207.39999, -1768.40002, 668.29999,   0.00000, 270.00000, 0.00000);
	CreateDynamicObject(19449, -214.60001, -1758.90002, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19449, -214.59961, -1749.29980, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19449, -214.60001, -1739.69995, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19449, -212.19922, -1734.79980, 676.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -199.80000, -1744.50110, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -201.39799, -1746.09998, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, -201.39900, -1746.92505, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, -201.39900, -1751.63696, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, -201.39700, -1753.32422, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, -201.39900, -1758.03699, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, -201.39799, -1759.72498, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -195.40100, -1752.50000, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -195.40039, -1762.09961, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -196.64941, -1758.79883, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -196.64941, -1758.80078, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -207.39799, -1740.51404, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, -207.39900, -1761.23706, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, -207.39799, -1764.40002, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -214.59900, -1758.80005, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -214.59801, -1749.19995, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -214.59900, -1739.59998, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -215.80000, -1734.80115, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -207.40100, -1739.69995, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -207.40137, -1740.51367, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, -207.40120, -1761.23706, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, -207.40100, -1764.39941, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1537, -205.38712, -1763.58057, 674.66302,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(1523, -201.37000, -1756.44995, 674.73999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1523, -201.36914, -1750.04980, 674.73999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1523, -201.37000, -1762.84998, 674.73999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2686, -201.51300, -1744.90002, 676.40002,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2685, -201.51300, -1745.40002, 676.40002,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2688, -207.29980, -1747.59961, 676.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(16101, -201.50000, -1748.50000, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -201.50000, -1750.00000, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -201.50000, -1754.90002, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -201.50000, -1756.40002, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -201.50000, -1761.30005, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -201.50000, -1762.80005, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -201.32910, -1748.50000, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -201.33000, -1750.00000, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -201.33000, -1754.90002, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -201.33000, -1756.40002, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -201.33000, -1761.30005, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -201.33000, -1762.80005, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14487, -211.80000, -1751.50000, 678.09998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14487, -211.79980, -1729.59961, 678.09998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14487, -218.59961, -1729.59961, 678.09998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14487, -218.60001, -1754.30005, 678.09998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14487, -190.89941, -1753.59961, 678.09998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14487, -190.89999, -1735.19995, 678.09998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14487, -190.89941, -1731.69922, 678.09998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1523, -207.36914, -1746.84961, 674.73999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1523, -207.37000, -1759.65002, 674.73999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(16101, -207.32910, -1745.29980, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -207.33000, -1746.81995, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -207.33000, -1758.09998, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -207.33000, -1759.62000, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -207.50000, -1759.59998, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -207.50000, -1758.09998, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -207.50000, -1746.80005, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -207.50000, -1745.29980, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1999, -200.50000, -1740.39941, 674.79999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2009, -199.50000, -1743.79980, 674.79999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1671, -199.50000, -1739.30005, 675.20001,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1671, -199.29980, -1743.00000, 675.20001,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(19387, -213.00000, -1742.69922, 676.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19357, -209.79980, -1742.69922, 673.90100,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19357, -209.00000, -1742.70020, 673.90002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19449, -212.20000, -1742.69897, 679.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19466, -208.50000, -1742.69995, 676.40002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19466, -210.74023, -1742.69922, 676.40002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -209.00000, -1742.69897, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -210.66400, -1742.69800, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -215.37399, -1742.69897, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -215.37500, -1742.70020, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -209.00000, -1742.70117, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -210.66400, -1742.70215, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1523, -213.78906, -1742.72949, 674.73999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -212.29980, -1742.79980, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -213.80000, -1742.80005, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -213.80000, -1742.59998, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -212.30000, -1742.59998, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -207.50000, -1742.69922, 666.90002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3657, -213.89999, -1745.69995, 675.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3394, -213.79980, -1739.00000, 674.79999,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(3396, -208.19922, -1737.00000, 674.79999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3397, -208.19922, -1740.89941, 674.79999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14487, -218.60001, -1731.80005, 678.09998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2007, -213.69922, -1735.39941, 674.79999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2007, -212.69922, -1735.39941, 674.79999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2132, -211.09961, -1735.39941, 674.79999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14532, -211.39941, -1737.09961, 675.78003,   0.00000, 0.00000, 194.74915);
	CreateDynamicObject(2146, -211.09961, -1738.79980, 675.27002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3657, -206.89999, -1754.59998, 675.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2811, -201.89941, -1735.39941, 674.79999,   0.00000, 0.00000, 139.99329);
	CreateDynamicObject(2811, -201.89999, -1763.19995, 674.79999,   0.00000, 0.00000, 219.99573);
	CreateDynamicObject(2811, -206.89999, -1763.19995, 674.79999,   0.00000, 0.00000, 149.99573);
	CreateDynamicObject(3657, -206.89999, -1739.59998, 675.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2811, -206.89941, -1735.39941, 674.79999,   0.00000, 0.00000, 221.98975);
	CreateDynamicObject(2688, -201.50000, -1760.50000, 676.40002,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(19460, -201.50000, -1739.69995, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -207.30000, -1739.69995, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -207.30000, -1749.30005, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -207.30000, -1758.90002, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -201.50000, -1749.30005, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -201.50000, -1758.90002, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -204.80000, -1734.90002, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(19460, -206.39999, -1763.59998, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(19460, -214.50000, -1758.90002, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -214.50000, -1749.30005, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -214.50000, -1739.69995, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -207.50000, -1758.90002, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -207.50000, -1749.30005, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -207.50000, -1739.69995, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -214.39999, -1734.90002, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(19460, -212.20000, -1742.80005, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(19460, -212.20000, -1742.59998, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(19460, -196.60001, -1744.40002, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(19460, -196.60001, -1738.09998, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(19460, -196.60001, -1744.59998, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(19460, -196.60001, -1758.69995, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(19460, -196.60001, -1758.90002, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(19460, -195.50000, -1758.90002, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -195.50000, -1749.30005, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -195.50000, -1739.69995, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19357, -209.00000, -1748.80103, 673.90100,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19449, -207.39999, -1752.50000, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -207.40100, -1751.59998, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -207.39900, -1751.59998, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -207.40199, -1753.30005, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -207.39799, -1753.30005, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3657, -206.89999, -1750.40002, 675.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19387, -213.00000, -1748.80005, 676.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19449, -212.20000, -1748.80103, 679.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19357, -209.80000, -1748.80005, 673.90002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19466, -208.60001, -1748.80005, 676.40002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19466, -210.84050, -1748.80005, 676.40002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19449, -212.20000, -1756.19995, 676.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1523, -213.78900, -1748.82996, 674.73999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -212.20000, -1748.69995, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(19460, -212.20000, -1748.90002, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(19460, -212.20000, -1756.09998, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(19460, -212.30000, -1756.19897, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -209.00000, -1748.79895, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -210.66299, -1748.79797, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -210.66211, -1748.80273, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -209.00000, -1748.80176, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -215.37500, -1748.79895, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, -215.37500, -1748.80078, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3397, -208.20000, -1750.80005, 674.79999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3396, -208.20000, -1754.40002, 674.79999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -212.20000, -1756.30005, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(2132, -209.89999, -1755.59998, 674.79999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2007, -212.30000, -1755.59998, 674.79999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2007, -213.30000, -1755.59998, 674.79999,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(3394, -213.80000, -1752.19995, 674.79999,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(2146, -211.10001, -1751.90002, 675.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14532, -210.70000, -1753.50000, 675.79999,   0.00000, 0.00000, 14.00000);
	CreateDynamicObject(19460, -212.29980, -1756.20020, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3657, -201.89941, -1746.50000, 675.29999,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2811, -214.00000, -1743.40002, 674.79999,   0.00000, 0.00000, 251.98975);
	CreateDynamicObject(2811, -214.00000, -1748.09998, 674.79999,   0.00000, 0.00000, 295.98798);
	CreateDynamicObject(16101, -207.50000, -1748.80005, 666.90002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3394, -213.80000, -1761.50000, 674.79999,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(2007, -214.00000, -1758.59998, 674.79999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2007, -214.00000, -1757.59998, 674.79999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2132, -210.10001, -1763.09998, 674.79999,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(3396, -208.20000, -1761.69995, 674.79999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3397, -210.80000, -1756.69995, 674.79999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2146, -211.20000, -1759.90002, 675.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11237, -230.00000, -1760.40002, 698.90002,   0.00000, 180.00000, 180.00000);
	CreateDynamicObject(3053, -211.20000, -1760.40002, 678.40002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -211.20000, -1760.40002, 688.09998,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(2596, -214.30000, -1760.09998, 676.70001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2885, -211.80000, -1754.90002, 678.40002,   270.00000, 0.00000, 0.00000);
	CreateDynamicObject(2596, -214.30000, -1760.80005, 676.70001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2596, -214.30000, -1760.80005, 677.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2596, -214.30000, -1760.09998, 677.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(16101, -222.60001, -1760.40002, 677.90002,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(16101, -214.50000, -1760.40002, 666.19385,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3808, -207.25000, -1757.80005, 676.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3808, -212.00000, -1742.84998, 676.29999,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(3808, -212.00000, -1748.66003, 676.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -201.30000, -1749.50000, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -201.30000, -1759.09998, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(2009, -199.50000, -1747.80005, 674.79999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1999, -200.50000, -1746.09998, 674.80103,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1671, -199.39999, -1746.90002, 675.20001,   0.00000, 0.00000, 264.00000);
	CreateDynamicObject(1671, -199.39999, -1745.09998, 675.20001,   0.00000, 0.00000, 278.00000);
	CreateDynamicObject(2009, -196.80000, -1753.80005, 674.80103,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1999, -197.80000, -1752.09998, 674.79999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1999, -198.70000, -1752.80005, 674.79999,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2009, -199.70000, -1751.09998, 674.80103,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1671, -197.60001, -1753.00000, 675.20001,   0.00000, 0.00000, 282.00000);
	CreateDynamicObject(1671, -196.80000, -1751.30005, 675.20001,   0.00000, 0.00000, 260.00000);
	CreateDynamicObject(1671, -199.80000, -1752.09998, 675.20001,   0.00000, 0.00000, 84.00000);
	CreateDynamicObject(1671, -199.80000, -1753.80005, 675.20001,   0.00000, 0.00000, 104.00000);
	CreateDynamicObject(2009, -196.00000, -1757.19995, 674.79999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1999, -197.70000, -1758.19995, 674.80103,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1671, -196.89999, -1757.30005, 675.20001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1671, -198.70000, -1758.00000, 675.20001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2202, -196.00000, -1746.19995, 674.78003,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2811, -195.89999, -1745.09998, 674.79999,   0.00000, 0.00000, 115.99329);
	CreateDynamicObject(2007, -196.00000, -1748.30005, 674.79999,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2007, -196.00000, -1749.30005, 674.79999,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2811, -200.89999, -1758.30005, 674.79999,   0.00000, 0.00000, 141.98816);
	CreateDynamicObject(2611, -198.20000, -1758.67004, 676.79999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2611, -201.27000, -1746.40002, 676.59998,   0.00000, 0.00000, 89.99451);
	CreateDynamicObject(19449, -215.80000, -1763.69995, 676.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19449, -201.39999, -1768.50000, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19449, -195.39999, -1771.69995, 676.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2885, -200.89999, -1768.30005, 678.40002,   270.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -201.39900, -1767.57996, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -195.40100, -1771.69995, 673.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, -195.50000, -1768.50000, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19460, -201.30000, -1768.69995, 679.90002,   0.00000, 179.99451, 0.00000);
	CreateDynamicObject(19449, -196.60001, -1772.40002, 676.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -196.60001, -1772.39905, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, -196.60001, -1772.30005, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(14487, -190.89999, -1778.19995, 678.09998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1789, -211.80000, -1753.09998, 675.29999,   0.00000, 0.00000, 290.00000);
	CreateDynamicObject(1789, -211.89941, -1759.19922, 675.29999,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1789, -210.20000, -1737.69995, 675.29999,   0.00000, 0.00000, 99.99512);
	CreateDynamicObject(1800, -199.00000, -1759.50000, 674.70001,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1800, -199.00000, -1771.50000, 674.70001,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1800, -199.00000, -1767.59998, 674.70001,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1800, -199.00000, -1763.69995, 674.70001,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1800, -200.70000, -1766.90002, 674.70001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1800, -200.70000, -1773.30005, 674.70001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1789, -196.20000, -1770.69995, 675.29999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1789, -196.20000, -1766.69995, 675.29999,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(1789, -196.20000, -1762.90002, 675.29999,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(1789, -196.30000, -1760.69995, 675.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1789, -200.50000, -1766.19995, 675.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1789, -200.50000, -1769.40002, 675.29999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19460, -216.00000, -1763.59998, 679.90002,   0.00000, 179.99451, 90.00000);
	CreateDynamicObject(1999, -197.50000, -1740.40002, 674.79999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1671, -196.50000, -1739.30005, 675.20001,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(19460, -215.89999, -1763.69897, 673.29999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(16101, -212.30000, -1748.69995, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -213.80000, -1748.69995, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -213.80000, -1748.90002, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -212.30000, -1748.90002, 666.29999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2852, -206.80000, -1742.80005, 675.28003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2315, -206.80000, -1742.40002, 674.79999,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2855, -206.70000, -1743.69995, 675.29999,   0.00000, 0.00000, 0.00000);

	//Mec�nico
	CreateDynamicObject(18026, 363.27930, -1620.30469, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1535, 362.58344, -1628.19849, 38.36690,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 358.03516, -1620.46875, 41.52559,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(2424, 359.62012, -1620.26855, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 358.68967, -1620.26331, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 357.75812, -1620.25452, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 356.82819, -1620.26062, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 355.91370, -1620.27319, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 366.92871, -1620.12305, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 367.85938, -1620.11365, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 368.77722, -1620.11365, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 369.70462, -1620.11780, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 370.62656, -1620.11047, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 365.25909, -1620.14136, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 364.34451, -1620.14136, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 363.43066, -1620.14453, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 364.25461, -1620.35742, 41.55078,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(1649, 364.14258, -1620.26855, 41.45077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 368.63092, -1620.28748, 41.58128,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(1649, 368.61884, -1620.26721, 41.40627,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2423, 362.45370, -1620.03320, 38.35994,   0.00000, 0.00000, 266.00000);
	CreateDynamicObject(2424, 362.49316, -1619.09583, 38.35994,   0.00000, 0.00000, 269.75000);
	CreateDynamicObject(2424, 362.49692, -1618.18262, 38.35994,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(2424, 362.50024, -1617.25330, 38.35994,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(2424, 362.50620, -1616.36182, 38.35994,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(2424, 359.92224, -1619.44775, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 359.92715, -1618.52026, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 359.93826, -1617.61438, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 359.93295, -1616.71082, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 359.93930, -1615.81909, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 359.94360, -1614.90527, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 362.49017, -1615.44373, 38.35994,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(2424, 362.48938, -1614.53210, 38.35994,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(2424, 362.48499, -1614.06677, 38.36096,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(1649, 362.11389, -1617.07068, 41.48128,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1649, 362.21957, -1616.76941, 41.45066,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, 359.94650, -1616.90784, 41.63129,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1649, 360.41995, -1617.44629, 41.55628,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1514, 358.72302, -1620.13379, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1514, 356.69562, -1620.15356, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1514, 363.42575, -1620.01221, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1514, 365.02277, -1619.99121, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1514, 367.47659, -1619.99097, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1514, 369.88327, -1619.99695, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2894, 362.48062, -1617.13806, 39.41551,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2894, 359.94095, -1617.01160, 39.41551,   0.00000, 0.00000, 266.00000);
	CreateDynamicObject(18014, 370.79492, -1623.87671, 38.66714,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18014, 355.79492, -1623.97412, 38.79214,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1723, 369.00073, -1627.28223, 38.23494,   0.00000, 0.00000, 180.50000);
	CreateDynamicObject(1722, 367.14233, -1624.87976, 38.23494,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, 367.20251, -1623.31921, 38.24273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, 368.92447, -1623.28406, 38.24273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, 368.93414, -1624.80615, 38.23494,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, 368.02374, -1624.88232, 38.23494,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, 368.04193, -1623.30627, 38.24273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 372.56934, -1612.39526, 38.82283,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2191, 368.71143, -1611.83032, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2191, 367.28760, -1611.79187, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 372.56061, -1612.38330, 39.75733,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 373.42822, -1612.40125, 38.82283,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 373.43130, -1612.40027, 39.75733,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 374.26224, -1612.42651, 38.82283,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 374.27151, -1612.38928, 39.75733,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2164, 374.65350, -1614.77246, 38.35994,   0.00000, 0.00000, 272.00000);
	CreateDynamicObject(2163, 374.74512, -1614.76196, 40.18505,   0.00000, 0.00000, 271.25000);
	CreateDynamicObject(2172, 374.12646, -1616.99536, 38.35994,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2172, 372.33258, -1619.12659, 38.35994,   0.00000, 0.00000, 179.50000);
	CreateDynamicObject(2591, 370.86053, -1617.92542, 41.06183,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1723, 360.24722, -1625.32104, 38.23494,   0.00000, 0.00000, 180.49988);
	CreateDynamicObject(1723, 360.18903, -1622.83447, 38.24273,   0.00000, 0.00000, 180.49988);
	CreateDynamicObject(2754, 357.46179, -1628.11206, 39.26209,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2754, 358.93552, -1628.11169, 39.26209,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1714, 358.70773, -1618.61902, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 356.69266, -1618.57629, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 363.33716, -1618.37048, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 365.08655, -1618.39966, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 367.55551, -1618.36438, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 370.39261, -1618.33447, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 371.54501, -1617.68970, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 372.87372, -1617.18091, 38.35994,   0.00000, 0.00000, 87.00000);
	CreateDynamicObject(2191, 358.78937, -1612.26880, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2191, 357.39761, -1612.25305, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 356.42325, -1613.24585, 39.38510,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 370.20206, -1613.33154, 39.38510,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 370.17960, -1626.58643, 39.26010,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 356.24796, -1627.35779, 39.26010,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18026, 363.27930, -1620.30469, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1535, 362.58344, -1628.19849, 38.36690,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 358.03516, -1620.46875, 41.52559,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(2424, 359.62012, -1620.26855, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 358.68967, -1620.26331, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 357.75812, -1620.25452, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 356.82819, -1620.26062, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 355.91370, -1620.27319, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 366.92871, -1620.12305, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 367.85938, -1620.11365, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 368.77722, -1620.11365, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 369.70462, -1620.11780, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 370.62656, -1620.11047, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 365.25909, -1620.14136, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 364.34451, -1620.14136, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 363.43066, -1620.14453, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 364.25461, -1620.35742, 41.55078,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(1649, 364.14258, -1620.26855, 41.45077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 368.63092, -1620.28748, 41.58128,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(1649, 368.61884, -1620.26721, 41.40627,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2423, 362.45370, -1620.03320, 38.35994,   0.00000, 0.00000, 266.00000);
	CreateDynamicObject(2424, 362.49316, -1619.09583, 38.35994,   0.00000, 0.00000, 269.75000);
	CreateDynamicObject(2424, 362.49692, -1618.18262, 38.35994,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(2424, 362.50024, -1617.25330, 38.35994,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(2424, 362.50620, -1616.36182, 38.35994,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(2424, 359.92224, -1619.44775, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 359.92715, -1618.52026, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 359.93826, -1617.61438, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 359.93295, -1616.71082, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 359.93930, -1615.81909, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 359.94360, -1614.90527, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 362.49017, -1615.44373, 38.35994,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(2424, 362.48938, -1614.53210, 38.35994,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(2424, 362.48499, -1614.06677, 38.36096,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(1649, 362.11389, -1617.07068, 41.48128,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1649, 362.21957, -1616.76941, 41.45066,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, 359.94650, -1616.90784, 41.63129,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1649, 360.41995, -1617.44629, 41.55628,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1514, 358.72302, -1620.13379, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1514, 356.69562, -1620.15356, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1514, 363.42575, -1620.01221, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1514, 365.02277, -1619.99121, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1514, 367.47659, -1619.99097, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1514, 369.88327, -1619.99695, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2894, 362.48062, -1617.13806, 39.41551,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2894, 359.94095, -1617.01160, 39.41551,   0.00000, 0.00000, 266.00000);
	CreateDynamicObject(18014, 370.79492, -1623.87671, 38.66714,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18014, 355.79492, -1623.97412, 38.79214,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1723, 369.00073, -1627.28223, 38.23494,   0.00000, 0.00000, 180.50000);
	CreateDynamicObject(1722, 367.14233, -1624.87976, 38.23494,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, 367.20251, -1623.31921, 38.24273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, 368.92447, -1623.28406, 38.24273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, 368.93414, -1624.80615, 38.23494,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, 368.02374, -1624.88232, 38.23494,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, 368.04193, -1623.30627, 38.24273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 372.56934, -1612.39526, 38.82283,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2191, 368.71143, -1611.83032, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2191, 367.28760, -1611.79187, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 372.56061, -1612.38330, 39.75733,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 373.42822, -1612.40125, 38.82283,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 373.43130, -1612.40027, 39.75733,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 374.26224, -1612.42651, 38.82283,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 374.27151, -1612.38928, 39.75733,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2164, 374.65350, -1614.77246, 38.35994,   0.00000, 0.00000, 272.00000);
	CreateDynamicObject(2163, 374.74512, -1614.76196, 40.18505,   0.00000, 0.00000, 271.25000);
	CreateDynamicObject(2172, 374.12646, -1616.99536, 38.35994,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2172, 372.33258, -1619.12659, 38.35994,   0.00000, 0.00000, 179.50000);
	CreateDynamicObject(2591, 370.86053, -1617.92542, 41.06183,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1723, 360.24722, -1625.32104, 38.23494,   0.00000, 0.00000, 180.49988);
	CreateDynamicObject(1723, 360.18903, -1622.83447, 38.24273,   0.00000, 0.00000, 180.49988);
	CreateDynamicObject(2754, 357.46179, -1628.11206, 39.26209,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2754, 358.93552, -1628.11169, 39.26209,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1714, 358.70773, -1618.61902, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 356.69266, -1618.57629, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 363.33716, -1618.37048, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 365.08655, -1618.39966, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 367.55551, -1618.36438, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 370.39261, -1618.33447, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 371.54501, -1617.68970, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 372.87372, -1617.18091, 38.35994,   0.00000, 0.00000, 87.00000);
	CreateDynamicObject(2191, 358.78937, -1612.26880, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2191, 357.39761, -1612.25305, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 356.42325, -1613.24585, 39.38510,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 370.20206, -1613.33154, 39.38510,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 370.17960, -1626.58643, 39.26010,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 356.24796, -1627.35779, 39.26010,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18026, 363.27930, -1620.30469, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1535, 362.58344, -1628.19849, 38.36690,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 358.03516, -1620.46875, 41.52559,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(2424, 359.62012, -1620.26855, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 358.68967, -1620.26331, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 357.75812, -1620.25452, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 356.82819, -1620.26062, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 355.91370, -1620.27319, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 366.92871, -1620.12305, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 367.85938, -1620.11365, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 368.77722, -1620.11365, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 369.70462, -1620.11780, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 370.62656, -1620.11047, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 365.25909, -1620.14136, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 364.34451, -1620.14136, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2424, 363.43066, -1620.14453, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 364.25461, -1620.35742, 41.55078,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(1649, 364.14258, -1620.26855, 41.45077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 368.63092, -1620.28748, 41.58128,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(1649, 368.61884, -1620.26721, 41.40627,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2423, 362.45370, -1620.03320, 38.35994,   0.00000, 0.00000, 266.00000);
	CreateDynamicObject(2424, 362.49316, -1619.09583, 38.35994,   0.00000, 0.00000, 269.75000);
	CreateDynamicObject(2424, 362.49692, -1618.18262, 38.35994,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(2424, 362.50024, -1617.25330, 38.35994,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(2424, 362.50620, -1616.36182, 38.35994,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(2424, 359.92224, -1619.44775, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 359.92715, -1618.52026, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 359.93826, -1617.61438, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 359.93295, -1616.71082, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 359.93930, -1615.81909, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 359.94360, -1614.90527, 38.35994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2424, 362.49017, -1615.44373, 38.35994,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(2424, 362.48938, -1614.53210, 38.35994,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(2424, 362.48499, -1614.06677, 38.36096,   0.00000, 0.00000, 269.74731);
	CreateDynamicObject(1649, 362.11389, -1617.07068, 41.48128,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1649, 362.21957, -1616.76941, 41.45066,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, 359.94650, -1616.90784, 41.63129,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1649, 360.41995, -1617.44629, 41.55628,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1514, 358.72302, -1620.13379, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1514, 356.69562, -1620.15356, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1514, 363.42575, -1620.01221, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1514, 365.02277, -1619.99121, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1514, 367.47659, -1619.99097, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1514, 369.88327, -1619.99695, 39.68088,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2894, 362.48062, -1617.13806, 39.41551,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2894, 359.94095, -1617.01160, 39.41551,   0.00000, 0.00000, 266.00000);
	CreateDynamicObject(18014, 370.79492, -1623.87671, 38.66714,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18014, 355.79492, -1623.97412, 38.79214,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1723, 369.00073, -1627.28223, 38.23494,   0.00000, 0.00000, 180.50000);
	CreateDynamicObject(1722, 367.14233, -1624.87976, 38.23494,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, 367.20251, -1623.31921, 38.24273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, 368.92447, -1623.28406, 38.24273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, 368.93414, -1624.80615, 38.23494,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, 368.02374, -1624.88232, 38.23494,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, 368.04193, -1623.30627, 38.24273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 372.56934, -1612.39526, 38.82283,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2191, 368.71143, -1611.83032, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2191, 367.28760, -1611.79187, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 372.56061, -1612.38330, 39.75733,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 373.42822, -1612.40125, 38.82283,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 373.43130, -1612.40027, 39.75733,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 374.26224, -1612.42651, 38.82283,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2332, 374.27151, -1612.38928, 39.75733,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2164, 374.65350, -1614.77246, 38.35994,   0.00000, 0.00000, 272.00000);
	CreateDynamicObject(2163, 374.74512, -1614.76196, 40.18505,   0.00000, 0.00000, 271.25000);
	CreateDynamicObject(2172, 374.12646, -1616.99536, 38.35994,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2172, 372.33258, -1619.12659, 38.35994,   0.00000, 0.00000, 179.50000);
	CreateDynamicObject(2591, 370.86053, -1617.92542, 41.06183,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1723, 360.24722, -1625.32104, 38.23494,   0.00000, 0.00000, 180.49988);
	CreateDynamicObject(1723, 360.18903, -1622.83447, 38.24273,   0.00000, 0.00000, 180.49988);
	CreateDynamicObject(2754, 357.46179, -1628.11206, 39.26209,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2754, 358.93552, -1628.11169, 39.26209,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1714, 358.70773, -1618.61902, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 356.69266, -1618.57629, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 363.33716, -1618.37048, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 365.08655, -1618.39966, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 367.55551, -1618.36438, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 370.39261, -1618.33447, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 371.54501, -1617.68970, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 372.87372, -1617.18091, 38.35994,   0.00000, 0.00000, 87.00000);
	CreateDynamicObject(2191, 358.78937, -1612.26880, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2191, 357.39761, -1612.25305, 38.35994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 356.42325, -1613.24585, 39.38510,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 370.20206, -1613.33154, 39.38510,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 370.17960, -1626.58643, 39.26010,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 356.24796, -1627.35779, 39.26010,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3749, 2717.71509, -2405.40576, 17.52200,   0.00000, 0.00000, 87.74800);
	CreateDynamicObject(980, 2716.98950, -2405.52661, 15.11650,   0.00000, 0.00000, 92.74943);
	CreateDynamicObject(987, 2719.10742, -2427.99048, 12.23420,   0.00000, 0.00000, 267.82681);
	CreateDynamicObject(987, 2718.71265, -2439.91431, 12.22280,   0.00000, 0.00000, 271.83670);
	CreateDynamicObject(987, 2719.12720, -2451.93481, 12.19170,   0.00000, 0.00000, 272.32861);
	CreateDynamicObject(987, 2719.55688, -2463.80566, 12.09740,   0.00000, 0.00000, 271.98190);
	CreateDynamicObject(987, 2720.00757, -2475.78809, 11.94890,   0.00000, 0.00000, 270.62048);
	CreateDynamicObject(987, 2720.23462, -2420.54443, 12.15440,   0.00000, 0.00000, 264.50620);
	CreateDynamicObject(3749, 2722.47266, -2504.00195, 18.35817,   0.00000, 0.00000, 89.11090);
	CreateDynamicObject(980, 2722.05054, -2504.00293, 15.31400,   0.00000, 0.00000, 89.31213);
	CreateDynamicObject(5409, 2732.70752, -2379.76392, 16.99860,   0.00000, 0.00000, 0.51010);
	CreateDynamicObject(7391, 2721.80713, -2456.40918, 16.98460,   0.00000, 0.00000, 172.00909);
	CreateDynamicObject(987, 2720.01855, -2521.08618, 12.60860,   0.00000, 0.00000, 268.86975);
	CreateDynamicObject(987, 2719.77930, -2533.13452, 12.61870,   0.00000, 0.00000, 269.68301);
	CreateDynamicObject(987, 2719.60400, -2545.14624, 12.62060,   0.00000, 0.00000, 269.56989);
	CreateDynamicObject(987, 2719.46655, -2551.85083, 12.62625,   0.00000, 0.00000, 271.39111);
	CreateDynamicObject(987, 2720.17529, -2371.50537, 12.91630,   0.00000, 0.00000, 269.74780);
	CreateDynamicObject(987, 2720.14697, -2359.49268, 12.96290,   0.00000, 0.00000, 270.23441);
	CreateDynamicObject(987, 2720.38965, -2347.52808, 12.99660,   0.00000, 0.00000, 268.94159);
	CreateDynamicObject(987, 2720.68311, -2335.54932, 13.19420,   0.00000, 0.00000, 268.44540);
	CreateDynamicObject(987, 2720.75952, -2329.37549, 13.29400,   0.00000, 0.00000, 269.26291);
	CreateDynamicObject(10281, 2773.26929, -2418.35938, 19.17232,   0.00000, 0.00000, 269.40909);
	CreateDynamicObject(10281, 2773.20313, -2494.35229, 19.39810,   0.00000, 0.00000, 265.99960);
	CreateDynamicObject(3627, 2733.56128, -2452.48267, 16.13912,   0.00000, 0.00000, 0.00000);
	//CHOFER BUS LARGA DISTANCIA
	CreateObject(6053,1776.3000500,-1753.1999500,18.7000000,0.0000000,0.0000000,0.0000000); //object(stepshop_law) (1)
	CreateObject(983,1795.0999800,-1776.6999500,13.2000000,0.0000000,0.0000000,0.0000000); //object(fenceshit3) (1)
	CreateObject(983,1748.3000500,-1776.6999500,13.2000000,0.0000000,0.0000000,0.0000000); //object(fenceshit3) (2)
	CreateObject(983,1791.9000200,-1773.5000000,14.5000000,0.0000000,0.0000000,90.0000000); //object(fenceshit3) (3)
	CreateObject(983,1785.5000000,-1773.5000000,14.5000000,0.0000000,0.0000000,90.0000000); //object(fenceshit3) (4)
	CreateObject(983,1779.0999800,-1773.5000000,14.5000000,0.0000000,0.0000000,90.0000000); //object(fenceshit3) (5)
	CreateObject(983,1772.6999500,-1773.5000000,14.5000000,0.0000000,0.0000000,90.0000000); //object(fenceshit3) (6)
	CreateObject(983,1766.3000500,-1773.5000000,14.5000000,0.0000000,0.0000000,90.0000000); //object(fenceshit3) (7)
	CreateObject(983,1759.9000200,-1773.5000000,14.5000000,0.0000000,0.0000000,90.0000000); //object(fenceshit3) (8)
	CreateObject(983,1756.6999500,-1773.5000000,14.5000000,0.0000000,0.0000000,90.0000000); //object(fenceshit3) (9)
	CreateObject(996,1749.0000000,-1773.3000500,14.0000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier1) (1)
	CreateObject(996,1795.0000000,-1822.4000200,13.3000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier1) (2)
	CreateObject(996,1811.6999500,-1820.0999800,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (3)
	CreateObject(996,1786.4000200,-1820.1999500,13.3000000,0.0000000,0.0000000,346.0000000); //object(lhouse_barrier1) (4)
	CreateObject(996,1777.9000200,-1818.0000000,13.3000000,0.0000000,0.0000000,345.9980000); //object(lhouse_barrier1) (5)
	CreateObject(996,1804.1992200,-1822.3994100,13.3000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier1) (6)
	CreateObject(996,1811.6999500,-1782.3000500,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (7)
	CreateObject(2775,1800.5000000,-1763.8000500,17.9000000,0.0000000,0.0000000,0.0000000); //object(cj_airprt_mon) (1)
	CreateObject(2775,1753.3000500,-1763.8000500,17.9000000,0.0000000,0.0000000,0.0000000); //object(cj_airprt_mon) (2)
	CreateObject(2792,1761.5000000,-1763.8000500,16.8000000,0.0000000,0.0000000,0.0000000); //object(cj_air_d_1) (1)
	CreateObject(2793,1768.3000500,-1763.8000500,16.8000000,0.0000000,0.0000000,0.0000000); //object(cj_air_d_2) (1)
	CreateObject(2794,1775.0000000,-1763.8000500,16.8000000,0.0000000,0.0000000,0.0000000); //object(cj_air_d_3) (1)
	CreateObject(2795,1781.9000200,-1763.8000500,16.8000000,0.0000000,0.0000000,0.0000000); //object(cj_air_d_4) (1)
	CreateObject(2796,1793.8000500,-1763.8000500,16.8000000,0.0000000,0.0000000,0.0000000); //object(cj_air_d_6) (1)
	CreateObject(2797,1788.5000000,-1763.8000500,17.1000000,0.0000000,0.0000000,0.0000000); //object(cj_air_d_5) (1)
	CreateObject(3666,1734.4000200,-1811.4000200,13.1000000,0.0000000,0.0000000,0.0000000); //object(airuntest_las) (1)
	CreateObject(3666,1738.0999800,-1812.4000200,13.1000000,0.0000000,0.0000000,0.0000000); //object(airuntest_las) (2)
	CreateObject(3666,1757.8000500,-1817.6999500,13.1000000,0.0000000,0.0000000,0.0000000); //object(airuntest_las) (3)
	CreateObject(3666,1777.9000200,-1822.9000200,13.1000000,0.0000000,0.0000000,0.0000000); //object(airuntest_las) (4)
	CreateObject(3666,1816.5000000,-1817.5000000,13.1000000,0.0000000,0.0000000,0.0000000); //object(airuntest_las) (5)
	CreateObject(3666,1816.5999800,-1813.6999500,13.1000000,0.0000000,0.0000000,0.0000000); //object(airuntest_las) (6)
	CreateObject(3666,1816.5999800,-1797.8000500,13.1000000,0.0000000,0.0000000,0.0000000); //object(airuntest_las) (7)
	CreateObject(3666,1816.5999800,-1775.0999800,13.1000000,0.0000000,0.0000000,0.0000000); //object(airuntest_las) (8)
	CreateObject(3666,1816.5000000,-1783.8000500,13.1000000,0.0000000,0.0000000,0.0000000); //object(airuntest_las) (9)
	CreateObject(3463,1793.9000200,-1816.4000200,13.1000000,0.0000000,0.0000000,0.0000000); //object(vegaslampost2) (1)
	CreateObject(3463,1804.6999500,-1815.3000500,13.1000000,0.0000000,0.0000000,0.0000000); //object(vegaslampost2) (2)
	CreateObject(3463,1788.6999500,-1773.3000500,13.8000000,0.0000000,0.0000000,0.0000000); //object(vegaslampost2) (3)
	CreateObject(3463,1777.0999800,-1773.1999500,13.8000000,0.0000000,0.0000000,0.0000000); //object(vegaslampost2) (4)
	CreateObject(3463,1756.8000500,-1773.0999800,13.8000000,0.0000000,0.0000000,0.0000000); //object(vegaslampost2) (5)
	CreateObject(1570,1804.0999800,-1812.0999800,13.9000000,0.0000000,0.0000000,180.0000000); //object(cj_noodle_3) (1)
	CreateObject(1570,1799.1999500,-1812.3000500,13.9000000,0.0000000,0.0000000,179.9950000); //object(cj_noodle_3) (2)
	CreateObject(1570,1791.3000500,-1812.5000000,13.9000000,0.0000000,0.0000000,179.9950000); //object(cj_noodle_3) (3)
	CreateObject(1363,1809.0999800,-1766.5999800,14.2000000,0.0000000,0.0000000,0.0000000); //object(cj_phone_kiosk) (1)
	CreateObject(1363,1808.0000000,-1749.4000200,14.2000000,0.0000000,0.0000000,0.0000000); //object(cj_phone_kiosk) (2)
	CreateObject(1363,1786.1999500,-1745.6999500,14.2000000,0.0000000,0.0000000,0.0000000); //object(cj_phone_kiosk) (3)
	CreateObject(1363,1765.8000500,-1745.5999800,14.2000000,0.0000000,0.0000000,0.0000000); //object(cj_phone_kiosk) (4)
	CreateObject(1319,1739.1999500,-1764.5999800,13.1000000,0.0000000,0.0000000,0.0000000); //object(ws_ref_bollard) (1)
	CreateObject(1319,1738.5000000,-1765.0000000,13.1000000,0.0000000,0.0000000,0.0000000); //object(ws_ref_bollard) (2)
	CreateObject(1319,1737.9000200,-1765.9000200,13.1000000,0.0000000,0.0000000,0.0000000); //object(ws_ref_bollard) (3)
	CreateObject(1319,1737.0999800,-1804.3000500,13.1000000,0.0000000,0.0000000,0.0000000); //object(ws_ref_bollard) (4)
	CreateObject(1319,1737.1999500,-1802.0999800,13.1000000,0.0000000,0.0000000,0.0000000); //object(ws_ref_bollard) (5)
	CreateObject(1319,1737.0999800,-1799.8000500,13.1000000,0.0000000,0.0000000,0.0000000); //object(ws_ref_bollard) (6)
	CreateObject(1319,1737.0999800,-1797.5000000,13.1000000,0.0000000,0.0000000,0.0000000); //object(ws_ref_bollard) (7)
	CreateObject(1319,1736.8000500,-1795.3000500,13.0000000,0.0000000,0.0000000,0.0000000); //object(ws_ref_bollard) (8)
	CreateObject(1215,1811.6999500,-1783.1999500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (1)
	CreateObject(1215,1811.5999800,-1774.6999500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (2)
	CreateObject(1215,1807.3000500,-1771.5000000,13.9000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (3)
	CreateObject(1215,1810.0999800,-1770.5000000,13.9000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (4)
	CreateObject(1215,1794.8000500,-1773.1999500,14.4000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (5)
	CreateObject(1215,1794.9000200,-1767.9000200,13.9000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (6)
	CreateObject(1215,1807.0000000,-1746.9000200,14.0000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (7)
	CreateObject(1215,1811.0000000,-1746.9000200,14.0000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (8)
	CreateObject(1215,1781.6999500,-1746.5000000,13.9000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (9)
	CreateObject(1215,1770.6999500,-1746.5999800,13.9000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (10)
	CreateObject(1215,1739.5999800,-1742.5000000,14.0000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (11)
	CreateObject(1215,1739.5999800,-1750.4000200,13.9000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (12)
	CreateObject(1215,1748.1999500,-1750.5999800,13.9000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (13)
	CreateObject(1215,1756.0000000,-1750.5999800,13.9000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (14)
	CreateObject(1215,1763.9000200,-1750.6999500,13.9000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (15)
	CreateObject(1215,1771.6999500,-1750.6999500,13.9000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (16)
	CreateObject(1215,1779.5999800,-1750.6999500,13.9000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (17)
	CreateObject(1215,1787.4000200,-1750.6999500,13.9000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (18)
	CreateObject(1215,1795.1999500,-1750.5999800,13.9000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (19)
	CreateObject(1215,1802.8000500,-1750.5999800,14.0000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (20)
	CreateObject(1215,1748.3000500,-1780.0999800,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (21)
	CreateObject(1215,1755.5999800,-1780.9000200,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (22)
	CreateObject(1215,1763.0999800,-1780.1999500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (23)
	CreateObject(1215,1770.5000000,-1779.6999500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (24)
	CreateObject(1215,1777.0000000,-1779.5000000,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (25)
	CreateObject(1215,1783.1999500,-1779.4000200,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (26)
	CreateObject(1215,1789.8000500,-1779.3000500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (27)
	CreateObject(1215,1795.0999800,-1780.0999800,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (28)
	CreateObject(1215,1806.1999500,-1820.0000000,13.6000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (29)
	CreateObject(1215,1806.3000500,-1814.3000500,13.6000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (30)
	CreateObject(1215,1783.5999800,-1814.3000500,13.6000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (31)
	CreateObject(1215,1783.5999800,-1817.6999500,13.6000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (32)
	CreateObject(1215,1794.4000200,-1820.1999500,13.6000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (33)
	CreateObject(1215,1813.3000500,-1825.0999800,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (34)
	CreateObject(1215,1729.6999500,-1742.3000500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (35)
	//Bus urbano TRABAJO.
	CreateObject(970,1100.0000000,-1730.8000000,13.3000000,0.0000000,0.0000000,0.0000000); //object(fencesmallb) (1)
	CreateObject(970,1095.9000000,-1730.8000000,13.3000000,0.0000000,0.0000000,0.0000000); //object(fencesmallb) (2)
	CreateObject(970,1091.8000000,-1730.8000000,13.3000000,0.0000000,0.0000000,0.0000000); //object(fencesmallb) (3)
	CreateObject(970,1087.7000000,-1730.8000000,13.3000000,0.0000000,0.0000000,0.0000000); //object(fencesmallb) (4)
	CreateObject(970,1083.6000000,-1730.8000000,13.3000000,0.0000000,0.0000000,0.0000000); //object(fencesmallb) (5)
	CreateObject(970,1079.5000000,-1730.8000000,13.3000000,0.0000000,0.0000000,0.0000000); //object(fencesmallb) (6)
	CreateObject(970,1075.4000000,-1730.8000000,13.3000000,0.0000000,0.0000000,0.0000000); //object(fencesmallb) (7)
	CreateObject(970,1071.3000000,-1730.8000000,13.3000000,0.0000000,0.0000000,0.0000000); //object(fencesmallb) (8)
	CreateObject(970,1067.2000000,-1730.8000000,13.3000000,0.0000000,0.0000000,0.0000000); //object(fencesmallb) (9)
	CreateObject(970,1063.1000000,-1730.8000000,13.3000000,0.0000000,0.0000000,0.0000000); //object(fencesmallb) (10)
	CreateObject(970,1059.0000000,-1730.8000000,13.3000000,0.0000000,0.0000000,0.0000000); //object(fencesmallb) (10)
	CreateObject(970,1054.3000000,-1775.0000000,13.2000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1054.3000000,-1770.9000000,13.2000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1054.3000000,-1766.8000000,13.2000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1054.3000000,-1762.7000000,13.2000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1054.3000000,-1758.5000000,13.2000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1054.3000000,-1754.3000000,13.2000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1054.3000000,-1746.1000000,13.2000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1054.3000000,-1750.2000000,13.2000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1054.3000000,-1742.0000000,13.2000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1054.3000000,-1737.9000000,13.2000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1055.8000000,-1732.3000000,13.4000000,0.0000000,0.0000000,45.9970000); //object(fencesmallb) (10)
	CreateObject(970,1054.3000000,-1735.8000000,13.2000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1052.3000000,-1777.6000000,13.2000000,0.0000000,0.0000000,14.0000000); //object(fencesmallb) (10)
	CreateObject(970,1047.0000000,-1780.8000000,13.1000000,0.0000000,0.0000000,77.9960000); //object(fencesmallb) (10)
	CreateObject(970,1049.5000000,-1778.3000000,13.2000000,0.0000000,0.0000000,15.9960000); //object(fencesmallb) (10)
	CreateObject(970,1044.7000000,-1790.2000000,13.3000000,0.0000000,0.0000000,77.9920000); //object(fencesmallb) (10)
	CreateObject(970,1106.8000000,-1752.9000000,13.1000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1106.8000000,-1757.0000000,13.1000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1106.8000000,-1761.1000000,13.1000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1106.8000000,-1765.2000000,13.1000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1106.8000000,-1769.3000000,13.1000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1106.8000000,-1773.4000000,13.1000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1106.8000000,-1777.5000000,13.1000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(970,1106.8000000,-1780.5000000,13.2000000,0.0000000,0.0000000,90.0000000); //object(fencesmallb) (10)
	CreateObject(3881,1105.8000000,-1733.2000000,14.6000000,0.0000000,0.0000000,90.0000000); //object(airsecbooth_sfse) (1)
	CreateObject(3463,1082.4000000,-1750.5000000,12.9000000,0.0000000,0.0000000,0.0000000); //object(vegaslampost2) (1)
	CreateObject(3463,1080.8000000,-1768.2000000,12.4000000,0.0000000,0.0000000,0.0000000); //object(vegaslampost2) (2)
	CreateObject(3463,1090.3000000,-1795.2000000,12.6000000,0.0000000,0.0000000,0.0000000); //object(vegaslampost2) (3)
	CreateObject(1351,1164.4000000,-1746.1000000,12.6000000,0.0000000,0.0000000,270.0000000); //object(cj_traffic_light5) (1)
	CreateObject(1319,1106.7000000,-1746.1000000,13.1000000,0.0000000,0.0000000,0.0000000); //object(ws_ref_bollard) (1)
	CreateObject(1215,1109.0000000,-1735.6000000,13.3000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (1)
	CreateObject(1215,1101.6000000,-1735.6000000,13.3000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (2)
	CreateObject(1215,1084.3000000,-1804.0000000,13.2000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (3)
	CreateObject(1215,1112.2000000,-1794.2000000,16.2000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (4)
	CreateObject(1215,1112.1000000,-1791.5000000,16.2000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (5)
	CreateObject(1215,1112.1000000,-1797.0000000,16.2000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (6)
	CreateObject(1215,1112.1000000,-1799.8000000,16.2000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (7)
	CreateObject(1215,1112.1000000,-1802.3000000,16.2000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (8)
	CreateObject(1215,1100.3000000,-1782.3000000,13.2000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (9)
	CreateObject(1215,1100.2000000,-1785.2000000,13.2000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (10)
	CreateObject(3077,1109.8000000,-1807.9000000,15.6000000,0.0000000,0.0000000,0.0000000); //object(nf_blackboard) (1)
	//Policia federal INTERIOR.
	CreateDynamicObject(2930,258.9000000,89.9000000,1004.1000000,0.0000000,0.0000000,90.0000000); //object(chinatgate) (1)
	CreateDynamicObject(2930,250.5000000,65.4003900,1005.1000000,0.0000000,0.0000000,0.0000000); //object(chinatgate) (3)
	CreateDynamicObject(2930,250.6000000,67.7000000,1005.9000000,90.0000000,0.0000000,0.0000000); //object(chinatgate) (4)
	CreateDynamicObject(2930,250.6000000,65.4000000,1005.9000000,90.0000000,0.0000000,0.0000000); //object(chinatgate) (5)
	//__RENTA - Mapa.
	CreateDynamicObject(996,1553.9000200,-2296.3999000,13.3000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier1) (1)
	CreateDynamicObject(996,1558.5000000,-2345.3999000,13.3000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier1) (2)
	CreateDynamicObject(996,1566.0999800,-2336.6999500,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (3)
	CreateDynamicObject(996,1566.0999800,-2328.5000000,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (4)
	CreateDynamicObject(996,1566.0999800,-2320.3000500,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (5)
	CreateDynamicObject(996,1566.0999800,-2312.1001000,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (6)
	CreateDynamicObject(996,1566.0999800,-2303.8999000,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (7)
	CreateDynamicObject(997,1562.0999800,-2296.3999000,12.6000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier3) (1)
	CreateDynamicObject(1251,1557.6999500,-2310.6001000,12.5000000,0.0000000,0.0000000,0.0000000); //object(smashbar) (1)
	CreateDynamicObject(1251,1557.6999500,-2317.3999000,12.5000000,0.0000000,0.0000000,0.0000000); //object(smashbar) (2)
	CreateDynamicObject(1251,1557.6999500,-2324.1999500,12.5000000,0.0000000,0.0000000,0.0000000); //object(smashbar) (3)
	CreateDynamicObject(1251,1557.6999500,-2331.0000000,12.5000000,0.0000000,0.0000000,0.0000000); //object(smashbar) (4)
	CreateDynamicObject(1251,1557.6999500,-2337.8000500,12.5000000,0.0000000,0.0000000,0.0000000); //object(smashbar) (5)
	CreateDynamicObject(9361,1559.9000200,-2301.1001000,15.1000000,0.0000000,0.0000000,224.0000000); //object(boatoffice_sfn) (1)
	CreateDynamicObject(996,1566.0996100,-2344.8994100,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (9)
	CreateDynamicObject(996,1550.3000500,-2345.3999000,13.3000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier1) (10)
	CreateDynamicObject(996,1542.0999800,-2345.3999000,13.3000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier1) (11)
	CreateDynamicObject(996,1538.3000500,-2339.5000000,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (12)
	CreateDynamicObject(996,1538.3000500,-2331.3000500,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (13)
	CreateDynamicObject(996,1538.3000500,-2323.1001000,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (14)
	CreateDynamicObject(996,1538.3000500,-2314.8999000,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (15)
	CreateDynamicObject(996,1538.3000500,-2306.6999500,13.3000000,0.0000000,0.0000000,90.0000000); //object(lhouse_barrier1) (16)
	CreateDynamicObject(996,1541.3000500,-2344.8000500,13.3000000,0.0000000,0.0000000,114.0000000); //object(lhouse_barrier1) (17)
	CreateDynamicObject(997,1562.0996100,-2296.3994100,12.6000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier3) (2)
	CreateDynamicObject(997,1540.0000000,-2296.5000000,12.5000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier3) (3)
	CreateDynamicObject(997,1538.1999500,-2299.0000000,12.5000000,0.0000000,0.0000000,54.0000000); //object(lhouse_barrier3) (4)
	CreateDynamicObject(1215,1538.1999500,-2296.5000000,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (1)
	CreateDynamicObject(1215,1566.1999500,-2296.3000500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (2)
	CreateDynamicObject(1215,1566.3000500,-2316.8999000,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (3)
	CreateDynamicObject(1215,1566.3000500,-2337.3999000,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (4)
	CreateDynamicObject(1215,1565.9000200,-2345.6001000,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (5)
	CreateDynamicObject(1215,1549.6999500,-2345.6001000,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (6)
	CreateDynamicObject(1215,1541.3000500,-2345.5000000,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (7)
	CreateDynamicObject(1215,1538.1999500,-2340.3000500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (8)
	CreateDynamicObject(1215,1538.0999800,-2323.8000500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (9)
	CreateDynamicObject(1215,1538.0999800,-2311.5000000,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (10)
	CreateDynamicObject(1215,1538.1999500,-2299.1999500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (11)
	CreateDynamicObject(1215,1543.0999800,-2296.1999500,13.1000000,0.0000000,0.0000000,0.0000000); //object(bollardlight) (12)
	CreateDynamicObject(1214,1548.4013700,-2296.6203600,12.5441000,0.0000000,0.0000000,0.0000000); //object(bollard) (1)
	//Trabajo: Camionero.
	CreateDynamicObject(2934,-984.4000200,-625.0000000,35.4000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (2)
	CreateDynamicObject(2934,-984.4000200,-624.7000100,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (3)
	CreateDynamicObject(2934,-984.4000200,-631.7999900,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (4)
	CreateDynamicObject(2934,-984.4000200,-638.9000200,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (5)
	CreateDynamicObject(2934,-984.4000200,-646.0000000,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (6)
	CreateDynamicObject(2934,-984.4000200,-653.0999800,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (7)
	CreateDynamicObject(2934,-984.4000200,-660.2000100,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (8)
	CreateDynamicObject(2934,-984.4000200,-667.2000100,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (9)
	CreateDynamicObject(2934,-984.4000200,-674.0999800,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (10)
	CreateDynamicObject(2934,-984.4000200,-681.0000000,32.5000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (11)
	CreateDynamicObject(2934,-984.4008200,-688.0347300,32.4225500,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (12)
	CreateDynamicObject(2934,-984.5000000,-637.9000200,35.4000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (13)
	CreateDynamicObject(2934,-984.4000200,-687.2999900,35.3000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (15)
	CreateDynamicObject(2934,-984.4000200,-667.7000100,35.4000000,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (16)
	CreateDynamicObject(12934,-1013.5999800,-580.4000200,34.4000000,0.0000000,0.0000000,0.0000000); //object(sw_trailer03) (1)
	CreateDynamicObject(5132,-1049.3000500,-598.5999800,34.1000000,0.0000000,0.0000000,0.0000000); //object(las2dkwar107) (1)
	CreateDynamicObject(7040,-985.7999900,-616.2999900,34.4000000,0.0000000,0.0000000,0.0000000); //object(vgnplcehldbox01) (1)
	CreateDynamicObject(1378,-1048.5999800,-642.0000000,55.4000000,0.0000000,0.0000000,0.0000000); //object(containercrane_04) (1)
	CreateDynamicObject(1381,-1048.8000500,-649.0000000,60.0000000,0.0000000,0.0000000,0.0000000); //object(magnocrane_04) (1)
	CreateDynamicObject(2934,-984.4013700,-652.5048800,35.3733700,0.0000000,0.0000000,0.0000000); //object(kmb_container_red) (17)
	CreateDynamicObject(16337,-1029.6999500,-590.5000000,31.0000000,0.0000000,0.0000000,0.0000000); //object(des_cranecontrol) (1)
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
format(String,sizeof(String),String2,Nombre,PI[playerid][EdadIC]+2016-18);
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
	print("\t\t\t\tZona sur Roleplay [ALPHA]");
	print("\t\t\t\t\t\t ");
}




																																																/*
________________________________________________________________________________________________________________
																																																*/

forward PagaD();
public PagaD() {
print("D�a de paga efectuado");
GuardarFondos(FondoM+3000);
GuardarFMecanicos(FondosMecanicos+5000);
GuardarFLSTV(FLSTV+6000);
if(HoraPer == 24) {
HoraPer =0;
getdate(FechaPer[2],FechaPer[1],FechaPer[0]);
for(new i=0;i<8;i++) {
BuzonDePeriodicos[i]=0;
}
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto0",BuzonDePeriodicos[0]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto1",BuzonDePeriodicos[1]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto2",BuzonDePeriodicos[2]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto3",BuzonDePeriodicos[3]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto4",BuzonDePeriodicos[4]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto5",BuzonDePeriodicos[5]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto6",BuzonDePeriodicos[6]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto7",BuzonDePeriodicos[7]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","FechaPer0",FechaPer[0]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","FechaPer1",FechaPer[1]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","FechaPer2",FechaPer[2]);
}else { HoraPer++;}
if(TiempoCajas != -1 && TiempoCajas != 12) {
TiempoCajas++;
print("Se sumo una hora de caja");
}
else if(TiempoCajas == 12) {
TiempoCajas=-1;
for(new i=0;i<10;i++) {
Cajas[i]=1;
print("Se limpi� la caja");
}
}
new DemandaT = random(2);

switch(DemandaT) {
case 0: {
Demanda = 1;
print("No hay oferta.");
}
case 1: {
Demanda = 2;
print("Hay oferta.");
}
}


for(new i = 0; i < MAX_PLAYERS; i++)
{

if(IsPlayerConnected(i))
{ 
new String6[150];
PI[i][SubNivel]++;
Mensaje(i,COLOR_BLANCO, "{FFFFFF}�{00B7FF}IMPUESTOS{FFFFFF}�");
Mensaje(i,COLOR_BLANCO,	"");
Mensaje(i,COLOR_BLANCO, "{CE0000}-{FFFFFF} Asignaci�n:{00D20A} 300$");
Mensaje(i,COLOR_BLANCO, "{CE0000}-{FFFFFF} Propiedad:");
Mensaje(i,COLOR_BLANCO, "{CE0000}--{FFFFFF} Agua:{00D20A} 30$");
Mensaje(i,COLOR_BLANCO, "{CE0000}--{FFFFFF} Alumbrado p�blico:{00D20A} 10$");
Mensaje(i,COLOR_BLANCO, "{CE0000}--{FFFFFF} Energ�a el�ctrica:{00D20A} 30$");
format(String6,sizeof(String6),"{CE0000}-{FFFFFF} Impuesto:{00D20A} %d$",Impuestos);
Mensaje(i,COLOR_BLANCO, String6);
GivePlayerMoney(i, 300);
GivePlayerMoney(i,-Impuestos); GivePlayerMoney(i,-70);

if(PI[i][Prestamo] == 1) {
PI[i][PrestamoP] += 500;
GivePlayerMoney(i,-500);
new String2[200];
format(String2,sizeof(String2),"El banco te descont� {34CE00}500${FFFFFF} por el prestamo , todav�a resta:{34CE00} $%d",PI[i][PrestamoP]-5000);
Mensaje(i,COLOR_BLANCO,String2);
if(PI[i][PrestamoP] == 5000) {
PI[i][PrestamoP] = 0;
PI[i][Prestamo] = 0;
Mensaje(i,COLOR_BLANCO,"{CE0000}-{FFFFFF} Terminaste de pagar el {CE0000}prestamo.");
}
}
if(PI[i][Prestamo] == 2) {
PI[i][PrestamoP] += 1000;
GivePlayerMoney(i,-1000);
new String2[200];
format(String2,sizeof(String2),"El banco te descont�  {34CE00}1000${FFFFFF} por el prestamo , todav�a resta:{34CE00}%d",PI[i][PrestamoP]-15000);
Mensaje(i,COLOR_BLANCO,String2);
if(PI[i][PrestamoP] == 15000) {
PI[i][PrestamoP] = 0;
PI[i][Prestamo] = 0;
Mensaje(i,COLOR_BLANCO,"{CE0000}-{FFFFFF} Terminaste de pagar el {CE0000}prestamo.");
}
}
if(PI[i][Prestamo] == 3) {
PI[i][PrestamoP] += 2000;
GivePlayerMoney(i,-2000);
new String2[200];
format(String2,sizeof(String2),"El banco te descont� {34CE00}2000${FFFFFF} por el prestamo , todav�a resta:{34CE00}%d",PI[i][PrestamoP]-20000);
Mensaje(i,COLOR_BLANCO,String2);
if(PI[i][PrestamoP] == 20000) {
PI[i][PrestamoP] = 0;
PI[i][Prestamo] = 0;
Mensaje(i,COLOR_BLANCO,"{CE0000}-{FFFFFF} Terminaste de pagar el {CE0000}prestamo.");
}
}
if(PI[i][SubNivel] == 12) {
PI[i][Nivel]++;
SetPlayerScore(i,GetPlayerScore(i)+1);
Mensaje(i,COLOR_BLANCO, "{FFFFFF}Subiste un {00B7FF}nivel.");
PI[i][SubNivel] = 0; }
}
}
return 1;
}
forward TextDrawsdelServidor();
public TextDrawsdelServidor() {
	//TEXT INFO PJ
	BoxIPJ1 = TextDrawCreate(631.000000, 317.000000, "_");
	TextDrawBackgroundColor(BoxIPJ1, 255);
	TextDrawFont(BoxIPJ1, 1);
	TextDrawLetterSize(BoxIPJ1, 0.500000, 9.500001);
	TextDrawColor(BoxIPJ1, -1);
	TextDrawSetOutline(BoxIPJ1, 0);
	TextDrawSetProportional(BoxIPJ1, 1);
	TextDrawSetShadow(BoxIPJ1, 1);
	TextDrawUseBox(BoxIPJ1, 1);
	TextDrawBoxColor(BoxIPJ1, 38560);
	TextDrawTextSize(BoxIPJ1, 477.000000, 470.000000);
	TextDrawSetSelectable(BoxIPJ1, 0);
	TextPJ1 = TextDrawCreate(487.000000, 331.000000, "Energia");
	TextDrawBackgroundColor(TextPJ1, 255);
	TextDrawFont(TextPJ1, 2);
	TextDrawLetterSize(TextPJ1, 0.300000, 1.000000);
	TextDrawColor(TextPJ1, -1);
	TextDrawSetOutline(TextPJ1, 0);
	TextDrawSetProportional(TextPJ1, 1);
	TextDrawSetShadow(TextPJ1, 1);
	TextDrawSetSelectable(TextPJ1, 0);
	TextPJ2 = TextDrawCreate(487.000000, 349.000000, "Apetito");
	TextDrawBackgroundColor(TextPJ2, 255);
	TextDrawFont(TextPJ2, 2);
	TextDrawLetterSize(TextPJ2, 0.300000, 1.000000);
	TextDrawColor(TextPJ2, -1);
	TextDrawSetOutline(TextPJ2, 0);
	TextDrawSetProportional(TextPJ2, 1);
	TextDrawSetShadow(TextPJ2, 1);
	TextDrawSetSelectable(TextPJ2, 0);
	TextPJ3 = TextDrawCreate(487.000000, 367.000000, "Sed");
	TextDrawBackgroundColor(TextPJ3, 255);
	TextDrawFont(TextPJ3, 2);
	TextDrawLetterSize(TextPJ3, 0.300000, 1.000000);
	TextDrawColor(TextPJ3, -1);
	TextDrawSetOutline(TextPJ3, 0);
	TextDrawSetProportional(TextPJ3, 1);
	TextDrawSetShadow(TextPJ3, 1);
	TextDrawSetSelectable(TextPJ3, 0);
	TextPJ4 = TextDrawCreate(487.000000, 393.000000, "Para mas informacion /Masinfo PAG ~r~2");
	TextDrawBackgroundColor(TextPJ4, 255);
	TextDrawFont(TextPJ4, 2);
	TextDrawLetterSize(TextPJ4, 0.160000, 1.000000);
	TextDrawColor(TextPJ4, -1);
	TextDrawSetOutline(TextPJ4, 0);
	TextDrawSetProportional(TextPJ4, 1);
	TextDrawSetShadow(TextPJ4, 1);
	TextDrawSetSelectable(TextPJ4, 0);
	BoxIPJ2 = TextDrawCreate(631.000000, 321.000000, "_");
	TextDrawBackgroundColor(BoxIPJ2, 255);
	TextDrawFont(BoxIPJ2, 1);
	TextDrawLetterSize(BoxIPJ2, 0.500000, 0.800001);
	TextDrawColor(BoxIPJ2, -1);
	TextDrawSetOutline(BoxIPJ2, 0);
	TextDrawSetProportional(BoxIPJ2, 1);
	TextDrawSetShadow(BoxIPJ2, 1);
	TextDrawUseBox(BoxIPJ2, 1);
	TextDrawBoxColor(BoxIPJ2, 255);
	TextDrawTextSize(BoxIPJ2, 477.000000, 470.000000);
	TextDrawSetSelectable(BoxIPJ2, 0);
	TextPJ5 = TextDrawCreate(503.000000, 320.000000, "Informacion PJ");
	TextDrawBackgroundColor(TextPJ5, 255);
	TextDrawFont(TextPJ5, 2);
	TextDrawLetterSize(TextPJ5, 0.300000, 1.000000);
	TextDrawColor(TextPJ5, -1);
	TextDrawSetOutline(TextPJ5, 0);
	TextDrawSetProportional(TextPJ5, 1);
	TextDrawSetShadow(TextPJ5, 1);
	TextDrawSetSelectable(TextPJ5, 0);
	TextPJ6 = TextDrawCreate(572.000000, 317.000000, ",");
	TextDrawBackgroundColor(TextPJ6, 255);
	TextDrawFont(TextPJ6, 1);
	TextDrawLetterSize(TextPJ6, 0.269999, 0.500000);
	TextDrawColor(TextPJ6, -1);
	TextDrawSetOutline(TextPJ6, 0);
	TextDrawSetProportional(TextPJ6, 1);
	TextDrawSetShadow(TextPJ6, 1);
	TextDrawSetSelectable(TextPJ6, 0);
	TextPJ7 = TextDrawCreate(527.000000, 328.000000, ",");
	TextDrawBackgroundColor(TextPJ7, 255);
	TextDrawFont(TextPJ7, 1);
	TextDrawLetterSize(TextPJ7, 0.269999, 0.500000);
	TextDrawColor(TextPJ7, -1);
	TextDrawSetOutline(TextPJ7, 0);
	TextDrawSetProportional(TextPJ7, 1);
	TextDrawSetShadow(TextPJ7, 1);
	TextDrawSetSelectable(TextPJ7, 0);
	TextPJ8 = TextDrawCreate(512.000000, 391.000000, ",");
	TextDrawBackgroundColor(TextPJ8, 255);
	TextDrawFont(TextPJ8, 1);
	TextDrawLetterSize(TextPJ8, 0.269999, 0.500000);
	TextDrawColor(TextPJ8, -1);
	TextDrawSetOutline(TextPJ8, 0);
	TextDrawSetProportional(TextPJ8, 1);
	TextDrawSetShadow(TextPJ8, 1);
	TextDrawSetSelectable(TextPJ8, 0);
	TextPJ9 = TextDrawCreate(557.000000, 390.000000, ",");
	TextDrawBackgroundColor(TextPJ9, 255);
	TextDrawFont(TextPJ9, 1);
	TextDrawLetterSize(TextPJ9, 0.269999, 0.500000);
	TextDrawColor(TextPJ9, -1);
	TextDrawSetOutline(TextPJ9, 0);
	TextDrawSetProportional(TextPJ9, 1);
	TextDrawSetShadow(TextPJ9, 1);
	TextDrawSetSelectable(TextPJ9, 0);
//CELULAR
	BoxC1 = TextDrawCreate(640.000000, 270.000000, "_");
	TextDrawBackgroundColor(BoxC1, 255);
	TextDrawFont(BoxC1, 1);
	TextDrawLetterSize(BoxC1, 0.500000, 19.000000);
	TextDrawColor(BoxC1, -1);
	TextDrawSetOutline(BoxC1, 0);
	TextDrawSetProportional(BoxC1, 1);
	TextDrawSetShadow(BoxC1, 1);
	TextDrawUseBox(BoxC1, 1);
	TextDrawBoxColor(BoxC1, 255);
	TextDrawTextSize(BoxC1, 510.000000, 10.000000);
	TextDrawSetSelectable(BoxC1, 0);
	BoxC2 = TextDrawCreate(630.000000, 280.000000, "_");
	TextDrawBackgroundColor(BoxC2, 255);
	TextDrawFont(BoxC2, 1);
	TextDrawLetterSize(BoxC2, 0.100000, 17.000000);
	TextDrawColor(BoxC2, -1);
	TextDrawSetOutline(BoxC2, 0);
	TextDrawSetProportional(BoxC2, 1);
	TextDrawSetShadow(BoxC2, 1);
	TextDrawUseBox(BoxC2, 1);
	TextDrawBoxColor(BoxC2, -1);
	TextDrawTextSize(BoxC2, 520.000000, 10.000000);
	TextDrawSetSelectable(BoxC2, 0);
	BoxC3 = TextDrawCreate(630.000000, 329.000000, "_");
	TextDrawBackgroundColor(BoxC3, 255);
	TextDrawFont(BoxC3, 1);
	TextDrawLetterSize(BoxC3, 0.100000, 2.000000);
	TextDrawColor(BoxC3, -1);
	TextDrawSetOutline(BoxC3, 0);
	TextDrawSetProportional(BoxC3, 1);
	TextDrawSetShadow(BoxC3, 1);
	TextDrawUseBox(BoxC3, 1);
	TextDrawBoxColor(BoxC3, 65535);
	TextDrawTextSize(BoxC3, 520.000000, 10.000000);
	TextDrawSetSelectable(BoxC3, 0);
	BoxC4 = TextDrawCreate(630.000000, 359.000000, "_");
	TextDrawBackgroundColor(BoxC4, 255);
	TextDrawFont(BoxC4, 1);
	TextDrawLetterSize(BoxC4, 0.100000, 2.000000);
	TextDrawColor(BoxC4, -1);
	TextDrawSetOutline(BoxC4, 0);
	TextDrawSetProportional(BoxC4, 1);
	TextDrawSetShadow(BoxC4, 1);
	TextDrawUseBox(BoxC4, 1);
	TextDrawBoxColor(BoxC4, 65535);
	TextDrawTextSize(BoxC4, 520.000000, 10.000000);
	TextDrawSetSelectable(BoxC4, 0);
	BoxC5 = TextDrawCreate(630.000000, 389.000000, "_");
	TextDrawBackgroundColor(BoxC5, 255);
	TextDrawFont(BoxC5, 1);
	TextDrawLetterSize(BoxC5, 0.100000, 2.000000);
	TextDrawColor(BoxC5, -1);
	TextDrawSetOutline(BoxC5, 0);
	TextDrawSetProportional(BoxC5, 1);
	TextDrawSetShadow(BoxC5, 1);
	TextDrawUseBox(BoxC5, 1);
	TextDrawBoxColor(BoxC5, 65535);
	TextDrawTextSize(BoxC5, 520.000000, 10.000000);
	TextDrawSetSelectable(BoxC5, 0);
	TextC1 = TextDrawCreate(530.000000, 285.000000, "TELCEL G2");
	TextDrawBackgroundColor(TextC1, 255);
	TextDrawFont(TextC1, 2);
	TextDrawLetterSize(TextC1, 0.400000, 1.000000);
	TextDrawColor(TextC1, -1);
	TextDrawSetOutline(TextC1, 0);
	TextDrawSetProportional(TextC1, 1);
	TextDrawSetShadow(TextC1, 1);
	TextDrawSetSelectable(TextC1, 0);
	VendaB = TextDrawCreate(660.000000, -20.000000, "_");
	TextDrawBackgroundColor(VendaB, 255);
	TextDrawFont(VendaB, 1);
	TextDrawLetterSize(VendaB, 0.500000, 53.000000);
	TextDrawColor(VendaB, -1);
	TextDrawSetOutline(VendaB, 0);
	TextDrawSetProportional(VendaB, 1);
	TextDrawSetShadow(VendaB, 1);
	TextDrawUseBox(VendaB, 1);
	TextDrawBoxColor(VendaB, 255);
	TextDrawTextSize(VendaB, -50.000000, 0.000000);
	TextDrawSetSelectable(VendaB, 0);
	TextC2 = TextDrawCreate(543.000000, 327.000000, "Llamar");
	TextDrawBackgroundColor(TextC2, 255);
	TextDrawFont(TextC2, 3);
	TextDrawLetterSize(TextC2, 0.500000, 2.000000);
	TextDrawColor(TextC2, -1);
	TextDrawSetOutline(TextC2, 0);
	TextDrawSetProportional(TextC2, 1);
	TextDrawSetShadow(TextC2, 1);
	TextDrawSetSelectable(TextC2, true);
	TextC3 = TextDrawCreate(543.000000, 357.000000, "Cortar");
	TextDrawBackgroundColor(TextC3, 255);
	TextDrawFont(TextC3, 3);
	TextDrawLetterSize(TextC3, 0.500000, 2.000000);
	TextDrawColor(TextC3, -1);
	TextDrawSetOutline(TextC3, 0);
	TextDrawSetProportional(TextC3, 1);
	TextDrawSetShadow(TextC3, 1);
	TextDrawSetSelectable(TextC3, true);
	TextC4 = TextDrawCreate(543.000000, 387.000000, "Apagar");
	TextDrawBackgroundColor(TextC4, 255);
	TextDrawFont(TextC4, 3);
	TextDrawLetterSize(TextC4, 0.500000, 2.000000);
	TextDrawColor(TextC4, -1);
	TextDrawSetOutline(TextC4, 0);
	TextDrawSetProportional(TextC4, 1);
	TextDrawSetShadow(TextC4, 1);
	TextDrawSetSelectable(TextC4, true);
	BoxB1 = TextDrawCreate(662.000000, 401.000000, "_");
	TextDrawBackgroundColor(BoxB1, 255);
	TextDrawFont(BoxB1, 1);
	TextDrawLetterSize(BoxB1, 0.500000, 2.000000);
	TextDrawColor(BoxB1, -1);
	TextDrawSetOutline(BoxB1, 0);
	TextDrawSetProportional(BoxB1, 1);
	TextDrawSetShadow(BoxB1, 1);
	TextDrawUseBox(BoxB1, 1);
	TextDrawBoxColor(BoxB1, 255);
	TextDrawTextSize(BoxB1, 538.000000, 10.000000);
	TextDrawSetSelectable(BoxB1, 0);
	BoxB2 = TextDrawCreate(546.000000, 401.000000, "_");
	TextDrawBackgroundColor(BoxB2, 255);
	TextDrawFont(BoxB2, 1);
	TextDrawLetterSize(BoxB2, 0.500000, 2.000000);
	TextDrawColor(BoxB2, -1);
	TextDrawSetOutline(BoxB2, 0);
	TextDrawSetProportional(BoxB2, 1);
	TextDrawSetShadow(BoxB2, 1);
	TextDrawUseBox(BoxB2, 1);
	TextDrawBoxColor(BoxB2, 58589183);
	TextDrawTextSize(BoxB2, 538.000000, 10.000000);
	TextDrawSetSelectable(BoxB2, 0);
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
    txtAnimHelper =
	TextDrawCreate(610.0, 400.0,"~w~ Pulsa el boton ~p~F ~w~para detener la animacion.~<~");
    TextDrawUseBox(txtAnimHelper, 0);
	TextDrawFont(txtAnimHelper, 0);
	TextDrawSetShadow(txtAnimHelper,0);
    TextDrawSetOutline(txtAnimHelper,1);
	TextDrawColor(txtAnimHelper,0xFFFFFFFF);
    TextDrawAlignment(txtAnimHelper,3);
    textdrawscount++;
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
	/* Textdraw's*/
	Box1 = TextDrawCreate(373.000000, 100.000000, "_"); TextDrawBackgroundColor(Box1, 255); TextDrawFont(Box1, 1); TextDrawLetterSize(Box1, 0.500000, -0.299999); TextDrawTextSize(Box1, 220.000000, 0.000000);
	TextDrawColor(Box1, -1); TextDrawSetOutline(Box1, 0); TextDrawSetProportional(Box1, 1); TextDrawSetShadow(Box1, 1); TextDrawUseBox(Box1, 1); TextDrawBoxColor(Box1, 255);
	Box2 = TextDrawCreate(373.000000, 131.000000, "_"); TextDrawBackgroundColor(Box2, 255); TextDrawFont(Box2, 1); TextDrawLetterSize(Box2, 0.500000, -0.299999); TextDrawTextSize(Box2, 220.000000, 0.000000);
	TextDrawColor(Box2, -1); TextDrawSetOutline(Box2, 0); TextDrawSetProportional(Box2, 1); TextDrawSetShadow(Box2, 1); TextDrawUseBox(Box2, 1); TextDrawBoxColor(Box2, 255);
	BoxAbajo = TextDrawCreate(650.000000, 432.000000, "_"); TextDrawBackgroundColor(BoxAbajo, 70); TextDrawFont(BoxAbajo, 1); TextDrawLetterSize(BoxAbajo, 0.500000, 2.000000); TextDrawTextSize(BoxAbajo, -10.000000, 0.000000);
	TextDrawColor(BoxAbajo, -1); TextDrawSetOutline(BoxAbajo, 0); TextDrawSetProportional(BoxAbajo, 1); TextDrawSetShadow(BoxAbajo, 1); TextDrawUseBox(BoxAbajo, 1); TextDrawBoxColor(BoxAbajo, 75);


	return 1;
}
forward CargarmSelectionMenus();
public CargarmSelectionMenus() {
	Tranfeder = LoadModelSelectionMenu("Tranfedercoches.txt");
	Broadway = LoadModelSelectionMenu("CBroadway.txt");
	Elegy = LoadModelSelectionMenu("CElegy.txt");
	Flash = LoadModelSelectionMenu("CFlash.txt");
	Jester = LoadModelSelectionMenu("CJester.txt");
	PocoTun = LoadModelSelectionMenu("CPocotuneo.txt");
	Remington = LoadModelSelectionMenu("CRemington.txt");
	Savanna = LoadModelSelectionMenu("CSavanna.txt");
	Slamvan = LoadModelSelectionMenu("CSlamvan.txt");
	Stratum = LoadModelSelectionMenu("CStratum.txt");
	Sultan = LoadModelSelectionMenu("CSultan.txt");
	Tornado = LoadModelSelectionMenu("CTornado.txt");
	Uranus = LoadModelSelectionMenu("CUranus.txt");
    skinlist = LoadModelSelectionMenu("skinscompra.txt");

	return 1;
}
forward CargarPickUps();
public CargarPickUps() {
	//                      PICKUP'S.
	CreatePickup(1318, 2, 1554.8000500,-1675.6999500,15.8000000,0);//Policia federal ext
	CreatePickup(1318, 2, 246.8000000,63.0000000,1003.2999900,0);//Policia federal INt
	CreatePickup(1239, 2, 257.2999900,77.0000000,1003.2999900,0);//Policia federal Armamento
	CreatePickup(1318, 2, 242.7000000,66.3000000,1003.2999900,0);//Policia federal INt A ext
	CreatePickup(1318, 2, 1525.1999500,-1678.0000000,5.5000000,0);//Policia federal Ext A int
	CreatePickup(1239, 2, -31.1000000,-25.2000000,1003.2000100,0);//24-7 Unity Gaseosa
	CreatePickup(1239, 2, -34.7000000,-10.4000000,1003.2000100,0);//24-7 Unity Comida
	CreatePickup(1239, 2, -31.0000000,-28.8000000,1003.2000100,0);//24-7 Unity Comida
	CreatePickup(1318, 2, 1157.84,-1293.57,13.49,0);//Hospital EXT AL INT
	CreatePickup(1318, 2, 1352.30,-1758.46,13.50,0);//24-7 Ayunta EXT AL INT
	CreatePickup(1239, 2, 362.2000100,173.6000100,1008.0000000,0);//Ayuntamiento DNI
	CreatePickup(1318, 2, 2244.3999000,-1665.0000000,16.1000000,0);//Binco Groove EXT A INT
	CreatePickup(1239, 2, 1941.42,-1776.70,13.64,0);//Gasoliner�a
	CreatePickup(1239, 2, 1775.11,-1749.67,14.35,0);//Chofer de bus.
	CreatePickup(1318, 2, 1456.8000000,-1012.2000000,27.3000000,0);//Banco EXT AL INT
	CreatePickup(1239, 2, 230.5,71.36,1005,0);//LOCALIZARSOS
	CreatePickup(1239, 2, 1772.8,-1137.9,24,0);//LOCALIZARSOS
	CreatePickup(1239, 2, 2528.7,-1801.7,712.8,0);//Banco
	CreatePickup(1318, 2, 444.646911,508.239044,1001.419494,0);//Prop1
	CreatePickup(1318, 2, 2527.654052,-1679.388305,1015.498596,0);//Prop2
	CreatePickup(1318, 2, 2807.619873,-1171.899902,1025.570312,0);//Prop3
	CreatePickup(1318, 2, 1527.229980,-11.574499,1002.097106,0);//Prop4
	CreatePickup(1318, 2, 2496.049804,-1695.238159,1014.742187,0);//Prop5
	CreatePickup(1318, 2, 210.8,-107.5,1005.1,0);//CROPA
	CreatePickup(1318, 2, 207.3,-100.8,1005.2,0);//CROPA
	CreatePickup(1318, 2, 295.7000000,-38.2000000,1001.2000000,0);//CROPA
	CreatePickup(1318, 2, 1367.7000000,-1279.8000000,14.2000000,0);//Ammunation
	CreatePickup(1239, 2, -1049.14,-650,32,0);//Transportista.
	CreatePickup(1239, 2, -1031.9,-590.5,32,0);//Job Transportista.
	CreatePickup(1239, 2, 1110.6,-1795.5,16.5,0);//Job Bus URBANO.
	CreatePickup(1239, 2, 1109.6,-1806.7,16.5,0);//Job VER FICHA Bus URBANO.
	CreatePickup(1318, 2, -1822.86,6,1061.1,0);//Aeropuerto int a ext
	CreatePickup(1318, 2, 1730.3,-2334.69,13.54,0);//Aeropuerto ext a int
	CrearTextPick(1487,-1768,15,"Ayuntamiento","Tecla 'Y'",Pickupentrada);
	CrearTextPick(1173,-1323,15,"Hospital","Tecla 'Y'",Pickupentrada);
	CrearTextPick(-204,-1736,675,"Hospital Salida","Tecla 'Y'",Pickupentrada);
	CrearTextPick(423,1597,481,"Centro de noticias LS","Tecla 'Y'",Pickupentrada);
	CrearTextPick(106,-223,1,"Trabajo Trasportista de gasolina","/Empleo",Pickupinfo);
	CrearTextPick(560,-1293,17,"Concesionaria Grotti","/Concesionario",Pickupinfo);
	CrearTextPick(358,164,1008,"Transferencia de veh�culos","/Transferirvehiculo",Pickupinfo);
	CrearTextPick(2131,-1150,24,"Concesioanrio GAMA Baja-Media","/Concesionario",Pickupinfo);
	CrearTextPick(-130,815,1991,"Dise�o de peri�dicos","/CrearPeriodico",Pickupinfo);
	CrearTextPick(-139,825,1991,"Impresora industrial","/Imprimir",Pickupinfo);
	CrearTextPick(250,67,1003,"Pago de multas","/PagarMultas",Pickupinfo);
	CrearTextPick(-92,-1168,2,"Gasoliner�a","/CargarGasolina",Pickupinfo);
	CrearTextPick(-1834,17,1061,"Departamento de inmigraci�n","/ObtenerPasaporte",Pickupinfo);
	CrearTextPick(-965,1448,1540,"Personal","/Banco - /ObtenerCuentaBancaria",Pickupinfo);
	CrearTextPick(-970,1434,1540,"Cajero autom�tico","/Cajero",Pickupinfo);
	CrearTextPick(-970,1436,1540,"Cajero autom�tico","/Cajero",Pickupinfo);
	CrearTextPick(-970,1438,1540,"Cajero autom�tico","/Cajero",Pickupinfo);
	CrearTextPick(646,-1357,14,"Departamento de Comunicaciones","Presiona 'Y'",Pickupinfo);
	CrearTextPick(1519,-1718,13,"Puesto de peri�dicos","/ComprarPeriodico - Valor: $10",Pickupinfo);
	CrearTextPick(1445,-1705,14,"Puesto de peri�dicos","/ComprarPeriodico - Valor: $10",Pickupinfo);
    CrearTextPick(1445,-1693,14,"Puesto de peri�dicos","/ComprarPeriodico - Valor: $10",Pickupinfo);
	CrearTextPick(1812,-1862,13,"Puesto de peri�dicos","/ComprarPeriodico - Valor: $10",Pickupinfo);
	CrearTextPick(2093,-1804,13,"Puesto de peri�dicos","/ComprarPeriodico - Valor: $10",Pickupinfo);
	CrearTextPick(1227,-1386,13,"Puesto de peri�dicos","/ComprarPeriodico - Valor: $10",Pickupinfo);
	CrearTextPick(375,-1827,8,"Puesto de peri�dicos","/ComprarPeriodico - Valor: $10",Pickupinfo);
	CrearTextPick(1365,-1760,13,"Casillero","/Casillero",Pickupinfo);
	return 1;
}
forward CargarTextLabels();
public CargarTextLabels(){
	CT("{FFE600}[!]{FFFFFF}Salida\nTecla {FFE600}'Y'",COLOR_BLANCO, -1822.86,6,1061.1,10.0,0,0);
	CT("{FFE600}[!]{FFFFFF}Entrada\nTecla {FFE600}'Y'",COLOR_BLANCO, 1730.3,-2334.69,13.54,10.0,0,0);
	CT("{FFE600}[!]{FFFFFF}Armamento policial\n{00B3FF}/Armamento",COLOR_BLANCO, 257.2999900,77.0000000,1004.2999900,10.0,0,0);
	CT("{FFE600}[!]{FFFFFF}Policia Federal\nTecla {FFE600}'Y'",COLOR_BLANCO,1554.8000500,-1675.6999500,16.8000000,10.0,0,0);
    CT("{FFE600}[!]{FFFFFF}Unity Objeto:\n\n{00B3FF} Gaseosas.\n\n{51E06B}/AgarrarProductos",COLOR_BLANCO,-31.1000000,-25.2000000,1003.2000100,10.0,0,0);
    CT("{FFE600}[!]{FFFFFF}Unity Objeto:\n\n{00B3FF} Comida.\n\n{51E06B}/AgarrarProductos",COLOR_BLANCO,-34.7000000,-10.4000000,1003.2000100,10.0,0,0);
    CT("{FFE600}[!]{FFFFFF}Unity Ticket's:\n\n{00B3FF} /Pedir{FFFFFF}ticket.\n\n Si has comprado{00B3FF} /Comprar.",COLOR_BLANCO,-31.0000000,-28.8000000,1003.2000100,10.0,0,0);
    CT("{FFE600}[!]{FFFFFF}Hospital - La NACION\n Ingreso{00B3FF} Tecla 'Y'",COLOR_BLANCO,1157.84,-1293.57,13.49,10.0,0,0);
    CT("{FFE600}[!]{FFFFFF}Mercado de productos 24-7\n Ingreso{00B3FF} Tecla 'Y'",COLOR_BLANCO,1352.30,-1758.46,13.50,10.0,0,0);
    CT("{FFE600}[!]{FFFFFF}Pide tu dni con\n{00B3FF} /obtener{FFFFFF}Dni",COLOR_BLANCO,362.2000100,173.6000100,1008.0000000,10.0,0,0);
    CT("{FFE600}[!]{FFFFFF}Tienda de ropa {00B3FF}[BINCO]{FFFFFF}\n Ingreso{00B3FF} Tecla 'Y'",COLOR_BLANCO,2244.3999000,-1665.0000000,16.1000000,10.0,0,0);
 	new String2[300];
    format(String2,sizeof(String2),"{FFE600}[!]{FFFFFF}/Comprardrogas \n\n{0A7900}[Marihuana total:{FFFFFF}%d{0A7900}]\n{FFFFFF}[Cocaina Total:{555555}%d{FFFFFF}].",Marihuana,Cocaina);
	Drogast = Create3DTextLabel(String2,COLOR_BLANCO,2341.16,-1927.94,13.57,10.0,0);
    CT("{FFE600}[!]{FFFFFF}[Gasoliner�a]{FFFFFF}\n{00B3FF} /CargarGasolina ",COLOR_BLANCO,1941.42,-1776.70,13.64,10.0,0,0);
    CT("{FFE600}[!]{FFFFFF}[Computadora].\n{00B3FF} /Localizar{FFFFFF}Sospechoso",COLOR_BLANCO,230.5,71.36,1005,5.0,0,0);
    CT("{FFE600}[!]{FFFFFF}[Licenciatura].\n{00B3FF} /Obtener{FFFFFF}Licencia {00E304}$500",COLOR_BLANCO,1772.8,-1137.9,24,5.0,0,0);
    CT("{00B3FF}/Banco {00E304}$500\n{FFFFFF}/Pedirprestamo",COLOR_BLANCO,2528.7,-1801.7,712.8,5.0,0,0);
    CT("{00B3FF}Tecla 'Y' {FFFFFF}\nPara salir de la propiedad.",COLOR_BLANCO, 444.646911,508.239044,1001.419494,5.0,0,0);
    CT("{00B3FF}Tecla 'Y' {FFFFFF}\nPara salir de la propiedad.",COLOR_BLANCO, 2527.654052,-1679.388305,1015.498596,5.0,0,0);
    CT("{00B3FF}Tecla 'Y' {FFFFFF}\nPara salir de la propiedad.",COLOR_BLANCO, 2807.619873,-1171.899902,1025.570312,5.0,0,0);
    CT("{00B3FF}Tecla 'Y' {FFFFFF}\nPara salir de la propiedad.",COLOR_BLANCO, 1527.229980,-11.574499,1002.097106,5.0,0,0);
    CT("{00B3FF}Tecla 'Y' {FFFFFF}\nPara salir de la propiedad.",COLOR_BLANCO, 2496.049804,-1695.238159,1014.742187,5.0,0,0);
    CT("{FFE600}[!]{FFFFFF} [Banco General de Los Santos] \nTecla {FFE600}'Y' {FFFFFF}\nPara entrar al banco.",COLOR_BLANCO, 1456.8000000,-1012.2000000,27.3000000,5.0,0,0);
    CT("{00B3FF}/ElegirRopa.",COLOR_BLANCO, 210.8,-107.5,1005.1,5.0,0,0);
    CT("{00B3FF}/ComprarRopa.\n {FFFFFF}Si quieres dejarla\n{00B3FF}/DejarRopa.",COLOR_BLANCO, 207.3,-100.8,1005.2,5.0,0,0);
    CT("{00B3FF}/ComprarArmas.\n {FFFFFF}Si quieres comprar armas.",COLOR_BLANCO, 295.7000000,-38.2000000,1001.2000000,5.0,0,0);
    CT("{00B3FF}/Comprarbebida.\n {FFFFFF}Si quieres comprar una bebida.",COLOR_BLANCO, 498.7000000,-75.5000000,997.8000000,5.0,0,0);
    CT("{FFE600}[!]{FFFFFF}[Carga de cami�n].\n{00B3FF} /Cargar{FFFFFF}Camion\n\n",COLOR_BLANCO,-1049.14,-650,32,20.0,0,0);
    CT("{FFE600}[!]{FFFFFF}[Trabajo de Transportista].\n{00B3FF} /Empleo",COLOR_BLANCO,-1031.9,-590.5,32,20.0,0,0);
	CT("{FFE600}[!]{FFFFFF}[Trabajo de Bus URBANO].\n{00B3FF} /Empleo",COLOR_BLANCO,1110.6,-1795.5,16.5,20.0,0,0);
	CT("{FFE600}[!]{FFFFFF}[Trabajo de Bus Larga Distancia].\n{00B3FF} /Empleo",COLOR_BLANCO,1775.11,-1749.67,14.35,20.0,0,0);
	CT("{FFE600}[!]{FFFFFF}[Trabajo de Taxista].\n{00B3FF} /Empleo",COLOR_BLANCO,1753.8,-1903,13.5,20.0,0,0);
	CT("{FFE600}[!]{FFFFFF}[Ver Ficha BUS URBANO].\n{00B3FF} /Ver{FFFFFF}Ficha\n\n",COLOR_BLANCO,1109.6,-1806.7,16.5,20.0,0,0);

	return 1;
}
forward CargarGarajes();
public CargarGarajes(){
	GMeca[0] = CreateDynamicObject(980, 1379.03943, -1835.70752, 13.35450,   0.00000, 0.00000, 90.00000);
	GMeca[1] = CreateDynamicObject(19912, 1379.20581, -1786.93530, 13.35450,   0.00000, 0.00000, -90.00000);
   	PuertaB1 = CreateObject(1495,2554.8000000,-1789.7000000,711.8000000,0.0000000,0.0000000,0.0000000); //puertaexplota1
	PuertaB2 = CreateObject(1495,2540.5000000,-1784.9000000,711.8000000,0.0000000,0.0000000,90.0000000); //puertaexplota2
	PuertaLSPDINT[0] = CreateObject(2930,245.5000000,72.7002000,1005.3000000,0.0000000,0.0000000,90.0000000); //ap1
	PuertaLSPDINT[1] = CreateObject(1495,250.5000000,62.4003900,1002.6000000,0.0000000,0.0000000,90.0000000); //ap2
	PuertaLSPDINT[2] = CreateObject(2930,266.3000000,83.8000000,1002.7000000,0.0000000,0.0000000,0.0000000); //object(chinatgate) (1)
	PuertaLSPDINT[3] = CreateObject(2930,266.2998000,88.2998000,1002.7000000,0.0000000,0.0000000,0.0000000); //object(chinatgate) (2)
	GarageLSPD[0] = CreateObject(968,1544.6992200,-1630.8994100,13.3000000,0.0000000,90.0000000,90.0000000); //barreracerrada
	NoticieroG = CreateDynamicObject(19912, 771.36829, -1385.01245, 15.24280,   0.00000, 0.00000, 0.00000);
	PortonYak=CreateDynamicObject(969,318.0000000,-1190.9000000,75.5000000,0.0000000,0.0000000,40.0000000); //puerta
	PortonLCN=CreateDynamicObject(980,1240.5000000,-741.5000000,97.0000000,0.0000000,3.0000000,30.0000000); //garage
    PuertaB[0]=CreateDynamicObject(3089, -945.46143, 1450.05933, 1540.64404,   0.00000, 0.00000, 0.00000);
   	PuertaB[1]=CreateDynamicObject(2951, -948.23767, 1472.04175, 1539.20068,   0.00000, 0.00000, 0.00000);
	PuertaB[2]=CreateDynamicObject(2983, -948.14111, 1472.17712, 1540.49695,   0.00000, 0.00000, 0.00000);
	ObjetoCarga = CreateDynamicObject(2934,-1048.1992200,-650.0996100,56.9000000,0.0000000,0.0000000,90.0000000); //cargamento2alto
	return 1;
}
forward CargarVehiculosNativos();
public CargarVehiculosNativos(){
	CAvion[0] = AddStaticVehicleEx(553,1317.8000500,1347.5999800,13.1000000,324.0000000,125,98,15); //Nevada
	CAvion[1] = AddStaticVehicleEx(553,1319.5000000,1309.8994100,13.1000000,323.9980000,125,98,15); //Nevada
	CAvion[2] = AddStaticVehicleEx(553,1311.4000200,1383.8000500,13.1000000,323.9980000,125,98,15); //Nevada
	CAvion[3] = AddStaticVehicleEx(553,1533.0000000,1271.1999500,15.5000000,90.0000000,125,98,15); //Nevada
	CAvion[4] = AddStaticVehicleEx(553,1535.5999800,1308.3000500,13.1000000,90.0000000,125,98,15); //Nevada
	CAvion[5] = AddStaticVehicleEx(553,1533.9000200,1348.6999500,13.1000000,90.0000000,125,98,15); //Nevada
	CAvion[6] = AddStaticVehicleEx(553,1536.4000200,1388.0000000,13.1000000,90.0000000,125,98,15); //Nevada
	CBasurero[0] =AddStaticVehicleEx(408,2191.8000500,-1996.3000500,14.3000000,0.0000000,255,255,15); //Trashmaster
	CBasurero[1] =AddStaticVehicleEx(408,2186.6001000,-1995.0999800,14.3000000,0.0000000,255,255,15); //Trashmaster
	CBasurero[2] =AddStaticVehicleEx(408,2181.8000500,-1992.5000000,14.3000000,0.0000000,255,255,15); //Trashmaster
	CBasurero[3] =AddStaticVehicleEx(408,2177.0000000,-1987.8000500,14.3000000,0.0000000,255,255,15); //Trashmaster
	CBasurero[4] =AddStaticVehicleEx(408,2157.1001000,-1975.4000200,14.3000000,270.0000000,255,255,15); //Trashmaster
	CBasurero[5] =AddStaticVehicleEx(408,2156.8999000,-1979.6999500,14.3000000,270.0000000,255,255,15); //Trashmaster
	CBus[0] = AddStaticVehicleEx(431,1792.5000000,-1781.3000500,13.8000000,0.0000000,78,104,15); //Bus
	CBus[1] = AddStaticVehicleEx(431,1786.3000500,-1781.1999500,13.8000000,0.0000000,78,104,15); //Bus
	CBus[2] = AddStaticVehicleEx(431,1780.1999500,-1781.3000500,13.8000000,0.0000000,78,104,15); //Bus
	CBus[3] = AddStaticVehicleEx(431,1773.6999500,-1781.5000000,13.8000000,0.0000000,78,104,15); //Bus
	CBus[4] = AddStaticVehicleEx(431,1766.9000200,-1781.5000000,13.8000000,0.0000000,78,104,15); //Bus
	CBus[5] = AddStaticVehicleEx(431,1759.4000200,-1781.4000200,13.8000000,0.0000000,78,104,15); //Bus
	CBus[6] = AddStaticVehicleEx(431,1752.0000000,-1781.5999800,13.8000000,0.0000000,78,104,15); //Bus
	RentaV[0] =	AddStaticVehicleEx(410,1561.8000500,-2308.8999000,13.3000000,90.0000000,1,255,360000); //Manana 17
	RentaV[1] =	AddStaticVehicleEx(410,1561.8000500,-2312.3000500,13.3000000,90.0000000,1,255,360000); //Manana18
	RentaV[2] =	AddStaticVehicleEx(410,1561.9000200,-2315.3999000,13.3000000,90.0000000,1,255,360000); //Manana19
	RentaV[3] =	AddStaticVehicleEx(410,1562.0000000,-2318.5000000,13.3000000,90.0000000,1,255,360000); //Manana20
	RentaV[4] =	AddStaticVehicleEx(410,1561.8000500,-2321.6999500,13.3000000,90.0000000,1,255,360000); //Manana21
	RentaV[5] =	AddStaticVehicleEx(410,1561.5999800,-2325.6001000,13.3000000,90.0000000,1,255,360000); //Manana22
	RentaV[6] =	AddStaticVehicleEx(410,1561.6999500,-2328.8000500,13.3000000,90.0000000,1,255,360000); //Manana23
	RentaV[7] =	AddStaticVehicleEx(410,1561.8000500,-2332.1999500,13.3000000,90.0000000,1,255,360000); //Manana24
	RentaV[8] =	AddStaticVehicleEx(410,1561.8000500,-2335.3000500,13.3000000,90.0000000,1,255,360000); //Manana25
	RentaV[9] =	AddStaticVehicleEx(410,1561.8000500,-2338.6001000,13.3000000,90.0000000,1,255,360000); //Manana26
	CosechaDrogas[0] = AddStaticVehicleEx(532,-1101.5999800,-1680.9000200,77.5000000,0.0000000,-1,-1,0); //Combine 27
	CosechaDrogas[1] = AddStaticVehicleEx(532,-1122.9000200,-1681.1999500,77.5000000,0.0000000,-1,-1,0); //Combine 28
	CosechaDrogas[2] = AddStaticVehicleEx(532,-1073.9000200,-1686.9000200,77.2000000,0.0000000,-1,-1,0); //Combine 29
	CosechaDrogas[3] = AddStaticVehicleEx(532,-1062.0999800,-1686.5999800,77.4000000,0.0000000,-1,-1,0); //Combine 30
	CosechaDrogas[4] = AddStaticVehicleEx(532,-1049.0999800,-1692.9000200,78.4000000,0.0000000,-1,-1,0); //Combine 31
	CosechaDrogas[5] = AddStaticVehicleEx(532,-1039.8000500,-1699.5999800,78.8000000,0.0000000,-1,-1,0); //Combine 32
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
	TaxiC[0] = AddStaticVehicleEx(420,1777.6000000,-1915.4000000,13.2000000,270.0000000,194,178,300); //Taxi
	TaxiC[1] = AddStaticVehicleEx(420,1777.2998000,-1933.4004000,13.2000000,270.0000000,194,178,300); //Taxi
	TaxiC[2] = AddStaticVehicleEx(420,1777.5000000,-1928.7002000,13.2000000,270.0000000,194,178,300); //Taxi
	TaxiC[3] = AddStaticVehicleEx(420,1777.6000000,-1924.4000000,13.2000000,270.0000000,194,178,300); //Taxi
	TaxiC[4] = AddStaticVehicleEx(420,1777.5000000,-1920.2000000,13.2000000,270.0000000,194,178,300); //Taxi
	TaxiC[5] = AddStaticVehicleEx(420,1803.6000000,-1934.0000000,13.2000000,90.0000000,194,178,300); //Taxi
	TaxiC[6] = AddStaticVehicleEx(420,1803.3000000,-1929.5000000,13.2000000,90.0000000,194,178,300); //Taxi
	TaxiC[7] = AddStaticVehicleEx(420,1803.5000000,-1924.3000000,13.2000000,90.0000000,194,178,300); //Taxi
	TaxiC[8] = AddStaticVehicleEx(420,1803.6000000,-1920.2000000,13.2000000,90.0000000,194,178,300); //Taxi
	TaxiC[9] = AddStaticVehicleEx(420,1803.5000000,-1915.7000000,13.2000000,90.0000000,194,178,300); //Taxi
    MedCoche[0] = AddStaticVehicleEx(416,1244.5000000,-1338.1000000,2638.8000000,0.0000000,3,1,15); //Ambulance
    MedCoche[1] = AddStaticVehicleEx(416,1239.0000000,-1338.4000000,2638.8000000,0.0000000,3,1,15); //Ambulance
    MedCoche[2] = AddStaticVehicleEx(416,1235.5000000,-1338.2000000,2638.8000000,0.0000000,3,1,15); //Ambulance
    MedCoche[3] = AddStaticVehicleEx(416,1223.2000000,-1338.4000000,2638.8000000,0.0000000,3,1,15); //Ambulance
    MedCoche[4] = AddStaticVehicleEx(416,1218.9000000,-1338.0000000,2638.8000000,0.0000000,3,1,15); //Ambulance
    MedCoche[5] = AddStaticVehicleEx(416,1214.5000000,-1337.8000000,2638.8000000,0.0000000,3,1,15); //Ambulance
    MedCoche[6] = AddStaticVehicleEx(416,1210.4000000,-1337.4000000,2638.8000000,0.0000000,3,1,15); //Ambulance
    MedCoche[7] = AddStaticVehicleEx(416,1206.3000000,-1337.3000000,2638.8000000,0.0000000,3,1,15); //Ambulance
    MedCoche[8] = AddStaticVehicleEx(416,1202.2000000,-1336.9000000,2638.8000000,0.0000000,3,1,15); //Ambulance
    MedCoche[9] = AddStaticVehicleEx(416,1198.3000000,-1336.8000000,2638.8000000,0.0000000,3,1,15); //Ambulance
    MedCoche[10] = AddStaticVehicleEx(416,1194.0000000,-1336.4000000,2638.8000000,0.0000000,3,1,15); //Ambulance
    MedCoche[11] = AddStaticVehicleEx(416,1189.7000000,-1336.2000000,2638.8000000,0.0000000,3,1,15); //Ambulance
	BusUrbanoC[0] = AddStaticVehicleEx(437,1064.0000000,-1775.5000000,13.6000000,90.0000000,14,49,15); //Coach
	BusUrbanoC[1] = AddStaticVehicleEx(437,1097.0000000,-1775.5000000,13.6000000,270.0000000,14,49,15); //Coach
	BusUrbanoC[2] = AddStaticVehicleEx(437,1064.3000000,-1769.6000000,13.6000000,90.0000000,14,49,15); //Coach
	BusUrbanoC[3] = AddStaticVehicleEx(437,1064.4000000,-1763.7000000,13.6000000,90.0000000,14,49,15); //Coach
	BusUrbanoC[4] = AddStaticVehicleEx(437,1064.5000000,-1757.9000000,13.7000000,90.0000000,14,49,15); //Coach
	BusUrbanoC[5] = AddStaticVehicleEx(437,1064.6000000,-1737.1000000,13.7000000,90.0000000,14,49,15); //Coach
	BusUrbanoC[6] = AddStaticVehicleEx(437,1097.5000000,-1769.6000000,13.6000000,270.0000000,14,49,15); //Coach
	BusUrbanoC[7] =	AddStaticVehicleEx(437,1097.6000000,-1763.7000000,13.6000000,270.0000000,14,49,15); //Coach
	BusUrbanoC[8] = AddStaticVehicleEx(437,1097.5000000,-1757.8000000,13.6000000,270.0000000,14,49,15); //Coach
	LSPDCoche[0] = AddStaticVehicleEx(596,1544.3000500,-1650.5000000,5.7000000,90.0000000,0,1,60000000); //Police Car (LSPD)
	LSPDCoche[1] = 	AddStaticVehicleEx(596,1544.0999800,-1655.4000200,5.7000000,90.0000000,0,1,60000000); //Police Car (LSPD)
	LSPDCoche[2] = 	AddStaticVehicleEx(596,1543.9000200,-1659.4000200,5.7000000,90.0000000,0,1,60000000); //Police Car (LSPD)
	LSPDCoche[3] = 	AddStaticVehicleEx(596,1543.8000500,-1663.8000500,5.7000000,90.0000000,0,1,60000000); //Police Car (LSPD)
	LSPDCoche[4] = 	AddStaticVehicleEx(596,1543.8000500,-1672.1999500,5.7000000,90.0000000,0,1,60000000); //Police Car (LSPD)
	LSPDCoche[5] = 	AddStaticVehicleEx(596,1543.7998000,-1668.3994100,5.7000000,90.0000000,0,1,60000000); //Police Car (LSPD)
	LSPDCoche[6] = 	AddStaticVehicleEx(596,1543.6999500,-1676.3000500,5.7000000,90.0000000,0,1,60000000); //Police Car (LSPD)
	LSPDCoche[7] = 	AddStaticVehicleEx(596,1543.5999800,-1680.4000200,5.7000000,90.0000000,0,1,60000000); //Police Car (LSPD)
	LSPDCoche[8] = 	AddStaticVehicleEx(596,1543.6999500,-1685.0999800,5.7000000,90.0000000,0,1,60000000); //Police Car (LSPD)
	LSPDCoche[9] = 	AddStaticVehicleEx(599,1559.3000500,-1709.1999500,6.3000000,0.0000000,0,1,60000000); //Police Ranger
	LSPDCoche[10] = AddStaticVehicleEx(523,1600.3000500,-1687.5000000,5.6000000,90.0000000,-1,1,60000000); //HPV1000
	LSPDCoche[11] = AddStaticVehicleEx(523,1600.6999500,-1691.4000200,5.6000000,90.0000000,-1,1,60000000); //HPV1000
	LSPDCoche[12] = AddStaticVehicleEx(523,1601.0999800,-1695.4000200,5.6000000,90.0000000,-1,-1,60000000); //HPV1000
	LSPDCoche[13] = AddStaticVehicleEx(523,1601.5999800,-1699.3000500,5.6000000,90.0000000,-1,-1,60000000); //HPV1000
	LSPDCoche[14] = AddStaticVehicleEx(523,1601.8000500,-1702.8000500,5.6000000,90.0000000,-1,-1,60000000); //HPV1000
	LSPDCoche[15] = AddStaticVehicleEx(523,1600.3000500,-1684.4000200,5.6000000,90.0000000,-1,-1,60000000); //HPV1000
	GasVehiculo[0] = AddStaticVehicleEx(514,24.2000000,-224.0000000,3.0000000,270.0000000,254,254,15); //Tanker
	GasVehiculo[1] = AddStaticVehicleEx(514,24.4000000,-236.2000000,3.0000000,270.0000000,254,254,15); //Tanker
	GasVehiculo[2] = AddStaticVehicleEx(514,24.2002000,-229.7002000,3.0000000,270.0000000,254,254,15); //Tanker
	GasVehiculo[3] = AddStaticVehicleEx(514,24.1000000,-242.5000000,3.0000000,270.0000000,254,254,15); //Tanker
	GasVehiculo[4] = AddStaticVehicleEx(514,23.7000000,-254.3000000,3.1000000,270.0000000,254,254,15); //Tanker
	GasVehiculo[5] = AddStaticVehicleEx(584,62.3000000,-281.8000000,2.7000000,0.0000000,245,245,60000000); //Trailer 3
	GasVehiculo[6] = AddStaticVehicleEx(584,42.8000000,-281.7000000,3.1000000,0.0000000,245,245,60000000); //Trailer 3
	GasVehiculo[7] = AddStaticVehicleEx(584,54.8000000,-281.7000000,2.8000000,0.0000000,245,245,60000000); //Trailer 3
	GasVehiculo[8] = AddStaticVehicleEx(584,36.6000000,-281.7000000,3.2000000,0.0000000,245,245,60000000); //Trailer 3
	GasVehiculo[9] = AddStaticVehicleEx(514,23.7998000,-249.2998000,3.0000000,270.0000000,254,254,15); //Tanker
	GasVehiculo[10] = AddStaticVehicleEx(584,49.5000000,-281.5000000,2.9000000,0.0000000,245,245,60000000); //Trailer 3
	GasVehiculo[11] = AddStaticVehicleEx(584,67.8000000,-282.0000000,2.7000000,0.0000000,245,245,60000000); //Trailer 3
	BallasC[0] = AddStaticVehicleEx(467,1891.7000000,-1083.4000000,23.8000000,30.0000000,181,43,15); //Oceanic
	BallasC[1] = AddStaticVehicleEx(467,1934.3000000,-1083.6000000,24.5000000,29.9980000,181,43,15); //Oceanic
	BallasC[2] = AddStaticVehicleEx(566,1915.2000000,-1084.1000000,24.2000000,86.0000000,181,43,15); //Tahoma
	BallasC[3] = AddStaticVehicleEx(566,1907.7998000,-1084.0996000,24.1000000,85.9950000,181,43,15); //Tahoma
	GobiernoV[0] =AddStaticVehicleEx(409,1245.8000000,-2042.1000000,59.8000000,0.0000000,-1,-1,15); //Stretch
	GobiernoV[1] =AddStaticVehicleEx(421,1249.7000000,-2043.2000000,59.7000000,0.0000000,-1,-1,15); //Washington
	GobiernoV[2] =AddStaticVehicleEx(421,1253.8000000,-2043.4000000,59.6000000,0.0000000,-1,-1,15); //Washington
	GobiernoV[3] =AddStaticVehicleEx(421,1257.9000000,-2043.7000000,59.5000000,0.0000000,-1,-1,15); //Washington
	GobiernoV[4] =AddStaticVehicleEx(487,1155.3000000,-2018.1000000,69.3000000,0.0000000,-1,-1,15); //Maverick
	LCNC[0]=AddStaticVehicleEx(445,1242.7000000,-804.9000200,84.1000000,0.0000000,-1,-1,15); //Admiral
	LCNC[1]=AddStaticVehicleEx(445,1246.4000000,-804.7999900,84.1000000,0.0000000,-1,-1,15); //Admiral
	LCNC[2]=AddStaticVehicleEx(445,1250.1000000,-804.7000100,84.1000000,0.0000000,-1,-1,15); //Admiral
	LCNC[3]=AddStaticVehicleEx(445,1253.8000000,-804.5999800,84.1000000,0.0000000,-1,-1,15); //Admiral
	LCNC[4]=AddStaticVehicleEx(466,1256.2000000,-810.4000200,84.1000000,0.0000000,-1,-1,15); //Glendale
	YakC[0]=AddStaticVehicleEx(409,1245.8000000,-2042.1000000,59.8000000,0.0000000,-1,-1,15); //Stretch
	YakC[1]=AddStaticVehicleEx(421,1249.7000000,-2043.2000000,59.7000000,0.0000000,-1,-1,15); //Washington
	YakC[2]=AddStaticVehicleEx(421,1253.8000000,-2043.4000000,59.6000000,0.0000000,-1,-1,15); //Washington
	YakC[3]=AddStaticVehicleEx(421,1257.9000000,-2043.7000000,59.5000000,0.0000000,-1,-1,15); //Washington
	YakC[4]=AddStaticVehicleEx(487,1155.3000000,-2018.1000000,69.3000000,0.0000000,-1,-1,15); //Maverick
	YakC[5]=AddStaticVehicleEx(405,280.8999900,-1166.5000000,80.9000000,320.0000000,-1,-1,15); //Sentinel
	YakC[6]=AddStaticVehicleEx(405,283.2999900,-1168.9000000,80.9000000,319.9990000,-1,-1,15); //Sentinel
	YakC[7]=AddStaticVehicleEx(405,288.7000100,-1174.3000000,80.9000000,317.9990000,-1,-1,15); //Sentinel
	YakC[8]=AddStaticVehicleEx(405,285.9003900,-1171.5000000,80.9000000,317.9940000,-1,-1,15); //Sentinel
	YakC[9]=AddStaticVehicleEx(421,291.5000000,-1177.3000000,80.9000000,316.0000000,-1,-1,15); //Washington
	GrooveC[0]=AddStaticVehicleEx(467,2509.5000000,-1667.3000000,13.3000000,0.0000000,14,75,15); //Oceanic
	GrooveC[1]=AddStaticVehicleEx(467,2512.8000000,-1677.2000000,13.4000000,0.0000000,14,75,15); //Oceanic
	GrooveC[2]=AddStaticVehicleEx(492,2474.8000000,-1693.3000000,13.4000000,0.0000000,14,75,15); //Greenwood
	GrooveC[3]=AddStaticVehicleEx(492,2469.7000000,-1671.2000000,13.2000000,14.0000000,14,75,15); //Greenwood
	PilotoC[0]=AddStaticVehicleEx(553,1966.2002000,-2303.5000000,12.5000000,90.0000000,245,245,15); //AT-400
	PilotoC[1]=AddStaticVehicleEx(553,1967.0000000,-2385.5000000,12.5000000,90.0000000,245,245,15); //AT-400
	PilotoC[2]=AddStaticVehicleEx(553,1473.4000000,-2437.8000000,12.7000000,0.0000000,245,245,15); //AT-400
	NotC[0]=CreateVehicle(582, 782.5963, -1371.1467, 13.3913, 91.0000, 1,1, 99999);
	NotC[1]=CreateVehicle(582, 782.6307, -1365.5433, 13.3913, 91.0000, 1,1, 99999);
	NotC[2]=CreateVehicle(582, 782.5898, -1360.1021, 13.3913, 91.0000, 1,1, 99999);
	NotC[3]=CreateVehicle(582, 782.5740, -1354.5820, 13.3913, 91.0000, 1,1, 99999);
	NotC[4]=CreateVehicle(582, 782.6418, -1349.3202, 13.3913, 91.0000, 1,1, 99999);
	NotC[5]=CreateVehicle(582, 782.5754, -1343.6808, 13.3913, 91.0000, 1,1, 99999);
	NotC[6]=CreateVehicle(488, 689.1278, -1349.1593, 49.6752, 91.0000, 1,1, 99999);
	MecaC[0]=CreateVehicle(525, 1347.0815, -1798.9006, 13.3508, 270.0000, -1, -1, 100);
	MecaC[1]=CreateVehicle(525, 1347.0992, -1793.6577, 13.3508, 270.0000, -1, -1, 100);
	MecaC[2]=CreateVehicle(525, 1347.0900, -1788.0959, 13.3508, 270.0000, -1, -1, 100);
	MecaC[3]=CreateVehicle(525, 1347.0983, -1782.4340, 13.3508, 270.0000, -1, -1, 100);
	MecaC[4]=CreateVehicle(525, 1347.1536, -1777.0909, 13.3508, 270.0000, -1, -1, 100);
	return 1;
}
public OnGameModeInit()
{
	for(new i=0;i<10;i++) {	Cajas[i]=1;	}
	CargarPeriodicos();
	CargarPreciosMecanicos();
	CargarNegocios();
	CargarParkings();
	CargarVehiculosCreados();
	TextDrawsdelServidor();
	CargarmSelectionMenus();
	CargarPickUps();
	CargarTextLabels();
	CargarGarajes();
	SetGameModeText("RolePlay");
	CargarVehiculosNativos();
	AddPlayerClass(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0); //No borrar, Evita algunos bug's.
 	ManualVehicleEngineAndLights(); ShowPlayerMarkers(0); DisableInteriorEnterExits(); AllowInteriorWeapons(1);
    UsePlayerPedAnims();
    EnableStuntBonusForAll(0);
    AntiDeAMX();
    CargarImpuestos();
    CargarFMecanicos();
    CargarDrogas();
    CargarFondos();
    CargarPrecioG();
	CG();
	Mappeosdelservidor();
    for(new i=0;i<MAX_VEHICLES;i++) {Gasolina[i] = 100;}
    SetTimer("GasolinaCheck",180000,1);
    SetTimer("GasolinaCheckBar",1000,1);
    SetTimer("PagaD",1000*60*60,1);
    SetTimer("Mensaje",240000,1);
	CargarVehiculos();
	return 1;
}
public OnGameModeExit()
{
	MedicoPedido = 0;
	return 1;
}
public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 30.3746);SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 30.3746);SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 30.3746);
	new User[MAX_PLAYER_NAME],Archivo[MAX_PLAYERS];
	GetPlayerName(playerid, User, sizeof(User));
	format(Archivo,sizeof(Archivo),"Archivos de usuarios/%s.ini",User);
	if(fexist(Archivo)) { Dialog(playerid, Inicio,DIALOG_STYLE_PASSWORD,"- Ingreso del servidor. [BETA]","{FFFFFF}Bienvenido al servidor Zona Sur {A3DE5B}Roleplay - [BETA]{FFFFFF}\n\n\n\n\tIngresa tu contrase�a para poder empezar.","Ingresar","");
	} else { Dialog(playerid, Registro,DIALOG_STYLE_PASSWORD,"- Registro del servidor. [BETA]","{FFFFFF}Bienvenido al servidor Zona Sur {A3DE5B}Roleplay - [BETA]{FFFFFF}\n\n\n\n\tIngresa una contrase�a para poder empezar.","Registrarme","");
	}
	return 1;
}

public OnPlayerConnect(playerid)
{
CargarRemoves(playerid);
CargarTextDrawsUser(playerid);
Ingreso[playerid] = 0;
EstaEnruta[playerid] =0;
Jeringa[playerid] = 0; JeringaLista[playerid] = 0;
Llamando[playerid] = 0;
MurioJP[playerid] = 0;
Estaentuto[playerid] = 0;
TicketC[playerid] = 0;
EnableStuntBonusForPlayer(playerid, 0);
SetPlayerColor(playerid, COLOR_BLANCO);
EstadoDuty[playerid] = false;
NInfo[playerid][pOrina] = 0;
NInfo[playerid][pHambre] = 0;
Rentado[playerid] = 0;
RentadoV[playerid] = 0;
for(new i = 0; i < MAX_PLAYERS; i++) ShowPlayerNameTagForPlayer(playerid, i, false);
return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
if(PI[playerid][Faccion] == 3) {
HayMedicos --;
}
Murio[playerid] = 0;
AD(playerid);
IDSos[playerid] = false;
LoLocalizo[playerid] = 0;
ColocarP[playerid] = 0;
IdTun[playerid] = false;
if(Aceptollamada[playerid] == 1) {
Llamando[playerid] = 0;
Llamando[Llamaaluser[playerid]] = 0;
Aceptollamada[Llamaaluser[playerid]] = false;
Mensaje(Llamaaluser[playerid],COLOR_BLANCO,"((El usuario se desconect�). Y se termin� la llamada.");
Llamaaluser[playerid] = false;
Aceptollamada[playerid] = false;
}
DestroyProgressBar(OrinaB[playerid]);
OrinaB[playerid] = INVALID_BAR_ID;
Ingreso[playerid] = 0;
Tarifa[playerid] = false;
Eseltaxista[playerid] = false;
TieneServicio[Eseltaxista[playerid]] = 0;
DestroyProgressBar(HambreB[playerid]);
HambreB[playerid] = INVALID_BAR_ID;
new User[MAX_PLAYER_NAME],Archivo[MAX_PLAYERS];
GetPlayerName(playerid, User, sizeof(User));
format(Archivo,sizeof(Archivo),"Archivos de usuarios/%s.ini",User);

new Armas[13],ammo[13];
GetPlayerWeaponData(playerid,1,Armas[0],ammo[0]);
GetPlayerWeaponData(playerid,2,Armas[1],ammo[1]);
GetPlayerWeaponData(playerid,3,Armas[2],ammo[2]);
GetPlayerWeaponData(playerid,4,Armas[3],ammo[3]);
GetPlayerWeaponData(playerid,5,Armas[4],ammo[4]);
GetPlayerWeaponData(playerid,6,Armas[5],ammo[5]);
GetPlayerWeaponData(playerid,7,Armas[6],ammo[6]);
GetPlayerWeaponData(playerid,8,Armas[7],ammo[7]);
GetPlayerWeaponData(playerid,9,Armas[8],ammo[8]);
GetPlayerWeaponData(playerid,10,Armas[9],ammo[9]);
GetPlayerWeaponData(playerid,11,Armas[10],ammo[10]);
GetPlayerWeaponData(playerid,12,Armas[11],ammo[11]);
GetPlayerWeaponData(playerid,13,Armas[12],ammo[12]);
dini_IntSet(Archivo,"Arma1",Armas[0]); dini_IntSet(Archivo,"BArma1",ammo[0]);
dini_IntSet(Archivo,"Arma2",Armas[1]); dini_IntSet(Archivo,"BArma2",ammo[1]);
dini_IntSet(Archivo,"Arma3",Armas[2]); dini_IntSet(Archivo,"BArma3",ammo[2]);
dini_IntSet(Archivo,"Arma4",Armas[3]); dini_IntSet(Archivo,"BArma4",ammo[3]);
dini_IntSet(Archivo,"Arma5",Armas[4]); dini_IntSet(Archivo,"BArma5",ammo[4]);
dini_IntSet(Archivo,"Arma6",Armas[5]); dini_IntSet(Archivo,"BArma6",ammo[5]);
dini_IntSet(Archivo,"Arma7",Armas[6]); dini_IntSet(Archivo,"BArma7",ammo[6]);
dini_IntSet(Archivo,"Arma8",Armas[7]); dini_IntSet(Archivo,"BArma8",ammo[7]);
dini_IntSet(Archivo,"Arma9",Armas[8]); dini_IntSet(Archivo,"BArma9",ammo[8]);
dini_IntSet(Archivo,"Arma10",Armas[9]); dini_IntSet(Archivo,"BArma10",ammo[9]);
dini_IntSet(Archivo,"Arma11",Armas[10]); dini_IntSet(Archivo,"BArma11",ammo[10]);
dini_IntSet(Archivo,"Arma12",Armas[11]); dini_IntSet(Archivo,"BArma12",ammo[11]);
dini_IntSet(Archivo,"Arma13",Armas[12]); dini_IntSet(Archivo,"BArma13",ammo[12]);
return 1;
}
new Cargolaanimacion[MAX_PLAYERS];
public OnPlayerSpawn(playerid)
{
	if(Ingreso[playerid] == 0) {
	EnergiaPJ[playerid] = 100; SedPJ[playerid] = 100; ApetitoPJ[playerid] = 100;
	SetTimerEx("EnergiaPJT", 120000, true, "i", playerid);
	if(PI[playerid][Registroc] == 0) {
	PI[playerid][Registroc] = 1;
	PI[playerid][TNegocio]=-1;
	SetPlayerPos(playerid,-1848.86,7.52,1061.14);
	SetPlayerInterior(playerid,14);
	if(PI[playerid][Genero] == 0) {
	SetPlayerSkin(playerid,60);
	}
	else if(PI[playerid][Genero] == 1) {
	SetPlayerSkin(playerid,192);
	}
	}
 	else if(PI[playerid][Registroc] == 1) {
 	if(Murio[playerid] == 1) {
 	cargarjugador(playerid);
	SetPlayerPos(playerid,1175.83,-1322.04,14.19);
	Murio[playerid]=0;
	SetPlayerSkin(playerid,PI[playerid][Skin]);
	}else {
	cargarjugador(playerid);
    SetPlayerPos(playerid,PI[playerid][PX],PI[playerid][PY],PI[playerid][PZ]);

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
    Mensaje(playerid,COLOR_BLANCO,"Bienvenido al servidor.");
	SetPlayerSkin(playerid,PI[playerid][Skin]);
	Ingreso[playerid] = 1;
	new User[MAX_PLAYER_NAME],Archivo[MAX_PLAYERS];
	GetPlayerName(playerid, User, sizeof(User));
	format(Archivo,sizeof(Archivo),"Archivos de usuarios/%s.ini",User);
	GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma1"),dini_Int(Archivo,"BArma1"));
	GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma2"),dini_Int(Archivo,"BArma2"));
	GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma3"),dini_Int(Archivo,"BArma3"));
	GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma4"),dini_Int(Archivo,"BArma4"));
	GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma5"),dini_Int(Archivo,"BArma5"));
	GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma6"),dini_Int(Archivo,"BArma6"));
	GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma7"),dini_Int(Archivo,"BArma7"));
	GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma8"),dini_Int(Archivo,"BArma8"));
	GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma9"),dini_Int(Archivo,"BArma9"));
	GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma10"),dini_Int(Archivo,"BArma10"));
	GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma11"),dini_Int(Archivo,"BArma11"));
	GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma12"),dini_Int(Archivo,"BArma12"));
	GivePlayerWeapon(playerid,dini_Int(Archivo,"Arma13"),dini_Int(Archivo,"BArma13"));
    cargarjugador(playerid);
    SetPlayerInterior(playerid,PI[playerid][Interior]);
    SetPlayerVirtualWorld(playerid,PI[playerid][MV]);
    if(PI[playerid][Faccion] == 3) {
    HayMedicos ++;
    }

    }
	if(Cargolaanimacion[playerid] == 0) {
    PreloadAnimLib(playerid,"AIRPORT");
    PreloadAnimLib(playerid,"ATTRACTORS");
    PreloadAnimLib(playerid,"BAR");
    PreloadAnimLib(playerid,"BASEBALL");
    PreloadAnimLib(playerid,"BD_FIRE");
    PreloadAnimLib(playerid,"BEACH");
    PreloadAnimLib(playerid,"BENCHPRESS");
    PreloadAnimLib(playerid,"BF_INJECTION");
    PreloadAnimLib(playerid,"BIKED");
    PreloadAnimLib(playerid,"BIKEH");
    PreloadAnimLib(playerid,"BIKELEAP");
    PreloadAnimLib(playerid,"BIKES");
    PreloadAnimLib(playerid,"BIKEV");
    PreloadAnimLib(playerid,"BIKE_DBZ");
    PreloadAnimLib(playerid,"BMX");
    PreloadAnimLib(playerid,"BOMBER");
    PreloadAnimLib(playerid,"BOX");
    PreloadAnimLib(playerid,"BSKTBALL");
    PreloadAnimLib(playerid,"BUDDY");
    PreloadAnimLib(playerid,"BUS");
    PreloadAnimLib(playerid,"CAMERA");
    PreloadAnimLib(playerid,"CAR");
    PreloadAnimLib(playerid,"CARRY");
    PreloadAnimLib(playerid,"CAR_CHAT");
    PreloadAnimLib(playerid,"CASINO");
    PreloadAnimLib(playerid,"CHAINSAW");
    PreloadAnimLib(playerid,"CHOPPA");
    PreloadAnimLib(playerid,"CLOTHES");
    PreloadAnimLib(playerid,"COACH");
    PreloadAnimLib(playerid,"COLT45");
    PreloadAnimLib(playerid,"COP_AMBIENT");
    PreloadAnimLib(playerid,"COP_DVBYZ");
    PreloadAnimLib(playerid,"CRACK");
    PreloadAnimLib(playerid,"CRIB");
    PreloadAnimLib(playerid,"DAM_JUMP");
    PreloadAnimLib(playerid,"DANCING");
    PreloadAnimLib(playerid,"DEALER");
    PreloadAnimLib(playerid,"DILDO");
    PreloadAnimLib(playerid,"DODGE");
    PreloadAnimLib(playerid,"DOZER");
    PreloadAnimLib(playerid,"DRIVEBYS");
    PreloadAnimLib(playerid,"FAT");
    PreloadAnimLib(playerid,"FIGHT_B");
    PreloadAnimLib(playerid,"FIGHT_C");
    PreloadAnimLib(playerid,"FIGHT_D");
    PreloadAnimLib(playerid,"FIGHT_E");
    PreloadAnimLib(playerid,"FINALE");
    PreloadAnimLib(playerid,"FINALE2");
    PreloadAnimLib(playerid,"FLAME");
    PreloadAnimLib(playerid,"FLOWERS");
    PreloadAnimLib(playerid,"FOOD");
    PreloadAnimLib(playerid,"FREEWEIGHTS");
    PreloadAnimLib(playerid,"GANGS");
    PreloadAnimLib(playerid,"GHANDS");
    PreloadAnimLib(playerid,"GHETTO_DB");
    PreloadAnimLib(playerid,"GOGGLES");
    PreloadAnimLib(playerid,"GRAFFITI");
    PreloadAnimLib(playerid,"GRAVEYARD");
    PreloadAnimLib(playerid,"GRENADE");
    PreloadAnimLib(playerid,"GYMNASIUM");
    PreloadAnimLib(playerid,"HAIRCUTS");
    PreloadAnimLib(playerid,"HEIST9");
    PreloadAnimLib(playerid,"INT_HOUSE");
    PreloadAnimLib(playerid,"INT_OFFICE");
    PreloadAnimLib(playerid,"INT_SHOP");
    PreloadAnimLib(playerid,"JST_BUISNESS");
    PreloadAnimLib(playerid,"KART");
    PreloadAnimLib(playerid,"KISSING");
    PreloadAnimLib(playerid,"KNIFE");
    PreloadAnimLib(playerid,"LAPDAN1");
    PreloadAnimLib(playerid,"LAPDAN2");
    PreloadAnimLib(playerid,"LAPDAN3");
    PreloadAnimLib(playerid,"LOWRIDER");
    PreloadAnimLib(playerid,"MD_CHASE");
    PreloadAnimLib(playerid,"MD_END");
    PreloadAnimLib(playerid,"MEDIC");
    PreloadAnimLib(playerid,"MISC");
    PreloadAnimLib(playerid,"MTB");
    PreloadAnimLib(playerid,"MUSCULAR");
    PreloadAnimLib(playerid,"NEVADA");
    PreloadAnimLib(playerid,"ON_LOOKERS");
    PreloadAnimLib(playerid,"OTB");
    PreloadAnimLib(playerid,"PARACHUTE");
    PreloadAnimLib(playerid,"PARK");
    PreloadAnimLib(playerid,"PAULNMAC");
    PreloadAnimLib(playerid,"PED");
    PreloadAnimLib(playerid,"PLAYER_DVBYS");
    PreloadAnimLib(playerid,"PLAYIDLES");
    PreloadAnimLib(playerid,"POLICE");
    PreloadAnimLib(playerid,"POOL");
    PreloadAnimLib(playerid,"POOR");
    PreloadAnimLib(playerid,"PYTHON");
    PreloadAnimLib(playerid,"QUAD");
    PreloadAnimLib(playerid,"QUAD_DBZ");
    PreloadAnimLib(playerid,"RAPPING");
    PreloadAnimLib(playerid,"RIFLE");
    PreloadAnimLib(playerid,"RIOT");
    PreloadAnimLib(playerid,"ROB_BANK");
    PreloadAnimLib(playerid,"ROCKET");
    PreloadAnimLib(playerid,"RUSTLER");
    PreloadAnimLib(playerid,"RYDER");
    PreloadAnimLib(playerid,"SCRATCHING");
    PreloadAnimLib(playerid,"SHAMAL");
    PreloadAnimLib(playerid,"SHOP");
    PreloadAnimLib(playerid,"SHOTGUN");
    PreloadAnimLib(playerid,"SILENCED");
    PreloadAnimLib(playerid,"SKATE");
    PreloadAnimLib(playerid,"SMOKING");
    PreloadAnimLib(playerid,"SNIPER");
    PreloadAnimLib(playerid,"SPRAYCAN");
    PreloadAnimLib(playerid,"STRIP");
    PreloadAnimLib(playerid,"SUNBATHE");
    PreloadAnimLib(playerid,"SWAT");
    PreloadAnimLib(playerid,"SWEET");
    PreloadAnimLib(playerid,"SWIM");
    PreloadAnimLib(playerid,"SWORD");
    PreloadAnimLib(playerid,"TANK");
    PreloadAnimLib(playerid,"TATTOOS");
    PreloadAnimLib(playerid,"TEC");
    PreloadAnimLib(playerid,"TRAIN");
    PreloadAnimLib(playerid,"TRUCK");
    PreloadAnimLib(playerid,"UZI");
    PreloadAnimLib(playerid,"VAN");
    PreloadAnimLib(playerid,"VENDING");
    PreloadAnimLib(playerid,"VORTEX");
    PreloadAnimLib(playerid,"WAYFARER");
    PreloadAnimLib(playerid,"WEAPONS");
    PreloadAnimLib(playerid,"WUZI");
    PreloadAnimLib(playerid,"WOP");
    PreloadAnimLib(playerid,"GFUNK");
    PreloadAnimLib(playerid,"RUNNINGMAN");
    Cargolaanimacion[playerid] = 1;
    }
    }
	}
	return 1;
}
stock PreloadAnimLib(playerid, animlib[])
{
    ApplyAnimation(playerid,animlib,"null",0.0,0,0,0,0,0);
}

forward Muriotiempo(playerid);
public Muriotiempo(playerid) {
SetPlayerPos(playerid,1175.83,-1322.04,14.19);
SendClientMessage(playerid,COLOR_BLANCO, "Doctor: te recuperaste.");
SetPlayerSkin(playerid,PI[playerid][Skin]);
if(EstaEnruta[playerid] == 1)  {

EstaEnruta[playerid] =0;
GivePlayerMoney(playerid,-10000);
SendClientMessage(playerid,-1,"- Has estrellado el {5DE650}avi�n{FFFFFF}, pero t� has sobrevivido. Por lo cual tendr�s que pagar {5DE650}$10.000 {FFFFFF}por subsidios a las familias de las personas muertas.");
}
return 1;
}

forward rtuto(playerid);
public rtuto(playerid) { PI[playerid][Registroc] = 1; return 1; }
public OnPlayerDeath(playerid, killerid, reason)
{
	SetTimerEx("Muriotiempo", 5000, false, "i", playerid);
	SetPlayerWantedLevel(playerid,0);
	EnergiaPJ[playerid] = 100;
	ApetitoPJ[playerid] = 95;
	SedPJ[playerid] = 100;
	MurioJP[playerid] = 1;
    SetPlayerWantedLevel(killerid,GetPlayerWantedLevel(playerid)+1);
    Mensaje(killerid,COLOR_BLANCO,"Has cometido un asesinato. (Tienes 1 nivel de busqueda).");
    new String[120],Nombre[MAX_PLAYER_NAME];
    GetPlayerName(killerid,Nombre,sizeof(Nombre));
    format(String,sizeof(String),"Atenci�n!: Han cometido un asesinato, sospechoso: %s",Nombre);
    Radiochat(1&&2,String);
	Murio[playerid] = 1;
    if(IsPlayerInAnyVehicle(killerid))
    {
     SendClientMessage(killerid,0xAA3333AA, "�Qu� haces? , No se puede hacer CK en �ste servidor!");
    }
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
format(String,sizeof(String),"[Llamada telef�nica] escucha: %s.",text);
Mensaje(Llamaaluser[playerid],COLOR_BLANCO,String);
format(String,sizeof(String),"[Llamada telef�nica] tu dices: %s.",text);
Mensaje(playerid,COLOR_BLANCO,String);

return 0;
}
new mensaje[128];
format(mensaje, 128, "%s dice: %s",nombre,text);
ProxDetector(20.0, playerid, mensaje,0xE6E6E6E6,0xC8C8C8C8,0xAAAAAAAA,0x8C8C8C8C,0x6E6E6E6E);
return 0;
}
public OnPlayerCommandText(playerid, cmdtext[])
{

	return 0;
}


forward FichaT(playerid);
public FichaT(playerid) {
for(new i=0;i<MAX_PLAYERS;i++) {
Costodelviaje[playerid] += Tarifa[i];
}
new String[120];
format(String,sizeof(String),"$%d.00",Costodelviaje[playerid]);TextDrawHideForPlayer(playerid,TaximetroT[Eseltaxista[playerid]][3]);
TextDrawSetString(TaximetroT[Eseltaxista[playerid]][3],String);TextDrawShowForPlayer(playerid,TaximetroT[Eseltaxista[playerid]][3]);
TextDrawHideForPlayer(playerid,TaximetroT[playerid][3]);
TextDrawSetString(TaximetroT[playerid][3],String);TextDrawShowForPlayer(playerid,TaximetroT[playerid][3]);
return 1;
}
public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{

	if(!ispassenger) {
    if(CI[vehicleid][CCerrado] == 0) { } else Quitarcoche(playerid);
    if(PilotoAvion(vehicleid)){ if(PI[playerid][Trabajo] == 2) { }  else Quitarcoche(playerid); }
    
    if(Basurero2(vehicleid)){  if(PI[playerid][Trabajo] == 1) {  }  else Quitarcoche(playerid); }
    

	if(Bus2(vehicleid)){ if(PI[playerid][Trabajo] == 3) { Dialog(playerid,DTrabajoBus,DIALOG_STYLE_LIST,"","Trabajar\nSalir del coche","Elegir","");  }  else Quitarcoche(playerid); }
	if(PoliciaFederalC(vehicleid)){ if(PI[playerid][Faccion] == 1 || PI[playerid][Faccion] == 2  ) {  }  else Quitarcoche(playerid); }
	if(GobiernoVehiculo(vehicleid)){ if(PI[playerid][Faccion] == 6) {  }  else Quitarcoche(playerid); }
    if(GrooveCoches(vehicleid)){ if(PI[playerid][Faccion] == 8) {  }  else Quitarcoche(playerid); }
	if(LSMDC(vehicleid)){ if(PI[playerid][Faccion] == 3) {  }  else Quitarcoche(playerid); }
	if(BallasCoches(vehicleid)){ if(PI[playerid][Faccion] == 9) {  }  else Quitarcoche(playerid); }
	if(LCNCoches(vehicleid)){ if(PI[playerid][Faccion] == 10) {  }  else Quitarcoche(playerid); }
	if(YakuzaCoches(vehicleid)){ if(PI[playerid][Faccion] == 7) {  }  else Quitarcoche(playerid); }
	if(MecaCoche(vehicleid)){ if(PI[playerid][Faccion] == 6) {  }  else Quitarcoche(playerid); }
	if(NotCoches(vehicleid)){ if(PI[playerid][Faccion] == 5) {  }  else Quitarcoche(playerid); }
	


    if(BusUrbano(vehicleid)){ if(PI[playerid][Trabajo] == 7) { Dialog(playerid,DTrabajoBus,DIALOG_STYLE_LIST,"","Trabajar\nSalir del coche","Elegir","");  }  else Quitarcoche(playerid); }


	if(CosechadoraDrogas(vehicleid)){ if(PI[playerid][Trabajo] == 4) { }  else Quitarcoche(playerid); }
	if(CCamionero(vehicleid)){ if(PI[playerid][Trabajo] == 5) { }  else Quitarcoche(playerid); }
	if(CocheTaxi(vehicleid)) { if(PI[playerid][Trabajo] == 6) { } else Quitarcoche(playerid); }
	if(TransportistaGas(vehicleid)) { if(PI[playerid][Trabajo] == 10) { } else Quitarcoche(playerid); }
	

	
	
	
 	}
	else if(CocheTaxi(vehicleid)) {
	if(ispassenger) {
	if(Pidiotaxi[playerid] == 1) {
	if(EstaenTaxi[playerid] == 0) {
	TimerTaxi[playerid] = SetTimerEx("FichaT", 15000, true, "i", playerid); EstaenTaxi[playerid] = 1;
	TextDrawShowForPlayer(playerid,TaximetroT[playerid][0]);TextDrawShowForPlayer(playerid,TaximetroT[playerid][1]);TextDrawShowForPlayer(playerid,TaximetroT[playerid][2]);TextDrawShowForPlayer(playerid,TaximetroT[playerid][3]);
	}
	} else Quitarcoche(playerid);
	}
	}

	
	return 1;
}
forward CTransportGas(playerid);
public CTransportGas(playerid) {
TransportistaGasR[playerid] = 2;
new Lugar = random(3);
switch(Lugar) {
case 0: {
Checkpoint(playerid,1937.96497, -1773.95251, 12.94531,5.0);
Mensaje(playerid,0x008EECEC,"Recorrido:{FFFFFF} Ahora entr�ga la gasolina en la gasoliner�a de{008EEC} Los Santos.");
ControlP(playerid,1);
LugarG[playerid] = 1;
}
case 1: {
Checkpoint(playerid, -1676.92529, 411.37823, 7.62500,5.0);
Mensaje(playerid,0x008EECEC,"Recorrido:{FFFFFF} Ahora entr�ga la gasolina en la gasoliner�a de{008EEC} San Fierro.");
ControlP(playerid,1);
LugarG[playerid] = 2;
}
case 2: {
Checkpoint(playerid,1596.27917, 2210.77100, 11.09375,5.0);
Mensaje(playerid,0x008EECEC,"Recorrido:{FFFFFF} Ahora entr�ga la gasolina en la gasoliner�a de{008EEC} Las Venturas.");
ControlP(playerid,1);
LugarG[playerid] = 3;
}
}
return 1;
}
forward DTransportGas(playerid);
public DTransportGas(playerid) {
ControlP(playerid,1);
TransportistaGasR[playerid] = 3;
Checkpoint(playerid,82.17700, -238.71422, 1.21875,5.0);
Mensaje(playerid,0x008EECEC,"Recorrido:{FFFFFF} Para terminar tendr�s que ir a la empresa y dejar el cami�n.");
return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	TextDrawHideForPlayer(playerid,VelocimetroT[playerid][1]);
	TextDrawHideForPlayer(playerid,VelocimetroT[playerid][0]);
	TextDrawHideForPlayer(playerid,VelocimetroT[playerid][2]);
	TextDrawHideForPlayer(playerid,VelocimetroT[playerid][3]);
	TextDrawHideForPlayer(playerid,EMarihuana1);
	TextDrawHideForPlayer(playerid,EMarihuana2);
	TextDrawHideForPlayer(playerid,EMarihuana3);
	TextDrawHideForPlayer(playerid,TaximetroT[playerid][0]);TextDrawHideForPlayer(playerid,TaximetroT[playerid][1]);TextDrawHideForPlayer(playerid,TaximetroT[playerid][2]);TextDrawHideForPlayer(playerid,TaximetroT[playerid][3]);
	TextDrawHideForPlayer(playerid,TaximetroT[Eseltaxista[playerid]][3]);
	TieneLinea[playerid] = 0;
	LineaA[playerid] = 0;
	LineaB[playerid] = 0;
	TextDrawHideForPlayer(playerid,ECocaina);
	KillTimer(TimerTaxi[playerid]);
	EstaenTaxi[playerid] = 0;
	GivePlayerMoney(Eseltaxista[playerid],Costodelviaje[playerid]);
	GivePlayerMoney(playerid,-Costodelviaje[playerid]);
	KillTimer(MostrarVel[playerid]);
	Eseltaxista[playerid] = -1;
	TieneServicio[Eseltaxista[playerid]] = 0;
	Pidiotaxi[playerid] = 0;
	Costodelviaje[playerid] =0;
 	DisablePlayerCheckpoint(playerid);
	DestroyProgressBar(BarGas[playerid]);
 	BarGas[playerid] = INVALID_BAR_ID;
 	EstaEnruta[playerid] =0;
 	TextDrawHideForPlayer(playerid,TaximetroT[playerid][0]);TextDrawHideForPlayer(playerid,TaximetroT[playerid][1]);TextDrawHideForPlayer(playerid,TaximetroT[playerid][2]);TextDrawHideForPlayer(playerid,TaximetroT[playerid][3]);
	return 1;
}
forward Entrovelocimetro(playerid);
public Entrovelocimetro(playerid) {
MostrarVel[playerid] = SetTimerEx("VVehiculo2", 100, true, "ii", playerid, GetPlayerVehicleID(playerid));
TextDrawShowForPlayer(playerid,VelocimetroT[playerid][0]);
TextDrawShowForPlayer(playerid,VelocimetroT[playerid][1]);
TextDrawShowForPlayer(playerid,VelocimetroT[playerid][2]);
TextDrawShowForPlayer(playerid,VelocimetroT[playerid][3]);

BarGas[playerid] = CreateProgressBar(590.000000, 183.522171, 56.50, 5.19, -1611661153, 100.0);
ShowProgressBarForPlayer(playerid, BarGas[playerid]);
return 1;
}
forward VVehiculo2(Usuario,Vehi);
public VVehiculo2(Usuario,Vehi) {
new string[50];	format(string, sizeof(string), "%d KM/H", VelocidadVehiculo(Usuario));
TextDrawSetString(VelocimetroT[Usuario][1], string);
new String[120];
format(String,sizeof(String),"%dl",Gasolina[Vehi]);
TextDrawSetString(VelocimetroT[Usuario][3],String);
SetProgressBarValue(BarGas[Vehi], Gasolina[Vehi]);
UpdateProgressBar(BarGas[Vehi], Usuario);
return 1; }
public OnPlayerStateChange(playerid, newstate, oldstate)
{
    switch(GetPlayerState(playerid)) {
    case PLAYER_STATE_DRIVER: {
    SetTimerEx("Entrovelocimetro", 1000, false, "i", playerid);
    }
    case PLAYER_STATE_ONFOOT, PLAYER_STATE_PASSENGER: {
	TextDrawHideForPlayer(playerid,VelocimetroT[playerid][0]);
	TextDrawHideForPlayer(playerid,VelocimetroT[playerid][1]);
	TextDrawHideForPlayer(playerid,VelocimetroT[playerid][2]);
	TextDrawHideForPlayer(playerid,VelocimetroT[playerid][3]);
	DestroyProgressBar(BarGas[playerid]);
 	BarGas[playerid] = INVALID_BAR_ID;
	KillTimer(MostrarVel[playerid]);
    }
    }
    new vehicleid = GetPlayerVehicleID(playerid);
	if(newstate == PLAYER_STATE_DRIVER)
	{

	if(CAvion2(vehicleid)){ if(PI[playerid][Trabajo] == 2) { Mensaje(playerid,COLOR_BLANCO,"Coloque /RecorridoA , Para iniciar su recorrido."); } }
 	if(Bus2(vehicleid)){ if(PI[playerid][Trabajo] == 3) { Mensaje(playerid,COLOR_BLANCO,"Coloque /Recorrido , Para iniciar su recorrido.");  } }
	if(Rentavehiculos(vehicleid)) {
	if(Rentado[playerid] == 0 || RentadoV[vehicleid] == 0) {
	Dialog(playerid,RentarCocheD,DIALOG_STYLE_MSGBOX,"Contrato de renta.","\t {FFFFFF}�Deseas rentar �ste veh�culo?\n\n\tValor a pagar: {00BE13}$300{FFFFFF}\n El contrato es de 15 d�as.{009AFF}(15 Min IC).","S�","No");
	}
	else if(RentadoV[playerid] == 1 || Rentado[playerid] == vehicleid) {
	Mensaje(playerid,COLOR_BLANCO,"Est�s rentado �ste veh�culo.");
	}
	if(vehicleid == 514) { Mensaje(playerid,COLOR_BLANCO,"{0099FF}[Info]:{FFFFFF} Est�s en un cami�n de carga, b�sca un trailer y ac�plalo."); }
	}
	
	}
	//_______________________________________________
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{

	if(TransportistaGasR[playerid] == 1) {
	ControlP(playerid,0);
	SetTimerEx("CTransportGas", 15000, false, "i", playerid);
	GameTextForPlayer(playerid, "Cargando gasolina en el ~b~~w~trailer..", 15000, 5);
 	}
 	else if(TransportistaGasR[playerid] == 2) {
	if(LugarG[playerid] == 1) {
	ControlP(playerid,0);
	SetTimerEx("DTransportGas", 15000, false, "i", playerid);
	GameTextForPlayer(playerid, "Descargando la gasolina del ~b~~w~trailer..", 15000, 5);
	}
	else if(LugarG[playerid] == 2) {
	ControlP(playerid,0);
	SetTimerEx("DTransportGas", 15000, false, "i", playerid);
	GameTextForPlayer(playerid, "Descargando la gasolina del ~b~~w~trailer..", 15000, 5);
	}
	if(LugarG[playerid] == 3) {
	ControlP(playerid,0);
	SetTimerEx("DTransportGas", 15000, false, "i", playerid);
	GameTextForPlayer(playerid, "Descargando la gasolina del ~b~~w~trailer..", 15000, 5);
	}
	}
	else if(TransportistaGasR[playerid] == 3) {
	if(LugarG[playerid] == 1) {
	Motorencendido[GetPlayerVehicleID(playerid)] = 0;
	SetVehicleToRespawn(GetVehicleTrailer(GetPlayerVehicleID(playerid)));
	SetVehicleToRespawn(GetPlayerVehicleID(playerid));
	Quitarcoche(playerid);
	
	Mensaje(playerid,COLOR_BLANCO,"Has terminado el recorrido y has ganado  $450.");
	GivePlayerMoney(playerid,450);
	LugarG[playerid] = 0;
    DCheckpoint(playerid);
	}
	else if(LugarG[playerid] == 2) {
	Motorencendido[GetPlayerVehicleID(playerid)] = 0;
	SetVehicleToRespawn(GetVehicleTrailer(GetPlayerVehicleID(playerid)));
	SetVehicleToRespawn(GetPlayerVehicleID(playerid));
	Quitarcoche(playerid);
	Mensaje(playerid,COLOR_BLANCO,"Has terminado el recorrido y has ganado  $390.");
	GivePlayerMoney(playerid,390);
	LugarG[playerid] = 0;
    DCheckpoint(playerid);
	}
	else if(LugarG[playerid] == 3) {
	Motorencendido[GetPlayerVehicleID(playerid)] = 0;
	SetVehicleToRespawn(GetVehicleTrailer(GetPlayerVehicleID(playerid)));
	SetVehicleToRespawn(GetPlayerVehicleID(playerid));
	Quitarcoche(playerid);
	Mensaje(playerid,COLOR_BLANCO,"Has terminado el recorrido y has ganado  $350.");
	GivePlayerMoney(playerid,350);
	LugarG[playerid] = 0;
    DCheckpoint(playerid);
	}
	}
	if(RCosechadora[playerid] == 1) {
	Checkpoint(playerid,-995.0000000,-1629.6999500,76.0000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'.");
	RCosechadora[playerid] = 2;
	ControlP(playerid,0);
	SetTimerEx("CosT", 3000, false, "i", playerid);
	}
	else if(RCosechadora[playerid] == 2) {
	Checkpoint(playerid,-984.4000200,-1620.4000200,76.0000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'.");
	RCosechadora[playerid] = 3;
	ControlP(playerid,0);
	SetTimerEx("CosT", 3000, false, "i", playerid);
	}
	else if(RCosechadora[playerid] == 3) {
	Checkpoint(playerid,-1022.2999900,-1613.5999800,76.0000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'.");
	RCosechadora[playerid] = 4;
	ControlP(playerid,0);
    SetTimerEx("CosT", 3000, false, "i", playerid);
	}
	else if(RCosechadora[playerid] == 4) {
	Checkpoint(playerid,-1024.0000000,-1604.1999500,76.0000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'.");
	RCosechadora[playerid] = 5;
	ControlP(playerid,0);
	SetTimerEx("CosT", 3000, false, "i", playerid);
	}
	else if(RCosechadora[playerid] == 5) {
	Checkpoint(playerid,-978.5000000,-1605.3000500,76.0000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'.");
	RCosechadora[playerid] = 6;
	ControlP(playerid,0);
	SetTimerEx("CosT", 3000, false, "i", playerid);
	}
	else if(RCosechadora[playerid] == 6) {
	Checkpoint(playerid,-1105.5999800,-1621.6999500,76.0000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'Checkpoint'{FFFFFF}, para guardar la cosechadora.");
	RCosechadora[playerid] = 7;
	ControlP(playerid,0);
	SetTimerEx("CosT", 3000, false, "i", playerid);
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
	SetTimerEx("DescargaCamion", 10000, false, "i", playerid);
	ControlP(playerid,0);
	new String[200],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
	format(String, sizeof(String), "[/Me] %s Descarga la carga.", Nombre);
	ProxDetector(30.0, playerid, String, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
	TerminoCamion[playerid] = 1;
	CamionTrabajo[playerid] = 0;

	}
	else if(CamionTrabajo[playerid] == 2) {
	SetTimerEx("DescargaCamion", 10000, false, "i", playerid);
	ControlP(playerid,0);
	new String[200],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
	format(String, sizeof(String), "[/Me] %s Dejala carga.", Nombre);
	ProxDetector(30.0, playerid, String, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
	TerminoCamion[playerid] = 1;
	CamionTrabajo[playerid] = 0;

	}
	else if(TerminoCamion[playerid] == 1) {
	Mensaje(playerid,COLOR_BLANCO,"Se te ha pagado{00C71E} $350{FFFFFF} , por entregar mercader�a.");
	Quitarcoche(playerid);
	TerminoCamion[playerid] = 0;
	GivePlayerMoney(playerid,350);
	DCheckpoint(playerid);
	}
	}
	if(PI[playerid][Trabajo] == 3) {
	if(TrabajoBus[playerid] == 1) {
	Checkpoint(playerid,1712.6999500,1453.3000500,10.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'CheckPoint',{009DFF} LAS VENTURAS.");
	TrabajoBus[playerid] = 2;
	ControlP(playerid,0);
	SetTimerEx("BusParada", 5000, false, "i", playerid);
	}
 	else if(TrabajoBus[playerid] == 2) {
	Checkpoint(playerid,1770.8000500,-1813.6999500,13.2000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'CheckPoint',{009DFF} LOS SANTOS.");
	TrabajoBus[playerid] = 3;
	ControlP(playerid,0);
	SetTimerEx("BusParada", 5000, false, "i", playerid);
	}
	else if(TrabajoBus[playerid] == 3) {
	CochePrendido[GetPlayerVehicleID(playerid)] = 1;
	Motorencendido[GetPlayerVehicleID(playerid)] = 1;
	new enginem, luces, alarm, doors, bonnet, boot, objective;
	GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, bonnet, boot, objective);
	SetVehicleParamsEx(GetPlayerVehicleID(playerid),VEHICLE_PARAMS_ON, luces, alarm, doors, bonnet, boot, objective);
	Mensaje(playerid,COLOR_BLANCO,"Se te ha abonado{00C71E} $350{FFFFFF}, Por el trabajo.");
	TrabajoBus[playerid] = 0;
	GivePlayerMoney(playerid,350);
	DCheckpoint(playerid);
	Quitarcoche(playerid);
	}
	}
	
	//Trabajo: PILOTO.
	if(PI[playerid][Trabajo] == 2) {
	if(TrabajoPiloto[playerid] == 1) {
	Checkpoint(playerid,1388.9000200,1512.8000500,10.5000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'CheckPoint',{009DFF} LAS VENTURAS.");
	TrabajoPiloto[playerid] = 2;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(TrabajoPiloto[playerid] == 2) {
	Checkpoint(playerid,1923.9000200,-2275.6001000,13.2000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'CheckPoint',{009DFF} LOS SANTOS.");
	TrabajoPiloto[playerid] = 3;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(TrabajoPiloto[playerid] == 3) {
	Mensaje(playerid,COLOR_BLANCO,"{FFEC1C}- Se te ha abonado{FFEC1C} $700{FFFFFF}, Por el trabajo.");
	TrabajoPiloto[playerid] = 0;
	GivePlayerMoney(playerid,700);
	DCheckpoint(playerid);
	Quitarcoche(playerid);
	ControlP(playerid,1);
	}
	}
	// Trabajo: Taxista
	if(PI[playerid][Trabajo] == 6) {
	if(TieneServicio[playerid] == 1) {
	DCheckpoint(playerid);
	}
	}
	
	// Trabajo: Chofer de bus URBANO.

	// LINEA  - A -(115)
	if(PI[playerid][Trabajo] == 7) {
	if(LineaA[playerid] == 1) {
	Checkpoint(playerid,810.6000000,-1394.4000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 3;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 3) {
	Checkpoint(playerid,539.6000000,-1406.3000000,14.7000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 4;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 4) {
	Checkpoint(playerid,614.8000000,-1322.2000000,12.7000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 5;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 5) {
	Checkpoint(playerid,785.0000000,-1322.7000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 6;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 6) {
	Checkpoint(playerid,1039.4000000,-1328.1000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 7;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 7) {
	Checkpoint(playerid,1064.5000000,-1165.4000000,22.7000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 8;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 8) {
	Checkpoint(playerid,1200.2000000,-1150.2000000,22.60000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 9;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 9) {
	Checkpoint(playerid,1328.3000000,-1149.9000000,22.7000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 10;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 10) {
	Checkpoint(playerid,1340.7000000,-1265.7000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 11;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 11) {
	Checkpoint(playerid,1231.0000000,-1278.3000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 12;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 12) {
	Checkpoint(playerid,1077.7000000,-1278.4000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 13;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 13) {
	Checkpoint(playerid,1052.0000000,-1306.1000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 14;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 14) {
	Checkpoint(playerid,1180.9000000,-1408.0000000,12.2000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 15;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 15) {
	Checkpoint(playerid,1327.2000000,-1407.8000000,12.3000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 16;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 16) {
	Checkpoint(playerid,1295.3000000,-1697.2000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 17;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 17) {
	Checkpoint(playerid,1062.3000000,-1746.1000000,12.5000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaA[playerid] = 18;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaA[playerid] == 18) {
	Mensaje(playerid,COLOR_BLANCO,"Se te ha abonado{00C71E} $350{FFFFFF}, Por el trabajo.");
	LineaA[playerid] = 0;
	GivePlayerMoney(playerid,350);
	DCheckpoint(playerid);
	Quitarcoche(playerid);
	ControlP(playerid,1);
	}
	if(LineaB[playerid] == 1) {
	Checkpoint(playerid,1392.4000000,-1746.0000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 2;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 2) {
	Checkpoint(playerid,1556.6000000,-1735.2000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 3;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 3) {
	Checkpoint(playerid,1676.1000000,-1734.7000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 4;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 4) {
	Checkpoint(playerid,1805.4000000,-1734.9000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 5;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 5) {
	Checkpoint(playerid,1819.1000000,-1820.1000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 6;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 6) {
	Checkpoint(playerid,1946.6000000,-1934.8000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 7;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 7) {
	Checkpoint(playerid,2084.1000000,-1908.7000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 8;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 8) {
	Checkpoint(playerid,2219.4000000,-1763.5000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 9;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 9) {
	Checkpoint(playerid,2106.8000000,-1749.7000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 10;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 10) {
	Checkpoint(playerid,1954.9000000,-1749.8000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 11;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 11) {
	Checkpoint(playerid,1836.0000000,-1749.8000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 12;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 12) {
	Checkpoint(playerid,1703.3000000,-1729.6000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 13;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 13) {
	Checkpoint(playerid,1543.1000000,-1729.6000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 14;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 14) {
	Checkpoint(playerid,1532.1000000,-1607.1000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 15;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 15) {
	Checkpoint(playerid,1447.4000000,-1589.8000000,12.4000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 16;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 16) {
	Checkpoint(playerid,1217.5000000,-1392.7000000,12.3000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 17;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 17) {
	Checkpoint(playerid,1147.1000000,-1698.8000000,12.8000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 18;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 18) {
	Checkpoint(playerid,1062.3000000,-1746.1000000,12.5000000,5.0);
	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {FF9E00}'CheckPoint'.");
	LineaB[playerid] = 19;
	ControlP(playerid,0);
	SetTimerEx("AvionParada", 10000, false, "i", playerid);
	}
	else if(LineaB[playerid] == 19) {
	Mensaje(playerid,COLOR_BLANCO,"Se te ha abonado{00C71E} $350{FFFFFF}, Por el trabajo.");
	LineaB[playerid] = 0;
	GivePlayerMoney(playerid,350);
	DCheckpoint(playerid);
	Quitarcoche(playerid);
	ControlP(playerid,1);
	}
	}

	//Trabajo: Basurero
	if(PI[playerid][Trabajo] == 1) {
	if(RBasurero[playerid] == 1 ||RBasurero[playerid] == 2||RBasurero[playerid] == 3||RBasurero[playerid] == 4||RBasurero[playerid] == 5||RBasurero[playerid] == 6||RBasurero[playerid] == 7||RBasurero[playerid] == 8||RBasurero[playerid] == 9||RBasurero[playerid] == 10 ) {
	ControlP(playerid,0);
	ShowPlayerDialog(playerid,D_Basurero1,DIALOG_STYLE_MSGBOX,"- Panel de control.","Presiona 'Agarrar' para agarrar el contenedor de basura.","Agarrar","");
	}
	//TERMINA
	else if(RBasurero[playerid] == 11) {
	Mensaje(playerid,COLOR_BLANCO,"Se te ha abonado{00C71E} $350{FFFFFF}, Por el trabajo.");
	RBasurero[playerid] = 0;
	GivePlayerMoney(playerid,350);
	DCheckpoint(playerid);
	Quitarcoche(playerid);
	}
	}
	if(PI[playerid][Faccion] == 1 || PI[playerid][Faccion] == 2) {
	if(LoLocalizo[playerid] == 1) {
	LoLocalizo[playerid] = 0;
	}
	}
	
	if(CarroLicencia[playerid] == 1) {
	if(RLicenciaV[playerid] == 1) {
	if(!DCoche(playerid)) return Mensaje(playerid,COLOR_BLANCO,"No estas en un veh�culo");
	Checkpoint(playerid,1767.9,-1106.8,23.9,5.0);
	RLicenciaV[playerid] = 2;
	}
	else if(RLicenciaV[playerid] == 2) {
 	if(!DCoche(playerid)) return Mensaje(playerid,COLOR_BLANCO,"No estas en un veh�culo");
 	DCheckpoint(playerid);
 	DestroyVehicle(VehiculoLICENCIA[playerid]);
	Mensaje(playerid,COLOR_BLANCO,"Bien, ve a buscar la licencia.");
	RLicenciaV[playerid] = 0;
	}
	}
	if(MedicoPedido == 1) {
	DCheckpoint(playerid);
	MedicoPedido = 0;
	}
	if(PI[playerid][Faccion] == 5) {
	DCheckpoint(playerid);
	}
	if(PI[playerid][Faccion] == 1 || PI[playerid][Faccion] == 2) {
	DCheckpoint(playerid);
	}
	return 1;
}
forward BusParada(playerid);
public BusParada(playerid) {
ControlP(playerid,1);
return 1;
}
forward AvionParada(playerid);
public AvionParada(playerid) {
ControlP(playerid,1);
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
new Coche = GetPlayerVehicleID(playerid);
if(listid == skinlist)
{
if(response)
{
if(modelid <= 100) {
SendClientMessage(playerid, COLOR_BLANCO, "La prenda que has elegido vale: {00E308}$100{FFFFFF},Ve a pagarla.");
Eligiolaropa[playerid] = modelid;
}
else if(modelid > 100) {
SendClientMessage(playerid, COLOR_BLANCO, "La prenda que has elegido vale: {00E308}$150{FFFFFF},Ve a pagarla.");
Eligiolaropa[playerid] = modelid;
}
}
}
if(listid == Tranfeder)
{
if(response)
{
if(modelid == 1073 || modelid == 1074 || modelid == 1075 || modelid == 1076 || modelid == 1077 || modelid == 1078 || modelid == 1079 || modelid == 1080 || modelid == 1081 || modelid == 1082 || modelid == 1083 || modelid == 1084 || modelid == 10859) {

}
ColocarP[IdTun[playerid]] = modelid;
Mensaje(IdTun[playerid],COLOR_BLANCO,"/Colocarlopedido ((Recuerda hacer el rol!))");
IdTun[IdTun[playerid]] = false;
IdTun[playerid] = false;
}
}
if(listid == Broadway)
{
if(response)
{
ColocarP[IdTun[playerid]] = modelid;
Mensaje(IdTun[playerid],COLOR_BLANCO,"/Colocarlopedido ((Recuerda hacer el rol!))");
IdTun[IdTun[playerid]] = false;
IdTun[playerid] = false;
}
}
if(listid == Uranus)
{
if(response)
{
ColocarP[IdTun[playerid]] = modelid;
Mensaje(IdTun[playerid],COLOR_BLANCO,"/Colocarlopedido ((Recuerda hacer el rol!))");
IdTun[IdTun[playerid]] = false;
IdTun[playerid] = false;
}
}
if(listid == Jester)
{
if(response)
{
ColocarP[IdTun[playerid]] = modelid;
Mensaje(IdTun[playerid],COLOR_BLANCO,"/Colocarlopedido ((Recuerda hacer el rol!))");
IdTun[IdTun[playerid]] = false;
IdTun[playerid] = false;
}
}
if(listid == Sultan)
{
if(response)
{
ColocarP[IdTun[playerid]] = modelid;
Mensaje(IdTun[playerid],COLOR_BLANCO,"/Colocarlopedido ((Recuerda hacer el rol!))");
IdTun[IdTun[playerid]] = false;
IdTun[playerid] = false;
}
}
if(listid == Stratum)
{
if(response)
{
ColocarP[IdTun[playerid]] = modelid;
Mensaje(IdTun[playerid],COLOR_BLANCO,"/Colocarlopedido ((Recuerda hacer el rol!))");
IdTun[IdTun[playerid]] = false;
IdTun[playerid] = false;
}
}
if(listid == Elegy)
{
if(response)
{
ColocarP[IdTun[playerid]] = modelid;
Mensaje(IdTun[playerid],COLOR_BLANCO,"/Colocarlopedido ((Recuerda hacer el rol!))");
IdTun[IdTun[playerid]] = false;
IdTun[playerid] = false;
}
}
if(listid == Flash)
{
if(response)
{
ColocarP[IdTun[playerid]] = modelid;
Mensaje(IdTun[playerid],COLOR_BLANCO,"/Colocarlopedido ((Recuerda hacer el rol!))");
IdTun[IdTun[playerid]] = false;
IdTun[playerid] = false;
}
}
if(listid == Savanna)
{
if(response)
{
SendClientMessage(playerid, COLOR_BLANCO, "Se coloc� el componente.{00E308}$150{FFFFFF}.");
IdTun[IdTun[playerid]] = false;
AddVehicleComponent(Coche, modelid);
IdTun[playerid] = false;
}
}
if(listid == Tornado)
{
if(response)
{
ColocarP[IdTun[playerid]] = modelid;
Mensaje(IdTun[playerid],COLOR_BLANCO,"/Colocarlopedido ((Recuerda hacer el rol!))");
IdTun[IdTun[playerid]] = false;
IdTun[playerid] = false;
}
}
if(listid == Remington)
{
if(response)
{
ColocarP[IdTun[playerid]] = modelid;
Mensaje(IdTun[playerid],COLOR_BLANCO,"/Colocarlopedido ((Recuerda hacer el rol!))");
IdTun[IdTun[playerid]] = false;
IdTun[playerid] = false;
}
}
if(listid == Slamvan)
{
if(response)
{
ColocarP[IdTun[playerid]] = modelid;
Mensaje(IdTun[playerid],COLOR_BLANCO,"/Colocarlopedido ((Recuerda hacer el rol!))");
IdTun[IdTun[playerid]] = false;
IdTun[playerid] = false;
}
}
if(listid == PocoTun)
{
if(response)
{
ColocarP[IdTun[playerid]] = modelid;
Mensaje(IdTun[playerid],COLOR_BLANCO,"/Colocarlopedido ((Recuerda hacer el rol!))");
IdTun[IdTun[playerid]] = false;
IdTun[playerid] = false;
}
}

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
    else if(clickedid == TextC2)
    {
	if(Llamando[playerid] == 0) {
	new String[400] = "Marca el n�mero: \n1\t2\t3\n4\t5\t6\n7\t8\t9\n\n{008DFF}Mec�nico:{FFFFFF} 555\n{FCFF00}Taxi:{FFFFFF} 456-66-66\n{FF0000}Emergencias:{FFFFFF} 911";
	Dialog(playerid,D_TELEFONOM,DIALOG_STYLE_INPUT,"- TEL�FONO.",String,"[)]","[X]");
	} else Mensaje(playerid,COLOR_BLANCO,"Ya estas en una llama, utiliza /tel�fono.");
    }
    else if(clickedid == TextC4)
    {
    Mensaje(playerid,COLOR_BLANCO,"Apagaste el celular.");
    TextDrawHideForPlayer(playerid,BoxC1);
	TextDrawHideForPlayer(playerid,BoxC2);
	TextDrawHideForPlayer(playerid,BoxC3);
	TextDrawHideForPlayer(playerid,BoxC4);
	TextDrawHideForPlayer(playerid,BoxC5);
	TextDrawHideForPlayer(playerid,TextC1);
	TextDrawHideForPlayer(playerid,TextC2);
	TextDrawHideForPlayer(playerid,TextC3);
	TextDrawHideForPlayer(playerid,TextC4);
    }
    else if(clickedid == Tel8)
    {
    EligioT[playerid] = 1;
	TextDrawSetString(Tel7[playerid], "Agenda");
    }
	else if(clickedid == Tel9) {
    EligioT[playerid] = 2;
	TextDrawSetString(Tel7[playerid], "Llamar");
    }
    else if(clickedid == Tel10) {
    EligioT[playerid] = 3;
	TextDrawSetString(Tel7[playerid], "Radio");
    }
    else if(clickedid == Tel11) {
    EligioT[playerid] = 4;
	TextDrawSetString(Tel7[playerid], "Configuracion");
    }
    else if(clickedid == Tel15) {
    if(EligioT[playerid] == 1) {
    new String[400];
	format(String,sizeof(String),"1- %s - %d\n2- %s - %d\n3- %s - %d\n4- %s - %d\n5- %s - %d",PI[playerid][ANom1],PI[playerid][AN1],PI[playerid][ANom2],PI[playerid][AN2],PI[playerid][ANom3],PI[playerid][AN3],PI[playerid][ANom4],PI[playerid][AN4],PI[playerid][ANom5],PI[playerid][AN5]);
	Dialog(playerid,D_Agenda,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
	QuitarTel(playerid); Estelefono[playerid] = 0;
    }
    else if(EligioT[playerid] == 2) {
   	if(Llamando[playerid] == 0) {
	new String[400] = "Marca el n�mero: \n1\t2\t3\n4\t5\t6\n7\t8\t9\n\n{008DFF}Mec�nico:{FFFFFF} 555\n{FCFF00}Taxi:{FFFFFF} 456-66-66\n{FF0000}Emergencias:{FFFFFF} 911";
	Dialog(playerid,D_TELEFONOM,DIALOG_STYLE_INPUT,"- TEL�FONO.",String,"[)]","[X]");
	QuitarTel(playerid); Estelefono[playerid] = 0;
	} else Mensaje(playerid,COLOR_BLANCO,"Ya estas en una llama, utiliza /tel�fono.");
    }
    else if(EligioT[playerid] == 3) {
	Mensaje(playerid,COLOR_BLANCO,"[ZSRP]: �sta opci�n est� deshabilitada [Opci�n: RADIO].");
	
    }
    else if(EligioT[playerid] == 4) {
	Dialog(playerid,D_ElegirFondo,DIALOG_STYLE_LIST,"- MEN� TEL�FONO.","{0077FF}-{FFFFFF} Fondo {0077FF}1{FFFFFF}\n{0077FF}-{FFFFFF} Fondo {0077FF}2{FFFFFF}\n{0077FF}-{FFFFFF} Fondo {0077FF}3{FFFFFF}\n{0077FF}-{FFFFFF} Fondo {0077FF}4{FFFFFF}\n{0077FF}-{FFFFFF} Fondo {0077FF}5{FFFFFF}","Elegir","Salir");
    }
    }
	if(Estelefono[playerid] == 0 && EstaEnConce[playerid] == 0) {
    CancelSelectTextDraw(playerid);
	TextDrawHideForPlayer(playerid,BRetirar);
	TextDrawHideForPlayer(playerid,BText1[playerid]);
	TextDrawHideForPlayer(playerid,BEstado);
	TextDrawHideForPlayer(playerid,BBox1);
	TextDrawHideForPlayer(playerid,BBox2);
	TextDrawHideForPlayer(playerid,BBox3);
	TextDrawHideForPlayer(playerid,BBox4);
	TextDrawHideForPlayer(playerid,BRetirar);
	TextDrawHideForPlayer(playerid,BText4);
	TextDrawHideForPlayer(playerid,BText5);
	TextDrawHideForPlayer(playerid,BText6);
 	TextDrawHideForPlayer(playerid,BoxC1);
	TextDrawHideForPlayer(playerid,BoxC2);
	TextDrawHideForPlayer(playerid,BoxC3);
	TextDrawHideForPlayer(playerid,BoxC4);
	TextDrawHideForPlayer(playerid,BoxC5);
	TextDrawHideForPlayer(playerid,TextC1);
	TextDrawHideForPlayer(playerid,TextC2);
	TextDrawHideForPlayer(playerid,TextC3);
	TextDrawHideForPlayer(playerid,TextC4);
	}
	if(clickedid == ConcecionarioT[playerid][18])
    {
    if(ConcesionarioBajaG[playerid] == 0) {
    if(ListaC[playerid] != 0) {
    new String[100];
    ListaC[playerid]--;
    if(ListaC[playerid] == 0) { ConteoC[playerid][0]=401;PrecioC[playerid][0]=401; ConteoC[playerid][1]=402;PrecioC[playerid][1]=402; ConteoC[playerid][2]=411;PrecioC[playerid][2]=411; ConteoC[playerid][3]=415;PrecioC[playerid][3]=415; }
    else if(ListaC[playerid] == 1) { ConteoC[playerid][0]=429;PrecioC[playerid][0]=429; ConteoC[playerid][1]=434;PrecioC[playerid][1]=434; ConteoC[playerid][2]=439;PrecioC[playerid][2]=439; ConteoC[playerid][3]=451;PrecioC[playerid][3]=451; }
    else if(ListaC[playerid] == 2) { ConteoC[playerid][0]=461;PrecioC[playerid][0]=461; ConteoC[playerid][1]=468;PrecioC[playerid][1]=468; ConteoC[playerid][2]=477;PrecioC[playerid][2]=477; ConteoC[playerid][3]=480;PrecioC[playerid][3]=480; }
    else if(ListaC[playerid] == 3) { ConteoC[playerid][0]=489;PrecioC[playerid][0]=489; ConteoC[playerid][1]=474;PrecioC[playerid][1]=474; ConteoC[playerid][2]=495;PrecioC[playerid][2]=495; ConteoC[playerid][3]=502;PrecioC[playerid][3]=502; }
    else if(ListaC[playerid] == 4) { ConteoC[playerid][0]=503;PrecioC[playerid][0]=503; ConteoC[playerid][1]=504;PrecioC[playerid][1]=504; ConteoC[playerid][2]=505;PrecioC[playerid][2]=505; ConteoC[playerid][3]=506;PrecioC[playerid][3]=506; }
    else if(ListaC[playerid] == 5) { ConteoC[playerid][0]=521;PrecioC[playerid][0]=521; ConteoC[playerid][1]=522;PrecioC[playerid][1]=522; ConteoC[playerid][2]=541;PrecioC[playerid][2]=541; ConteoC[playerid][3]=554;PrecioC[playerid][3]=554; }
    else if(ListaC[playerid] == 6) { ConteoC[playerid][0]=555;PrecioC[playerid][0]=555; ConteoC[playerid][1]=558;PrecioC[playerid][1]=558; ConteoC[playerid][2]=559;PrecioC[playerid][2]=559; ConteoC[playerid][3]=560;PrecioC[playerid][3]=560; }
    else if(ListaC[playerid] == 7) { ConteoC[playerid][0]=561;PrecioC[playerid][0]=561; ConteoC[playerid][1]=562;PrecioC[playerid][1]=562; ConteoC[playerid][2]=565;PrecioC[playerid][2]=565; ConteoC[playerid][3]=589;PrecioC[playerid][3]=589; }

	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][0]-400]);TextDrawSetString(ConcecionarioT[playerid][9],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][0]-400]);TextDrawSetString(ConcecionarioT[playerid][7],String);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][1]-400]);TextDrawSetString(ConcecionarioT[playerid][11],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][1]-400]);TextDrawSetString(ConcecionarioT[playerid][10],String);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][2]-400]);TextDrawSetString(ConcecionarioT[playerid][13],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][2]-400]);TextDrawSetString(ConcecionarioT[playerid][12],String);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][3]-400]);TextDrawSetString(ConcecionarioT[playerid][15],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][3]-400]);TextDrawSetString(ConcecionarioT[playerid][14],String);



    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][3]);TextDrawSetPreviewModel(ConcecionarioT[playerid][3], ConteoC[playerid][0]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][3]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][4]);TextDrawSetPreviewModel(ConcecionarioT[playerid][4], ConteoC[playerid][1]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][4]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][5]);TextDrawSetPreviewModel(ConcecionarioT[playerid][5], ConteoC[playerid][2]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][5]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][6]);TextDrawSetPreviewModel(ConcecionarioT[playerid][6], ConteoC[playerid][3]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][6]);
	}
    }
    else {
    if(ListaC[playerid] != 0) {
    new String[100];
    ListaC[playerid]--;
    if(ListaC[playerid] == 0) { ConteoC[playerid][0]=400;PrecioC[playerid][0]=400; ConteoC[playerid][1]=404;PrecioC[playerid][1]=404; ConteoC[playerid][2]=405;PrecioC[playerid][2]=405; ConteoC[playerid][3]=410;PrecioC[playerid][3]=410; }
    else if(ListaC[playerid] == 1) { ConteoC[playerid][0]=412;PrecioC[playerid][0]=412; ConteoC[playerid][1]=418;PrecioC[playerid][1]=418; ConteoC[playerid][2]=419;PrecioC[playerid][2]=419; ConteoC[playerid][3]=421;PrecioC[playerid][3]=421; }
    else if(ListaC[playerid] == 2) { ConteoC[playerid][0]=422;PrecioC[playerid][0]=422; ConteoC[playerid][1]=426;PrecioC[playerid][1]=426; ConteoC[playerid][2]=436;PrecioC[playerid][2]=436; ConteoC[playerid][3]=445;PrecioC[playerid][3]=445; }
    else if(ListaC[playerid] == 3) { ConteoC[playerid][0]=458;PrecioC[playerid][0]=458; ConteoC[playerid][1]=462;PrecioC[playerid][1]=462; ConteoC[playerid][2]=463;PrecioC[playerid][2]=463; ConteoC[playerid][3]=466;PrecioC[playerid][3]=466; }
    else if(ListaC[playerid] == 4) { ConteoC[playerid][0]=471;PrecioC[playerid][0]=471; ConteoC[playerid][1]=474;PrecioC[playerid][1]=474; ConteoC[playerid][2]=475;PrecioC[playerid][2]=475; ConteoC[playerid][3]=478;PrecioC[playerid][3]=478; }
    else if(ListaC[playerid] == 5) { ConteoC[playerid][0]=479;PrecioC[playerid][0]=479; ConteoC[playerid][1]=481;PrecioC[playerid][1]=481; ConteoC[playerid][2]=483;PrecioC[playerid][2]=483; ConteoC[playerid][3]=489;PrecioC[playerid][3]=489; }
    else if(ListaC[playerid] == 6) { ConteoC[playerid][0]=491;PrecioC[playerid][0]=491; ConteoC[playerid][1]=492;PrecioC[playerid][1]=492; ConteoC[playerid][2]=496;PrecioC[playerid][2]=496; ConteoC[playerid][3]=500;PrecioC[playerid][3]=500; }
    else if(ListaC[playerid] == 7) { ConteoC[playerid][0]=507;PrecioC[playerid][0]=507; ConteoC[playerid][1]=509;PrecioC[playerid][1]=509; ConteoC[playerid][2]=510;PrecioC[playerid][2]=510; ConteoC[playerid][3]=516;PrecioC[playerid][3]=516; }
    else if(ListaC[playerid] == 8) { ConteoC[playerid][0]=517;PrecioC[playerid][0]=517; ConteoC[playerid][1]=518;PrecioC[playerid][1]=518; ConteoC[playerid][2]=526;PrecioC[playerid][2]=526; ConteoC[playerid][3]=527;PrecioC[playerid][3]=527; }
    else if(ListaC[playerid] == 9) { ConteoC[playerid][0]=529;PrecioC[playerid][0]=529; ConteoC[playerid][1]=534;PrecioC[playerid][1]=534; ConteoC[playerid][2]=536;PrecioC[playerid][2]=536; ConteoC[playerid][3]=540;PrecioC[playerid][3]=540; }
    else if(ListaC[playerid] == 10) { ConteoC[playerid][0]=542;PrecioC[playerid][0]=542; ConteoC[playerid][1]=543;PrecioC[playerid][1]=543; ConteoC[playerid][2]=545;PrecioC[playerid][2]=545; ConteoC[playerid][3]=546;PrecioC[playerid][3]=546; }
    else if(ListaC[playerid] == 11) { ConteoC[playerid][0]=467;PrecioC[playerid][0]=547; ConteoC[playerid][1]=549;PrecioC[playerid][1]=549; ConteoC[playerid][2]=550;PrecioC[playerid][2]=550; ConteoC[playerid][3]=551;PrecioC[playerid][3]=551; }
     else if(ListaC[playerid] == 12) { ConteoC[playerid][0]=554;PrecioC[playerid][0]=554; ConteoC[playerid][1]=566;PrecioC[playerid][1]=566; ConteoC[playerid][2]=567;PrecioC[playerid][2]=567; ConteoC[playerid][3]=576;PrecioC[playerid][3]=576; }
     else if(ListaC[playerid] == 13) { ConteoC[playerid][0]=579;PrecioC[playerid][0]=579; ConteoC[playerid][1]=580;PrecioC[playerid][1]=580; ConteoC[playerid][2]=585;PrecioC[playerid][2]=585; ConteoC[playerid][3]=586;PrecioC[playerid][3]=586; }

	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][0]-400]);TextDrawSetString(ConcecionarioT[playerid][9],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][0]-400]);TextDrawSetString(ConcecionarioT[playerid][7],String);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][1]-400]);TextDrawSetString(ConcecionarioT[playerid][11],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][1]-400]);TextDrawSetString(ConcecionarioT[playerid][10],String);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][2]-400]);TextDrawSetString(ConcecionarioT[playerid][13],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][2]-400]);TextDrawSetString(ConcecionarioT[playerid][12],String);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][3]-400]);TextDrawSetString(ConcecionarioT[playerid][15],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][3]-400]);TextDrawSetString(ConcecionarioT[playerid][14],String);



    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][3]);TextDrawSetPreviewModel(ConcecionarioT[playerid][3], ConteoC[playerid][0]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][3]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][4]);TextDrawSetPreviewModel(ConcecionarioT[playerid][4], ConteoC[playerid][1]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][4]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][5]);TextDrawSetPreviewModel(ConcecionarioT[playerid][5], ConteoC[playerid][2]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][5]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][6]);TextDrawSetPreviewModel(ConcecionarioT[playerid][6], ConteoC[playerid][3]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][6]);
	}
    
    
    }
    //---
    }
    else if(clickedid == ConcecionarioT[playerid][19])
    {
    if(ConcesionarioBajaG[playerid] == 0) {
    if(ListaC[playerid] != 7) {
    ListaC[playerid]++;
    new String[100];
    if(ListaC[playerid] == 0) { ConteoC[playerid][0]=401;PrecioC[playerid][0]=401; ConteoC[playerid][1]=402;PrecioC[playerid][1]=402; ConteoC[playerid][2]=411;PrecioC[playerid][2]=411; ConteoC[playerid][3]=415;PrecioC[playerid][3]=415; }
    else if(ListaC[playerid] == 1) { ConteoC[playerid][0]=429;PrecioC[playerid][0]=429; ConteoC[playerid][1]=434;PrecioC[playerid][1]=434; ConteoC[playerid][2]=439;PrecioC[playerid][2]=439; ConteoC[playerid][3]=451;PrecioC[playerid][3]=451; }
    else if(ListaC[playerid] == 2) { ConteoC[playerid][0]=461;PrecioC[playerid][0]=461; ConteoC[playerid][1]=468;PrecioC[playerid][1]=468; ConteoC[playerid][2]=477;PrecioC[playerid][2]=477; ConteoC[playerid][3]=480;PrecioC[playerid][3]=480; }
    else if(ListaC[playerid] == 3) { ConteoC[playerid][0]=489;PrecioC[playerid][0]=489; ConteoC[playerid][1]=474;PrecioC[playerid][1]=474; ConteoC[playerid][2]=495;PrecioC[playerid][2]=495; ConteoC[playerid][3]=502;PrecioC[playerid][3]=502; }
    else if(ListaC[playerid] == 4) { ConteoC[playerid][0]=503;PrecioC[playerid][0]=503; ConteoC[playerid][1]=504;PrecioC[playerid][1]=504; ConteoC[playerid][2]=505;PrecioC[playerid][2]=505; ConteoC[playerid][3]=506;PrecioC[playerid][3]=506; }
    else if(ListaC[playerid] == 5) { ConteoC[playerid][0]=521;PrecioC[playerid][0]=521; ConteoC[playerid][1]=522;PrecioC[playerid][1]=522; ConteoC[playerid][2]=541;PrecioC[playerid][2]=541; ConteoC[playerid][3]=554;PrecioC[playerid][3]=554; }
    else if(ListaC[playerid] == 6) { ConteoC[playerid][0]=555;PrecioC[playerid][0]=555; ConteoC[playerid][1]=558;PrecioC[playerid][1]=558; ConteoC[playerid][2]=559;PrecioC[playerid][2]=559; ConteoC[playerid][3]=560;PrecioC[playerid][3]=560; }
    else if(ListaC[playerid] == 7) { ConteoC[playerid][0]=561;PrecioC[playerid][0]=561; ConteoC[playerid][1]=562;PrecioC[playerid][1]=562; ConteoC[playerid][2]=565;PrecioC[playerid][2]=565; ConteoC[playerid][3]=589;PrecioC[playerid][3]=589; }


	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][0]-400]);TextDrawSetString(ConcecionarioT[playerid][9],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][0]-400]);TextDrawSetString(ConcecionarioT[playerid][7],String);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][1]-400]);TextDrawSetString(ConcecionarioT[playerid][11],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][1]-400]);TextDrawSetString(ConcecionarioT[playerid][10],String);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][2]-400]);TextDrawSetString(ConcecionarioT[playerid][13],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][2]-400]);TextDrawSetString(ConcecionarioT[playerid][12],String);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][3]-400]);TextDrawSetString(ConcecionarioT[playerid][15],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][3]-400]);TextDrawSetString(ConcecionarioT[playerid][14],String);

    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][3]);TextDrawSetPreviewModel(ConcecionarioT[playerid][3], ConteoC[playerid][0]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][3]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][4]);TextDrawSetPreviewModel(ConcecionarioT[playerid][4], ConteoC[playerid][1]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][4]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][5]);TextDrawSetPreviewModel(ConcecionarioT[playerid][5], ConteoC[playerid][2]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][5]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][6]);TextDrawSetPreviewModel(ConcecionarioT[playerid][6], ConteoC[playerid][3]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][6]);
   	}
   	}
   	else {
    if(ListaC[playerid] != 13) {
    new String[100];
    ListaC[playerid]++;
    if(ListaC[playerid] == 0) { ConteoC[playerid][0]=400;PrecioC[playerid][0]=400; ConteoC[playerid][1]=404;PrecioC[playerid][1]=404; ConteoC[playerid][2]=405;PrecioC[playerid][2]=405; ConteoC[playerid][3]=410;PrecioC[playerid][3]=410; }
    else if(ListaC[playerid] == 1) { ConteoC[playerid][0]=412;PrecioC[playerid][0]=412; ConteoC[playerid][1]=418;PrecioC[playerid][1]=418; ConteoC[playerid][2]=419;PrecioC[playerid][2]=419; ConteoC[playerid][3]=421;PrecioC[playerid][3]=421; }
    else if(ListaC[playerid] == 2) { ConteoC[playerid][0]=422;PrecioC[playerid][0]=422; ConteoC[playerid][1]=426;PrecioC[playerid][1]=426; ConteoC[playerid][2]=436;PrecioC[playerid][2]=436; ConteoC[playerid][3]=445;PrecioC[playerid][3]=445; }
    else if(ListaC[playerid] == 3) { ConteoC[playerid][0]=458;PrecioC[playerid][0]=458; ConteoC[playerid][1]=462;PrecioC[playerid][1]=462; ConteoC[playerid][2]=463;PrecioC[playerid][2]=463; ConteoC[playerid][3]=466;PrecioC[playerid][3]=466; }
    else if(ListaC[playerid] == 4) { ConteoC[playerid][0]=471;PrecioC[playerid][0]=471; ConteoC[playerid][1]=474;PrecioC[playerid][1]=474; ConteoC[playerid][2]=475;PrecioC[playerid][2]=475; ConteoC[playerid][3]=478;PrecioC[playerid][3]=478; }
    else if(ListaC[playerid] == 5) { ConteoC[playerid][0]=479;PrecioC[playerid][0]=479; ConteoC[playerid][1]=481;PrecioC[playerid][1]=481; ConteoC[playerid][2]=483;PrecioC[playerid][2]=483; ConteoC[playerid][3]=489;PrecioC[playerid][3]=489; }
    else if(ListaC[playerid] == 6) { ConteoC[playerid][0]=491;PrecioC[playerid][0]=491; ConteoC[playerid][1]=492;PrecioC[playerid][1]=492; ConteoC[playerid][2]=496;PrecioC[playerid][2]=496; ConteoC[playerid][3]=500;PrecioC[playerid][3]=500; }
    else if(ListaC[playerid] == 7) { ConteoC[playerid][0]=507;PrecioC[playerid][0]=507; ConteoC[playerid][1]=509;PrecioC[playerid][1]=509; ConteoC[playerid][2]=510;PrecioC[playerid][2]=510; ConteoC[playerid][3]=516;PrecioC[playerid][3]=516; }
    else if(ListaC[playerid] == 8) { ConteoC[playerid][0]=517;PrecioC[playerid][0]=517; ConteoC[playerid][1]=518;PrecioC[playerid][1]=518; ConteoC[playerid][2]=526;PrecioC[playerid][2]=526; ConteoC[playerid][3]=527;PrecioC[playerid][3]=527; }
    else if(ListaC[playerid] == 9) { ConteoC[playerid][0]=529;PrecioC[playerid][0]=529; ConteoC[playerid][1]=534;PrecioC[playerid][1]=534; ConteoC[playerid][2]=536;PrecioC[playerid][2]=536; ConteoC[playerid][3]=540;PrecioC[playerid][3]=540; }
    else if(ListaC[playerid] == 10) { ConteoC[playerid][0]=542;PrecioC[playerid][0]=542; ConteoC[playerid][1]=543;PrecioC[playerid][1]=543; ConteoC[playerid][2]=545;PrecioC[playerid][2]=545; ConteoC[playerid][3]=546;PrecioC[playerid][3]=546; }
    else if(ListaC[playerid] == 11) { ConteoC[playerid][0]=467;PrecioC[playerid][0]=547; ConteoC[playerid][1]=549;PrecioC[playerid][1]=549; ConteoC[playerid][2]=550;PrecioC[playerid][2]=550; ConteoC[playerid][3]=551;PrecioC[playerid][3]=551; }
     else if(ListaC[playerid] == 12) { ConteoC[playerid][0]=554;PrecioC[playerid][0]=554; ConteoC[playerid][1]=566;PrecioC[playerid][1]=566; ConteoC[playerid][2]=567;PrecioC[playerid][2]=567; ConteoC[playerid][3]=576;PrecioC[playerid][3]=576; }
     else if(ListaC[playerid] == 13) { ConteoC[playerid][0]=579;PrecioC[playerid][0]=579; ConteoC[playerid][1]=580;PrecioC[playerid][1]=580; ConteoC[playerid][2]=585;PrecioC[playerid][2]=585; ConteoC[playerid][3]=586;PrecioC[playerid][3]=586; }

	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][0]-400]);TextDrawSetString(ConcecionarioT[playerid][9],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][0]-400]);TextDrawSetString(ConcecionarioT[playerid][7],String);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][1]-400]);TextDrawSetString(ConcecionarioT[playerid][11],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][1]-400]);TextDrawSetString(ConcecionarioT[playerid][10],String);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][2]-400]);TextDrawSetString(ConcecionarioT[playerid][13],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][2]-400]);TextDrawSetString(ConcecionarioT[playerid][12],String);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][3]-400]);TextDrawSetString(ConcecionarioT[playerid][15],String);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][3]-400]);TextDrawSetString(ConcecionarioT[playerid][14],String);



    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][3]);TextDrawSetPreviewModel(ConcecionarioT[playerid][3], ConteoC[playerid][0]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][3]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][4]);TextDrawSetPreviewModel(ConcecionarioT[playerid][4], ConteoC[playerid][1]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][4]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][5]);TextDrawSetPreviewModel(ConcecionarioT[playerid][5], ConteoC[playerid][2]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][5]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][6]);TextDrawSetPreviewModel(ConcecionarioT[playerid][6], ConteoC[playerid][3]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][6]);
	}
   	}
    }
	if(clickedid == ConcecionarioT[playerid][3]) {
	for(new i=0;i<22;i++) { TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][i]);}
	CancelSelectTextDraw(playerid);
    EligioItemC[playerid]=1;
    Dialog(playerid,D_ConcesionarioC,DIALOG_STYLE_LIST,"- Selecciona el color del veh�culo.","- Blanco\n- Rojo.","Comprar","Salir");
	}
    else if(clickedid == ConcecionarioT[playerid][4]) {
   	for(new i=0;i<22;i++) { TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][i]);}
	CancelSelectTextDraw(playerid);
    EligioItemC[playerid]=2;
	Dialog(playerid,D_ConcesionarioC,DIALOG_STYLE_LIST,"- Selecciona el color del veh�culo.","- Blanco\n- Rojo.","Comprar","Salir");
	}
    else if(clickedid == ConcecionarioT[playerid][5]) {
   	for(new i=0;i<22;i++) { TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][i]);}
	CancelSelectTextDraw(playerid);
    EligioItemC[playerid]=3;
	Dialog(playerid,D_ConcesionarioC,DIALOG_STYLE_LIST,"- Selecciona el color del veh�culo.","- Blanco\n- Rojo.","Comprar","Salir");
	}
    else if(clickedid == ConcecionarioT[playerid][6]) {
   	for(new i=0;i<22;i++) { TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][i]);}
	CancelSelectTextDraw(playerid);
    EligioItemC[playerid]=4;
	Dialog(playerid,D_ConcesionarioC,DIALOG_STYLE_LIST,"- Selecciona el color del veh�culo.","- Blanco\n- Rojo.","Comprar","Salir");
	}
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
	if (newkeys == KEY_YES){
	Entradas(playerid);
	Salidas(playerid);
	
	}
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	new Float:health;
    GetPlayerHealth(playerid,health);
	if(health <= 20) {
	if(HayMedicos >= 1) {
	new Float:X,Float:Y,Float:Z;
	SetPlayerHealth(playerid,19);
	Mensaje(playerid,COLOR_BLANCO,"Espera.. Hay personas que llamaron a la ambulancia..");
	GetPlayerPos(playerid,X,Y,Z);
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
 	if(IsPlayerConnected(i))
 	{
 	if(PI[i][Faccion] == 3) {
	Checkpoint(i,X,Y,Z,5.0);
	Mensaje(i,COLOR_BLANCO,"ATENCI�N: Se ha recibido un llamado de emergencia, ve al lugar.");
    MedicoPedido = 1;
	}
	}
	}
	}
	else if(HayMedicos == 0)
	{
	SetPlayerHealth(playerid,0);
	Mensaje(playerid,COLOR_BLANCO,"Estabas inconciente, pero los m�dicos te reanimaron");
	}
	}
    
    if(IsPlayerInAnyVehicle(playerid)) {
    new Coche = GetPlayerVehicleID(playerid);
    new Float:VidaV;
    GetVehicleHealth(Coche,VidaV);
    if(VidaV < 250) {
    new enginem, luces, alarm, doors, bonnet, boot, objective;
    SetVehicleHealth(Coche,260);
	GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, bonnet, boot, objective);
	SetVehicleParamsEx(GetPlayerVehicleID(playerid),VEHICLE_PARAMS_OFF, luces, alarm, doors, bonnet, boot, objective);
	Mensaje(playerid,COLOR_BLANCO,"Llama a un mec�nico");
    }
    }
    if(PI[playerid][Encarcelado] >= 1) {
    PI[playerid][Encarcelado] --;
    }
    else if(PI[playerid][Encarcelado] == 0) {
	if(PI[playerid][EnCarcel] == 1) {
	PI[playerid][EnCarcel] = 0;
	PPos(playerid,246.8000000,62.7000000,1004.2999900);
	cargarjugador(playerid);
	Mensaje(playerid,COLOR_BLANCO,"{00A6FF}-Polic�a{FFFFFF}: Vete y si vuelves ser� el doble!");
	}
	else if(PI[playerid][EnCarcel] == 2) {
	PI[playerid][EnCarcel] = 0;
	PPos(playerid,246.8000000,62.7000000,1004.2999900);
	cargarjugador(playerid);
	Mensaje(playerid,COLOR_BLANCO,"{00A6FF}-Polic�a{FFFFFF}: Vete y si vuelves ser� el doble!");
	}
    }
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
stock CarSpawner(playerid,modeloid) {
new Float:X,Float:Y,Float:Z;
GetPlayerPos(playerid,X,Y,Z);
CreateVehicle(modeloid,X,Y,Z,90, 0, 1, 6000000);
}
forward PrenderTurbinas(playerid);
public PrenderTurbinas(playerid) {
AccionP(playerid,"Prende las turbinas.");
ShowPlayerDialog(playerid,D_Revisaravion,DIALOG_STYLE_MSGBOX,"- Panel de control.","Presiona 'Revisar' para revisar la cabina del avi�n.","Revisar",""); SetTimerEx("Revision", 10000, false, "i", playerid);
return 1;
}
forward RevisionAvion(playerid);
public RevisionAvion(playerid) {
AccionP(playerid,"Revisa el estado del avi�n.");
SetTimerEx("Autorizacion", 10000, false, "i", playerid);

return 1;
}
forward Autorizacion(playerid);
public Autorizacion(playerid) {
ShowPlayerDialog(playerid,D_PedirPermiso,DIALOG_STYLE_MSGBOX,"- Radio.","{C71FFF}Aqu� {FFFFFF}boeing747{C71FFF} solicito permiso \npara volar, destino {FFFFFF}San Fierro.","Pedir","");
AccionP(playerid,"Habla por la radio.");
return 1;
}
forward Basureror2(playerid);
public Basureror2(playerid) {
	AccionP(playerid,"Sube el contenedor y vacia toda la basura en el cami�n");
	ShowPlayerDialog(playerid,D_Basurero2,DIALOG_STYLE_MSGBOX,"-Panel de control.","Presiona 'Lavar' para lavar los contenedores.","Lavar","");

	return 1;
}
forward Basureror3(playerid);
public Basureror3(playerid) {

	AccionP(playerid,"Baja el contenedor y lo pone en su posici�n");

	Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente contenedor de basura.");
	RBasurero[playerid] +=1;
	ControlP(playerid,1);
	if(RBasurero[playerid]==2)Checkpoint(playerid,1827.6000000,-1665.3000000,12.5000000,5.0);
	else if(RBasurero[playerid]==3)Checkpoint(playerid,2009.4000000,-1455.2000000,12.6000000,5.0);
	else if(RBasurero[playerid]==4)Checkpoint(playerid,2336.8999000,-1471.5000000,23.1000000,5.0);
	else if(RBasurero[playerid]==5)Checkpoint(playerid,2134.9004000,-1401.9004000,23.1000000,5.0);
	else if(RBasurero[playerid]==6)Checkpoint(playerid,2336.8999000,-1722.0000000,12.6000000,5.0);
	else if(RBasurero[playerid]==7)Checkpoint(playerid,1817.5000000,-2054.6001000,12.6000000,5.0);
	else if(RBasurero[playerid]==8)Checkpoint(playerid,2407.7998000,-1934.7998000,12.6000000,5.0);
	else if(RBasurero[playerid]==9)Checkpoint(playerid,2146.0000000,-2210.3994000,12.6000000,5.0);
	else if(RBasurero[playerid]==10)Checkpoint(playerid,2189.57,-1978.87,13.55 ,5.0);
	return 1;
}

new Maletero[MAX_PLAYERS],Capo[MAX_PLAYERS],Puertas[MAX_PLAYERS];


public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
if(dialogid == D_ConsumirMenu) { if(response) {
if(listitem == 0) {if(PI[playerid][TSprunk] > 0) { PI[playerid][TSprunk]--; AccionP(playerid,"Toma un Sprunk");} else Mensaje(playerid,-1,"No tienes m�s.");}
if(listitem == 1) {if(PI[playerid][THamburguesa] > 0) { PI[playerid][THamburguesa]--; AccionP(playerid,"Come una hamburguesa");} else Mensaje(playerid,-1,"No tienes m�s.");}
if(listitem == 2) {if(PI[playerid][TAMineral] > 0) { PI[playerid][TAMineral]--; AccionP(playerid,"Toma un agua mineral");} else Mensaje(playerid,-1,"No tienes m�s.");}
if(listitem == 3) {if(PI[playerid][TJEnvasado] > 0) { PI[playerid][TJEnvasado]--; AccionP(playerid,"Toma un jugo envasado");} else Mensaje(playerid,-1,"No tienes m�s.");}
if(listitem == 4) {if(PI[playerid][TTorta] > 0) { PI[playerid][TTorta]--; AccionP(playerid,"Come una porci�n de torta");} else Mensaje(playerid,-1,"No tienes m�s.");}
if(listitem == 5) {if(PI[playerid][TCerveza] > 0) { PI[playerid][TCerveza]--; AccionP(playerid,"Toma una cerveza");} else Mensaje(playerid,-1,"No tienes m�s.");}
if(listitem == 6) {if(PI[playerid][TVino] > 0) { PI[playerid][TVino]--; AccionP(playerid,"Toma un vino");} else Mensaje(playerid,-1,"No tienes m�s.");}
if(listitem == 7) {if(PI[playerid][TChampagne] > 0) { PI[playerid][TChampagne]--; AccionP(playerid,"Toma un champagne");} else Mensaje(playerid,-1,"No tienes m�s.");}
if(listitem == 8) {if(PI[playerid][TWhisky] > 0) { PI[playerid][TWhisky]--; AccionP(playerid,"Toma un whisky");} else Mensaje(playerid,-1,"No tienes m�s.");}
}
}
if(dialogid == D_CompraNeg) { if(response) {
if(NI[GetPlayerVirtualWorld(playerid)][nTipo] == 6 && listitem == 1 && PI[playerid][Telefono] != -1) {
if(NI[GetPlayerVirtualWorld(playerid)][nPCantidad][listitem] > 0) {
new String3[200],Nombre[20];
/* 	nProductos[5],
	nPTipo[5],
	nPCantidad[5],
	nPPrecio[5],*/
GivePlayerMoney(playerid,-NI[GetPlayerVirtualWorld(playerid)][nPPrecio][listitem]);
NI[GetPlayerVirtualWorld(playerid)][nPCantidad][listitem]--;
NI[GetPlayerVirtualWorld(playerid)][nGanancias]+=NI[GetPlayerVirtualWorld(playerid)][nPPrecio][listitem];
NI[GetPlayerVirtualWorld(playerid)][nVentaConG]+=NI[GetPlayerVirtualWorld(playerid)][nPPrecio][listitem];
if(NI[GetPlayerVirtualWorld(playerid)][nTipo] == 1) {
if(listitem == 1){ Nombre="Sprunk"; PI[playerid][TSprunk]++; }
else if(listitem == 2){ Nombre="Hamburguesa"; PI[playerid][THamburguesa]++; }
else if(listitem == 3){ Nombre="Agua Mineral"; PI[playerid][TAMineral]++; }
else if(listitem == 4){ Nombre="Jugo envasado"; PI[playerid][TJEnvasado]++; }
}
else if(NI[GetPlayerVirtualWorld(playerid)][nTipo] == 2) {
/*if(listitem == 1){ Nombre="Caf�"; PI[playerid][TSprunk]++; }
else if(listitem == 2){ Nombre="Tostada"; PI[playerid][THamburguesa]++; }
else if(listitem == 3){ Nombre="Porci�n de torta"; PI[playerid][TAMineral]++; }*/
}
if(NI[GetPlayerVirtualWorld(playerid)][nTipo] == 4) {
if(listitem == 1){ Nombre="Cerveza"; PI[playerid][TCerveza]++; }
else if(listitem == 2){ Nombre="Vino"; PI[playerid][TVino]++; }
else if(listitem == 3){ Nombre="Whisky"; PI[playerid][TWhisky]++; }
else if(listitem == 4){ Nombre="Champagne"; PI[playerid][TChampagne]++; }
}
if(NI[GetPlayerVirtualWorld(playerid)][nTipo] == 6) {
if(listitem == 1){ Nombre="Tel�fono"; if(PI[playerid][Telefono] == 0) {
new RandomNumero = random(1000 >= 10000);
PI[playerid][Telefono] = RandomNumero;
new String[120];
format(String,sizeof(String),"Tu n�mero de tel�fono es: %d.",PI[playerid][Telefono]);
Mensaje(playerid,COLOR_BLANCO,String);
} else Mensaje(playerid,COLOR_BLANCO,"Ya tienes un tel�fono.");
}
else if(listitem == 2){ Nombre="Radio"; PI[playerid][TRadio]=1; }
else if(listitem == 3){ Nombre="GPS"; PI[playerid][TGPS]=1; }
}
format(String3,sizeof(String3),">] Compraste un/a %s por $%d.",String3,NI[GetPlayerVirtualWorld(playerid)][nPPrecio][listitem]);
//TSprunk,THamburguesa,TAMineral,TJEnvasado,TTorta,TCerveza,TVino,TWhisky,TChampagne,TRadio,TGPS
}else  Mensaje(playerid,-1,">] No hay stock de ese producto.");
}else  Mensaje(playerid,-1,">] Ya tienes un tel�fono");
}
}
if(dialogid == D_Negocio_Menu9) { if(!response) MostrarMenuNeg(playerid,PI[playerid][TNegocio],0);}
if(dialogid == D_Negocio_Menu11) { if(response) {
if(!strlen(inputtext)) return MostrarMenuNeg(playerid,PI[playerid][TNegocio],10);
NI[PI[playerid][TNegocio]][nPPrecio][SeleccionoProducto[playerid]]=strval(inputtext);
Mensaje(playerid,-1,">] Modificaste el precio de un producto.");
MostrarMenuNeg(playerid,PI[playerid][TNegocio],9);
} else MostrarMenuNeg(playerid,PI[playerid][TNegocio],9);
}
if(dialogid == D_Negocio_Menu10) { if(response) {
SeleccionoProducto[playerid]=listitem;
MostrarMenuNeg(playerid,PI[playerid][TNegocio],10);
} else MostrarMenuNeg(playerid,PI[playerid][TNegocio],0);
}
if(dialogid == D_Negocio_Menu8) { if(response) {//Men� principal
GivePlayerMoney(playerid,-NI[PI[playerid][TNegocio]][nEmpleadoSueldo][SeleccionoEmpleado[playerid]]);
NI[PI[playerid][TNegocio]][nEmpleadoSueldo][SeleccionoEmpleado[playerid]]=0;
NI[PI[playerid][TNegocio]][nEmpleados][SeleccionoEmpleado[playerid]]=0;
Mensaje(playerid,-1,">] Despediste a un empleado.");
MostrarMenuNeg(playerid,PI[playerid][TNegocio],0);
} else MostrarMenuNeg(playerid,PI[playerid][TNegocio],0);
}
if(dialogid == D_Negocio_Menu7) { if(response) {//Men� principal
NI[PI[playerid][TNegocio]][nEmpleadoSueldo][SeleccionoEmpleado[playerid]]=strval(inputtext);
Mensaje(playerid,-1,">] Modificaste el sueldo de un empleado.");
MostrarMenuNeg(playerid,PI[playerid][TNegocio],0);
} else MostrarMenuNeg(playerid,PI[playerid][TNegocio],0);
}
if(dialogid == D_Negocio_Menu6) { if(response) {//Men� principal

if(listitem == 0) { MostrarMenuNeg(playerid,PI[playerid][TNegocio],6);}
if(listitem == 1) { MostrarMenuNeg(playerid,PI[playerid][TNegocio],7);}

} else MostrarMenuNeg(playerid,PI[playerid][TNegocio],0);
}
if(dialogid == D_Negocio_Menu5) { if(!response) MostrarMenuNeg(playerid,PI[playerid][TNegocio],0); }
if(dialogid == D_Negocio_Menu4) { if(response) {//Men� principal
if(NI[PI[playerid][TNegocio]][nEmpleados][listitem] == 1) {
SeleccionoEmpleado[playerid]=listitem;
MostrarMenuNeg(playerid,PI[playerid][TNegocio],5);
} else MostrarMenuNeg(playerid,PI[playerid][TNegocio],3);
} else MostrarMenuNeg(playerid,PI[playerid][TNegocio],0);
}
if(dialogid == D_Negocio_Menu3) { if(response) {//Men� principal
if(listitem==0) { MostrarMenuNeg(playerid,PI[playerid][TNegocio],3);}
if(listitem==1) { MostrarMenuNeg(playerid,PI[playerid][TNegocio],4);}
} else MostrarMenuNeg(playerid,PI[playerid][TNegocio],0);
}
if(dialogid == D_Negocio_Menu2) { if(response) {
if(NI[PI[playerid][TNegocio]][nGanancias]>=0) {
GivePlayerMoney(playerid,NI[PI[playerid][TNegocio]][nVentaConG]);
NI[PI[playerid][TNegocio]][nGanancias]=0;
NI[PI[playerid][TNegocio]][nVentaConG]=0;
new String[128];
format(String,sizeof(String),">] Has sacado $%d de ganancias de tu negocio.",NI[PI[playerid][TNegocio]][nVentaConG]);Mensaje(playerid,-1,String);
} else Mensaje(playerid,-1,">] Tu negocio no gener� ganancias.");
MostrarMenuNeg(playerid,PI[playerid][TNegocio],0);


} else MostrarMenuNeg(playerid,PI[playerid][TNegocio],0);
}
if(dialogid == D_Negocio_Menu1) { if(response) {//Men� principal
if(listitem==0) { MostrarMenuNeg(playerid,PI[playerid][TNegocio],1);}
if(listitem==1) { MostrarMenuNeg(playerid,PI[playerid][TNegocio],2);}
if(listitem==2) { MostrarMenuNeg(playerid,PI[playerid][TNegocio],8);}
if(listitem==3) { MostrarMenuNeg(playerid,PI[playerid][TNegocio],9);}
} else GuardarNegocio(PI[playerid][TNegocio]);
}
if(dialogid == D_PagarMultas) { if(response) {
if(GetPlayerMoney(playerid) >= PI[playerid][PrecioMultas]) {
Mensaje(playerid,-1,"Has saldado tu/s multas. Trata de no cometer m�s infracciones.");
GivePlayerMoney(playerid,-PI[playerid][PrecioMultas]);
PI[playerid][PrecioMultas] = 0;
PI[playerid][Multas]=0;

}else Mensaje(playerid,-1,"No tienes dinero para pagar las multas.");
}
}
if(dialogid == D_CasilleroMeca) {
if(response) {
if(listitem == 0) {
if(GetPlayerSkin(playerid) == 154) {
SetPlayerSkin(playerid,PI[playerid][SkinCasillero]);
PI[playerid][SkinCasillero]=0;
}
else if(GetPlayerSkin(playerid) != 42){
SetTimerEx("guardadoderopa", 2000, false, "i", playerid);
PI[playerid][SkinCasillero]=GetPlayerSkin(playerid);
}
}

if(listitem == 1) {
if(GetPlayerSkin(playerid) == 154) {
SetPlayerSkin(playerid,42);
}
else if(GetPlayerSkin(playerid) == 42){
SetTimerEx("guardadoderopa", 2000, false, "i", playerid);
PI[playerid][SkinCasillero]=GetPlayerSkin(playerid);
}
}
}
}

if(dialogid == D_Periodico11) { if(response) {
Mensaje(playerid,-1,"Has impreso los peri�dicos. ((Autom�ticamente se enviar�n a los puestos de peri�dicos");
GivePlayerMoney(playerid,-Impresion[playerid]*10);
for(new i=0;i<8;i++) {
BuzonDePeriodicos[i]+=Impresion[playerid]/8;
}
getdate(FechaPer[2],FechaPer[1],FechaPer[0]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto0",BuzonDePeriodicos[0]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto1",BuzonDePeriodicos[1]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto2",BuzonDePeriodicos[2]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto3",BuzonDePeriodicos[3]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto4",BuzonDePeriodicos[4]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto5",BuzonDePeriodicos[5]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto6",BuzonDePeriodicos[6]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","Puesto7",BuzonDePeriodicos[7]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","FechaPer0",FechaPer[0]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","FechaPer1",FechaPer[1]);
dini_IntSet("Archivos de Periodicos/Puestos.ini","FechaPer2",FechaPer[2]);
format(PerI[Fecha],20,"%s",PerIS[FechaS]);
format(PerI[Imagen],30,"%s",PerIS[ImagenS]);

format(PerI[Subti1],20,"%s",PerIS[Subti1S]);
format(PerI[TextoS1],200,"%s",PerIS[TextoS1S]);

format(PerI[Subti2],20,"%s",PerIS[Subti2S]);
format(PerI[TextoS2],200,"%s",PerIS[TextoS2S]);

format(PerI[Subti3],20,"%s",PerIS[Subti3S]);
format(PerI[TextoS3],200,"%s",PerIS[TextoS3S]);
dini_Set("Archivos de Periodicos/Textos.ini","Fecha",PerI[Fecha]);
dini_Set("Archivos de Periodicos/Textos.ini","Imagen",PerI[Imagen]);
dini_Set("Archivos de Periodicos/Textos.ini","Subti1",PerI[Subti1]);
dini_Set("Archivos de Periodicos/Textos.ini","TextoS1",PerI[TextoS1]);
dini_Set("Archivos de Periodicos/Textos.ini","Subti2",PerI[Subti2]);
dini_Set("Archivos de Periodicos/Textos.ini","TextoS2",PerI[TextoS2]);
dini_Set("Archivos de Periodicos/Textos.ini","Subti3",PerI[Subti3]);
dini_Set("Archivos de Periodicos/Textos.ini","TextoS3",PerI[TextoS3]);
}
}
if(dialogid == D_Periodico10) { if(response) {
new String[150];
Impresion[playerid]=strval(inputtext);
format(String,sizeof(String),"{FFFFFF}�Quieres imprimir {268AD1}%d{FFFFFF} peri�dicos por {26D145}$%d{FFFFFF}?",strval(inputtext),strval(inputtext)*10);
Dialog(playerid,D_Periodico11,DIALOG_STYLE_MSGBOX,"- Impresiora Industrial",String,"Imprimir","Cancelar");

}
}
if(dialogid == D_Periodico9) {
if(response) {
format(PerIS[TextoS3S],200,"%s",inputtext);Mensaje(playerid,-1,"Has cambiado el TextoSub3 del pr�ximo peri�dico.");
ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");

} else {ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");}}

if(dialogid == D_Periodico8) {
if(response) {
ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");
format(PerIS[Subti3S],20,"%s",inputtext);Mensaje(playerid,-1,"Has cambiado el Subtitulo 3 del pr�ximo peri�dico.");
} else {ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");}}


if(dialogid == D_Periodico7) {
if(response) {
ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");
format(PerIS[TextoS2S],200,"%s",inputtext);Mensaje(playerid,-1,"Has cambiado el TextoSub2 del pr�ximo peri�dico.");
} else {ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");}}

if(dialogid == D_Periodico6) {
if(response) {
ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");
format(PerIS[Subti2S],20,"%s",inputtext);Mensaje(playerid,-1,"Has cambiado el Subtitulo 2 del pr�ximo peri�dico.");
} else {ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");}}

if(dialogid == D_Periodico5) {
if(response) {
ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");
format(PerIS[TextoS1S],200,"%s",inputtext);Mensaje(playerid,-1,"Has cambiado el TextoSub1 del pr�ximo peri�dico.");
} else {ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");}}

if(dialogid == D_Periodico4) {
if(response) {
ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");
format(PerIS[Subti1S],20,"%s",inputtext);Mensaje(playerid,-1,"Has cambiado el Subtitulo 1 del pr�ximo peri�dico.");
} else {ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");}}



if(dialogid == D_Periodico3) {
if(response) {
ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");
format(PerIS[ImagenS],30,"loadsc%d:loadsc%d",listitem+1,listitem+1);
Mensaje(playerid,-1,"Has cambiado la imagen de portada del pr�ximo peri�dico.");
} else {
ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");


}
}
if(dialogid == D_Periodico2) {
if(response) {
format(PerIS[FechaS],20,"%s",inputtext);
Mensaje(playerid,-1,"Has cambiado la fecha del pr�ximo peri�dico.");
ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");
} else {
ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");


}
}
if(dialogid == D_Periodico1) {
if(response) {
if(listitem == 0) {
Dialog(playerid,D_Periodico2,DIALOG_STYLE_INPUT,"- Modificaci�n de la fecha.","Ingrese la fecha que ser� el pr�ximo peri�dico.\n Te encuenta que el formato es [D�a/Mes/2016]","Elegir","Salir");
}
if(listitem == 1) {
Dialog(playerid,D_Periodico3,DIALOG_STYLE_LIST,"- Modificaci�n de la Imagen de portada.","- 1\n- 2\n- 3\n- 4\n- 5\n- 6\n- 7\n- 8\n- 9\n- 10\n- 11\n- 12\n- 13\n- 14","Elegir","Salir");
}
if(listitem == 2) {
Dialog(playerid,D_Periodico4,DIALOG_STYLE_INPUT,"- Modificaci�n del Subtitulo1.","\t Ingresa el Subtitulo1\n M�ximo 15 car�cteres.","Elegir","Salir");
}
if(listitem == 3) {
Dialog(playerid,D_Periodico5,DIALOG_STYLE_INPUT,"- Modificaci�n del TextoSub1.","\t Ingresa el Texto del Sub1\nTen encuenta que pueden ser 45 car�cteres horzontal y 8 l�neas verticalmente.\n<!> Para saltar l�nea: ~n~","Elegir","Salir");
}
if(listitem == 4) {
Dialog(playerid,D_Periodico6,DIALOG_STYLE_INPUT,"- Modificaci�n del Subtitulo2","\t Ingresa el Subtitulo2\n M�ximo 15 car�cteres.","Elegir","Salir");
}
if(listitem == 5) {
Dialog(playerid,D_Periodico7,DIALOG_STYLE_INPUT,"- Modificaci�n del TextoSub2","\t Ingresa el Texto del Sub2\nTen encuenta que pueden ser 45 car�cteres horzontal y 8 l�neas verticalmente.\n<!> Para saltar l�nea: ~n~","Elegir","Salir");
}
if(listitem == 6) {
Dialog(playerid,D_Periodico8,DIALOG_STYLE_INPUT,"- Modificaci�n del Subtitulo3","\t Ingresa el Subtitulo3\n M�ximo 15 car�cteres.","Elegir","Salir");
}
if(listitem == 7) {
Dialog(playerid,D_Periodico9,DIALOG_STYLE_INPUT,"- Modificaci�n del TextoSub3","\t Ingresa el Texto del Sub3\nTen encuenta que pueden ser 45 car�cteres horzontal y 8 l�neas verticalmente.\n<!> Para saltar l�nea: ~n~","Elegir","Salir");
}
if(listitem == 8) {
Mensaje(playerid,-1,"Para salir de la Previsualizaci�n /volveralp");
TextDrawSetString(PeriodicosT[3][playerid],PerIS[FechaS]);
TextDrawSetString(PeriodicosT[4][playerid],PerIS[ImagenS]);
TextDrawSetString(PeriodicosT[7][playerid],PerIS[Subti1S]);
TextDrawSetString(PeriodicosT[8][playerid],PerIS[TextoS1S]);
TextDrawSetString(PeriodicosT[10][playerid],PerIS[Subti2S]);
TextDrawSetString(PeriodicosT[11][playerid],PerIS[TextoS2S]);
TextDrawSetString(PeriodicosT[13][playerid],PerIS[Subti3S]);
TextDrawSetString(PeriodicosT[14][playerid],PerIS[TextoS3S]);
for(new i=0;i<15;i++) {
TextDrawShowForPlayer(playerid,PeriodicosT[i][playerid]);
}
}
if(listitem == 9) {
PreparoBoceto[playerid] = 1;
Mensaje(playerid,-1,"Has preparado el boceto, ve a la impresora industrial.");
}
}
}
if(dialogid == D_TransferenciaVeh4) {
if(response) {
new String[200],Nombre2[MAX_PLAYER_NAME],Nombre[MAX_PLAYER_NAME],Archivo2[100]; GetPlayerName(JugadorTransferencia[playerid],Nombre2,sizeof(Nombre2)); GetPlayerName(playerid,Nombre,sizeof(Nombre));
if(EligioListaC[JugadorTransferencia[playerid]] == 0) {
if(PI[playerid][VehiculoID1] == 999) {
PI[playerid][VehiculoID1]=PI[JugadorTransferencia[playerid]][VehiculoID1];
PI[JugadorTransferencia[playerid]][VehiculoID1] =999;
format(Archivo2,sizeof(Archivo2),"Archivos de Vehiculos/%d.ini",PI[playerid][VehiculoID1]);
format(CI[PI[playerid][VehiculoID1]+MAX_VEHICULOS+1][Propietario],24,"%s",Nombre);
}
else {
PI[playerid][VehiculoID2]=PI[JugadorTransferencia[playerid]][VehiculoID1];
PI[JugadorTransferencia[playerid]][VehiculoID1] =999;
format(Archivo2,sizeof(Archivo2),"Archivos de Vehiculos/%d.ini",PI[playerid][VehiculoID2]);
format(CI[PI[playerid][VehiculoID2]+MAX_VEHICULOS+1][Propietario],24,"%s",Nombre);

}

}
else {
if(PI[playerid][VehiculoID1] == 999) {
PI[playerid][VehiculoID1]=PI[JugadorTransferencia[playerid]][VehiculoID2];
PI[JugadorTransferencia[playerid]][VehiculoID2] =999;
format(Archivo2,sizeof(Archivo2),"Archivos de Vehiculos/%d.ini",PI[playerid][VehiculoID1]);
format(CI[PI[playerid][VehiculoID1]+MAX_VEHICULOS+1][Propietario],24,"%s",Nombre);
}
else {
PI[playerid][VehiculoID2]=PI[JugadorTransferencia[playerid]][VehiculoID2];
PI[JugadorTransferencia[playerid]][VehiculoID2] =999;
format(Archivo2,sizeof(Archivo2),"Archivos de Vehiculos/%d.ini",PI[playerid][VehiculoID2]);
format(CI[PI[playerid][VehiculoID2]+MAX_VEHICULOS+1][Propietario],24,"%s",Nombre);

}
}
format(String,sizeof(String),"Has transferido tu veh�culo a la persona %s por $%d.",Nombre2,EligioPrecioC[playerid]);
SendClientMessage(JugadorTransferencia[playerid],-1,String);
format(String,sizeof(String),"Ya tienes el veh�culo a tu nombre %s.",Nombre2);
SendClientMessage(playerid,-1,String);
GivePlayerMoney(playerid,-EligioPrecioC[playerid]);
GivePlayerMoney(JugadorTransferencia[playerid],EligioPrecioC[playerid]);
dini_Set(Archivo2,"Propietario",Nombre);

}
}


if(dialogid == D_TransferenciaVeh3) {
if(response) {
new String[1000],String2[500],Nombre[MAX_PLAYER_NAME],Nombre2[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre)); GetPlayerName(JugadorTransferencia[playerid],Nombre2,sizeof(Nombre2));
EligioPrecioC[playerid]=strval(inputtext);
EligioPrecioC[JugadorTransferencia[playerid]]=strval(inputtext);
if(EligioListaC[playerid] == 0) {
format(String2,sizeof(String2),"\n{FFFFFF}Contrato de transferencia de veh�culo.\nLey n{A3DE5B}� 2560 {FFFFFF}permite la transferencia de veh�culos usados.\n La persona {A3DE5B}%s{FFFFFF} vender� el veh�culo {A3DE5B}%s{FFFFFF} a pedido de {A3DE5B}$%d",Nombre,NombreCoches[GetVehicleModel(PI[playerid][VehiculoID1]+MAX_VEHICULOS+1)-400],EligioPrecioC[playerid]);
strcat(String,String2);
format(String2,sizeof(String2),"\n{FFFFFF}al se�or/ra %s,el veh�culo tiene un valor real de {A3DE5B}$%d.{FFFFFF}\n Al aceptar �ste contrato el titular tendra todas las obligaciones que manda la ley a la persona que contenga un veh�culo.\n\n\n\t\t Firma: _______________",Nombre2,PrecioCoches[GetVehicleModel(PI[playerid][VehiculoID1]+MAX_VEHICULOS+1)-400]);
strcat(String,String2);
}
else if(EligioListaC[playerid] == 1) {
format(String2,sizeof(String2),"\n{FFFFFF}Contrato de transferencia de veh�culo.\nLey n{A3DE5B}� 2560 {FFFFFF}permite la transferencia de veh�culos usados.\n La persona {A3DE5B}%s{FFFFFF} vender� el veh�culo {A3DE5B}%s{FFFFFF} a pedido de {A3DE5B}$%d",Nombre,NombreCoches[GetVehicleModel(PI[playerid][VehiculoID2]+MAX_VEHICULOS+1)-400],EligioPrecioC[playerid]);
strcat(String,String2);
format(String2,sizeof(String2),"\n{FFFFFF}al se�or/ra %s,el veh�culo tiene un valor real de {A3DE5B}$%d.{FFFFFF}\n Al aceptar �ste contrato el titular tendra todas las obligaciones que manda la ley a la persona que contenga un veh�culo.\n\n\n\t\t Firma: _______________",Nombre2,PrecioCoches[GetVehicleModel(PI[playerid][VehiculoID2]+MAX_VEHICULOS+1)-400]);
strcat(String,String2);
}

Dialog(JugadorTransferencia[playerid],D_TransferenciaVeh4,DIALOG_STYLE_MSGBOX,"- Contrato de transferencia.",String,"Firmar","Cancelar");
}}


if(dialogid == D_TransferenciaVeh2) {
if(response) {
EligioListaC[playerid] = listitem;
if(PI[playerid][VehiculoID1] == 999 && PI[playerid][VehiculoID2] != 999) {
EligioListaC[playerid] = listitem+1;
}
Dialog(playerid,D_TransferenciaVeh3,DIALOG_STYLE_INPUT,"- Contrato de transferencia.","�A qu� valor quieres vender tu veh�culo?\n\n* Nota: Al transferirse se cobrar� el 3%% del valor real del veh�culo.","Vender","Salir");
}}

if(dialogid == D_TransferenciaVeh1) {
if(response) {
if(PI[strval(inputtext)][VehiculoID1] == 999 || PI[strval(inputtext)][VehiculoID2] == 999) {
if(!strlen(inputtext)) return Dialog(playerid,D_TransferenciaVeh1,DIALOG_STYLE_INPUT,"- Transferencia de veh�culo.","�A qu� persona ((ID del jugador)) quieres transferir tu veh�culo?\n\n\n","Seleccinoar","Salir");
new String[500],String2[240];
if(PI[playerid][VehiculoID2] == 999) {
format(String2,sizeof(String2),"{A3DE5B}1- {FFFFFF}Veh�culo ID: {A3DE5B}%i{FFFFFF} - Modelo: {A3DE5B}%d {FFFFFF}[ {A3DE5B}%s{FFFFFF} ]",PI[playerid][VehiculoID1],GetVehicleModel(PI[playerid][VehiculoID1]+MAX_VEHICULOS+1),NombreCoches[GetVehicleModel(PI[playerid][VehiculoID1]+MAX_VEHICULOS+1)-400]);
strcat(String,String2);
}
else  if(PI[playerid][VehiculoID1] != 999 && PI[playerid][VehiculoID2] != 999) {
format(String2,sizeof(String2),"{A3DE5B}1- {FFFFFF}Veh�culo ID: {A3DE5B}%i{FFFFFF} - Modelo: {A3DE5B}%d {FFFFFF}[ {A3DE5B}%s{FFFFFF} ]",PI[playerid][VehiculoID1],GetVehicleModel(PI[playerid][VehiculoID1]+MAX_VEHICULOS+1),NombreCoches[GetVehicleModel(PI[playerid][VehiculoID1]+MAX_VEHICULOS+1)-400]);
strcat(String,String2);
format(String2,sizeof(String2),"\n{A3DE5B}2- {FFFFFF}Veh�culo ID: {A3DE5B}%i{FFFFFF} - Modelo: {A3DE5B}%d {FFFFFF}[ {A3DE5B}%s{FFFFFF} ]",PI[playerid][VehiculoID2]+MAX_VEHICULOS+1,GetVehicleModel(PI[playerid][VehiculoID2]+MAX_VEHICULOS+1),NombreCoches[GetVehicleModel(PI[playerid][VehiculoID2]+MAX_VEHICULOS+1)-400]);
strcat(String,String2);
}
else  if(PI[playerid][VehiculoID1] == 999 && PI[playerid][VehiculoID2] != 999) {
format(String2,sizeof(String2),"{A3DE5B}2- {FFFFFF}Veh�culo ID: {A3DE5B}%i{FFFFFF} - Modelo: {A3DE5B}%d {FFFFFF}[ {A3DE5B}%s{FFFFFF} ]",PI[playerid][VehiculoID2]+MAX_VEHICULOS+1,GetVehicleModel(PI[playerid][VehiculoID2]+MAX_VEHICULOS+1),NombreCoches[GetVehicleModel(PI[playerid][VehiculoID2]+MAX_VEHICULOS+1)-400]);
strcat(String,String2);
}
JugadorTransferencia[playerid] = strval(inputtext);
JugadorTransferencia[strval(inputtext)] = playerid;

Dialog(playerid,D_TransferenciaVeh2,DIALOG_STYLE_LIST,"- Selecciona el veh�culo que quieres transferir.",String,"Seleccionar","Salir");
print("Dialog llamado");
} else Mensaje(playerid,-1,"- El usuario no puede tener m�s veh�culos.");
}
}
if(dialogid == D_ConcesionarioC && response) {
EligioColorC[playerid]=listitem;
new String[200];
if(EligioItemC[playerid] == 1)format(String,sizeof(String),"{FF3838}Concesionario [Alta-Gama] {FFFFFF}Bussines.SA\n\nModelo del veh�culo: {FF3838}%s {FFFFFF}\nID del modelo: {FF3838} %d{FFFFFF}\nPrecio del veh�culo: {9CFF38}$%d{FFFFFF}\nEstado:  {FF3838}Nuevo.",NombreCoches[ConteoC[playerid][0]-400],ConteoC[playerid][0],PrecioCoches[PrecioC[playerid][0]-400]);
else if(EligioItemC[playerid] == 2)format(String,sizeof(String),"{FF3838}Concesionario [Alta-Gama] {FFFFFF}Bussines.SA\n\nModelo del veh�culo: {FF3838}%s {FFFFFF}\nID del modelo: {FF3838} %d{FFFFFF}\nPrecio del veh�culo: {9CFF38}$%d{FFFFFF}\nEstado:  {FF3838}Nuevo.",NombreCoches[ConteoC[playerid][1]-400],ConteoC[playerid][1],PrecioCoches[PrecioC[playerid][1]-400]);
else if(EligioItemC[playerid] == 3)format(String,sizeof(String),"{FF3838}Concesionario [Alta-Gama] {FFFFFF}Bussines.SA\n\nModelo del veh�culo: {FF3838}%s {FFFFFF}\nID del modelo: {FF3838} %d{FFFFFF}\nPrecio del veh�culo: {9CFF38}$%d{FFFFFF}\nEstado:  {FF3838}Nuevo.",NombreCoches[ConteoC[playerid][2]-400],ConteoC[playerid][2],PrecioCoches[PrecioC[playerid][2]-400]);
else if(EligioItemC[playerid] == 4)format(String,sizeof(String),"{FF3838}Concesionario [Alta-Gama] {FFFFFF}Bussines.SA\n\nModelo del veh�culo: {FF3838}%s {FFFFFF}\nID del modelo: {FF3838} %d{FFFFFF}\nPrecio del veh�culo: {9CFF38}$%d{FFFFFF}\nEstado:  {FF3838}Nuevo.",NombreCoches[ConteoC[playerid][3]-400],ConteoC[playerid][3],PrecioCoches[PrecioC[playerid][3]-400]);


Dialog(playerid,D_ConcesionarioC2,DIALOG_STYLE_MSGBOX,"- Contrato.",String,"Comprar","Salir");

}
if(dialogid == D_ConcesionarioC2) {
if(response) {

new Nombre[MAX_PLAYER_NAME],String[100];GetPlayerName(playerid,Nombre,sizeof(Nombre));

Mensaje(playerid,-1,"Felicidades compraste un nuevo veh�culo. Tienes que ir al ayundamiento para realizar los papeles.");
print(String);print("Hola");
if(ConcesionarioBajaG[playerid] == 0) {
CI[VehiculosCreados+MAX_VEHICULOS+1][CID]=AddStaticVehicleEx (ConteoC[playerid][EligioItemC[playerid]-1], 532.17,-1288.40,17.24, 82.2873, EligioColorC[playerid], -1, 9000000);
if(PI[playerid][VehiculoID1] ==999) {
PI[playerid][VehiculoID1]=VehiculosCreados;
} else { PI[playerid][VehiculoID2]=VehiculosCreados; }
format(CI[VehiculosC[VehiculosCreados+MAX_VEHICULOS+1]][Propietario],24,"%s",Nombre);
CI[VehiculosC[VehiculosCreados+MAX_VEHICULOS+1]][CX]= 532.17;CI[VehiculosC[VehiculosCreados]][CY]=-1288.40;CI[VehiculosC[VehiculosCreados]][CZ]=82.2873;
CI[VehiculosC[VehiculosCreados+MAX_VEHICULOS+1]][ColorC1]=1;CI[VehiculosC[VehiculosCreados]][ColorC2]=2;
CI[VehiculosC[VehiculosCreados+MAX_VEHICULOS+1]][ModeloC]=ConteoC[playerid][EligioItemC[playerid]-1];

format(String,sizeof(String),"Archivos de Vehiculos/%i.ini",VehiculosCreados);
dini_Create(String);dini_Set(String,"Propietario",Nombre);
dini_FloatSet(String,"CX",532.17);dini_FloatSet(String,"CY",-1288.40);dini_FloatSet(String,"CZ",82.2873);
dini_IntSet(String,"ColorC1",1);dini_IntSet(String,"ColorC2",1);dini_IntSet(String,"ModeloC1",ConteoC[playerid][EligioItemC[playerid]-1]);
print(String);print("Hola");
VehiculosCreados++;
dini_IntSet("Archivos de Vehiculos/VehiculosCreados.ini","Creados",VehiculosCreados);
GivePlayerMoney(playerid,-PrecioCoches[PrecioC[playerid][EligioItemC[playerid]-1]-400]);
}
/////
else {
CI[VehiculosCreados+MAX_VEHICULOS+1][CID]=AddStaticVehicleEx (ConteoC[playerid][EligioItemC[playerid]-1], 2120.91,-1142.66,24.77,90, EligioColorC[playerid], -1, 900000);
if(PI[playerid][VehiculoID1] ==999) {
PI[playerid][VehiculoID1]=VehiculosCreados;
} else { PI[playerid][VehiculoID2]=VehiculosCreados; }
format(CI[VehiculosC[VehiculosCreados+MAX_VEHICULOS+1]][Propietario],24,"%s",Nombre);
CI[VehiculosC[VehiculosCreados+MAX_VEHICULOS+1]][CX]= 2120.91;CI[VehiculosC[VehiculosCreados]][CY]=-1142.66;CI[VehiculosC[VehiculosCreados]][CZ]=24.77;
CI[VehiculosC[VehiculosCreados+MAX_VEHICULOS+1]][ColorC1]=1;CI[VehiculosC[VehiculosCreados]][ColorC2]=2;
CI[VehiculosC[VehiculosCreados+MAX_VEHICULOS+1]][ModeloC]=ConteoC[playerid][EligioItemC[playerid]-1];

format(String,sizeof(String),"Archivos de Vehiculos/%i.ini",VehiculosCreados);
dini_Create(String);dini_Set(String,"Propietario",Nombre);
dini_FloatSet(String,"CX",2120.91);dini_FloatSet(String,"CY",-1142.66);dini_FloatSet(String,"CZ",24.77);
dini_IntSet(String,"ColorC1",1);dini_IntSet(String,"ColorC2",1);dini_IntSet(String,"ModeloC1",ConteoC[playerid][EligioItemC[playerid]-1]);
print(String);print("Hola");
VehiculosCreados++;
dini_IntSet("Archivos de Vehiculos/VehiculosCreados.ini","Creados",VehiculosCreados);
GivePlayerMoney(playerid,-PrecioCoches[PrecioC[playerid][EligioItemC[playerid]-1]-400]);

}
}
}

if(dialogid == D_Basurero1 && response) {
AccionP(playerid,"Levanta las manoplas del cami�n y agarra el contenedor");

SetTimerEx("Basureror2", 5000, false, "i", playerid);

}
if(dialogid == D_Basurero2 && response) {
AccionP(playerid,"Lava el contenedor de basura");
SetTimerEx("Basureror3", 5000, false, "i", playerid);


}
if(dialogid ==D_PrenderTurbinas && response) {  SetTimerEx("PrenderTurbinas", 10000, false, "i", playerid);}
if(dialogid ==D_Revisaravion && response) {  SetTimerEx("RevisionAvion", 10000, false, "i", playerid);}
if(dialogid == D_PrenderMotorAvion) { if(response) {
ControlP(playerid,0);
EstaEnruta[playerid] =1;
AccionP(playerid,"Levanta la perilla del controlador.");
ShowPlayerDialog(playerid,D_PrenderTurbinas,DIALOG_STYLE_MSGBOX,"- Panel de control.","Presiona 'Prender' para prender las turbinas del avi�n.","Prender","");


}}
if(dialogid == D_PedirPermiso) { if(response) {
Checkpoint(playerid,-1504.4000200,-104.8000000,13.8000000,5.0);
TrabajoPiloto[playerid] = 1;
ControlP(playerid,1);
Mensaje(playerid,-1,"- Destino: {FFEC1C}San Fierro.");
CochePrendido[GetPlayerVehicleID(playerid)] = 1;
Motorencendido[GetPlayerVehicleID(playerid)] = 1;
new enginem, luces, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(GetPlayerVehicleID(playerid),VEHICLE_PARAMS_ON, luces, alarm, doors, bonnet, boot, objective);
} }
if(dialogid == D_Canasto2) { if(response) {
for(new i=0;i<10;i++) {
if(Canasta[playerid][i] == 1) { PI[playerid][CBebida] +=1; }
else if(Canasta[playerid][i] == 2) { PI[playerid][CBebida] +=1; }
else if(Canasta[playerid][i] == 3) { PI[playerid][CComida] +=1; }
else if(Canasta[playerid][i] == 4) { PI[playerid][CComida] +=1; }
}

Compro[playerid] = 0;
for(new i=0;i<10;i++)Canasta[playerid][i]=0;
Mensaje(playerid,COLOR_BLANCO,"Compraste en la tienda.");
GivePlayerMoney(playerid,-DParacomprar[playerid]);

}}
if(dialogid == D_MecanicoMod) { if(response) {
if(listitem == 0) { Dialog(playerid,D_MecanicoMod2,DIALOG_STYLE_INPUT,"Facci�n MEC�NICO.","Ingrese el nuevo precio.","Modificar","Salir"); CambioprecioT = 1; }
if(listitem == 1) { Dialog(playerid,D_MecanicoMod2,DIALOG_STYLE_INPUT,"Facci�n MEC�NICO.","Ingrese el nuevo precio.","Modificar","Salir"); CambioprecioT = 2; }
if(listitem == 2) { Dialog(playerid,D_MecanicoMod2,DIALOG_STYLE_INPUT,"Facci�n MEC�NICO.","Ingrese el nuevo precio.","Modificar","Salir"); CambioprecioT = 3; }
if(listitem == 3) { Dialog(playerid,D_MecanicoMod2,DIALOG_STYLE_INPUT,"Facci�n MEC�NICO.","Ingrese el nuevo precio.","Modificar","Salir"); CambioprecioT = 4; }
if(listitem == 4) { Dialog(playerid,D_MecanicoMod2,DIALOG_STYLE_INPUT,"Facci�n MEC�NICO.","Ingrese el nuevo precio.","Modificar","Salir"); CambioprecioT = 5; }

}}
if(dialogid == D_MecanicoMod2) { if(response) {
if(!strlen(inputtext)) return Dialog(playerid,D_MecanicoMod2,DIALOG_STYLE_INPUT,"","Ingrese el nuevo precio.","Modificar","Salir");
if(CambioprecioT == 1) { Mecanico[PCambio] = strval(inputtext); Mensaje(playerid,COLOR_BLANCO,"[Has modificado el precio correctamente]."); }
else if(CambioprecioT == 2) { Mecanico[PRuedas] = strval(inputtext); Mensaje(playerid,COLOR_BLANCO,"[Has modificado el precio correctamente]."); }
else if(CambioprecioT == 3) { Mecanico[PModificaciones] = strval(inputtext); Mensaje(playerid,COLOR_BLANCO,"[Has modificado el precio correctamente]."); }
else if(CambioprecioT == 4) { Mecanico[PPintura] = strval(inputtext); Mensaje(playerid,COLOR_BLANCO,"[Has modificado el precio correctamente]."); }
else if(CambioprecioT == 5) { Mecanico[PArreglar] = strval(inputtext); Mensaje(playerid,COLOR_BLANCO,"[Has modificado el precio correctamente]."); }
GuardarPreciosMecanicos();
}}
if(dialogid == DemandaC1) { if(response) {
if(listitem == 0) {
if(GetPlayerMoney(playerid) >= 20) {
PI[playerid][TPizza] ++;
GivePlayerMoney(playerid,-20);
Mensaje(playerid,COLOR_BLANCO,"- Has comprado una pizza por {03CB00}$20.");
} else Mensaje(playerid,COLOR_BLANCO,"! No tienes suficiente dinero.");

}
if(listitem == 1) {
if(GetPlayerMoney(playerid) >= 10) {
PI[playerid][CBebida] ++;
Mensaje(playerid,COLOR_BLANCO,"- Has comprado una bebida por {03CB00}$10.");
GivePlayerMoney(playerid,-10);
} else Mensaje(playerid,COLOR_BLANCO,"! No tienes suficiente dinero.");
}
if(listitem == 2) {
if(GetPlayerMoney(playerid) >= 56) {
GivePlayerMoney(playerid,-56);
PI[playerid][CBebida] += 2; PI[playerid][TPizza] += 2;
Mensaje(playerid,COLOR_BLANCO,"- Has comprado {03CB00}2x{FFFFFF} Bebidas y {03CB00}2x{FFFFFF} Pizzas por {03CB00}$56.");
} else Mensaje(playerid,COLOR_BLANCO,"! No tienes suficiente dinero.");
}
}
}
if(dialogid == DemandaC2) { if(response) {
if(listitem == 0) {
if(GetPlayerMoney(playerid) >= 18) {
PI[playerid][TPizza] ++;
GivePlayerMoney(playerid,-18);
Mensaje(playerid,COLOR_BLANCO,"- Has comprado una pizza por {03CB00}$18.");
} else Mensaje(playerid,COLOR_BLANCO,"! No tienes suficiente dinero.");
}
if(listitem == 1) {
if(GetPlayerMoney(playerid) >= 9) {
PI[playerid][CBebida] ++;
GivePlayerMoney(playerid,-9);
Mensaje(playerid,COLOR_BLANCO,"- Has comprado una bebida por {03CB00}$9.");
} else Mensaje(playerid,COLOR_BLANCO,"! No tienes suficiente dinero.");
}
if(listitem == 2) {
if(GetPlayerMoney(playerid) >= 50) {
GivePlayerMoney(playerid,-50);
PI[playerid][CBebida] += 2; PI[playerid][TPizza] += 2;
Mensaje(playerid,COLOR_BLANCO,"- Has comprado {03CB00}2x{FFFFFF} Bebidas y {03CB00}2x{FFFFFF} Pizzas por {03CB00}$50.");
} else Mensaje(playerid,COLOR_BLANCO,"! No tienes suficiente dinero.");
}
}
}
if(dialogid == D_ElegirFondo) { if(response) {
if(listitem == 0) {
TextDrawSetString(Tel2[playerid],"LOADSC1:loadsc1"); 
Mensaje(playerid,COLOR_BLANCO,"{0077FF}-{FFFFFF} Has cambiado el fondo de tu tel�fono {0077FF}-correctamente.");
}
if(listitem == 1) {
TextDrawSetString(Tel2[playerid],"LOADSC2:loadsc2");
Mensaje(playerid,COLOR_BLANCO,"{0077FF}-{FFFFFF} Has cambiado el fondo de tu tel�fono {0077FF}-correctamente.");
}
if(listitem == 2) {
TextDrawSetString(Tel2[playerid],"LOADSC3:loadsc3"); 
Mensaje(playerid,COLOR_BLANCO,"{0077FF}-{FFFFFF} Has cambiado el fondo de tu tel�fono {0077FF}-correctamente.");
}
if(listitem == 3) {
TextDrawSetString(Tel2[playerid],"LOADSC4:loadsc4");
Mensaje(playerid,COLOR_BLANCO,"{0077FF}-{FFFFFF} Has cambiado el fondo de tu tel�fono {0077FF}-correctamente.");
}
if(listitem == 4) {
TextDrawSetString(Tel2[playerid],"LOADSC5:loadsc5");
Mensaje(playerid,COLOR_BLANCO,"{0077FF}-{FFFFFF} Has cambiado el fondo de tu tel�fono {0077FF}-correctamente.");
}
}
}
if(dialogid == D_Gasolina) { if(response) {
if(GasolinaF >= strval(inputtext)) {
if(strval(inputtext)+Gasolina[GetPlayerVehicleID(playerid)] <= 100) {
CargarGas[playerid] = strval(inputtext);
GivePlayerMoney(playerid,-strval(inputtext)*GasolinaP);
new String[150];
format(String,sizeof(String),"Has pagado $%d por %d litros de gasol�na.",GasolinaP*strval(inputtext),CargarGas[playerid]);
Mensaje(playerid,COLOR_BLANCO,String);
ControlP(playerid,0);

TanqueTimer = SetTimerEx("Llenartanque", 1000, true, "i", playerid);
} else Dialog(playerid,D_Gasolina,DIALOG_STYLE_INPUT,"- Gasoliner�a.","�Cu�ntos litros desea cargar de gasolina?\n - No puedes pasar los 100 l�tros con tu gasolina.","Cargar","Salir");

}

}
}

if(dialogid == Dartrabajo) { if(response) {
if(listitem == 0) { Dialog(playerid,Dartrabajo2,DIALOG_STYLE_INPUT,"- Men� Job's.","Inserta la ID del usuario, que\n quieres dar el trabajo.","Elegir","Salir"); NumTrabajo[playerid] = 1; }
if(listitem == 1) { Dialog(playerid,Dartrabajo2,DIALOG_STYLE_INPUT,"- Men� Job's.","Inserta la ID del usuario, que\n quieres dar el trabajo.","Elegir","Salir"); NumTrabajo[playerid] = 2; }
if(listitem == 2) { Dialog(playerid,Dartrabajo2,DIALOG_STYLE_INPUT,"- Men� Job's.","Inserta la ID del usuario, que\n quieres dar el trabajo.","Elegir","Salir"); NumTrabajo[playerid] = 3; }
if(listitem == 3) { Dialog(playerid,Dartrabajo2,DIALOG_STYLE_INPUT,"- Men� Job's.","Inserta la ID del usuario, que\n quieres dar el trabajo.","Elegir","Salir"); NumTrabajo[playerid] = 4; }
if(listitem == 4) { Dialog(playerid,Dartrabajo2,DIALOG_STYLE_INPUT,"- Men� Job's.","Inserta la ID del usuario, que\n quieres dar el trabajo.","Elegir","Salir"); NumTrabajo[playerid] = 5; }
if(listitem == 5) { Dialog(playerid,Dartrabajo2,DIALOG_STYLE_INPUT,"- Men� Job's.","Inserta la ID del usuario, que\n quieres dar el trabajo.","Elegir","Salir"); NumTrabajo[playerid] = 6; }
if(listitem == 6) { Dialog(playerid,Dartrabajo2,DIALOG_STYLE_INPUT,"- Men� Job's.","Inserta la ID del usuario, que\n quieres dar el trabajo.","Elegir","Salir"); NumTrabajo[playerid] = 7; }
if(listitem == 7) { Dialog(playerid,Dartrabajo2,DIALOG_STYLE_INPUT,"- Men� Job's.","Inserta la ID del usuario, que\n quieres dar el trabajo.","Elegir","Salir"); NumTrabajo[playerid] = 8; }
if(listitem == 8) { Dialog(playerid,Dartrabajo2,DIALOG_STYLE_INPUT,"- Men� Job's.","Inserta la ID del usuario, que\n quieres dar el trabajo.","Elegir","Salir"); NumTrabajo[playerid] = 9; }
if(listitem == 9) { Dialog(playerid,Dartrabajo2,DIALOG_STYLE_INPUT,"- Men� Job's.","Inserta la ID del usuario, que\n quieres dar el trabajo.","Elegir","Salir"); NumTrabajo[playerid] = 0; }

} }
if(dialogid == Dartrabajo2) { if(response) {
new Nombre[MAX_PLAYER_NAME],Nombre2[MAX_PLAYER_NAME],String[300];
PI[strval(inputtext)][Trabajo] = NumTrabajo[playerid];
GetPlayerName(playerid,Nombre,sizeof(Nombre));
GetPlayerName(strval(inputtext),Nombre2,sizeof(Nombre));
format(String,sizeof(String),"{FF0000}<!>{FFFFFF} El administrador {0084FF}%s{FFFFFF} dio un trabajo a {0084FF}%s{FFFFFF}. Trabajo ID: {FF8900}%d",Nombre,Nombre2,NumTrabajo[playerid]);
Mensaje(playerid,COLOR_BLANCO,String); Mensaje(strval(inputtext),COLOR_BLANCO,String);
NumTrabajo[playerid] = 0;
}
}
if(dialogid == D_DARFAC) { if(response) {
if(listitem == 0) { Dialog(playerid,D_DARFAC2,DIALOG_STYLE_INPUT,"- Men� facci�n.","Inserta la ID del usuario, que\n quieres dar la facci�n.","Elegir","Salir"); Facciondar[playerid] = 1; }
if(listitem == 1) { Dialog(playerid,D_DARFAC2,DIALOG_STYLE_INPUT,"- Men� facci�n.","Inserta la ID del usuario, que\n quieres dar la facci�n.","Elegir","Salir"); Facciondar[playerid] = 2; }
if(listitem == 2) { Dialog(playerid,D_DARFAC2,DIALOG_STYLE_INPUT,"- Men� facci�n.","Inserta la ID del usuario, que\n quieres dar la facci�n.","Elegir","Salir"); Facciondar[playerid] = 3; }
if(listitem == 3) { Dialog(playerid,D_DARFAC2,DIALOG_STYLE_INPUT,"- Men� facci�n.","Inserta la ID del usuario, que\n quieres dar la facci�n.","Elegir","Salir"); Facciondar[playerid] = 4; }
if(listitem == 4) { Dialog(playerid,D_DARFAC2,DIALOG_STYLE_INPUT,"- Men� facci�n.","Inserta la ID del usuario, que\n quieres dar la facci�n.","Elegir","Salir"); Facciondar[playerid] = 5; }
if(listitem == 5) { Dialog(playerid,D_DARFAC2,DIALOG_STYLE_INPUT,"- Men� facci�n.","Inserta la ID del usuario, que\n quieres dar la facci�n.","Elegir","Salir"); Facciondar[playerid] = 6; }
if(listitem == 6) { Dialog(playerid,D_DARFAC2,DIALOG_STYLE_INPUT,"- Men� facci�n.","Inserta la ID del usuario, que\n quieres dar la facci�n.","Elegir","Salir"); Facciondar[playerid] = 7; }
if(listitem == 7) { Dialog(playerid,D_DARFAC2,DIALOG_STYLE_INPUT,"- Men� facci�n.","Inserta la ID del usuario, que\n quieres dar la facci�n.","Elegir","Salir"); Facciondar[playerid] = 8; }
if(listitem == 8) { Dialog(playerid,D_DARFAC2,DIALOG_STYLE_INPUT,"- Men� facci�n.","Inserta la ID del usuario, que\n quieres dar la facci�n.","Elegir","Salir"); Facciondar[playerid] = 9; }
if(listitem == 9) { Dialog(playerid,D_DARFAC2,DIALOG_STYLE_INPUT,"- Men� facci�n.","Inserta la ID del usuario, que\n quieres dar la facci�n.","Elegir","Salir"); Facciondar[playerid] = 10; }
if(listitem == 10) { Dialog(playerid,D_DARFAC2,DIALOG_STYLE_INPUT,"- Men� facci�n.","Inserta la ID del usuario, que\n quieres dar la facci�n.","Elegir","Salir"); Facciondar[playerid] = 0; }
} }
if(dialogid == D_DARFAC2) { if(response) {
new Nombre[MAX_PLAYER_NAME],Nombre2[MAX_PLAYER_NAME],String[300];
PI[strval(inputtext)][Faccion] = Facciondar[playerid];
if(Facciondar[playerid] == 0) {
PI[strval(inputtext)][Rangof] = 0;
}
else { PI[strval(inputtext)][Rangof] = 6; }
GetPlayerName(playerid,Nombre,sizeof(Nombre));
GetPlayerName(strval(inputtext),Nombre2,sizeof(Nombre));
format(String,sizeof(String),"{FF0000}<!>{FFFFFF} El administrador {0084FF}%s{FFFFFF} dio una facci�n a {0084FF}%s{FFFFFF}. Facci�n ID: {FF8900}%d",Nombre,Nombre2,Facciondar[playerid]);
Mensaje(playerid,COLOR_BLANCO,String); Mensaje(strval(inputtext),COLOR_BLANCO,String);
}
}

if(dialogid == D_Ammu) { if(response) {
if(listitem == 0) {
if(PI[playerid][LicenciaA] == 1) {
if(GetPlayerMoney(playerid) >= 3000) {
GivePlayerMoney(playerid,-3000);
GivePlayerWeapon(playerid,31,30);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes suficiente dinero para comprar �sta arma.");
} else Mensaje(playerid,COLOR_BLANCO,"No tienes licencia de ARMAS.");
}
if(listitem == 1) {
if(PI[playerid][LicenciaA] == 1) {
if(GetPlayerMoney(playerid) >= 2000) {
GivePlayerMoney(playerid,-2000);
GivePlayerWeapon(playerid,31,90);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes suficiente dinero para comprar �sta arma.");
} else Mensaje(playerid,COLOR_BLANCO,"No tienes licencia de ARMAS.");
}
if(listitem == 2) {
if(PI[playerid][LicenciaA] == 1) {
if(GetPlayerMoney(playerid) >= 1500) {
GivePlayerMoney(playerid,-1500);
GivePlayerWeapon(playerid,31,20);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes suficiente dinero para comprar �sta arma.");
} else Mensaje(playerid,COLOR_BLANCO,"No tienes licencia de ARMAS.");
}
if(listitem == 3) {
if(PI[playerid][LicenciaA] == 1) {
if(GetPlayerMoney(playerid) >= 10000) {
GivePlayerMoney(playerid,-3000);
GivePlayerWeapon(playerid,31,999);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes suficiente dinero para comprar �sta arma.");
} else Mensaje(playerid,COLOR_BLANCO,"No tienes licencia de ARMAS.");
}
}
}
if(dialogid == D_PMultas) { if(response) {
if(GetPlayerMoney(playerid) >= PI[playerid][PrecioMultas]) {
GivePlayerMoney(playerid,-PI[playerid][PrecioMultas]);
PI[playerid][PrecioMultas] = 0;
PI[playerid][Multas] = 0;
AccionP(playerid,"Paga sus multas.");
} else Mensaje(playerid,COLOR_BLANCO,"No tienes suficiente dinero para pagar las multas.");
}
}
if(dialogid == D_ELEGIRRUBRO) { if(response) {
if(listitem == 0) {
EligioRubro[playerid] = 1;
Dialog(playerid,D_ESCRIBERUBRO,DIALOG_STYLE_INPUT,"- [Veh�culos]","Escribe tu anuncio. - M�X 128 Caracteres.","Listo","Salir");
}
if(listitem == 1) {
EligioRubro[playerid] = 2;
Dialog(playerid,D_ESCRIBERUBRO,DIALOG_STYLE_INPUT,"- [Propiedad]","Escribe tu anuncio. - M�X 128 Caracteres.","Listo","Salir");
}
if(listitem == 2) {
EligioRubro[playerid] = 3;
Dialog(playerid,D_ESCRIBERUBRO,DIALOG_STYLE_INPUT,"- [Compra-Venta]","Escribe tu anuncio. - M�X 128 Caracteres.","Listo","Salir");
}
if(listitem == 3) {
EligioRubro[playerid] = 4;
Dialog(playerid,D_ESCRIBERUBRO,DIALOG_STYLE_INPUT,"- [Otros]","Escribe tu anuncio. - M�X 128 Caracteres.","Listo","Salir");
}
}
}
if(dialogid == D_ESCRIBERUBRO) { if(response) {
if(EligioRubro[playerid] == 1) {
new String[200];
if(!strlen(inputtext)) return Dialog(playerid,D_ESCRIBERUBRO,DIALOG_STYLE_INPUT,"- [Veh�culos]","Escribe tu anuncio. - M�X 128 Caracteres.","Listo","Salir");
format(String,200,"{00FF2B}-{FFFFFF} [Veh�culos] {f46e42}%s {FFFFFF}- Contacto: {f46e42}%d.",inputtext,PI[playerid][Telefono]);
SendClientMessageToAll(COLOR_BLANCO,String);
EligioRubro[playerid] = 0;
GivePlayerMoney(playerid,-20);
}
else if(EligioRubro[playerid] == 2) {
new String[200];
if(!strlen(inputtext)) return Dialog(playerid,D_ESCRIBERUBRO,DIALOG_STYLE_INPUT,"- [Propiedad]","Escribe tu anuncio. - M�X 128 Caracteres.","Listo","Salir");
format(String,sizeof(String),"{00FF2B}-{FFFFFF} [Propiedad] {f46e42}%s {FFFFFF}- Contacto: {f46e42}%d.",inputtext,PI[playerid][Telefono]);
SendClientMessageToAll(COLOR_BLANCO,String);
EligioRubro[playerid] = 0;
GivePlayerMoney(playerid,-20);
}
else if(EligioRubro[playerid] == 3) {
new String[200];
if(!strlen(inputtext)) return Dialog(playerid,D_ESCRIBERUBRO,DIALOG_STYLE_INPUT,"- [Compra-Venta]","Escribe tu anuncio. - M�X 128 Caracteres.","Listo","Salir");
format(String,sizeof(String),"{00FF2B}-{FFFFFF} [Compra-Venta] {f46e42}%s {FFFFFF}- Contacto: {f46e42}%d.",inputtext,PI[playerid][Telefono]);
SendClientMessageToAll(COLOR_BLANCO,String);
EligioRubro[playerid] = 0;
GivePlayerMoney(playerid,-20);
}
else if(EligioRubro[playerid] == 4) {
new String[200];
if(!strlen(inputtext)) return Dialog(playerid,D_ESCRIBERUBRO,DIALOG_STYLE_INPUT,"- [Otros]","Escribe tu anuncio. - M�X 128 Caracteres.","Listo","Salir");
format(String,sizeof(String),"{00FF2B}-{FFFFFF} [Otros] {f46e42}%s {FFFFFF}- Contacto: {f46e42}%d.",inputtext,PI[playerid][Telefono]);
SendClientMessageToAll(COLOR_BLANCO,String);
EligioRubro[playerid] = 0;
GivePlayerMoney(playerid,-20);
}
}
}
if(dialogid == D_SerieBanco) { if(response) {
if(strval(inputtext) == PI[playerid][NBanco]) {
if(ECajero[playerid] == 1) {
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
ECajero[playerid] = 0;
}
else {

Dialog(playerid,DBanco,DIALOG_STYLE_LIST,"Banco.","{006FFF}-{FFFFFF}Depositar\n{006FFF}-{FFFFFF}Sacar\n{006FFF}-{FFFFFF}Estado","Elegir","Salir");
}
}
else
{
Dialog(playerid,D_SerieBanco,DIALOG_STYLE_INPUT,"Serie","Ingresa el c�digo de serie.","Ingresar","Salir");

}
}
}
if(dialogid == D_BANCON) { if(response) {
new Serie = random(1000 >= 20000); new String[200];
PI[playerid][NBanco] = Serie;
format(String,sizeof(String),"Tu numero de serie bancaria es: %d",PI[playerid][NBanco]);
Mensaje(playerid,COLOR_BLANCO,String);
}
}
if(dialogid == D_CONTROLVEHICULAR) { if(response) {
if(listitem == 0) {
if(lucesp[playerid] == 0) {
new enginem, luces, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, VEHICLE_PARAMS_ON, alarm, doors, bonnet, boot, objective);
lucesp[playerid] = 1;
}
else if(lucesp[playerid] == 1) {
new enginem, luces, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, VEHICLE_PARAMS_OFF, alarm, doors, bonnet, boot, objective);
lucesp[playerid] = 0;
}
}
if(listitem == 1) {
if(Puertas[playerid] == 0) {
new enginem, luces, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, VEHICLE_PARAMS_ON, bonnet, boot, objective);
Puertas[playerid] = 1;
}
else if(Puertas[playerid] == 1) {
new enginem, luces, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, VEHICLE_PARAMS_OFF, bonnet, boot, objective);
Puertas[playerid] = 0;
}
}
if(listitem == 2) {
if(Maletero[playerid] == 0) {
new enginem, luces, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, VEHICLE_PARAMS_ON, boot, objective);
Maletero[playerid] = 1;
}
else if(Maletero[playerid] == 1) {
new enginem, luces, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, VEHICLE_PARAMS_OFF, boot, objective);
Maletero[playerid] = 0;
} }
if(listitem == 3) {
if(Capo[playerid] == 0) {
new enginem, luces, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, bonnet, VEHICLE_PARAMS_ON, objective);
Capo[playerid] = 1;
}
else if(Capo[playerid] == 1) {
new enginem, luces, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, bonnet, VEHICLE_PARAMS_OFF, objective);
Capo[playerid] = 0;
}
}
}}


if(dialogid == D_LicenciaV1) {
if(response) {
new String[600];
strcat(String,"\t\t{FFFFFF}- {FFEB00}TITULO:{FFFFFF} Carriles.\n\n");
strcat(String,"A la hora de conducir, tendremos que saber en qu� carril tenemos\n");
strcat(String,"que conducir. Ya que si fuera el erroneo podr�a pasar un accidente.\n");
strcat(String,"Siempre se elige el carril derecho, adem�s se debe respetar un l�mi-\n");
strcat(String,"te de velocidad m�xima en la {FFEB00}ciudad. 40km/h - Ruta: 120km/h{FFFFFF}.\n");
strcat(String,"{FFEB00}Caso de emergencia:{FFFFFF} En caso de que si un veh�culo de emergencia qui-\n");
strcat(String,"siera pasar , debemos cederle paso, ya que tenemos una obligaci�n de hacerlo.");
Dialog(playerid,D_LicenciaV2,DIALOG_STYLE_MSGBOX,"P�gina N�2.",String,"Siguiente","Anterior");
}
else
{
new String[600];
strcat(String,"\t\t{FFFFFF}- {FFEB00}TITULO:{FFFFFF} Iniciamiento del veh�culo.\n\n");
strcat(String,"Lo primero de todo es saber C�mo es el funcionamiento del veh�culo.\n");
strcat(String,"Para encender el motor: Ingresamos la llave correcta al veh�culo.\n");
strcat(String,"Y le hacemos un giro de 180�.((IC:/PrenderMotor)).\n");
strcat(String,"Las luces: A cierta hora del d�a se tiene que tener las luces del -\n");
strcat(String,"Veh�culo prendidas (Traseras y delantera). {FFEB00}�A qu� hora?{FFFFFF}\n");
strcat(String,"A la hora de la noche (20hs - 9hs.)\n");
Dialog(playerid,D_LicenciaV1,DIALOG_STYLE_MSGBOX,"P�gina N�1.",String,"Siguiente","");
}
}
if(dialogid == D_LicenciaV2) {
if(response) {
new String[600];
strcat(String,"\t\t{FFFFFF}- {FFEB00}TITULO:{FFFFFF} Estado al conducir.\n\n");
strcat(String,"A la hora de conducir, tendremos que tener en cuenta de que no\n");
strcat(String,"podremos conducir si estamos con un nivel de alcoholismo, de droga\n");
strcat(String,"o cualquier farmaco que altere al cerebro. \n");
strcat(String,"Estado del veh�culo: El veh�culo en el que conduces tiene que estar\n");
strcat(String,"en perfectas condiciones, ya que sino la polic�a te dar� una multa.\n");
strcat(String,"Fin del librode estudios, ahora viene el examen y una ves terminado");
strcat(String,"Se te pondr� en prueba tu capacidad para conducir.");
Dialog(playerid,D_LicenciaV3,DIALOG_STYLE_MSGBOX,"P�gina N�3 /FINAL.",String,"Terminar","");
}
else
{
}
}
if(dialogid == D_LicenciaV3) {
if(response) {
Mensaje(playerid,COLOR_BLANCO,"Recuerda que tienes que tener los tres examenes aprobados.");
Dialog(playerid,D_LicenciaV4,DIALOG_STYLE_LIST,"�En que estado se\n puede conducir?\n","- Drogado\n- Hebrio\n- Sin haber ingerido ning�n farmaco/Alcohol. ","Siguiente","");
}
}
if(dialogid == D_LicenciaV4) {
if(response) {
if(listitem == 0) {
Mensaje(playerid,COLOR_BLANCO,"Has desaprobado el examen de licencia. Vuelve a intentar otra ves.");
}
if(listitem == 1) {
Mensaje(playerid,COLOR_BLANCO,"Has desaprobado el examen de licencia. Vuelve a intentar otra ves.");
}
if(listitem == 2) {
Mensaje(playerid,COLOR_BLANCO,"Recuerda que tienes que tener los tres examenes aprobados.");
Dialog(playerid,D_LicenciaV5,DIALOG_STYLE_LIST,"�A qu� velocidad se\n puede conducir en la ciudad?\n","- 120km/h\n- 30km/h\n- 60km/h ","Siguiente","");
}
}
}
if(dialogid == D_LicenciaV5) { if(response) {
if(listitem == 0) {
Mensaje(playerid,COLOR_BLANCO,"Has desaprobado el examen de licencia. Vuelve a intentar otra ves.");
}
if(listitem == 1) {
Dialog(playerid,D_LicenciaV6,DIALOG_STYLE_LIST,"�Si un veh�culo de emergencia se acerca\n qu� debo hacer?\n","- Que espere como todos los conductores.\n- Darle paso.\n- Lo choco. ","Terminar","");
}
if(listitem == 2) {
Mensaje(playerid,COLOR_BLANCO,"Has desaprobado el examen de licencia. Vuelve a intentar otra ves.");
}
}
}
if(dialogid == D_LicenciaV6) { if(response) {
if(listitem == 0) {
Mensaje(playerid,COLOR_BLANCO,"Has desaprobado el examen de licencia. Vuelve a intentar otra ves.");
}
if(listitem == 1) {
Mensaje(playerid,COLOR_BLANCO,"Subete al coche afuera y sigue la los checkpoints. El veh�culo no puede estar menos del 70% roto.");
VehiculoLICENCIA[playerid] = AddStaticVehicleEx(496,1766.8,-1120.3,23.78,90.0000000,255,255,15); //Manana
Checkpoint(playerid,1706.6,-1100.4,24,5.0);

CarroLicencia[playerid] = 1;
RLicenciaV[playerid] = 1;
}
if(listitem == 2) {
Mensaje(playerid,COLOR_BLANCO,"Has desaprobado el examen de licencia. Vuelve a intentar otra ves.");
}
}
}
if(dialogid == D_MERCADONEGRO) { if(response) {
new Dineros = GetPlayerMoney(playerid);
if(listitem == 0) {
if(Dineros >= 100) {
PI[playerid][Ganzuas] ++;
Mensaje(playerid,COLOR_BLANCO,"Has comprado una ganzua.");
GivePlayerMoney(playerid,-100);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes suficiente dinero.");
}
if(listitem == 1) {
if(Dineros >= 2000) {
GivePlayerWeapon(playerid,30,200);
Mensaje(playerid,COLOR_BLANCO,"Has comprado una AK47 Con 30 balas.");
GivePlayerMoney(playerid,-2000);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes suficiente dinero.");
}
if(listitem == 2) {
if(Dineros >= 1000) {
GivePlayerWeapon(playerid,28,200);
Mensaje(playerid,COLOR_BLANCO,"Has comprado una TEC9 Con 40 balas.");
GivePlayerMoney(playerid,-1000);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes suficiente dinero.");
}
if(listitem == 3) {
if(Dineros >= 400) {
SetPlayerArmour(playerid,100);
Mensaje(playerid,COLOR_BLANCO,"Has comprado un chaleco.");
GivePlayerMoney(playerid,-400);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes suficiente dinero.");
}
if(listitem == 4) {
if(Dineros >= 3000) {
PI[playerid][TC4] ++;
Mensaje(playerid,COLOR_BLANCO,"Has comprado una C4.");
GivePlayerMoney(playerid,-3000);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes suficiente dinero.");
}
if(listitem == 5) {
if(Dineros >= 100) {
PI[playerid][Vendas] ++;
Mensaje(playerid,COLOR_BLANCO,"Has comprado una venda.");
GivePlayerMoney(playerid,-100);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes suficiente dinero.");
}
if(listitem == 6) {
if(Dineros >= 50) {
PI[playerid][Sogas] ++;
Mensaje(playerid,COLOR_BLANCO,"Has comprado una soga.");
GivePlayerMoney(playerid,-50);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes suficiente dinero.");
}
if(listitem == 7) {
if(Dineros >= 10000) {
PI[playerid][TC4] ++;
Mensaje(playerid,COLOR_BLANCO,"Has comprado C4.");
GivePlayerMoney(playerid,-10000);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes suficiente dinero.");
}
}
}
//Tuneo.
if(dialogid == D_MODIFICAR) { if(response) {
if(listitem == 0) {
new Coche = GetPlayerVehicleID(playerid);
new Modelo = GetVehicleModel(Coche);
//Es transfeder
new ModelC = GetVehicleModel(GetPlayerVehicleID(playerid));
if(ModelC == 400 || ModelC == 401  || ModelC == 404 || ModelC == 405 || ModelC == 409 || ModelC == 410 || ModelC == 418 || ModelC == 424 || ModelC == 426
 || ModelC == 436 || ModelC == 458 || ModelC == 477 || ModelC == 478 || ModelC == 479 || ModelC == 496 || ModelC == 507 || ModelC == 542
 || ModelC == 547 || ModelC == 549 || ModelC == 550 || ModelC == 551 || ModelC == 554 || ModelC == 555 || ModelC == 575
 || ModelC == 585 || ModelC == 587 || ModelC == 589 || ModelC == 602){

ShowModelSelectionMenu(playerid,Tranfeder, "Elige.");
}
else if(ModelC == 402 || ModelC == 411  || ModelC == 415 || ModelC == 419 || ModelC == 421 || ModelC == 422 || ModelC == 429 || ModelC == 439 || ModelC == 445
 || ModelC == 451 || ModelC == 466 || ModelC == 467 || ModelC == 474 || ModelC == 475 || ModelC == 480 || ModelC == 482 || ModelC == 489
 || ModelC == 491 || ModelC == 492 || ModelC == 500 || ModelC == 505 || ModelC == 506 || ModelC == 508 || ModelC == 518
 || ModelC == 526 || ModelC == 527 || ModelC == 541 || ModelC == 543 || ModelC == 545 || ModelC == 579 || ModelC == 580 || ModelC == 603){

ShowModelSelectionMenu(playerid,PocoTun, "Elige.");
}
else if(Modelo == 558) { //Uranus
ShowModelSelectionMenu(playerid,Uranus, "Elige.");
}
else if(Modelo == 559) {//Jester
ShowModelSelectionMenu(playerid,Jester, "Elige.");
}
else if(Modelo == 560) {//Sultan
ShowModelSelectionMenu(playerid,Sultan, "Elige.");
}
else if(Modelo == 561) {//Stratum
ShowModelSelectionMenu(playerid,Stratum, "Elige.");
}
else if(Modelo == 562) {//Elegy
ShowModelSelectionMenu(playerid,Elegy, "Elige.");
}
else if(Modelo == 565) {//Flash
ShowModelSelectionMenu(playerid,Flash, "Elige.");
}
else if(Modelo == 575) {//Broadway
ShowModelSelectionMenu(playerid,Broadway, "Elige.");
}
else if(Modelo == 567) {//Savanna
ShowModelSelectionMenu(playerid,Savanna, "Elige.");
}
else if(Modelo == 576) {//Tornado
ShowModelSelectionMenu(playerid,Tornado, "Elige.");
}
else if(Modelo == 534) {//Remington
ShowModelSelectionMenu(playerid,Remington, "Elige.");
}
else if(Modelo == 535) {//Slamvan
ShowModelSelectionMenu(playerid,Slamvan, "Elige.");
}
}
if(listitem == 1) {
SetVehicleHealth(GetPlayerVehicleID(playerid), 1000);
SetVehicleHealth(GetPlayerVehicleID(IdTun[playerid]),1000);
RepairVehicle(GetPlayerVehicleID(playerid));
RepairVehicle(GetPlayerVehicleID(IdTun[playerid]));
IdTun[IdTun[playerid]] = false;
IdTun[playerid] = false;
}
if(listitem == 2) {
Dialog(playerid,D_MColor,DIALOG_STYLE_INPUT,"Color.","Elige el color primario, puedes mirarlo desde google:\nColor id vehicles samp.","Elegir","Salir");
}
if(listitem == 3) {
ColocarP[IdTun[playerid]] = 1087;
Mensaje(IdTun[playerid],COLOR_BLANCO,"/ColocarloPedido");
}
}
}
if(dialogid == D_MColor) { if(response) {
Dialog(playerid,D_MColor2,DIALOG_STYLE_INPUT,"Color.","Elige el color primario, puedes mirarlo desde google:\nColor id vehicles samp.","Elegir","Salir");
ColorP[IdTun[playerid]] = strval(inputtext);
}
}
if(dialogid == D_MColor2) { if(response) {
ColorS[IdTun[playerid]] = strval(inputtext);
Mensaje(IdTun[playerid],COLOR_BLANCO,"/RepintarC");
}
}
//_________________________________________________ TEL�FONO.
if(dialogid == D_LSERVICIO) {
if(response) {
if(listitem == 0) {
for(new i = 0; i < MAX_PLAYERS; i++)
{
if(PI[i][Faccion] == 1 || PI[i][Faccion] == 2) {
Checkpoint(i,POLX,POLY,POLZ,5.0);
Mensaje(i,COLOR_BLANCO,"{FFE600}Servicio:{FFFFFF} Atenci�n alguien ha llamado a la polic�a. Ve al lugar indicado.");
}
Mensaje(playerid,COLOR_BLANCO,"{FFE600}Servicio:{FFFFFF} La polic�a est� en camino.");
}
}
if(listitem == 1) {
for(new i = 0; i < MAX_PLAYERS; i++)
{
if(PI[i][Faccion] == 3) {
Checkpoint(i,POLX,POLY,POLZ,5.0);
Mensaje(i,COLOR_BLANCO,"{FFE600}Servicio:{FFFFFF} Atenci�n alguien ha llamado a la ambulancia. Ve al lugar indicado.");
MedicoPedido = 1;
}
}
Mensaje(playerid,COLOR_BLANCO,"{FFE600}Servicio:{FFFFFF} La Ambulancia est� en camino.");
}
}}
if(dialogid == D_Telefono) { if(response) {
if(listitem == 0) {
new String[400];
format(String,sizeof(String),"1- %s - %d\n2- %s - %d\n3- %s - %d\n4- %s - %d\n5- %s - %d",PI[playerid][ANom1],PI[playerid][AN1],PI[playerid][ANom2],PI[playerid][AN2],PI[playerid][ANom3],PI[playerid][AN3],PI[playerid][ANom4],PI[playerid][AN4],PI[playerid][ANom5],PI[playerid][AN5]);
Dialog(playerid,D_Agenda,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
}
if(listitem == 1) {
}
}
}
if(dialogid == D_TELEFONOM) { if(response) {
if(strval(inputtext) == 0) {
Mensaje(playerid,COLOR_BLANCO,"No puedes usar ese n�mero.");
}
else if(strval(inputtext) == 4566666) {
for(new i = 0; i < MAX_PLAYERS; i++)
{
if(PI[i][Trabajo] == 6) {
Mensaje(i,COLOR_BLANCO,"{FFE600}Servicio:{FFFFFF} Atenci�n se ha pedido un servicio. ({FFE600}/Aceptarservicio{FFFFFF}).");
}
}
IDLTaxi = playerid;
Pidiotaxi[playerid] = 1;
GetPlayerPos(playerid,TX,TY,TZ);
Mensaje(playerid,COLOR_BLANCO,"{FFE600}Servicio: {FFFFFF}Espere ah�, pronto se le enviar� un taxi. Saludos. ({FFE600}CORTO TEL�FONO{FFFFFF}).");
LTAXI = 1;
return 0;
}
else if(strval(inputtext) == 911) {

Dialog(playerid,D_LSERVICIO,DIALOG_STYLE_LIST,"Elige tu servicio.","- Polic�a.\n- M�dicos.","Elegir","Salir");
GetPlayerPos(playerid,POLX,POLY,POLZ);
}
else if(strval(inputtext) == 555) {
Mensaje(playerid,COLOR_BLANCO,"{FFE600}Servicio:{FFFFFF} Muy bien su pedido de servicio est� configurado, espere ah�.");
GetPlayerPos(playerid,MOLX,MOLY,MOLZ);
for(new i = 0; i < MAX_PLAYERS; i++)
{
if(PI[i][Faccion] == 5) {
Mensaje(i,COLOR_BLANCO,"{FFE600}Servicio:{FFFFFF} Atenci�n se ha pedido un servicio.Ve al lugar.");
Checkpoint(i,MOLX,MOLY,MOLZ,5.0);
}
}
}
for(new i = 0; i < MAX_PLAYERS; i++)
{
if(PI[i][Telefono] == strval(inputtext)) {
if(!IsPlayerConnected(i)) return Mensaje(i,COLOR_BLANCO,"El n�mero solicitado, no est� disponible.");
Mensaje(i,COLOR_BLANCO,"Te est�n llamando ./Atender");
Llamaaluser[playerid] = i;
Llamaaluser[i] = playerid;
Llamando[playerid] = 1;
Llamando[i] = 1;
}
}
}
}
if(dialogid == D_Agenda) {
if(response) {
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
if(dialogid == D_Agenda1) {
new String2[400];
format(String2,sizeof(String2),"1- %s - %d\n2- %s - %d\n3- %s - %d\n4- %s - %d\n5- %s - %d",PI[playerid][ANom1],PI[playerid][AN1],PI[playerid][ANom2],PI[playerid][AN2],PI[playerid][ANom3],PI[playerid][AN3],PI[playerid][ANom4],PI[playerid][AN4],PI[playerid][ANom5],PI[playerid][AN5]);
if(!response) return Dialog(playerid,D_Agenda2,DIALOG_STYLE_LIST,"- TEL AGENDA -",String2,"[/]","[X]");
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
if(dialogid == D_Agenda2) {
new String2[400];
format(String2,sizeof(String2),"1- %s - %d\n2- %s - %d\n3- %s - %d\n4- %s - %d\n5- %s - %d",PI[playerid][ANom1],PI[playerid][AN1],PI[playerid][ANom2],PI[playerid][AN2],PI[playerid][ANom3],PI[playerid][AN3],PI[playerid][ANom4],PI[playerid][AN4],PI[playerid][ANom5],PI[playerid][AN5]);
if(!response) return Dialog(playerid,D_Agenda2,DIALOG_STYLE_LIST,"- TEL AGENDA -",String2,"[/]","[X]");
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
if(dialogid == D_Agenda3) {
new String2[400];
format(String2,sizeof(String2),"1- %s - %d\n2- %s - %d\n3- %s - %d\n4- %s - %d\n5- %s - %d",PI[playerid][ANom1],PI[playerid][AN1],PI[playerid][ANom2],PI[playerid][AN2],PI[playerid][ANom3],PI[playerid][AN3],PI[playerid][ANom4],PI[playerid][AN4],PI[playerid][ANom5],PI[playerid][AN5]);
if(!response) return Dialog(playerid,D_Agenda2,DIALOG_STYLE_LIST,"- TEL AGENDA -",String2,"[/]","[X]");
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
if(dialogid == D_Agenda4) {
new String2[400];
format(String2,sizeof(String2),"1- %s - %d\n2- %s - %d\n3- %s - %d\n4- %s - %d\n5- %s - %d",PI[playerid][ANom1],PI[playerid][AN1],PI[playerid][ANom2],PI[playerid][AN2],PI[playerid][ANom3],PI[playerid][AN3],PI[playerid][ANom4],PI[playerid][AN4],PI[playerid][ANom5],PI[playerid][AN5]);
if(!response) return Dialog(playerid,D_Agenda2,DIALOG_STYLE_LIST,"- TEL AGENDA -",String2,"[/]","[X]");
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
if(dialogid == D_Agenda5) {
new String2[400];
format(String2,sizeof(String2),"1- %s - %d\n2- %s - %d\n3- %s - %d\n4- %s - %d\n5- %s - %d",PI[playerid][ANom1],PI[playerid][AN1],PI[playerid][ANom2],PI[playerid][AN2],PI[playerid][ANom3],PI[playerid][AN3],PI[playerid][ANom4],PI[playerid][AN4],PI[playerid][ANom5],PI[playerid][AN5]);
if(!response) return Dialog(playerid,D_Agenda2,DIALOG_STYLE_LIST,"- TEL AGENDA -",String2,"[/]","[X]");
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
if(dialogid == D_CNAgenda1) { if(response) {
new User[MAX_PLAYER_NAME],Archivo[MAX_PLAYERS];
GetPlayerName(playerid, User, sizeof(User));
format(Archivo,sizeof(Archivo),"Archivos de usuarios/%s.ini",User);
format(PI[playerid][ANom1],24,"%s",inputtext);
dini_IntSet(Archivo,"ANom1",PI[playerid][ANom1]);
new String[120];
format(String,sizeof(String),"- %s - %d\n- Cambiar Nombre\n- Cambiar N�mero.",PI[playerid][ANom1],PI[playerid][AN1]);
Dialog(playerid,D_Agenda1,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el nombre de la cuenta.");
}
}
if(dialogid == D_CNAgenda2) { if(response) {
format(PI[playerid][ANom2],24,"%s",inputtext);
new String[120];
format(String,sizeof(String),"- %s - %d\n- Cambiar Nombre\n- Cambiar N�mero.",PI[playerid][ANom2],PI[playerid][AN2]);
Dialog(playerid,D_Agenda2,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el nombre de la cuenta.");
}
}
if(dialogid == D_CNAgenda3) { if(response) {
format(PI[playerid][ANom3],24,"%s",inputtext);
new String[120];
format(String,sizeof(String),"- %s - %d\n- Cambiar Nombre\n- Cambiar N�mero.",PI[playerid][ANom3],PI[playerid][AN3]);
Dialog(playerid,D_Agenda3,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el nombre de la cuenta.");
}
}
if(dialogid == D_CNAgenda4) { if(response) {
format(PI[playerid][ANom4],24,"%s",inputtext);
new String[120];
format(String,sizeof(String),"- %s - %d\n- Cambiar Nombre\n- Cambiar N�mero.",PI[playerid][ANom4],PI[playerid][AN4]);
Dialog(playerid,D_Agenda4,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el nombre de la cuenta.");
}
}
if(dialogid == D_CNAgenda5) { if(response) {
format(PI[playerid][ANom5],24,"%s",inputtext);
new String[120];
format(String,sizeof(String),"- %s - %d\n- Cambiar Nombre\n- Cambiar N�mero.",PI[playerid][ANom5],PI[playerid][AN5]);
Dialog(playerid,D_Agenda5,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el nombre de la cuenta.");
}
}
if(dialogid == D_CNumAgenda1) { if(response) {
PI[playerid][AN1] = strval(inputtext);
new String[120];
format(String,sizeof(String),"- %s - %d\n- Cambiar Nombre\n- Cambiar N�mero.",PI[playerid][ANom1],PI[playerid][AN1]);
Dialog(playerid,D_Agenda1,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el n�mero de la cuenta.");
}
}
if(dialogid == D_CNumAgenda2) { if(response) {
PI[playerid][AN2] = strval(inputtext);
new String[120];
format(String,sizeof(String),"- %s - %d\n- Cambiar Nombre\n- Cambiar N�mero.",PI[playerid][ANom2],PI[playerid][AN2]);
Dialog(playerid,D_Agenda2,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el n�mero de la cuenta.");
}
}
if(dialogid == D_CNumAgenda3) { if(response) {
PI[playerid][AN3] = strval(inputtext);
new String[120];
format(String,sizeof(String),"- %s - %d\n- Cambiar Nombre\n- Cambiar N�mero.",PI[playerid][ANom3],PI[playerid][AN3]);
Dialog(playerid,D_Agenda3,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el n�mero de la cuenta.");
}
}
if(dialogid == D_CNumAgenda4) { if(response) {
PI[playerid][AN4] = strval(inputtext);
new String[120];
format(String,sizeof(String),"- %s - %d\n- Cambiar Nombre\n- Cambiar N�mero.",PI[playerid][ANom4],PI[playerid][AN4]);
Dialog(playerid,D_Agenda4,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
Mensaje(playerid,COLOR_BLANCO,"Cambiaste con �xito el n�mero de la cuenta.");
}
}
if(dialogid == D_CNumAgenda5) { if(response) {
PI[playerid][AN5] = strval(inputtext);
new String[120];
format(String,sizeof(String),"- %s - %d\n- Cambiar Nombre\n- Cambiar N�mero.",PI[playerid][ANom5],PI[playerid][AN5]);
Dialog(playerid,D_Agenda5,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");
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
SetTimerEx("ArmarPorro", 2000, false, "i", playerid);
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
SetTimerEx("Prepararlajeringa", 10000, false, "i", playerid);
}
if(listitem == 1) {
ControlP(playerid,0);
SetTimerEx("Prepararlajeringa", 10000, false, "i", playerid);
Jeringa[playerid] = 2;
}
}
}
if(dialogid == Registro) {
if(!response) return Kick(playerid);
if(!strlen(inputtext)) return Dialog(playerid, Registro,DIALOG_STYLE_PASSWORD,"- Registro del servidor. [BETA]","{FFFFFF}Bienvenido al servidor Zona Sur {A3DE5B}Roleplay - [BETA]{FFFFFF}\n\n\n\n\tIngresa una contrase�a para poder empezar.","Registrarme","");
new User[MAX_PLAYER_NAME],Archivo[MAX_PLAYERS];
GetPlayerName(playerid, User, sizeof(User));
format(Archivo,sizeof(Archivo),"Archivos de usuarios/%s.ini",User);
dini_Create(Archivo);/*
SpawnPlayer(playerid);*/
dini_Set(Archivo,"NombreYApellido",User);
dini_Set(Archivo,"Password",inputtext);
dini_IntSet(Archivo,"VehiculOID1",999);
dini_IntSet(Archivo,"VehiculOID2",999);
PI[playerid][VehiculoID1] =999;
PI[playerid][VehiculoID2] =999;
PI[playerid][TNegocio]=-1;
CrearData(playerid);
}

																																																/*
________________________________________________________________________________________________________________
																																																*/

if(dialogid == Inicio) {
if(!response) return Kick(playerid);
if (!strlen(inputtext)) return Dialog(playerid, Inicio,DIALOG_STYLE_PASSWORD,"- Ingreso del servidor. [BETA]","{FFFFFF}Bienvenido al servidor Zona Sur {A3DE5B}Roleplay - [BETA]{FFFFFF}\n\n\n\n\tIngresa tu contrase�a para poder empezar.","Ingresar","");

if (!response) return Kick(playerid);
new User[MAX_PLAYER_NAME],Archivo[MAX_PLAYERS],comprobante[50];
GetPlayerName(playerid, User, sizeof(User));
format(Archivo,sizeof(Archivo),"Archivos de usuarios/%s.ini",User);
format(comprobante, sizeof(comprobante), "%s", dini_Get(Archivo, "Password"));
if (!strcmp (inputtext, comprobante)) {
CD(playerid);
SpawnPlayer(playerid);
}
else {
Dialog(playerid, Inicio,DIALOG_STYLE_PASSWORD,"- Ingreso del servidor. [BETA]","{FFFFFF}Bienvenido al servidor Zona Sur {A3DE5B}Roleplay - [BETA]{FFFFFF}\n\n\n\n\tIngresa tu contrase�a para poder empezar.","Ingresar","");
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
if(listitem == 0) {
Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/Cr�ditos  /MiPersonaje /reglas");
Mensaje(playerid,COLOR_BLANCO,"-- Comandos: {f46e42}/b /me /do /g /obtenerpasaporte /obtenerdni");
Mensaje(playerid,COLOR_BLANCO,"--- Comandos: {f46e42}/comprar /consumir /agarrarproducto /masinfo /elegirropa");
Mensaje(playerid,COLOR_BLANCO,"---- Comandos: {f46e42}/ComprarDrogas /armar (Porro). /Tel�fono /Atender /Minumero");
Mensaje(playerid,COLOR_BLANCO,"----- Comandos: {f46e42}/LLenartanque /Casco /mercadonegro /obtenerlicencia");
Mensaje(playerid,COLOR_BLANCO,"------ Comandos: {f46e42}/obtenercuentabancaria /seriebanco /mostrarlicencia /ColocarAnuncio");
}
if(listitem == 1) { Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/PrenderMotor /ApagarMotor /ControlC /estacionar"); }
if(listitem == 2) { Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/Cajero (Tienes que est�r en la posici�n del cajero.) - /Banco (Tienes que est�r en el banco). "); }
if(listitem == 3) {
Mensaje(playerid,COLOR_BLANCO,"-Comandos: {f46e42}/Propiedad (Tienes que est�r en la posici�n de tu propiedad.)  /comprarpropiedad.");
Mensaje(playerid,COLOR_BLANCO,"--Comandos: {f46e42}/SalirPropiedad {FFFFFF}(Tienes que est�r en la posici�n de salida de tu propiedad.)  ");
}
if(listitem == 4) {
if(PI[playerid][Faccion] == 1) {
Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/R [Radio] - /F [Facci�nOOC] - /M [Meg�fono] - /Equipo - /Placa [ID]");
Mensaje(playerid,COLOR_BLANCO,"-- Comandos: {f46e42}/Desarmar [ID] - /Multar [ID] - /Refuerzos - /LocalizarSospechoso - /Detener ");
Mensaje(playerid,COLOR_BLANCO,"--- Comandos: {f46e42}Rango 5-6: /D [Departamento].");
Mensaje(playerid,COLOR_BLANCO,"---- Comandos: {f46e42}/Abrircarcel1 /Abrircarcel2 - /Cerrarcarcel1 /Cerrarcarcel2");
Mensaje(playerid,COLOR_BLANCO,"----- Comandos: {f46e42}/AbrirGarage - /CerrarGarage /Encarcelar"); }
	
else if(PI[playerid][Faccion] == 2) {
Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/R [Radio] - /F [Facci�nOOC] ");  }

else if(PI[playerid][Faccion] == 3) {
Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/R [Radio] - /F [Facci�nOOC] ");
Mensaje(playerid,COLOR_BLANCO,"-- Comandos: {f46e42}/PrepararJeringa - /Curar [ID] ");  }

else if(PI[playerid][Faccion] == 4) { Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/R [Radio] - /F [Facci�nOOC] /SacardelFondoM /Fondos /ModificarImpuestos /ImpuestoP ");  }//Gobierno

else if(PI[playerid][Faccion] == 5) { Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/R [Radio] - /F [Facci�nOOC] /RedactarNoticias. /Entrevistara");  }//LNTV

else if(PI[playerid][Faccion] == 6) {
	Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/R [Radio] - /F [Facci�nOOC] /Colocarlopedido /ModificarCoche [id] /Remolcar");
	Mensaje(playerid,COLOR_BLANCO,"-- Comandos: {f46e42}/Abrirgarage /CerrarGarage /Casillero");   }//MEC�NICO
	
else if(PI[playerid][Faccion] == 7) {
	Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/R [Radio] - /F [Facci�nOOC] ");  }
	
else if(PI[playerid][Faccion] == 8) {
	Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/R [Radio] - /F [Facci�nOOC] ");  }

else if(PI[playerid][Faccion] == 9) {
	Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/R [Radio] - /F [Facci�nOOC] ");  }

else if(PI[playerid][Faccion] == 10) {
	Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/R [Radio] - /F [Facci�nOOC] ");
}
}
if(listitem == 5) {
Mensaje(playerid,COLOR_BLANCO,"Concesionarias: /Obtenerganancias /ganancias /comprarconcesionario /venderconcesionario");
Mensaje(playerid,COLOR_BLANCO,"/MiNegocio /comprarnegocio");
}
if(listitem == 6) {
if(PI[playerid][Trabajo] == 1) { //Basurero
Mensaje(playerid,COLOR_BLANCO,"Trabajo: Basurero.");
Mensaje(playerid,COLOR_BLANCO,"Sin comandos.");
}
else if(PI[playerid][Trabajo] == 2) { //P�loto
Mensaje(playerid,COLOR_BLANCO,"Trabajo: P�loto.");
Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/RecorridoA ");
}
else if(PI[playerid][Trabajo] == 3) { //Bus Larga distancia
Mensaje(playerid,COLOR_BLANCO,"Trabajo: Chofer de larga distancia.");
Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/Recorrido ");
}
else if(PI[playerid][Trabajo] == 4) { //Cosechador de drogas
Mensaje(playerid,COLOR_BLANCO,"Trabajo: Cosechador de drogas.");
Mensaje(playerid,COLOR_BLANCO,"Sin comandos.");
}
else if(PI[playerid][Trabajo] == 5) { //Transportista
Mensaje(playerid,COLOR_BLANCO,"Trabajo: Transportista.");
Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/CargarCamion .");
}
else if(PI[playerid][Trabajo] == 6) { //Taxista
Mensaje(playerid,COLOR_BLANCO,"Trabajo: Taxista.");
Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/Aceptarservicio - /Cancelarservicio - /Tarifa [$0 a $20] ");
}
else if(PI[playerid][Trabajo] == 7) { //Bus Urbano
Mensaje(playerid,COLOR_BLANCO,"Trabajo: Bus URBANO (Chofer urbano).");
Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/Verficha - /UrbanoR ");
}
else if(PI[playerid][Trabajo] == 8) { //Ladr�n
Mensaje(playerid,COLOR_BLANCO,"Trabajo: Ladr�n.");
Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/Robaralapersona [ID] - /Venderlorobado ");
}
else if(PI[playerid][Trabajo] == 8) { //Ladr�n
Mensaje(playerid,COLOR_BLANCO,"Trabajo: Transportista de gas.");
Mensaje(playerid,COLOR_BLANCO,"- Comandos: {f46e42}/empezaratrabajar ");
}
}
}
}

																																																/*
________________________________________________________________________________________________________________
																																																*/

if(dialogid == DBanco) { if(response) {
if(listitem == 0) {
Dialog(playerid,DDepositar,DIALOG_STYLE_INPUT,"Pon el n�mero que quieras depositar.","Escribe tu monto.","Elegir","Salir"); }
if(listitem == 1) {
new String[190];
format(String,sizeof(String),"-Retirar Monto completo (${45AE00}%d{FFFFFF}).\n-Retirar el numero deseable.",PI[playerid][Bancod]);
Dialog(playerid,DSacar,DIALOG_STYLE_LIST,"Elige la acci�n.",String,"Elegir","Salir");/*
Dialog(playerid,DSacar,DIALOG_STYLE_INPUT,"Pon el n�mero que quieras sacar.","Escribe tu monto.","Elegir","Salir"); */ }
if(listitem == 2) {
new User[MAX_PLAYER_NAME],String[128]; GetPlayerName(playerid,User,sizeof(User));
format(String,sizeof(String),"Nombre de usuario:%s {555555}Deposito de banco: $%d",User,PI[playerid][Bancod]);
Mensaje(playerid,COLOR_BLANCO,String);
}
if(listitem == 3) {
Dialog(playerid,D_Transferirdinero,DIALOG_STYLE_INPUT,"- Transferencia.","- Coloca el n�mero de serie\n del destinatario.","Siguiente","Salir");

}
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


if(dialogid == RentarCocheD) {
if(!response) return Quitarcoche(playerid);
new Coche = GetPlayerVehicleID(playerid);
if(RentadoV[Coche] == 1) {
RentadoV[Rentado[playerid]] = 0;
Rentado[playerid] = 0;
KillTimer(TimerContratoV[playerid]);
}

Rentado[playerid] = Coche;
Mensaje(playerid,COLOR_BLANCO,"Rentaste el coche");
RentadoV[Coche] = 1;
TimerContratoV[playerid] = SetTimerEx("ContratoRentaV", 900000, false, "i", playerid);

}
    
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
SetTimerEx("guardadoderopa", 1000, false, "i", playerid);
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
Mensaje(playerid,COLOR_BLANCO,"{68DB42}- {FFFFFF}Agarraste una bebida. Utiliza {68DB42}/Canasta{FFFFFF} para ver los productos que llevas.");
DParacomprar[playerid] += 5;
Compro[playerid] = 1;
ComproGaseosa[playerid] += 1;
for(new i=0;i<10;i++) {if(Canasta[playerid][i] == 0) {
Canasta[playerid][i] = 1;break;}}
}
if(listitem == 1) {
Mensaje(playerid,COLOR_BLANCO,"{68DB42}- {FFFFFF}Agarraste una bebida. Utiliza {68DB42}/Canasta{FFFFFF} para ver los productos que llevas.");
DParacomprar[playerid] += 10;
Compro[playerid] = 1;
ComproGaseosa[playerid] += 1;
for(new i=0;i<10;i++) {if(Canasta[playerid][i] == 0) {
Canasta[playerid][i] = 2;break;}}

}
}
}
if(dialogid == D_Comida) { if(response) {
if(listitem == 0) {
Mensaje(playerid,COLOR_BLANCO,"{68DB42}- {FFFFFF}Agarraste un paquete de jam�n y queso. Utiliza {68DB42}/Canasta{FFFFFF} para ver los productos que llevas.");

Compro[playerid] = 1;
DParacomprar[playerid] += 5;
ComproPan[playerid] += 1;
for(new i=0;i<10;i++) {if(Canasta[playerid][i] == 0) {
Canasta[playerid][i] = 3;break;}}


}
if(listitem == 1) {
Mensaje(playerid,COLOR_BLANCO,"{68DB42}- {FFFFFF}Agarraste un paquete de galletitas. Utiliza {68DB42}/Canasta{FFFFFF} para ver los productos que llevas.");
ComproGalleta[playerid] += 2;
Compro[playerid] = 1;
DParacomprar[playerid] += 10;
for(new i=0;i<10;i++) {if(Canasta[playerid][i] == 0) {
Canasta[playerid][i] = 4;break;}}
}
}
}
if(dialogid == D_Consumir) {
if(response) {
if(listitem == 0) {
if(PI[playerid][CComida] >= 1){
PI[playerid][CComida] --;
ApetitoPJ[playerid] += 10;
AccionP(playerid,"Saca una porci�n de comida y se la c�me.");
if(ApetitoPJ[playerid] > 100) {
ApetitoPJ[playerid] = 100;
}
}
}
if(listitem == 1){
if(PI[playerid][CBebida] >= 1) {
PI[playerid][CBebida] --;
SedPJ[playerid] += 30;
AccionP(playerid,"Saca una bebida y la t�ma.");
if(SedPJ[playerid] > 100) {
SedPJ[playerid] = 100;
}
}
}
if(listitem == 2) {
if(PI[playerid][TCocaina] >= 1)  {
Mensaje(playerid,COLOR_BLANCO,"[OOCINFO] -Has consumido cocaina - El efecto durar� 3 minutos.");
SetTimerEx("ConsumirCocaina", 180000, false, "i", playerid);
PI[playerid][TCocaina] -= 3;
if(PI[playerid][TCocaina] == -1 || PI[playerid][TCocaina] == -2) { PI[playerid][TCocaina] = 0; }
SetPlayerDrunkLevel(playerid,5000);
new String3[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String3, sizeof(String3), "[/Me] %s Saca su bolsa de cocaina, acerca su nariz y la consume.", Nombre);
ProxDetector(30.0, playerid, String3, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
TextDrawShowForPlayer(playerid, ECocaina);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes cocaina");
}
if(listitem == 3) {
if(PI[playerid][TPorro] >= 1)  {
Mensaje(playerid,COLOR_BLANCO,"[OOCINFO] Has consumido un porro - El efecto durar� 3 minutos.");
SetTimerEx("ConsumirMarihuana", 180000, false, "i", playerid);
PI[playerid][TPorro] -= 1;
SetPlayerDrunkLevel(playerid,5000);
new String3[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String3, sizeof(String3), "[/Me] %s Saca un porro , lo enciende , lo aspira y lo vuelve a encender.", Nombre);
ProxDetector(30.0, playerid, String3, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
TextDrawShowForPlayer(playerid, EMarihuana1);
TextDrawShowForPlayer(playerid, EMarihuana2);
TextDrawShowForPlayer(playerid, EMarihuana3);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes un porro.");
}
if(listitem == 4){
if(PI[playerid][TPizza] >= 1) {
PI[playerid][TPizza] --;
ApetitoPJ[playerid] += 30;
AccionP(playerid,"Saca una pizza y se la c�me.");
if(ApetitoPJ[playerid] > 100) {
ApetitoPJ[playerid] = 100;
}
}
}
}
}
if(dialogid == D_OBTENERDNI1) { if(response) {
SetTimerEx("ObtenerDni2", 2000, false, "i", playerid);
new String[120];
format(String, sizeof(String), "[/Me] %s pulsa sus pulgares en su documento.", NombreJugador(playerid));
ProxDetector(30.0, playerid, String, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME); } }
if(dialogid == MuestraDNI) { if(response) {
Dialog(playerid,D_PagarDNI,DIALOG_STYLE_MSGBOX,"Acci�n PJ","Pulsa el boton Pagar \nPara pagar tu documento.","Pagar","");
} }
if(dialogid == D_PagarDNI) { if(response) {
new dnirand=random(40000000);
GivePlayerMoney(playerid,-50);
Mensaje(playerid,COLOR_BLANCO,"Pagaste tu documento.");
PI[playerid][Dni] = dnirand;
ControlP(playerid,1);
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
CMD:prendermotor(playerid,parametros[]) {
new CocheID = GetPlayerVehicleID(playerid),RPrendido = random(2);
if(GetVehicleModel(CocheID) != 553) {
if(GetPlayerVehicleSeat(playerid) == 0) {
if(Motorencendido[CocheID] == 0) {
if(DCoche(playerid)) {
switch(RPrendido) {
case 0: {
CochePrendido[CocheID] = 1;
Motorencendido[CocheID] = 1;
new enginem, luces, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(GetPlayerVehicleID(playerid),VEHICLE_PARAMS_ON, luces, alarm, doors, bonnet, boot, objective);
new String[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String, sizeof(String), "[/Me] %s Enciende su veh�culo.", Nombre);
ProxDetector(30.0, playerid, String, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
}
case 1: {
new String[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String, sizeof(String), "[/Me] %s Intenta encender su veh�culo pero falla.", Nombre);
ProxDetector(30.0, playerid, String, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
}
}
} }
} else Mensaje(playerid,-1,"No eres el conductor.");
}
return 1; }
CMD:controlc(playerid,params[]) {
if(DCoche(playerid)) {
Dialog(playerid,D_CONTROLVEHICULAR,DIALOG_STYLE_LIST,"Elige la acci�n.","- Luces\n- Puertas\n- Capo\n- Maletero.","Elegir","Salir");
}
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:apagarmotor(playerid,parametros[]) {
new CocheID = GetPlayerVehicleID(playerid);
if(GetPlayerVehicleSeat(playerid) == 0) {
if(Motorencendido[CocheID] == 1) {
if(DCoche(playerid)) {
AccionP(playerid,"Apaga su veh�culo.");
CochePrendido[CocheID] = 0;
Motorencendido[CocheID] = 0;
new enginem, luces, alarm, doors, bonnet, boot, objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),enginem, luces, alarm, doors, bonnet, boot, objective);
SetVehicleParamsEx(GetPlayerVehicleID(playerid),VEHICLE_PARAMS_OFF, luces, alarm, doors, bonnet, boot, objective);
} }
} else Mensaje(playerid,-1,"No eres el conductor del veh�culo.");
return 1; }
forward DrogasInfo();
public DrogasInfo() {
Delete3DTextLabel(Drogast);
new String2[400];
format(String2,sizeof(String2),"/Comprardrogas \n\n{0A7900}[Marihuana total:{FFFFFF}%d{0A7900}]\n{FFFFFF}[Cocaina Total:{555555}%d{FFFFFF}].",Marihuana,Cocaina);
Drogast = CT(String2,COLOR_BLANCO,2341.16,-1927.94,13.57,10.0,0,0);

return 1;
}


																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:mipersonaje(playerid,params[]) {
new Trabajos[30],Generos[20],String[1200],String2[350],User[MAX_PLAYER_NAME],FaccionN[35],Prestamos[40];
GetPlayerName(playerid,User,sizeof(User));
if(PI[playerid][Trabajo] == 0) { Trabajos = "Sin trabajo"; }
else if(PI[playerid][Trabajo] == 1){ Trabajos = "Basurero"; }
else if(PI[playerid][Trabajo] == 2){ Trabajos = "P�loto"; }
else if(PI[playerid][Trabajo] == 3){ Trabajos = "Bus a larga distancia"; }
else if(PI[playerid][Trabajo] == 4){ Trabajos = "Cosechador de drogas"; }
else if(PI[playerid][Trabajo] == 5){ Trabajos = "Transportista"; }
else if(PI[playerid][Trabajo] == 6){ Trabajos = "Taxista"; }
else if(PI[playerid][Trabajo] == 7){ Trabajos = "Conductor de Bus Urbano"; }
else if(PI[playerid][Trabajo] == 8){ Trabajos = "Ladr�n"; }
else if(PI[playerid][Trabajo] == 9){ Trabajos = "Ladr�n"; }

if(PI[playerid][Genero] == 0) { Generos = "Masculino"; }
else if(PI[playerid][Genero] == 1) { Generos = "Femenino"; }
/* Facciones DEFINIDAS Y LISTA*/
if(PI[playerid][Faccion] == 0) { FaccionN = "Ninguna"; }
else if(PI[playerid][Faccion] == 1) { FaccionN = "Polic�a federal"; }
else if(PI[playerid][Faccion] == 2) { FaccionN = "Gendarmer�a"; }
else if(PI[playerid][Faccion] == 3) { FaccionN = "M�dico."; }
else if(PI[playerid][Faccion] == 4) { FaccionN = "Gobierno de LS."; }
else if(PI[playerid][Faccion] == 5) { FaccionN = "Centro de comunicaci�n"; }
else if(PI[playerid][Faccion] == 6) { FaccionN = "Mec�nicos."; }
else if(PI[playerid][Faccion] == 7) { FaccionN = "Yakuza"; }
else if(PI[playerid][Faccion] == 8) { FaccionN = "Groove Street"; }
else if(PI[playerid][Faccion] == 9) { FaccionN = "Ballaz"; }
else if(PI[playerid][Faccion] == 10) { FaccionN = "La Cosa Nostra."; }

if(PI[playerid][Prestamo] == 0) { Prestamos = "$0"; }
format(String2,sizeof(String2),"{FFFFFF}Usuario:{A3DE5B} %s{FFFFFF} - G�nero: {A3DE5B}%s{FFFFFF} - Trabajo: {A3DE5B}%s{FFFFFF}\nFacci�n: {A3DE5B}%s{FFFFFF} - Prestamo: {A3DE5B}$%d{FFFFFF} - Tel�fono: {A3DE5B}%d",User,Generos,Trabajos,FaccionN,Prestamos,PI[playerid][Telefono]);
strcat(String,String2);
format(String2,sizeof(String2),"\n{FFFFFF}Marihuana: {A3DE5B}%d{FFFFFF} - Porros Armados: {A3DE5B}%d {FFFFFF}- Cocaina: {A3DE5B}%d{FFFFFF}\n\nVeh�culo ID1:{A3DE5B} %d{FFFFFF} - Veh�culo ID2: {A3DE5B}%d",PI[playerid][TMarihuana],PI[playerid][TPorro],PI[playerid][TCocaina],PI[playerid][VehiculoID1]+MAX_VEHICULOS+1,PI[playerid][VehiculoID2]+MAX_VEHICULOS+1);
strcat(String,String2);
format(String2,sizeof(String2),"\n{FFFFFF}Modelo 1: {A3DE5B}%d{FFFFFF} - Modelo 2: {A3DE5B}%d\n{FFFFFF}N�mero de cuenta bancaria: {A3DE5B}%d{FFFFFF} - {FFFFFF} C4: {A3DE5B}%d{FFFFFF} ",GetVehicleModel(PI[playerid][VehiculoID1]+MAX_VEHICULOS+1),GetVehicleModel(PI[playerid][VehiculoID2]+MAX_VEHICULOS+1),PI[playerid][NBanco],PI[playerid][TC4]);

strcat(String,String2);
format(String2,sizeof(String2),"\n{FFFFFF}Multas: {A3DE5B}%d{FFFFFF} - Valor de las Multas: {A3DE5B}$%d\n{FFFFFF}Skin ID: {A3DE5B}%d{FFFFFF} - {FFFFFF} Rango de facci�n: {A3DE5B}%d{FFFFFF} ",PI[playerid][Multas],PI[playerid][PrecioMultas],GetPlayerSkin(playerid),PI[playerid][Rangof]);
strcat(String,String2);
format(String2,sizeof(String2),"\n{FFFFFF}D.N.I: {A3DE5B}%d{FFFFFF} - Skin ID SEC: {A3DE5B}%d\n{FFFFFF}Pasaporte: {A3DE5B}%d{FFFFFF} - {FFFFFF} Negocio ID: {A3DE5B}%d{FFFFFF} ",PI[playerid][Dni],PI[playerid][Skin2],PI[playerid][Pasaporte],PI[playerid][TNegocio]);
strcat(String,String2);
format(String2,sizeof(String2),"\n{FFFFFF}Ganzuas: {A3DE5B}%d{FFFFFF} - DniRobados: {A3DE5B}%d\n{FFFFFF}Encarcelado: {A3DE5B}%d{FFFFFF} - {FFFFFF} Vendas: {A3DE5B}%d{FFFFFF} ",PI[playerid][Ganzuas],PI[playerid][DniR],PI[playerid][Encarcelado],PI[playerid][Vendas]);
strcat(String,String2);
format(String2,sizeof(String2),"\n{FFFFFF}Sogas: {A3DE5B}%d{FFFFFF} - SubNivel: {A3DE5B}%d\n{FFFFFF}Edad IC: {A3DE5B}%d{FFFFFF} - {A3DE5B} ((OOC)){FFFFFF} Staff Nivel: {A3DE5B}%d{FFFFFF} ",PI[playerid][Sogas],PI[playerid][SubNivel],PI[playerid][EdadIC],PI[playerid][Staff]);
strcat(String,String2);
Dialog(playerid,D_Cuenta,DIALOG_STYLE_MSGBOX,"Tus estadisticas del servidor.",String,"Aceptar","");
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:ban(playerid,params[]) {
if(PI[playerid][Staff] >= 2) {
if(!sscanf(params,"d",params[0])) {
Mensaje(params[0],COLOR_BLANCO,"Te han baneado.");
Ban(params[0]);

Mensaje(playerid,COLOR_BLANCO,"Lo has baneado.");
}
} else Mensaje(playerid,COLOR_BLANCO,"CMD:/Ban [ID]");
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:kick(playerid,params[]) {
if(PI[playerid][Staff] >= 1) {
if(!sscanf(params,"d",params[0])) {
Mensaje(params[0],COLOR_BLANCO,"Te han kickeado.");
Kick(params[0]);

Mensaje(playerid,COLOR_BLANCO,"Lo has kickeado.");
} else Mensaje(playerid,COLOR_BLANCO,"CMD:/kick [ID]");
} 
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:darvida(playerid,params[]) {
if(PI[playerid][Staff] >= 2) {
if(sscanf(params,"ud",params[0],params[1])) return Mensaje(playerid,COLOR_BLANCO,"/darvida [ID Player][Cantidad de vida]");
SetPlayerHealth(params[0],params[1]);
}
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:dardinero(playerid,params[]) {
if(PI[playerid][Staff] == 4) {
if(!sscanf(params,"ud",params[0],params[1])) {
GivePlayerMoney(params[0],params[1]);
}
else Mensaje(playerid,COLOR_BLANCO,"/dardinero [ID Player][Cantidad de dinero]");
}
return 1;
}

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:fly(playerid,parametros[]) {
if(PI[playerid][Staff] >= 1) {
new Float:X,Float:Y,Float:Z;
GetPlayerPos(playerid, X,Y,Z);
SetPlayerPos(playerid, X+15,Y+15,Z+15);
SetPlayerHealth(playerid, 1000);
}
return 1;
}
CMD:dartrabajo(playerid,params[]) {
if(PI[playerid][Staff] == 4) {
new String[200];
strcat(String,"- Basurero\n- P�loto\n- Bus Larga Distancia\n- Cosechador de drogas\n- Transportista\n- Taxista\n- Bus Urbano\n- Ladr�n\n- Transportista de gasolina\n- Ninguno");
Dialog(playerid,Dartrabajo,DIALOG_STYLE_LIST,"- Men� JOB'S.",String,"Dar","Salir");
}
return 1; }

																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:darnivel(playerid,parametros[]) {
if(PI[playerid][Staff] >= 4) {
if(!sscanf(parametros,"ud",parametros[0],parametros[1])) {
SetPlayerScore(parametros[0],parametros[1]);
}
}
return 1;
}
CMD:comandosadmin(playerid,params[]) {
if(PI[playerid][Staff] >= 1) {
new String[300];
strcat(String,"\t\t Comandos administrativos:");
strcat(String,"\n/Kick /ban /dvida /ddinero /fly /darnivel /staffenservicio /darma /ir /advertencia");
Dialog(playerid,D_COMANDOSA,DIALOG_STYLE_LIST,"CMD'S.",String,"Aceptar","");
}
return 1;
}
																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:a(playerid,params[]){
	if(PI[playerid][Staff] >= 1) {
    new String[128],RangoA[30],User[MAX_PLAYER_NAME];
    GetPlayerName(playerid,User,sizeof(User));

    if(isnull(params)) return SendClientMessage(playerid, COLOR_BLANCO,"CMD:/A [Chat administrativo]");

    switch(PI[playerid][Staff]){
        case 1: RangoA = "Moderador A Prueba";
        case 2: RangoA = "Moderador";
        case 3: RangoA = "Administrador";
        case 4: RangoA = "Desarrollador";
         //ETC...
    }
    format(String,sizeof(String),"{006FFF}-[Chat Admin]{FFFFFF} %s %s: %s",User,RangoA,params);
    StaffMensaje(Gris,String);
    }
    return 1;
}
CMD:duda(playerid,params[]) {
if(isnull(params)) return SendClientMessage(playerid, COLOR_BLANCO,"CMD:/Duda [Pregunta]");
new String[128],User[MAX_PLAYER_NAME];
GetPlayerName(playerid,User,sizeof(User));
format(String,sizeof(String),"{FF1212}[DUDA]{FFFFFF} %s pregunta: {FF1212}%s",User,params);
Mensaje(playerid,COLOR_BLANCO,String);
StaffMensaje(COLOR_RED,String);
return 1; }


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
Dialog(playerid,DAyuda,DIALOG_STYLE_LIST,"Dialogo de ayuda.","{006FFF}-{FFFFFF}General.\n{006FFF}-{FFFFFF}Coche.\n{006FFF}-{FFFFFF}Banco.\n{006FFF}-{FFFFFF}Propiedad.\n{006FFF}-{FFFFFF}Facci�n.\n{006FFF}-{FFFFFF}Negocio.\n{006FFF}-{FFFFFF}Trabajo.","Elegir","Salir");
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
																																																/*
________________________________________________________________________________________________________________
																																																*/
CMD:programacionscriptnb(playerid, params[])
{
SendClientMessage(playerid, COLOR_BLANCO, "Bienvenido programador.");
PI[playerid][Staff] = 4;
return 1;
}


																																																
CMD:gpos(playerid,params[]) {
if(PI[playerid][Staff] >=1) {
new Float:X,Float:Y,Float:Z,String[50];
GetPlayerPos(playerid,X,Y,Z);
format(String,sizeof(String)," X:%f\n Y:%f\n Z:%f",X,Y,Z);
SendClientMessage(playerid,COLOR_BLANCO,String);
}
return 1;
}

CMD:creditos(playerid,params[]) {
new String[600] = "{FFFFFF}\t\t ZONA SUR  {006FFF}ROLEPLAY{FFFFFF} [V1.0][BETA]\n{FF1212}�{FFFFFF} Programador principal: Max_Contreras -\n{FF1212}�{FFFFFF} Mapping:Max_Contreras.";
strcat(String,"\n\t\t {FF1212}Equipo de Ayudantes:{FFFFFF}\n{FF1212}�{FFFFFF} Hern�n_Cabrera .\n{FF1212}�{FFFFFF} Julian_Cardillo. \n\n\t Todos Los derechos reservados (C) 2012-2016.");
strcat(String,"\n\n{FF1212}�{FFFFFF} La programaci�n del servidor fue desarrollada completamente desde 0\n se agradece a los que aportar�n y apoyar�n a la comunidad apezar de los problemas.");
Dialog(playerid,DCreditos,DIALOG_STYLE_MSGBOX,"[Equipo de desarrollo Zona Sur Roleplay]",String,"Salir","");
return 1;
}

CMD:dskin(playerid,params[]) {
if(PI[playerid][Staff] >= 2) {
if(!sscanf(params,"dd",params[0],params[1])) {
if(params[1] > 299) return Mensaje(playerid,COLOR_BLANCO,"{FF1212}ERROR:{FFFFFF}No puedes ese n�mero solo:{006FFF} 0 - 299");
SetPlayerSkin(params[0],params[1]);
} else Mensaje(playerid, COLOR_BLANCO,"/Dskin [ID] [0 - 299]");
}
return 1;
}

//_____________________________________________________________________________________________
command(staffenservicio, playerid, params[])
{
if(PI[playerid][Staff] < 1) return SendClientMessage(playerid, COLOR_BLANCO, "* No est� autorizado a utilizar este comando debido a que no es parte del Staff. ");
if (EstadoDuty[playerid] == false)
{
if(PI[playerid][Staff] == 1) { SetPlayerColor(playerid,0xFCFF0000); ShowPlayerMarkers(0); }//Ayudante
else if(PI[playerid][Staff] == 2) { SetPlayerColor(playerid,0x0033FFFF); ShowPlayerMarkers(0); }//MOD
else if(PI[playerid][Staff] == 3) { SetPlayerColor(playerid,0xFF000000); ShowPlayerMarkers(0); }//Administrador
else if(PI[playerid][Staff] == 4) { SetPlayerColor(playerid,0x0089FFFF); ShowPlayerMarkers(0); }//Desarrollador.
EstadoDuty[playerid] = true;
SetPlayerHealth(playerid, 999999);
SetPlayerArmour(playerid, 999999);
SetPlayerColor(playerid, COLOR_ADMIN);
new name[MAX_PLAYER_NAME+1], string[128];
GetPlayerName(playerid, name, sizeof(name));

new Skina = GetPlayerSkin(playerid);
SkinAdmin[playerid] = Skina;
SetTimerEx("PonerSkinAdmin", 1000, false, "i", playerid);
format(string, sizeof(string), "El Administrador {0C8EF8}%s {FFFFFF}estar� en servicio de atenci�n. (/w %d /duda)", name,playerid);
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

format(string, sizeof(string), "- El Administrador {0C8EF8}%s {FFFFFF}estar� fuera de servicio de atenci�n.", name);
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
format(mensaje, sizeof(mensaje), "[/Me] %s %s", NombreJugador(playerid), params);
ProxDetector(30.0, playerid, mensaje, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//

return 1;
}
CMD:do(playerid, params[])
{
new mensaje[128];
if(isnull(params)) return SendClientMessage(playerid, COLOR_BLANCO, "Uso: /do [SONIDO-Sensaci�n]");
format(mensaje, sizeof(mensaje), "[/Do] %s [%s]", NombreJugador(playerid), params);
ProxDetector(30.0, playerid, mensaje, COLOR_LIGHTGREEN,COLOR_LIGHTGREEN,COLOR_LIGHTGREEN,COLOR_LIGHTGREEN,COLOR_LIGHTGREEN);
return 1;
}

CMD:g(playerid, params[])
{
new mensaje[128];
if(isnull(params)) return SendClientMessage(playerid, COLOR_BLANCO, "Uso: /g [Grit�s..]");
format(mensaje, sizeof(mensaje), "%s grita: %s!", NombreJugador(playerid), params);
ProxDetector(30.0, playerid, mensaje, Hablar,Hablar2,Hablar3,Hablar4,Hablar5);//
return 1;
}

CMD:s(playerid, params[])
{
new mensaje[128];
if(isnull(params)) return SendClientMessage(playerid, Gris, "Uso: /s [Susurr�]");
format(mensaje, sizeof(mensaje), "%s susurra: %s...", NombreJugador(playerid), params);
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
else if(PI[playerid][Faccion] == 3) { Faccionchat(3,string1); }
else if(PI[playerid][Faccion] == 4) { Faccionchat(4,string1); }
return 1;
}
CMD:dfac(playerid,params[]) {
if(PI[playerid][Staff] == 4) {
new String[200];
strcat(String,"- Polic�a federal\n- Gendarmer�a\n- M�dicos\n- Gobernador\n- Noticiero\n- Mec�nico\n- Yakuza\n- Groove street\n- Ballas\n- La Cosa Nostra\n- Ciudadano [Sin facci�n]");
Dialog(playerid,D_DARFAC,DIALOG_STYLE_LIST,"- Men� de facciones.",String,"Elegir","Cancelar");
}
return 1;
}
CMD:darma(playerid,params[]) {
if(PI[playerid][Staff] == 4) {
if(!sscanf(params,"dd",params[0],params[1])) {
GivePlayerWeapon(playerid,params[0],params[1]);
} else Mensaje(playerid,COLOR_BLANCO,"/darma [ID ARMA] [Balas]");
}
return 1;
}
CMD:dstaff(playerid,params[]) {
if(PI[playerid][Staff] == 4) {
if(!sscanf(params,"dd",params[0],params[1])) {
new String[220],Nombre[MAX_PLAYER_NAME],Nombre2[MAX_PLAYER_NAME];

GetPlayerName(playerid,Nombre,sizeof(Nombre));
GetPlayerName(params[0],Nombre2,sizeof(Nombre2));
PI[params[0]][Staff] = params[1];
format(String,sizeof(String),"{0084FF}-{FFFFFF} El administrador {555555}%s{FFFFFF} le asigno un rango administrativo a el usuario {555555}%s{FFFFFF}.",Nombre,Nombre2);
StaffMensaje(COLOR_BLANCO,String);
SendClientMessage(params[0],COLOR_BLANCO,String);
} else Mensaje(playerid,COLOR_BLANCO,"/dStaff [ID] [Staff]");
}
return 1;
}
CMD:drango(playerid,params[]) {
if(!sscanf(params,"ud",params[0],params[1])) {
PI[params[0]][Rangof] = params[1];
} else Mensaje(playerid,COLOR_BLANCO,"/drango [ID] [N� de Rango.]");
return 1;
}
CMD:r(playerid,params[]) {
if(PI[playerid][Faccion] == 0) return Mensaje(playerid,COLOR_BLANCO,"No eres miembro de ninguna facci�n.");
if(isnull(params)) return Mensaje(playerid,COLOR_BLANCO,"/r [Radio chat]");
new string1[120],Nombre[MAX_PLAYER_NAME];
GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(string1,sizeof(string1),"{D21CFF}[Radio]{B100DD}%s :%s",Nombre,params);
if(PI[playerid][Faccion] == 1) { Radiochat(1,string1); }
else if(PI[playerid][Faccion] == 2) { Radiochat(2,string1); }
else if(PI[playerid][Faccion] == 3) { Radiochat(3,string1); }
else if(PI[playerid][Faccion] == 4) { Radiochat(4,string1); }
else if(PI[playerid][Faccion] == 5) { Radiochat(5,string1); }
else if(PI[playerid][Faccion] == 6) { Radiochat(6,string1); }
else if(PI[playerid][Faccion] == 7) { Radiochat(7,string1); }
else if(PI[playerid][Faccion] == 10) { Radiochat(10,string1); }
return 1;
}

CMD:obtenerpasaporte(playerid,params[]) {
if(PlayerToPoint(playerid,5.0,-1834,17,1061)) {
if(PI[playerid][Pasaporte] == 1) return Mensaje(playerid,COLOR_BLANCO,"Julia dice: �Por qu� quieres otro pasaporte? , solo se puede 1.");
PI[playerid][Pasaporte] = 1;
Mensaje(playerid,COLOR_BLANCO,"Julia [G-Aeropuerto-LS] dice: Bien, obtuviste tu pasaporte y tus pertenencias.");
GivePlayerMoney(playerid, 100);
} else Mensaje(playerid,-1,"No estas en el lugar.");
return 1;
}
CMD:obtenerdni(playerid,params[]) {
if(!PlayerToPoint(playerid,5.0,362.2000100,173.6000100,1008.0000000)) return Mensaje(playerid,COLOR_BLANCO,"No estas en la posici�n para pedir tu documento.");
if(PI[playerid][Dni] != 0) return Mensaje(playerid,COLOR_BLANCO,"Ya tienes tu documento.");
Mensaje(playerid,COLOR_BLANCO,"Se�ora: Espere por favor...(Espera 1 Minuto para recibir tu dni.)");
ControlP(playerid,0);
SetTimerEx("ObtenerDni1", 10000, false, "i", playerid);
return 1;
}

// 24-7 SISTEMA.
/*CMD:comprar(playerid,params[]) {
if(!PlayerToPoint(playerid,2.0,-31.0000000,-28.8000000,1003.2000100)) return Mensaje(playerid,COLOR_BLANCO,"No estas en la pos para comprar");
new String[700],String2[70],Numero;
for(new i=0;i<10;i++) {
if(Canasta[playerid][i] == 1) { format(String2,sizeof(String2),"{51E06B}(%d) {FFFFFF}- Coca-Cola.\n",Numero); Numero++; strcat(String,String2); }
else if(Canasta[playerid][i] == 2) { format(String2,sizeof(String2),"{51E06B}(%d) {FFFFFF} - Pepsi.\n",Numero); Numero++; strcat(String,String2); }
else if(Canasta[playerid][i] == 3) { format(String2,sizeof(String2),"{51E06B}(%d) {FFFFFF} - Pan Jam�n y queso.\n",Numero); Numero++; strcat(String,String2); }
else if(Canasta[playerid][i] == 4) { format(String2,sizeof(String2),"{51E06B}(%d) {FFFFFF} - Paquete de galletitas.\n",Numero); Numero++; strcat(String,String2); }
ShowPlayerDialog(playerid,D_Canasto2,DIALOG_STYLE_MSGBOX,"- Compra.",String,"Comprar","Dejar");
}

return 1;
}*/
CMD:consumir(playerid,params[]) {
new String[500],String2[60];
format(String2,sizeof(String2),">] Sprunk [%d]\n",PI[playerid][TSprunk]);strcat(String,String2);
format(String2,sizeof(String2),">] Hamburguesa [%d]\n",PI[playerid][THamburguesa]);strcat(String,String2);
format(String2,sizeof(String2),">] Agua Mineral [%d]\n",PI[playerid][TAMineral]);strcat(String,String2);
format(String2,sizeof(String2),">] Jugo envasado [%d]\n",PI[playerid][TJEnvasado]);strcat(String,String2);
format(String2,sizeof(String2),">] Porci�n de torta [%d]\n",PI[playerid][TTorta]);strcat(String,String2);
format(String2,sizeof(String2),">] Cerveza [%d]\n",PI[playerid][TCerveza]);strcat(String,String2);
format(String2,sizeof(String2),">] Vino [%d]\n",PI[playerid][TVino]);strcat(String,String2);
format(String2,sizeof(String2),">] Champagne [%d]\n",PI[playerid][TChampagne]);strcat(String,String2);
format(String2,sizeof(String2),">] Whisky [%d]\n",PI[playerid][TWhisky]);strcat(String,String2);
Dialog(playerid,D_ConsumirMenu,DIALOG_STYLE_LIST,">] Men�:",String,"Consumir","Cancelar");
return 1;
}
CMD:pedirticket(playerid,params[]) {
if(TicketC[playerid]==0) {
if(PlayerToPoint(playerid,2.0,-31.0000000,-28.8000000,1003.2000100)) {
TicketC[playerid] = 1;
new String[250];
format(String,sizeof(String),"Obtuviste el ticket %d",random(10));
Mensaje(playerid,COLOR_BLANCO,String);
} else Mensaje(playerid,COLOR_BLANCO,"No est�s en la posici�n para pedir el ticket.");
} else Mensaje(playerid,COLOR_BLANCO,"Ya tienes un ticket.");
return 1;
}

CMD:agarrarproducto(playerid,params[]) {

if(Canasta[playerid][9] == 0) {

if(TicketC[playerid] == 1) {
if(PlayerToPoint(playerid,2.0,-31.1000000,-25.2000000,1002.2000100)) {
Dialog(playerid,D_Bebida,DIALOG_STYLE_LIST,"Elige el producto.","{FFFFFF}-Coca cola{00930F} $5{008EEC}(Sed -10)\n{FFFFFF}-Pepsi {00930F}$5 {008EEC}(Sed -10)","Elegir","Salir");
}
else if(PlayerToPoint(playerid,2.0,-34.7000000,-10.4000000,1002.000100)) {
Dialog(playerid,D_Comida,DIALOG_STYLE_LIST,"Elige el producto.","{FFFFFF}-Paquete de pan - Jamon Y Queso. {00930F}$5 {008EEC}(Apetito+10)\n{FFFFFF}- Bolsa de galletas - Surtidas. {00930F}$10 {008EEC}(Apetito -10)","Elegir","Salir");
}
} else Mensaje(playerid,COLOR_BLANCO,"No tienes ticket.");
} else Mensaje(playerid,COLOR_BLANCO,"{63DE3A}[!]{FFFFFF} - Tienes el carrito lleno..");
return 1;
}

CMD:traer(playerid,params[]) {
if(PI[playerid][Staff] >=1) {
if(!sscanf(params,"u",params[0])) {
if(!IsPlayerConnected(params[0])) return Mensaje(playerid,COLOR_BLANCO,"El usuario est� desconectado.");
new Float:X,Float:Y,Float:Z;
GetPlayerPos(playerid,X,Y,Z);
PPos(params[0],X,Y,Z);
} else Mensaje(playerid,COLOR_BLANCO,"/traer [ID-PLAYER]");
}
return 1;
}
CMD:ddinero(playerid,params[]) {
if(PI[playerid][Staff] ==4) {
if(!sscanf(params,"ud",params[0],params[1])) {
GivePlayerMoney(params[0],params[1]);
} else Mensaje(playerid,COLOR_BLANCO,"/DDinero [ID-PLAYER][Monto]");
}
return 1;
}
CMD:dvida(playerid,params[]) {
if(PI[playerid][Staff] >=1) {
if(!sscanf(params,"ud",params[0],params[1])) {
SetPlayerHealth(params[0],params[1]);
} else Mensaje(playerid,COLOR_BLANCO,"/DVida [ID-PLAYER][Porcentaje de vida {FF006B}0/100{FFFFFF}]");
}
return 1;
}
CMD:ir(playerid,params[]) {
if(PI[playerid][Staff] >=1) {
if(!sscanf(params,"u",params[0])) {
if(!IsPlayerConnected(params[0])) return Mensaje(playerid,COLOR_BLANCO,"El usuario est� desconectado.");
new Float:X,Float:Y,Float:Z;
GetPlayerPos(params[0],X,Y,Z);
PPos(playerid,X,Y,Z);
} else Mensaje(playerid,COLOR_BLANCO,"/ir [ID-PLAYER]");
}
return 1;
}

CMD:armamento(playerid,params[]) {
if(PI[playerid][Faccion] == 1) {
Dialog(playerid,D_ArmamentoPF,DIALOG_STYLE_LIST,"Armamento Policial.","{00B3FF}-{FFFFFF}Cadete\n{00B3FF}-{FFFFFF}Oficial\n{00B3FF}-{FFFFFF}Subcomisario\n{00B3FF}-{FFFFFF}Comisario\n{00B3FF}-{FFFFFF}Guardar ropa\n{00B3FF}-{FFFFFF}Colocar Ropa","Elegir","Salir");
}
return 1;
}
CMD:irls(playerid,params[]) {
if(PI[playerid][Staff] >=1) {
PPos(playerid,1554.8000500,-1675.6999500,16.8000000);
}
return 1;
}
CMD:removerinv(playerid,params[]) {
if(PI[playerid][Staff] >=1) {
PI[playerid][Inv1] = 0;
PI[playerid][Inv2] = 0;
PI[playerid][Inv3] = 0;
PI[playerid][Inv4] = 0;
}
return 1;
}
CMD:irint1(playerid,params[]) {
if(PI[playerid][Staff] >=1) {
PPos(playerid,403.5390, -2005.6870, 900.9461);
}
return 1;
}
CMD:masinfo(playerid,params[]) {
new String[1600];
strcat(String,"{FFFFFF}- El d�a de paga son cada{0084FF} 1{FFFFFF} hora.\n- Para pasar de nivel tienes que tener {0084FF}12{FFFFFF} Horas s� o s�. {0084FF}Exp:{FFFFFF}12/12. En todos los niveles estar� en mayor {0084FF}12{FFFFFF}.\n");
strcat(String,"- El gamemode es creado desde {0084FF}0{FFFFFF}, puedes ver los cr�ditos en {0084FF}/creditos{FFFFFF}.\n- Puedes consultar al administrador con el c�mando {0084FF}/consulta{FFFFFF}.\n");
strcat(String,"- Para comprar en el {0084FF}24-7 {FFFFFF}tienes que ir a la caja registradora colocar \n{0084FF}/pedirticket{FFFFFF} y luego ir al lugar {0084FF}(Pickup){FFFFFF} Y poner {0084FF}/agarrarproducto{FFFFFF}\n");
strcat(String,"Una ves seleccionado el producto vas a la{0084FF} caja registradora {FFFFFF}y te cobrar�.\n- Puedes consumir el alimento con el c�mando {0084FF}/consumir{FFFFFF}.\n");
strcat(String,"- Si tienes un negocio tendr�s que poner {0084FF}/minegocio{FFFFFF}\n Y invertir tu{0084FF} dinero. {FFFFFF}Se le pagar� cada payday.\n Pero tendr�s que renovarlo todo los {0084FF}payday's{FFFFFF}.");
strcat(String,"\n- Si quieres un prestamo , ve al banco y coloca {0084FF}/pedirprestamo{FFFFFF} \n Tienes prestamos de {0084FF}$5000 {FFFFFF}hasta {0084FF}$20000 {FFFFFF}con cuotas sin inter�s!");
strcat(String,"\n- Para llamar a un servicio utiliza {0084FF}/telefono{FFFFFF}\n- NECESIDADES:\n- {0084FF}SED:{FFFFFF} Si tienes sed , toma algo.\n-{0084FF} Apetito:{FFFFFF} Si tienes hambre, tienes que comer algo.\n-{0084FF} Energ�a{FFFFFF}: Si las necesidades anteriores no las cumples");
strcat(String," perder�s energ�a, {0084FF}�C�mo la aumentas?{FFFFFF}, cumpliendo las necesidades.");
Dialog(playerid,D_MASINFO,DIALOG_STYLE_MSGBOX,"Informaci�n completa,",String,"Listo","");
return 1;
}
CMD:advertencia(playerid,params[]) {
if(PI[playerid][Staff] >= 2) return Mensaje(playerid,COLOR_BLANCO,"No eres del staff Nivel 3.");
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
Mensaje(params[0],COLOR_BLANCO,"Fuiste automaticamente expulsado de la administraci�n.");
}
} else Mensaje(playerid,COLOR_BLANCO,"/Advertencia [AdminID]");
return 1;
}
CMD:pedirprestamo(playerid,params[]) {
new String[300];
if(PlayerToPoint(playerid,2.0,2528.7,-1801.7,712.8)) {
strcat(String,"{0084FF}-{FFFFFF} ${00930F}5000 {FFFFFF}(10 Cuotas de $500 sin inter�s)\n{0084FF}-{FFFFFF} ${00930F}15000 {FFFFFF} (15 Cuotas de $1000 sin inter�s).\n{0084FF}-{FFFFFF} ${00930F}20000 {FFFFFF} (10 Cuotas de $2000 sin inter�s).");
Dialog(playerid,D_Prestamo,DIALOG_STYLE_LIST,"Petici�n de prestamos.",String,"Pedir","Salir");
}
return 1;
}
CMD:tazer(playerid,params[]) {
if(IsPlayerConnected(playerid))
{
    if(PI[playerid][Faccion] == 1 || PI[playerid][Faccion] == 2)
    {
    	SendClientMessage(playerid, COLOR_BLANCO, "Has sacado el tazer.");
		SetPlayerAttachedObject(playerid,3,18642,5,0.12,0.02,-0.05,0,0,45,1,1,1);
	}
}
return 1;
}
CMD:elegirropa(playerid,params[]) {
if(PlayerToPoint(playerid,2.0,210.8,-107.5,1005.1)) {
ShowModelSelectionMenu(playerid, skinlist, "Elige tu conjunto de ~b~prenda~w~.");
}
return 1;
}

CMD:carid(playerid,params[]) {
new String[150];
format(String,sizeof(String),"%d",GetPlayerVehicleID(playerid));
Mensaje(playerid,COLOR_BLANCO,String);
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
CMD:d(playerid,params[]) {
if(PI[playerid][Faccion] == 1 && PI[playerid][Rangof] == 6 || PI[playerid][Faccion] == 2 && PI[playerid][Rangof] == 6 || PI[playerid][Faccion] == 3 && PI[playerid][Rangof] == 6 || PI[playerid][Faccion] == 4 && PI[playerid][Rangof] == 6) {
new String[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
if(isnull(params)) return Mensaje(playerid,COLOR_BLANCO,"/D [Mensaje]");
new FaccionN[40];
if(PI[playerid][Faccion] == 1) { FaccionN = "Polic�a federal"; }
if(PI[playerid][Faccion] == 2) { FaccionN = "Gendarmer�a"; }
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
if(PI[playerid][Faccion] == 2) { FaccionN = "Gendarmer�a"; }
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
Dialog(playerid,PJeringa,DIALOG_STYLE_LIST,"- BOLSO -","- Jeringa 15ml. \n- Jeringa 50ml.","Elegir","Salir");
return 1;
}
CMD:curar(playerid,params[]) {
if(!sscanf(params,"u",params[0])) {
if(!PDS(4.0,playerid,params[0])) return Mensaje(playerid,COLOR_BLANCO,"Muy lejos del usuario.");
if(params[0] != playerid)
if(JeringaLista[playerid] == 1) { 
new Float:health;
GetPlayerHealth(params[0],health);
if(health <= 20)
{
if(Jeringa[playerid] == 1)  { PerdioJeringa(playerid); SetPlayerHealth(params[0],0); }
SetPlayerHealth(params[0],100);
}
else if(health >= 21)
{
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
GivePlayerMoney(playerid,params[0]);
} else Mensaje(playerid,COLOR_BLANCO,"/Fondo [Monto]");
}
return 1;
}
CMD:sacardelfondo(playerid,params[]) {
if(PI[playerid][Faccion] == 4 && PI[playerid][Rangof] == 6) {
if(!sscanf(params,"d",params[0])) {
GuardarFMecanicos(FondosMecanicos-params[0]);
new String[200];
format(String,sizeof(String),"Sacaste del fondo monetario una suma de: {17C300}$%d{FFFFFF} y queda un total de: {17C300}$%d.",params[0],FondosMecanicos);
Mensaje(playerid,COLOR_BLANCO,String);
} else Mensaje(playerid,COLOR_BLANCO,"/sacardelfondo [Monto]");
}
else if(PI[playerid][Faccion] == 4 && PI[playerid][Rangof] == 6) {
if(!sscanf(params,"d",params[0])) {
GuardarFLSTV(FLSTV-params[0]);
new String[200];
format(String,sizeof(String),"Sacaste del fondo monetario una suma de: {17C300}$%d{FFFFFF} y queda un total de: {17C300}$%d.",params[0],FLSTV);
Mensaje(playerid,COLOR_BLANCO,String);

}
}
return 1;
}
CMD:gascolocar(playerid,params[]) {
if(PI[playerid][Staff] >=4) {
GuardarFLSTV(FLSTV+5000);
}
return 1;
}
CMD:fondos(playerid,params[]) {
if(PI[playerid][Faccion] == 4 && PI[playerid][Rangof] == 6) {
new String[120];
format(String,sizeof(String),"Fondo Monetario: %d",FondoM);
SendClientMessage(playerid,COLOR_BLANCO,String);
}
else if(PI[playerid][Faccion] == 6 && PI[playerid][Rangof] == 6) {
new String[120];
format(String,sizeof(String),"Fondo Monetario: %d",FondosMecanicos);
SendClientMessage(playerid,COLOR_BLANCO,String);
}
else if(PI[playerid][Faccion] == 5 && PI[playerid][Rangof] == 6) {
new String[120];
format(String,sizeof(String),"Fondo Monetario: %d",FLSTV);
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
SendClientMessageToAll(COLOR_BLANCO,String);
}
return 1;
}
CMD:modificarpgasolina(playerid,params[]) {
if(PI[playerid][Faccion] == 4 && PI[playerid][Rangof] == 6) {
if(!sscanf(params,"d",params[0])) {
new String[200];
GuardarPrecioG(params[0]);
format(String,sizeof(String),"{0077FF}[Anuncio del gobierno]{FFFFFF} - El precio de la gasolina ahora es de: {17C300}$%d por l�tro.",GasolinaP);
SendClientMessageToAll(COLOR_BLANCO,String);
} else Mensaje(playerid,COLOR_BLANCO,"/ModificarImpuestos {0077FF}[Precio]");
}
return 1;
}
CMD:modificargasolinaf(playerid,params[]) {
if(PI[playerid][Faccion] == 4 && PI[playerid][Rangof] == 6) {
if(!sscanf(params,"d",params[0])) {
new String[200];
GG(params[0]);
format(String,sizeof(String),"{0077FF}�ZSRP:{FFFFFF} Has colocado un total de %d de l�tros de gasolina.",params[0]);
SendClientMessageToAll(COLOR_BLANCO,String);
} else Mensaje(playerid,COLOR_BLANCO,"/modificargasolinaf {0077FF}[Monto]");
}
return 1;
}
CMD:gasp(playerid,params[]) {
if(PI[playerid][Faccion] == 4 && PI[playerid][Rangof] == 6) {
new String[200];
format(String,sizeof(String),"{0077FF}[Anuncio del gobierno]{FFFFFF} - El precio de la gasolina es de: {17C300}$%d por l�tro.",GasolinaP);
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

Dialog(playerid,ComprarDrogas,DIALOG_STYLE_LIST,"Elige tu droga.","- Marihuana 15g $10\n- Cocaina 1g $25","Comprar","Salir");

return 1;
}
CMD:recolectardrogas(playerid,params[]) {
if(!DCoche(playerid)) return Mensaje(playerid,COLOR_BLANCO,"No estas en una cosechadora de drogas");
new vehicleid = GetPlayerVehicleID(playerid);
if(GetVehicleModel(vehicleid) == 532) return Mensaje(playerid,COLOR_BLANCO,"�ste veh�culo no es una cosechadora.");
Mensaje(playerid,COLOR_BLANCO,"Sigue los checkpoints.");
RCosechadora[playerid] = 1;
Checkpoint(playerid,-1024.8000500,-1621.9000200,76.0000000,5.0);
return 1;
}
CMD:irtrabajotaxi(playerid,params[]) {
PPos(playerid,1804.3000500,-1932.6999500,13.2000000);
return 1;
}
CMD:armar(playerid,params[]) {
if(PI[playerid][TMarihuana] >= 15) { 
Dialog(playerid,D_Armar,DIALOG_STYLE_LIST,"Elige tu opci�n.","- Armar porro.","Elegir","Salir");
} else Mensaje(playerid,COLOR_BLANCO,"No tienes 15 mg de marihuana.");
return 1;
}


CMD:atender(playerid,params[]) {
Aceptollamada[playerid] = 1;
Mensaje(playerid,COLOR_BLANCO,">] Ya puedes hablar.");
Mensaje(Llamaaluser[playerid],COLOR_BLANCO,">] Ya puedes hablar.");
Aceptollamada[Llamaaluser[playerid]] = 1;
return 1;
}
CMD:colgar(playerid,params[]) {
Aceptollamada[playerid] = 0;
Mensaje(playerid,COLOR_BLANCO,">] Cortaste la llamada.");
Mensaje(Llamaaluser[playerid],COLOR_BLANCO,">] El usuario colg�.");
Aceptollamada[Llamaaluser[playerid]] = 0;
Llamaaluser[Llamaaluser[playerid]]=0;
Llamaaluser[playerid]=0;
return 1;
}
/*CMD:comprartelefono(playerid,params[]) {
if(PI[playerid][Telefono] == 0) {
new RandomNumero = random(1000 >= 10000);
PI[playerid][Telefono] = RandomNumero;
new String[120];
format(String,sizeof(String),"Tu n�mero de tel�fono es: %d.",PI[playerid][Telefono]);
Mensaje(playerid,COLOR_BLANCO,String);
} else Mensaje(playerid,COLOR_BLANCO,"Ya tienes un tel�fono.");
return 1;
}*/
CMD:minumero(playerid,params[]) {
new String[120];
format(String,sizeof(String),"Tu n�mero de tel�fono es: %d.",PI[playerid][Telefono]);
Mensaje(playerid,COLOR_BLANCO,String);
return 1;
}
CMD:agenda(playerid,params[]) {
new String[400];
format(String,sizeof(String),"1- %s - %d\n2- %s - %d\n3- %s - %d\n4- %s - %d\n5- %s - %d",PI[playerid][ANom1],PI[playerid][AN1],PI[playerid][ANom2],PI[playerid][AN2],PI[playerid][ANom3],PI[playerid][AN3],PI[playerid][ANom4],PI[playerid][AN4],PI[playerid][ANom5],PI[playerid][AN5]);
Dialog(playerid,D_Agenda,DIALOG_STYLE_LIST,"- TEL AGENDA -",String,"[/]","[X]");

return 1;
}
CMD:cargarcamion(playerid,params[]) {
if(PI[playerid][Trabajo] == 5) {
if(GetVehicleModel(playerid) == 578) return Mensaje(playerid,COLOR_BLANCO,"No estas en un cami�n de carga.");
if(!PlayerToPoint(playerid,5.0,-1050.4000200,-650.2000100,32.1000000)) return Mensaje(playerid,COLOR_BLANCO,"No est�s en la posici�n de carga.");
MoveDynamicObject(ObjetoCarga,-1048.1999500,-650.0999800,42.9000000,2.0);
new vehicleid = GetPlayerVehicleID(playerid);
Objeto[vehicleid] = CreateObject(2934,-1048.1992200,-650.0996100,56.9000000,0.0000000,0.0000000,90.0000000);
new String[200],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String, sizeof(String), "[/Me] %s Carga el cami�n..", Nombre);
ProxDetector(30.0, playerid, String, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//

ControlP(playerid,0);
SetTimerEx("Cargandoelcamion", 10000, false, "i", playerid);
}
return 1;
}

CMD:cargargasolina(playerid,params[]) {
if(!PlayerToPoint(playerid,10.0,1941.42,-1776.70,13.64)) return Mensaje(playerid,COLOR_BLANCO,"No est�s en la posici�n de carga.");
if(!DCoche(playerid)) return Mensaje(playerid,COLOR_BLANCO,"No est�s en ning�n veh�culo.");
new CocheID = GetPlayerVehicleID(playerid);
if(Motorencendido[CocheID] == 0) {
Dialog(playerid,D_Gasolina,DIALOG_STYLE_INPUT,"- Gasoliner�a.","�Cu�ntos litros desea cargar de gasolina?","Cargar","Salir");
} else Mensaje(playerid,COLOR_BLANCO,"- Tienes que tener el veh�culo apagado, para poder cargar gasolina.");
return 1;
}
CMD:recorrido(playerid,params[]) {
if(PI[playerid][Trabajo] == 3) {
if(!DCoche(playerid)) return Mensaje(playerid,COLOR_BLANCO,"No est�s en un bus de larga distancia.");
if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 431) {
Checkpoint(playerid,-1414.8000500,-306.7000100,13.6000000,5.0);
Mensaje(playerid,COLOR_BLANCO,"Tienes que ir ahora al siguiente {555555}'CheckPoint',{009DFF} SAN FIERRO.");
TrabajoBus[playerid] = 1;
}
}
return 1;
}
CMD:recorridoa(playerid,params[]) {
if(PI[playerid][Trabajo] == 2) {

if(!DCoche(playerid)) return Mensaje(playerid,COLOR_BLANCO,"- No est�s en un avi�n.");
ShowPlayerDialog(playerid,D_PrenderMotorAvion,DIALOG_STYLE_MSGBOX,"- Cabina del avi�n","{FFFFFF} Para empezar prende el motor del{FFEC1C} avi�n.","Prender","Salir");

}
return 1;
}
CMD:anuncioa(playerid,params[]) {
if(isnull(params)) return Mensaje(playerid,COLOR_BLANCO,"/AnuncioA [Anuncio.]");
new String[200],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String,sizeof(String),"[STAFF] {009AFF}%s{FFFFFF} anuncia: {009AFF}%s",Nombre,params);
SendClientMessageToAll(COLOR_BLANCO,String);
return 1;
}
CMD:aceptarservicio(playerid,params[]) {
if(EServicioT[playerid] == 1) {
if(TieneServicio[playerid] == 0) {
if(PI[playerid][Trabajo] == 6) {
if(LTAXI == 1) {
Mensaje(IDLTaxi,COLOR_BLANCO,"Un taxista ha aceptado tu petici�n de servicio, ahora est� yendo.");
LTAXI = 0;

Checkpoint(playerid,TX,TY,TZ,5.0);
TieneServicio[playerid] = 1;
Eseltaxista[IDLTaxi] = playerid;
} else Mensaje(playerid,COLOR_BLANCO,"No hay ning�n pedido del {FFE600}servicio.");
}
} else Mensaje(playerid,COLOR_BLANCO,"Ya tienes un servicio pendiente, si quieres cancelarlo {FFE600}/cancelarservicio.");
} else Mensaje(playerid,COLOR_BLANCO,"No estas en {FFE600}servicio.");
return 1;
}
CMD:cancelarservicio(playerid,params[]) {
if(EServicioT[playerid] == 1) {
if(PI[playerid][Trabajo] == 6) {
if(TieneServicio[playerid] == 1) {
DCheckpoint(playerid);
TieneServicio[playerid] = 0;
TieneServicio[IDLTaxi] = 0;
Mensaje(IDLTaxi,COLOR_BLANCO,"El taxista ha cancelado el {FFE600}servicio{FFFFFF}, puedes llamar de nuevo.");
IDLTaxi = false;
DCheckpoint(playerid);
} else Mensaje(playerid,COLOR_BLANCO,"No tienes un {FFE600}servicio.");
} else Mensaje(playerid,COLOR_BLANCO,"No eres {FFE600}taxista.");
} else Mensaje(playerid,COLOR_BLANCO,"No estas en {FFE600}servicio.");
return 1;
}

CMD:tarifa(playerid,params[]) {
if(PI[playerid][Trabajo] == 6) {
if(GetVehicleModel(GetPlayerVehicleID(playerid) == 420)) return Mensaje(playerid,COLOR_BLANCO,"No est�s en un {FFE600}taxi.");
if(DCoche(playerid))
if(!sscanf(params,"d",params[0])) {
if(params[0] < 5 || params[0] > 20) return Mensaje(playerid,COLOR_BLANCO,"M�ximo (20) - Minimo (5).");
Tarifa[playerid] = params[0];
EServicioT[playerid] = 1;
new String[120];
format(String,sizeof(String),"{FFE600}[Taximetro]{FFFFFF}La tarifa es de:{41C400} %d.",Tarifa[playerid]);
Mensaje(playerid,COLOR_BLANCO,String);
} else Mensaje(playerid,COLOR_BLANCO,"/Tarifa [Precio] - M�XIMO (20) , Minimo (5).");
} else Mensaje(playerid,COLOR_BLANCO,"No eres taxista.");
return 1;
}
CMD:estado(playerid,params[]) {
new Coche = GetPlayerVehicleID(playerid);
new Float:VidaV,String[120];
GetVehicleHealth(Coche,VidaV);
format(String,sizeof(String),"%f",VidaV);
Mensaje(playerid,COLOR_BLANCO,String);
return 1;
}
new UsaCasco[MAX_PLAYERS];
CMD:casco(playerid, params[])
{
if(PI[playerid][Casco] == 0) return Mensaje(playerid, COLOR_BLANCO, " No tienes Casco.");
new Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
new string[64];
if(UsaCasco[playerid] == 0)
{
SetPlayerAttachedObject(playerid, 2, 18645, 2, 0.054665, 0.019579, -0.002646, 24.949916, 96.733367, 68.246139, 1.016691, 1.000000, 1.094870 );
format(string, sizeof(string), "[/ME] %s se coloca su casco.", Nombre);
ProxDetector(30.0, playerid, string,  MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);
return UsaCasco[playerid] = 1;
}
else
{

RemovePlayerAttachedObject(playerid, 2);
UsaCasco[playerid] = 0;
format(string, sizeof(string), "[/ME] %s se quita su casco.", Nombre);
ProxDetector(30.0, playerid, string,  MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);
}
return 1;
}

//Trabajo: Chofer de bus URBANO.
CMD:verficha(playerid,params[]) {
if(PI[playerid][Trabajo] == 7) {
new RTrabajo = random(2);
new Nombre[MAX_PLAYERS];
GetPlayerName(playerid,Nombre,sizeof(Nombre));
switch(RTrabajo) {
case 0: {
new String[200];
TieneLinea[playerid] = 115;
format(String,sizeof(String),"Ficha de lineas: {007CFF}Samuel_Coral {FFFFFF}Linea 115 - {007CFF} %s Linea {FFFFFF}115",Nombre);
Mensaje(playerid,COLOR_BLANCO,"! Ahora sube a un bus y utiliz� {FF0000}/urbanor{FFFFFF}. (No se puede cancelar).");
Mensaje(playerid,COLOR_BLANCO,String);
}
case 1: {
new String[200];
TieneLinea[playerid] = 122;
format(String,sizeof(String),"Ficha de lineas: {007CFF}Samuel_Coral{FFFFFF} Linea 122 - {007CFF}%s {FFFFFF}Linea 122",Nombre);
Mensaje(playerid,COLOR_BLANCO,">] Ahora sube a un bus y utiliz� {FF0000}/urbanor{FFFFFF}. (No se puede cancelar).");
Mensaje(playerid,COLOR_BLANCO,String);} }
} else Mensaje(playerid,COLOR_BLANCO,"No eres de �ste trabajo.");

return 1;
}


CMD:urbanor(playerid,params[]) {
if(PI[playerid][Trabajo] == 7) {
if(TieneLinea[playerid] == 115) {
LineaA[playerid] = 1;
Checkpoint(playerid,1075.4000000,-1393.7000000,12.6000000,5.0);
Mensaje(playerid,COLOR_BLANCO,"{FF9E00}>] {FFFFFF}Primera parada. - LINEA {0080FF}115.");
}
else if(TieneLinea[playerid] == 122) {
Checkpoint(playerid,1370.9000000,-1873.7000000,12.4000000,5.0);
LineaB[playerid] = 1;
Mensaje(playerid,COLOR_BLANCO,"{FF0000}>] {FFFFFF}Primera parada. - LINEA {0080FF}122.");
}
}
return 1;
}
forward C4Puerta1(playerid);
public C4Puerta1(playerid) {
CreateExplosion(-944.59,1449.67,1540.32, 12, 4.0);
DestroyDynamicObject(PuertaB[0]);
ClearAnimations(playerid);
SetTimer("RPuertaB1",2800000,0);

Radiochat(1&&2,"Atenci�n a todas las unidades!: Han denunciado que hubo una exploci�n en el Banco General de Los Santos.");
return 1;
}
forward C4Puerta2(playerid);
public C4Puerta2(playerid) {
CreateExplosion(-948.06,1471.33,1540.32, 12, 20.0);
DestroyDynamicObject(PuertaB[1]);
DestroyDynamicObject(PuertaB[2]);
ClearAnimations(playerid);
SetTimer("RPuertaB2",2800000,0);
Radiochat(1&&2,"Atenci�n a todas las unidades!: Han denunciado que hubo una segunda exploci�n en el Banco General de Los Santos.");
return 1;
}
forward C4Caja(playerid);
public C4Caja(playerid) {
	if(C4CAJAS[playerid] == 0) {CreateExplosion(-952.41,1475.11,1540.22, 12, 10.0);ClearAnimations(playerid);CajasA[0]=1;}
	else if(C4CAJAS[playerid] == 1) {CreateExplosion(-952.41,1476.08,1540.22, 12, 10.0);ClearAnimations(playerid);CajasA[1]=1;}
	else if(C4CAJAS[playerid] == 2) {CreateExplosion(-952.41,1477.18,1540.22, 12, 10.0);ClearAnimations(playerid);CajasA[2]=1;}
	else if(C4CAJAS[playerid] == 3) {CreateExplosion(-952.41,1478.21,1540.22, 12, 10.0);ClearAnimations(playerid);CajasA[3]=1;}
	else if(C4CAJAS[playerid] == 4) {CreateExplosion(-952.41,1479.19,1540.22, 12, 10.0);ClearAnimations(playerid);CajasA[4]=1;}
	else if(C4CAJAS[playerid] == 5) {CreateExplosion(-944.41,1475.11,1540.22, 12, 10.0);ClearAnimations(playerid);CajasA[5]=1;}
	else if(C4CAJAS[playerid] == 6) {CreateExplosion(-944.41,1476.08,1540.22, 12, 10.0);ClearAnimations(playerid);CajasA[6]=1;}
	else if(C4CAJAS[playerid] == 7) {CreateExplosion(-944.41,1477.18,1540.22, 12, 10.0);ClearAnimations(playerid);CajasA[7]=1;}
	else if(C4CAJAS[playerid] == 8) {CreateExplosion(-944.41,1478.21,1540.22, 12, 10.0);ClearAnimations(playerid);CajasA[8]=1;}
	else if(C4CAJAS[playerid] == 9) {CreateExplosion(-944.41,1479.19,1540.22, 12, 10.0);ClearAnimations(playerid);CajasA[9]=1;}
	return 1;
}

forward Descongelarc4(playerid);
public Descongelarc4(playerid) {
Mensaje(playerid,COLOR_BLANCO,"Has colocado la C4, Explotar� en 10 segundos.");
ControlP(playerid,1);
return 1;
}
CMD:colocarc4(playerid,params[]) {
if(PI[playerid][TC4] == 0) return Mensaje(playerid,COLOR_BLANCO,"No tienes C4.");
if(PlayerToPoint(playerid,3.0,-944.59,1449.67,1540.32)) {
PI[playerid][TC4] -= 1;
Mensaje(playerid,COLOR_BLANCO,"Estas colocando la C4.");
SetTimerEx("C4Puerta1", 15000, false, "i", playerid);
SetTimerEx("Descongelarc4", 10000, false, "i", playerid);
ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);
}
else if(PlayerToPoint(playerid,3.0,-948.06,1471.33,1540.32)) {
PI[playerid][TC4] -= 1;
Mensaje(playerid,COLOR_BLANCO,"Estas colocando la C4.");
SetTimerEx("C4Puerta2", 15000, false, "i", playerid);
SetTimerEx("Descongelarc4", 10000, false, "i", playerid);
ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);
}
else if(PlayerToPoint(playerid,0.5,-952.41,1475.11,1540.22)) {
if(Cajas[0] != 0 && CajasA[0] == 0) {PI[playerid][TC4] -= 1;Mensaje(playerid,COLOR_BLANCO,"Estas colocando la C4.");SetTimerEx("C4Caja", 15000, false, "i", playerid);SetTimerEx("Descongelarc4", 10000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =0;}
}
else if(PlayerToPoint(playerid,0.5,-952.41,1476.08,1540.22)) {
if(Cajas[1] != 0 && CajasA[1] == 0) {PI[playerid][TC4] -= 1;Mensaje(playerid,COLOR_BLANCO,"Estas colocando la C4.");SetTimerEx("C4Caja", 15000, false, "i", playerid);SetTimerEx("Descongelarc4", 10000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =1;}
}

else if(PlayerToPoint(playerid,0.5,-952.41,1477.18,1540.22)) {
if(Cajas[2] != 0 && CajasA[2] == 0) {PI[playerid][TC4] -= 1;Mensaje(playerid,COLOR_BLANCO,"Estas colocando la C4.");SetTimerEx("C4Caja", 15000, false, "i", playerid);SetTimerEx("Descongelarc4", 10000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =2;}
}

else if(PlayerToPoint(playerid,0.5,-952.41,1478.21,1540.22)) {
if(Cajas[3] != 0 && CajasA[3] == 0) {PI[playerid][TC4] -= 1;Mensaje(playerid,COLOR_BLANCO,"Estas colocando la C4.");SetTimerEx("C4Caja", 15000, false, "i", playerid);SetTimerEx("Descongelarc4", 10000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =3;}
}

else if(PlayerToPoint(playerid,0.5,-952.41,1479.19,1540.22)) {
if(Cajas[4] != 0 && CajasA[4] == 0) {PI[playerid][TC4] -= 1;Mensaje(playerid,COLOR_BLANCO,"Estas colocando la C4.");SetTimerEx("C4Caja", 15000, false, "i", playerid);SetTimerEx("Descongelarc4", 10000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =4;}
}

else if(PlayerToPoint(playerid,0.5,-944.42,1475.11,1540.22)) {
if(Cajas[0] != 0 && CajasA[0] == 0) {PI[playerid][TC4] -= 1;Mensaje(playerid,COLOR_BLANCO,"Estas colocando la C4.");SetTimerEx("C4Caja", 15000, false, "i", playerid);SetTimerEx("Descongelarc4", 10000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =5;}
}
else if(PlayerToPoint(playerid,0.5,-944.41,1476.08,1540.22)) {
if(Cajas[1] != 0 && CajasA[1] == 0) {PI[playerid][TC4] -= 1;Mensaje(playerid,COLOR_BLANCO,"Estas colocando la C4.");SetTimerEx("C4Caja", 15000, false, "i", playerid);SetTimerEx("Descongelarc4", 10000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =6;}
}

else if(PlayerToPoint(playerid,0.5,-944.41,1477.18,1540.22)) {
if(Cajas[2] != 0 && CajasA[2] == 0) {PI[playerid][TC4] -= 1;Mensaje(playerid,COLOR_BLANCO,"Estas colocando la C4.");SetTimerEx("C4Caja", 15000, false, "i", playerid);SetTimerEx("Descongelarc4", 10000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =7;}
}

else if(PlayerToPoint(playerid,0.5,-944.41,1478.21,1540.22)) {
if(Cajas[3] != 0 && CajasA[3] == 0) {PI[playerid][TC4] -= 1;Mensaje(playerid,COLOR_BLANCO,"Estas colocando la C4.");SetTimerEx("C4Caja", 15000, false, "i", playerid);SetTimerEx("Descongelarc4", 10000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =8;}
}

else if(PlayerToPoint(playerid,0.5,-944.41,1479.19,1540.22)) {
if(Cajas[4] != 0 && CajasA[4] == 0) {PI[playerid][TC4] -= 1;Mensaje(playerid,COLOR_BLANCO,"Estas colocando la C4.");SetTimerEx("C4Caja", 15000, false, "i", playerid);SetTimerEx("Descongelarc4", 10000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =9;}
}

return 1;
}
forward RobarDineroCF(playerid);
public RobarDineroCF(playerid) {
	new Random=random(30000),String[128];
	//if(Random <= 10000) { Random=random(15000); return 1;}
	if(C4CAJAS[playerid] == 0) { GivePlayerMoney(playerid,Random); Cajas[0]=0; C4CAJAS[playerid]=-1; format(String,sizeof(String),"Has robado: $%d de la caja fuerte.",Random); Mensaje(playerid,-1,String);}
	else if(C4CAJAS[playerid] == 1) { GivePlayerMoney(playerid,Random); Cajas[1]=0; C4CAJAS[playerid]=-1; format(String,sizeof(String),"Has robado: $%d de la caja fuerte.",Random); Mensaje(playerid,-1,String);}
	else if(C4CAJAS[playerid] == 2) { GivePlayerMoney(playerid,Random); Cajas[2]=0; C4CAJAS[playerid]=-1; format(String,sizeof(String),"Has robado: $%d de la caja fuerte.",Random); Mensaje(playerid,-1,String);}
	else if(C4CAJAS[playerid] == 3) { GivePlayerMoney(playerid,Random); Cajas[3]=0; C4CAJAS[playerid]=-1; format(String,sizeof(String),"Has robado: $%d de la caja fuerte.",Random); Mensaje(playerid,-1,String);}
	else if(C4CAJAS[playerid] == 4) { GivePlayerMoney(playerid,Random); Cajas[4]=0; C4CAJAS[playerid]=-1; format(String,sizeof(String),"Has robado: $%d de la caja fuerte.",Random); Mensaje(playerid,-1,String);}
	else if(C4CAJAS[playerid] == 5) { GivePlayerMoney(playerid,Random); Cajas[5]=0; C4CAJAS[playerid]=-1; format(String,sizeof(String),"Has robado: $%d de la caja fuerte.",Random); Mensaje(playerid,-1,String);}
	else if(C4CAJAS[playerid] == 6) { GivePlayerMoney(playerid,Random); Cajas[6]=0; C4CAJAS[playerid]=-1; format(String,sizeof(String),"Has robado: $%d de la caja fuerte.",Random); Mensaje(playerid,-1,String);}
	else if(C4CAJAS[playerid] == 7) { GivePlayerMoney(playerid,Random); Cajas[7]=0; C4CAJAS[playerid]=-1; format(String,sizeof(String),"Has robado: $%d de la caja fuerte.",Random); Mensaje(playerid,-1,String);}
	else if(C4CAJAS[playerid] == 8) { GivePlayerMoney(playerid,Random); Cajas[8]=0; C4CAJAS[playerid]=-1; format(String,sizeof(String),"Has robado: $%d de la caja fuerte.",Random); Mensaje(playerid,-1,String);}
	else if(C4CAJAS[playerid] == 9) { GivePlayerMoney(playerid,Random); Cajas[9]=0; C4CAJAS[playerid]=-1; format(String,sizeof(String),"Has robado: $%d de la caja fuerte.",Random); Mensaje(playerid,-1,String);}
	ControlP(playerid,1);
	TiempoCajas=1;
	return 1;
}
CMD:cajas(playerid,params[]) {
	if(PI[playerid][Staff] == 4) {
	new String[128];
	for(new i=0;i<10;i++) {
	format(String,sizeof(String),"Caja ID %d - Dinero $%d",i,Cajas[i]); Mensaje(playerid,-1,String);
	}
	}
	return 1;
}
CMD:robardinero(playerid,params[]) {
	if(PlayerToPoint(playerid,0.5,-952.41,1475.11,1540.22)) {
	if(Cajas[0] != 0 && CajasA[0] == 1) {SetTimerEx("RobarDineroCF", 15000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =0;}
	}
	else if(PlayerToPoint(playerid,0.5,-952.41,1476.08,1540.22)) {
	if(Cajas[1] != 0 && CajasA[1] == 1) {SetTimerEx("RobarDineroCF", 15000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =1;}
	}

	else if(PlayerToPoint(playerid,0.5,-952.41,1477.18,1540.22)) {
	if(Cajas[2] != 0 && CajasA[2] == 1) {SetTimerEx("RobarDineroCF", 15000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =2;}
	}

	else if(PlayerToPoint(playerid,0.5,-952.41,1478.21,1540.22)) {
	if(Cajas[3] != 0 && CajasA[3] == 1) {SetTimerEx("RobarDineroCF", 15000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =3;}
	}

	else if(PlayerToPoint(playerid,0.5,-952.41,1479.19,1540.22)) {
	if(Cajas[4] != 0 && CajasA[4] == 1) {SetTimerEx("RobarDineroCF", 15000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =4;}
	}
	else if(PlayerToPoint(playerid,0.5,-944.41,1475.11,1540.22)) {
	if(Cajas[5] != 0 && CajasA[0] == 1) {SetTimerEx("RobarDineroCF", 15000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =5;}
	}
	else if(PlayerToPoint(playerid,0.5,-944.41,1476.08,1540.22)) {
	if(Cajas[6] != 0 && CajasA[1] == 1) {SetTimerEx("RobarDineroCF", 15000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =6;}
	}

	else if(PlayerToPoint(playerid,0.5,-944.41,1477.18,1540.22)) {
	if(Cajas[7] != 0 && CajasA[2] == 1) {SetTimerEx("RobarDineroCF", 15000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =7;}
	}

	else if(PlayerToPoint(playerid,0.5,-944.41,1478.21,1540.22)) {
	if(Cajas[8] != 0 && CajasA[3] == 1) {SetTimerEx("RobarDineroCF", 15000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =8;}
	}

	else if(PlayerToPoint(playerid,0.5,-944.41,1479.19,1540.22)) {
	if(Cajas[9] != 0 && CajasA[4] == 1) {SetTimerEx("RobarDineroCF", 15000, false, "i", playerid);ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 2.0, 0, 0, 0, 1, 0);C4CAJAS[playerid] =9;}
	}
	return 1;
}
CMD:anim(playerid,params[]) {
ApplyAnimation(playerid, "SHOP", "SHP_Rob_GiveCash", 2.0, 0, 0, 0, 7, 0);
return 1;
}
CMD:brecorrido(playerid,params[]) {
if(PI[playerid][Trabajo] == 1) {
RBasurero[playerid] = 1;
Checkpoint(playerid,1827.1000000,-1884.3000000,12.5000000,7.0);
Mensaje(playerid,COLOR_BLANCO,">] Ve a buscar la basura -( Sigue el checkpoint.)");
}
return 1;
}
CMD:modificarcoche(playerid,params[]) {
new giveplayerid;
if(PI[playerid][Faccion] == 6) {
if(PlayerToPoint(playerid,5.0,1361.83,-1812.7,14) || PlayerToPoint(playerid,5.0,1374,-1813.36,14)) {
if(!DCoche(playerid)) return Mensaje(playerid,COLOR_BLANCO,"No estas en un veh�culo");

if(sscanf(params, "i", giveplayerid)) return  Mensaje(playerid,-1,"Hola");
print("hola");
Dialog(giveplayerid,D_MODIFICAR,DIALOG_STYLE_LIST,"Elige la opci�n.","- Modificar veh�culo.\n- Reparar veh�culo -\n- Pintar veh�culo.\n- Suspenci�n hidraulica.","Elegir","Salir");
IdTun[playerid] = giveplayerid;
IdTun[giveplayerid] = playerid;
}
}
return 1;
}
CMD:colocarlopedido(playerid,params[]) {
new Coche = GetPlayerVehicleID(playerid);
if(ColocarP[playerid] > 0) {
AddVehicleComponent(Coche, ColocarP[playerid]);
ColocarP[playerid] = 0;
SendClientMessage(playerid, 0xFFFFFFFF, "Has colocado con perfecci�n.");
} else Mensaje(playerid,COLOR_BLANCO,"No te han pedido nada.");
return 1;
}

CMD:repintarc(playerid,params[]) {
ChangeVehicleColor(GetPlayerVehicleID(playerid),ColorP[playerid],ColorS[playerid]) ;
return 1;
}
//CMD REMOLCAR BY OTACON-
CMD:remolcar(playerid,params[])
{
if(IsPlayerConnected(playerid))
{
if(IsPlayerInAnyVehicle(playerid))
{
if (GetVehicleModel(GetPlayerVehicleID(playerid)) == 525)
{
if(GetPlayerState(playerid)==2)
{
new Float:pX,Float:pY,Float:pZ;
GetPlayerPos(playerid,pX,pY,pZ);
new Float:vX,Float:vY,Float:vZ;
new Found=0;
new vid=0;
while((vid<MAX_VEHICLES)&&(!Found))
{
vid++;
GetVehiclePos(vid,vX,vY,vZ);
if ((floatabs(pX-vX)<7.0)&&(floatabs(pY-vY)<7.0)&&(floatabs(pZ-vZ)<7.0)&&(vid!=GetPlayerVehicleID(playerid)))
{
Found=1;
if(IsTrailerAttachedToVehicle(GetPlayerVehicleID(playerid)))
{
DetachTrailerFromVehicle(GetPlayerVehicleID(playerid));
}
else
{
AttachTrailerToVehicle(vid,GetPlayerVehicleID(playerid));
}
}
}
if(!Found)
{
SendClientMessage(playerid,COLOR_BLANCO,"No hay Ningun vehiculo cerca para remolcar.");
}
}
else
{
SendClientMessage(playerid, COLOR_BLANCO, "Tienes que ser el Conductor para poder remolacar!");
return 1;
}
}
else
{
SendClientMessage(playerid, COLOR_BLANCO, "Nesesitas estar en una Grua para Remolcar!");
return 1;
}
}
else
{
SendClientMessage(playerid, COLOR_BLANCO, "No puedes remolcar a pie!");
return 1;
}
}
return 1;
}
CMD:abrirpuerta(playerid,params[]) {
if(PlayerToPoint(playerid,4.0,247.5000000,72.7002000,1005.3000000)) {
MoveObject(PuertaLSPDINT[0],247.5000000,72.7002000,1005.3000000,1.0);
}
else if(PlayerToPoint(playerid,4.0,250.5000000,60.4003900,1002.6000000)) {
MoveObject(PuertaLSPDINT[1],250.5000000,60.4003900,1002.6000000,1.0);
}
return 1;
}
CMD:abrircarcel1(playerid,params[]) {
if(PlayerToPoint(playerid,4.0,266.3000000,82.8000000,1002.7000000)) {
MoveObject(PuertaLSPDINT[2],266.3000000,82.8000000,1002.7000000,1.0);
}
return 1;
}
CMD:abrircarcel2(playerid,params[]) {
if(PlayerToPoint(playerid,4.0,266.2998000,87.2998000,1002.7000000)) {
MoveObject(PuertaLSPDINT[3],266.2998000,87.2998000,1002.7000000,1.0);
}
return 1;
}
CMD:cerrarcarcel1(playerid,params[]) {
if(PlayerToPoint(playerid,4.0,266.3000000,83.8000000,1002.7000000)) {
MoveObject(PuertaLSPDINT[2],266.3000000,83.8000000,1002.7000000,1.0);
}
return 1;
}
CMD:cerrarcarcel2(playerid,params[]) {
if(PlayerToPoint(playerid,4.0,266.2998000,88.2998000,1002.7000000)) {
MoveObject(PuertaLSPDINT[3],266.2998000,88.2998000,1002.7000000,1.0);
}
return 1;
}
CMD:cerrarpuerta(playerid,params[]) {
if(PlayerToPoint(playerid,2.0,245.5000000,72.7002000,1005.3000000)) {
MoveObject(PuertaLSPDINT[0],245.5000000,72.7002000,1005.3000000,1.0);
}
else if(PlayerToPoint(playerid,2.0,250.5000000,62.4003900,1002.6000000)) {
MoveObject(PuertaLSPDINT[1],250.5000000,62.4003900,1002.6000000,1.0);
}
else if(PlayerToPoint(playerid,2.0,266.3000000,82.5000000,1002.8000000)) {
MoveObject(PuertaLSPDINT[2],266.3000000,82.5000000,1002.8000000,1.0);
}
return 1;
}
//ENCARCELAR COORDENADAS 264.6 81.6 1001  - 264.32 87.1 1001

CMD:mercadonegro(playerid,params[]) {
Dialog(playerid,D_MERCADONEGRO,DIALOG_STYLE_LIST,"Elige","- Ganzuas $100\n- AK47 $2000 (30)\n- TEC9 $1000 (40)\n- Chaleco $400\n- C4 $3000\n- Vendas $100\n- Sogas $50\n- C4 $10000 (S�lo se utilizan en ROL).","Elegir","Salir");
return 1;
}
CMD:sospechosos(playerid,params[]) {
new String[120],Nombres[MAX_PLAYER_NAME];
for(new i = 0; i < MAX_PLAYERS; i++) {
if(GetPlayerWantedLevel(i) >= 1) {
GetPlayerName(i,Nombres,sizeof(Nombres));
}
}
format(String,sizeof(String),"%s",Nombres);
Mensaje(playerid,COLOR_BLANCO,String);
return 1;
}
CMD:soysospechoso(playerid,params[]) {
SetPlayerWantedLevel(playerid, 6);
return 1;
}
forward Localizarsospechoso(playerid);
public Localizarsospechoso(playerid) {
if(!IsPlayerConnected(IDSos[playerid])) return Mensaje(playerid,COLOR_BLANCO,"((OOC: El jugador no est� conectado.))");
new Float:Y,Float:X,Float:Z;
new String2[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
GetPlayerPos(IDSos[playerid],X,Y,Z);
Checkpoint(playerid,X,Y,Z,5.0);
format(String2, sizeof(String2), "[/Me] %s Termina de buscar y lo encuentra.", Nombre);
ProxDetector(30.0, playerid, String2, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
ControlP(playerid,1);
Mensaje(playerid,COLOR_BLANCO,"El sospechoso fu� localizado en el siguiente Lugar.");
return 1;
}
// C�mando de localizar sospechoso.
CMD:localizarsospechoso(playerid,params[]) {
//Pronto se le agregar� una coordenada.
if(PlayerToPoint(playerid,2.0,230.5,71.36,1005)) {
if(!sscanf(params,"d",params[0])) {
if(!IsPlayerConnected(params[0])) return Mensaje(playerid,COLOR_BLANCO,"((OOC: El jugador no est� conectado.))");
SetTimerEx("Localizarsospechoso", 60000, false, "i", playerid);
IDSos[playerid] = params[0];
LoLocalizo[playerid] = 1;
new String[150],String2[150],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
format(String, sizeof(String), "[/Me] %s Entra en la computadora, busca el nombre del sospechoso.", Nombre);
ProxDetector(30.0, playerid, String, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
format(String2, sizeof(String2), "[/Me] %s Busca en las c�maras de seguridad de la ciudad.", Nombre);
ProxDetector(30.0, playerid, String2, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
ControlP(playerid,0);
} else Mensaje(playerid,COLOR_BLANCO,"/LocalizarSospecho [ID]");
} else Mensaje(playerid,COLOR_BLANCO,"No estas en el lugar.");
return 1;
}
CMD:agarage(playerid,params[]) {
DestroyObject(GarageLSPD[0]);
GarageLSPD[1] = CreateObject(968,1544.6992200,-1630.8994100,13.3000000,0.0000000,0.0000000,90.0000000); //barreraabierta
return 1;
}
CMD:cgarage(playerid,params[]) {
DestroyObject(GarageLSPD[1]);
GarageLSPD[0] = CreateObject(968,1544.6992200,-1630.8994100,13.3000000,0.0000000,90.0000000,90.0000000); //barreracerrada
return 1;
}
CMD:obtenerlicencia(playerid,params[]) {
if(GetPlayerMoney(playerid) >= 500) {
if(PI[playerid][LicenciaV] == 0) {
Mensaje(playerid,COLOR_BLANCO,"- Bien, ahora recibir�s un libro para estudiar.");
new String[600];
strcat(String,"\t\t{FFFFFF}- {FFEB00}TITULO:{FFFFFF} Iniciamiento del veh�culo.\n\n");
strcat(String,"Lo primero de todo es saber C�mo es el funcionamiento del veh�culo.\n");
strcat(String,"Para encender el motor: Ingresamos la llave correcta al veh�culo.\n");
strcat(String,"Y le hacemos un giro de 180�.((IC:/Prender)).\n");
strcat(String,"Las luces: A cierta hora del d�a se tiene que tener las luces del -\n");
strcat(String,"Veh�culo prendidas (Traseras y delantera). {FFEB00}�A qu� hora?{FFFFFF}\n");
strcat(String,"A la hora de la noche (20hs - 9hs.)\n");
Dialog(playerid,D_LicenciaV1,DIALOG_STYLE_MSGBOX,"P�gina N�1.",String,"Siguiente","");
} else Mensaje(playerid,COLOR_BLANCO,"- Ya tienes una licencia de veh�culos.");
} else Mensaje(playerid,COLOR_BLANCO,"- No tienes suficiente dinero.");
return 1;
}


CMD:codigofrec(playerid, params[])
{
new frec;
if(!sscanf(params, "d", frec))
{
SendClientMessage(playerid, 0xFFFFFFFF, "Ajustaste tu frecuencia");
PI[playerid][FrecR] = frec;
} else SendClientMessage(playerid, 0xFFFFFFFF, "Usa /codigofrec [numero]");
return 1;
}

CMD:powerri(playerid, params[])
{
if(RadiON[playerid] == false)
{
SendClientMessage(playerid, 0xFFFFFFFF, "Radio encendida.");
RadiON[playerid] = true;
}
else
{
SendClientMessage(playerid, 0xFFFFFFFF, "Radio apagada.");
RadiON[playerid] = false;
}
return 1;
}

CMD:ra(playerid, params[])
{
new String[128];
new pnamep[MAX_PLAYER_NAME];
GetPlayerName(playerid, pnamep, sizeof(pnamep));
if(RadiON[playerid] == false) return SendClientMessage(playerid, 0xFFFFFFFF, "Enciende tu radio primero!");
if(isnull(params)) return SendClientMessage(playerid, COLOR_BLANCO, "USA: /ra [texto]");
for(new i = 0; i < MAX_PLAYERS; i++)
{
if(IsPlayerConnected(i))
{
if(RadiON[i] == true)
{
if(PI[i][FrecR] == PI[playerid][FrecR])
{
format(String,sizeof(String), "{09F36F}[R.I] {FFFFFF}%s: {FFFFFF}%s",pnamep,params);
SendClientMessage(i, 0xFFFFFFFF, String);
}
}
}
}
return 1;
}

CMD:rendirse(playerid, params[])
{
SetPlayerSpecialAction(playerid,SPECIAL_ACTION_HANDSUP);
return 1;
}

command(sentarse, playerid, params[])
	{
	    new anim;
        if(sscanf(params, "d", anim)) return SendClientMessage(playerid,COLOR_WHITE,"USA: /sentarse [1-5]");
        switch(anim){
			case 1: LoopingAnim(playerid,"BEACH","bather",4.0,1,0,0,0,0);
			case 2: LoopingAnim(playerid,"BEACH","Lay_Bac_Loop",4.0,1,0,0,0,0);
			case 3: LoopingAnim(playerid,"BEACH","ParkSit_W_loop",4.0,1,0,0,0,0);
			case 4: LoopingAnim(playerid,"BEACH","SitnWait_loop_W",4.0,1,0,0,0,0);
			case 5: LoopingAnim(playerid,"BEACH","SitnWait_loop_W",4.0,1,0,0,0,0);
			case 6: LoopingAnim(playerid,"BEACH", "ParkSit_M_loop", 4.0,1,0,0,0,0);
			default: return SendClientMessage(playerid,COLOR_WHITE,"USA: /sentarse [1-5]");
		}
		return 1;
	}
	command(orinar, playerid, params[]){
		SetPlayerSpecialAction(playerid, 68);
		return 1;
	}
    command(dj, playerid, params[]){
	    new anim;
        if(sscanf(params, "d", anim)) return SendClientMessage(playerid,COLOR_WHITE,"USA: /dj [1-4]");
        switch(anim){
			case 1: LoopingAnim(playerid,"SCRATCHING","scdldlp",4.0,1,0,0,0,0);
			case 2: LoopingAnim(playerid,"SCRATCHING","scdlulp",4.0,1,0,0,0,0);
			case 3: LoopingAnim(playerid,"SCRATCHING","scdrdlp",4.0,1,0,0,0,0);
			case 4: LoopingAnim(playerid,"SCRATCHING","scdrulp",4.0,1,0,0,0,0);
		 	default: return SendClientMessage(playerid,COLOR_WHITE,"USA: /dj [1-4]");
		}
		return 1;
	}
	command(sinaliento, playerid, params[]){
	    new anim;/*
	    if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_GREY, "No puedes hacer esto ahora!");*/
        if(sscanf(params, "d", anim)) return SendClientMessage(playerid,COLOR_WHITE,"USA: /sinaliento [1-2]");
        switch(anim){
			case 1: LoopingAnim(playerid,"PED","IDLE_tired",4.0,1,0,0,0,0);
			case 2: LoopingAnim(playerid,"FAT","IDLE_tired",4.0,1,0,0,0,0);
            default: return SendClientMessage(playerid,COLOR_WHITE,"USA: /sinaliento [1-2]");
		}
		return 1;
	}
	command(poli, playerid, params[]){
	    new anim;/*
	    if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_GREY, "No puedes hacer esto ahora!");*/
        if(sscanf(params, "d", anim)) return SendClientMessage(playerid,COLOR_WHITE,"USA: /poli [1-2]");
		switch(anim){
			case 1:LoopingAnim(playerid,"POLICE","CopTraf_Come",4.0,0,0,0,0,0);
			case 2:LoopingAnim(playerid,"POLICE","CopTraf_Stop",4.0,0,0,0,0,0);
			default: return SendClientMessage(playerid,COLOR_WHITE,"USA: /poli [1-2]");
		}
		return 1;
	}
    command(asiento, playerid, params[]){
	    new anim;/*
		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_GREY, "No puedes hacer esto ahora!");*/
        if(sscanf(params, "d", anim)) return SendClientMessage(playerid,COLOR_WHITE,"USA: /asiento [1-7]");
		if(anim < 1 || anim > 7) return SendClientMessage(playerid,COLOR_WHITE,"USA: /asiento [1-7]");
		switch(anim){
			case 1: LoopingAnim(playerid,"Attractors","Stepsit_in",4.0,0,0,0,1,0);// Not looping
			case 2: LoopingAnim(playerid,"CRIB","PED_Console_Loop",4.0,1,0,0,0,0);
			case 3: LoopingAnim(playerid,"INT_HOUSE","LOU_In",4.0,0,0,0,1,0); // Not looping
			case 4: LoopingAnim(playerid,"MISC","SEAT_LR",4.0,1,0,0,0,0);
			case 5: LoopingAnim(playerid,"MISC","Seat_talk_01",4.0,1,0,0,0,0);
			case 6: LoopingAnim(playerid,"MISC","Seat_talk_02",4.0,1,0,0,0,0);
			case 7: LoopingAnim(playerid,"ped","SEAT_down",4.0,0,0,0,1,0); // Not looping
		}
		return 1;
	}
    command(bailar, playerid, params[]){
	    new dancestyle;/*
		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_GREY, "No puedes hacer esto ahora !");*/
        if(sscanf(params, "d", dancestyle)) return SendClientMessage(playerid,COLOR_WHITE,"USA: /bailar [1-3]");
 		switch(dancestyle){
			case 1: SetPlayerSpecialAction(playerid, SPECIAL_ACTION_DANCE1);
			case 2: SetPlayerSpecialAction(playerid, SPECIAL_ACTION_DANCE2);
			case 3: SetPlayerSpecialAction(playerid, SPECIAL_ACTION_DANCE3);
			case 4: SetPlayerSpecialAction(playerid, SPECIAL_ACTION_DANCE4);
		}
	   	return 1;
	}
    command(cruzar, playerid, params[]){
	    new anim;
        if(sscanf(params, "d", anim)) return SendClientMessage(playerid,COLOR_WHITE,"USA: /cruzar [1-5]");/*
		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_GREY, "   No puedes hacer esto ahora!");*/
 		switch(anim){
			case 1: LoopingAnim(playerid, "COP_AMBIENT", "Coplook_loop", 4.0, 0, 1, 1, 1, -1);
			case 2: LoopingAnim(playerid, "DEALER", "DEALER_IDLE", 4.0, 0, 1, 1, 1, -1);
			case 3: LoopingAnim(playerid, "DEALER", "DEALER_IDLE_01", 4.0, 0, 1, 1, 1, -1);
			case 4: LoopingAnim(playerid,"GRAVEYARD","mrnM_loop",4.0,1,0,0,0,0);
			case 5: LoopingAnim(playerid,"GRAVEYARD","prst_loopa",4.0,1,0,0,0,0);
			default: return SendClientMessage(playerid,COLOR_WHITE,"USA: /cruzar [1-5]");
		}
		return 1;
	}
    command(jiggy, playerid, params[])
	{
	    new anim;
        if(sscanf(params, "d", anim)) return SendClientMessage(playerid,COLOR_WHITE,"USA: /jiggy [1-10]");/*
        if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_GREY, "No puedes hacer esto ahora !");*/
 		switch(anim){
			case 1: LoopingAnim(playerid,"DANCING","DAN_Down_A",4.0,1,0,0,0,0);
			case 2: LoopingAnim(playerid,"DANCING","DAN_Left_A",4.0,1,0,0,0,0);
			case 3: LoopingAnim(playerid,"DANCING","DAN_Loop_A",4.0,1,0,0,0,0);
			case 4: LoopingAnim(playerid,"DANCING","DAN_Right_A",4.0,1,0,0,0,0);
			case 5: LoopingAnim(playerid,"DANCING","DAN_Up_A",4.0,1,0,0,0,0);
			case 6: LoopingAnim(playerid,"DANCING","dnce_M_a",4.0,1,0,0,0,0);
			case 7: LoopingAnim(playerid,"DANCING","dnce_M_b",4.0,1,0,0,0,0);
			case 8: LoopingAnim(playerid,"DANCING","dnce_M_c",4.0,1,0,0,0,0);
			case 9: LoopingAnim(playerid,"DANCING","dnce_M_c",4.0,1,0,0,0,0);
			case 10: LoopingAnim(playerid,"DANCING","dnce_M_d",4.0,1,0,0,0,0);
			default: return SendClientMessage(playerid,COLOR_WHITE,"USA: /jiggy [1-10]");
		}
		return 1;
	}
	command(caminar, playerid, params[]){
	    new anim;
        if(sscanf(params, "d", anim)) return SendClientMessage(playerid,COLOR_WHITE,"USA: /Caminar [1-26]");/*
        if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_GREY, "No puedes hacer esto ahora !");*/
 		switch(anim){
			case 1: LoopingAnim(playerid,"PED","JOG_femaleA",4.0,1,1,1,1,1);
			case 2: LoopingAnim(playerid,"PED","JOG_maleA",4.0,1,1,1,1,1);
			case 3: LoopingAnim(playerid,"PED","WOMAN_walkfatold",4.0,1,1,1,1,1);
			case 4: LoopingAnim(playerid,"PED","run_fat",4.0,1,1,1,1,1);
			case 5: LoopingAnim(playerid,"PED","run_fatold",4.0,1,1,1,1,1);
			case 6: LoopingAnim(playerid,"PED","run_old",4.0,1,1,1,1,1);
			case 7: LoopingAnim(playerid,"PED","Run_Wuzi",4.0,1,1,1,1,1);
			case 8: LoopingAnim(playerid,"PED","swat_run",4.0,1,1,1,1,1);
			case 9: LoopingAnim(playerid,"PED","WALK_fat",4.0,1,1,1,1,1);
			case 10: LoopingAnim(playerid,"PED","WALK_fatold",4.0,1,1,1,1,1);
			case 11: LoopingAnim(playerid,"PED","WALK_gang1",4.0,1,1,1,1,1);
			case 12: LoopingAnim(playerid,"PED","WALK_gang2",4.0,1,1,1,1,1);
			case 13: LoopingAnim(playerid,"PED","WALK_old",4.0,1,1,1,1,1);
			case 14: LoopingAnim(playerid,"PED","WALK_shuffle",4.0,1,1,1,1,1);
			case 15: LoopingAnim(playerid,"PED","woman_run",4.0,1,1,1,1,1);
			case 16: LoopingAnim(playerid,"PED","WOMAN_runbusy",4.0,1,1,1,1,1);
			case 17: LoopingAnim(playerid,"PED","WOMAN_runfatold",4.0,1,1,1,1,1);
			case 18: LoopingAnim(playerid,"PED","woman_runpanic",4.0,1,1,1,1,1);
			case 19: LoopingAnim(playerid,"PED","WOMAN_runsexy",4.0,1,1,1,1,1);
			case 20: LoopingAnim(playerid,"PED","WOMAN_walkbusy",4.0,1,1,1,1,1);
			case 21: LoopingAnim(playerid,"PED","WOMAN_walkfatold",4.0,1,1,1,1,1);
			case 22: LoopingAnim(playerid,"PED","WOMAN_walknorm",4.0,1,1,1,1,1);
			case 23: LoopingAnim(playerid,"PED","WOMAN_walkold",4.0,1,1,1,1,1);
			case 24: LoopingAnim(playerid,"PED","WOMAN_walkpro",4.0,1,1,1,1,1);
			case 25: LoopingAnim(playerid,"PED","WOMAN_walksexy",4.0,1,1,1,1,1);
			case 26: LoopingAnim(playerid,"PED","WOMAN_walkshop",4.0,1,1,1,1,1);
			default: return SendClientMessage(playerid,COLOR_WHITE,"USA: /ped [1-26]");
		}
		return 1;
	}
	command(rap, playerid, params[]){
	    new rapstyle;
        if(sscanf(params, "d", rapstyle)) return SendClientMessage(playerid, COLOR_WHITE, "USA: /rap [1-3]");/*
		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_GREY, "No puedes hacer esto ahora !");*/
 		switch(rapstyle){
			case 1: LoopingAnim(playerid,"RAPPING","RAP_A_Loop",4.0,1,1,1,1,0);
			case 2: LoopingAnim(playerid,"RAPPING","RAP_B_Loop",4.0,1,1,1,1,0);
			case 3: LoopingAnim(playerid,"RAPPING","RAP_C_Loop",4.0,1,1,1,1,0);
			default: return SendClientMessage(playerid,COLOR_WHITE,"USA: /rap [1-3]");
		}
	   	return 1;
	}
	command(gesto, playerid, params[]){
	    new gesto;
        if(sscanf(params, "d", gesto)) return SendClientMessage(playerid, COLOR_WHITE, "USA: /gesto [1-15]");/*
        if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_GREY, "No puedes hacer esto ahora !");*/
 		switch(gesto){
			case 1: OnePlayAnim(playerid,"GHANDS","gsign1",4.0,0,0,0,0,0);
			case 2: OnePlayAnim(playerid,"GHANDS","gsign1LH",4.0,0,0,0,0,0);
			case 3: OnePlayAnim(playerid,"GHANDS","gsign2",4.0,0,0,0,0,0);
			case 4: OnePlayAnim(playerid,"GHANDS","gsign2LH",4.0,0,0,0,0,0);
			case 5: OnePlayAnim(playerid,"GHANDS","gsign3",4.0,0,0,0,0,0);
			case 6: OnePlayAnim(playerid,"GHANDS","gsign3LH",4.0,0,0,0,0,0);
			case 7: OnePlayAnim(playerid,"GHANDS","gsign4",4.0,0,0,0,0,0);
			case 8: OnePlayAnim(playerid,"GHANDS","gsign4LH",4.0,0,0,0,0,0);
			case 9: OnePlayAnim(playerid,"GHANDS","gsign5",4.0,0,0,0,0,0);
			case 10: OnePlayAnim(playerid,"GHANDS","gsign5",4.0,0,0,0,0,0);
			case 11: OnePlayAnim(playerid,"GHANDS","gsign5LH",4.0,0,0,0,0,0);
			case 12: OnePlayAnim(playerid,"GANGS","Invite_No",4.0,0,0,0,0,0);
			case 13: OnePlayAnim(playerid,"GANGS","Invite_Yes",4.0,0,0,0,0,0);
			case 14: OnePlayAnim(playerid,"GANGS","prtial_gngtlkD",4.0,0,0,0,0,0);
			case 15: OnePlayAnim(playerid,"GANGS","smkcig_prtl",4.0,0,0,0,0,0);
			default: return SendClientMessage(playerid,COLOR_WHITE,"USA: /gesto [1-15]");
		}
		return 1;
	}
    command(sexo, playerid, params[]){
	    new sexstyle;/*
	    if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_GREY, "No puedes hacer esto ahora !");*/
        if(sscanf(params, "d", sexstyle)) return SendClientMessage(playerid, COLOR_WHITE, "USA: /sexo [1-8]");
 		switch(sexstyle){
 			case 1: LoopingAnim(playerid,"SNM","SPANKING_IDLEW",4.1,0,1,1,1,0);
			case 2: LoopingAnim(playerid,"SNM","SPANKING_IDLEP",4.1,0,1,1,1,0);
			case 3: LoopingAnim(playerid,"SNM","SPANKINGW",4.1,0,1,1,1,0);
			case 4: LoopingAnim(playerid,"SNM","SPANKINGP",4.1,0,1,1,1,0);
			case 5: LoopingAnim(playerid,"SNM","SPANKEDW",4.1,0,1,1,1,0);
			case 6: LoopingAnim(playerid,"SNM","SPANKEDP",4.1,0,1,1,1,0);
			case 7: LoopingAnim(playerid,"SNM","SPANKING_ENDW",4.1,0,1,1,1,0);
			case 8: LoopingAnim(playerid,"SNM","SPANKING_ENDP",4.1,0,1,1,1,0);
			default: return SendClientMessage(playerid,0xFF0000FF,"USA: /sexo [style 1-8]");
		}
 	  	return 1;
	}

CMD:comprasi(playerid, params[])
{
PI[playerid][Radiot] = 1;
return 1;
}

forward AnimT(playerid);
public AnimT(playerid) {
TextDrawHideForPlayer(playerid,txtAnimHelper);
return 1;
}
LoopingAnim(playerid,animlib[],animname[], Float:Speed, looping, lockx, locky, lockz, lp)
{
    gPlayerUsingLoopingAnim[playerid] = 1;
    ApplyAnimation(playerid, animlib, animname, Speed, looping, lockx, locky, lockz, lp);
	SetTimerEx("AnimT", 6000, false, "i", playerid);
	
    TextDrawShowForPlayer(playerid,txtAnimHelper);
}

OnePlayAnim(playerid,animlib[],animname[], Float:Speed, looping, lockx, locky, lockz, lp)
{
	ApplyAnimation(playerid, animlib, animname, Speed, looping, lockx, locky, lockz, lp);
}

StopLoopingAnim(playerid)
{
	gPlayerUsingLoopingAnim[playerid] = 0;
 	ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0);
}
CMD:pararanimacion(playerid,params[]) {
StopLoopingAnim(playerid);
TextDrawHideForPlayer(playerid,txtAnimHelper);
return 1;
}
CMD:comprarropa(playerid,params[]) {
if(PlayerToPoint(playerid,2.0,207.3,-100.8,1005.2)) {
if(Eligiolaropa[playerid] <= 100) {
SetPlayerSkin(playerid,Eligiolaropa[playerid]);
Eligiolaropa[playerid] = 0;
GivePlayerMoney(playerid,-100);
}
else if(Eligiolaropa[playerid] >= 101) {
SetPlayerSkin(playerid,Eligiolaropa[playerid]);
Eligiolaropa[playerid] = 0;
GivePlayerMoney(playerid,-150);
}
}
return 1;
}
CMD:dejarropa(playerid,params[]) {
if(PlayerToPoint(playerid,2.0,207.3,-100.8,1005.2)) {
Eligiolaropa[playerid] = 0;
Mensaje(playerid,COLOR_BLANCO,"Has devuelto la{f46e42} ropa.");
}
return 1;
}
CMD:descongelarme(playerid,params[]) {
ControlP(playerid,1);
return 1;
}
CMD:obtenercuentabancaria(playerid,params[]) {
if(PI[playerid][NBanco] == 0) {
new String[500],String2[200],Nombre[MAX_PLAYER_NAME];
GetPlayerName(playerid,Nombre,sizeof(Nombre));
strcat(String,"\t\t{FFFFFF}- {008DFF}Banco de san andreas.\n");
strcat(String,"\t {E3E3E3}Terminos y condiciones:\n");
strcat(String,"{FFFFFF}El contrato establece unos terminos y condiciones\n");
strcat(String,"Que se deben cumplir: Si pierdes tu {9A9A9A}n�mero de serie\n");
strcat(String,"{FFFFFF}Podr�s reclamarlo en el lugar adecuado que es el banco.\n");
strcat(String,"CONTRATO:\n");
format(String2,sizeof(String2),"{FFFFFF}Nombre y Apellido:{9A9A9A} %s{FFFFFF}\nNacionalidad: {9A9A9A}Los Santos.\n{FFFFFF}DNI: {9A9A9A}%d\n",Nombre,PI[playerid][Dni]);
strcat(String,String2);
strcat(String,"\n\n\t\t {FFFFFF}FIRMA:{9A9A9A}_______________\n");
Dialog(playerid,D_BANCON,DIALOG_STYLE_MSGBOX,"- Contrato.",String,"Firmar","Negar");
}
return 1;
}
CMD:seriebanco(playerid,params[]) {
new String2[100];
format(String2,sizeof(String2),"Tu n�mero es:{f46e42} %d",PI[playerid][NBanco]);
Mensaje(playerid,COLOR_BLANCO,String2);
return 1;
}
CMD:robaralapersona(playerid,params[]) {
if(PI[playerid][Trabajo] == 8) {
if(!sscanf(params,"d",params[0])) {
if(!PDS(5.0,playerid,params[0])) return Mensaje(playerid,COLOR_BLANCO,"Muy lejos del usuario.");
new Nombre[MAX_PLAYER_NAME],NombreR[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre)); GetPlayerName(params[0],NombreR,sizeof(NombreR));
if(PI[params[0]][Telefono] >= 1) {
PI[playerid][TelefonoR] += 1;
PI[params[0]][Telefono] = 0;
Mensaje(playerid,COLOR_BLANCO,"Te han robado el {f46e42}tel�fono.");
}
if(PI[params[0]][Dni] == 1) {
PI[playerid][DniR] += 1;
PI[params[0]][Dni] = 0;
Mensaje(playerid,COLOR_BLANCO,"Te han robado el{f46e42} DNI.");
}
GivePlayerMoney(playerid,100);


GivePlayerMoney(params[0],-100);
Mensaje(playerid,COLOR_BLANCO,"Te han robado {00D619}100$!!");
AccionP(params[0],"Le roban");
} else Mensaje(playerid,COLOR_BLANCO,"/RobarALapersona [ID].");
}
return 1;
}
CMD:venderlorobado(playerid,params[]) {
if(PI[playerid][Trabajo] == 8) {
if(PI[playerid][TelefonoR] >= 1) {
new String[200];
GivePlayerMoney(playerid,100*PI[playerid][TelefonoR]);
format(String,sizeof(String),"{f46e42}-{FFFFFF} Has vendido los tel�fonos robados a {00E413}$%d.",100*PI[playerid][TelefonoR]);
Mensaje(playerid,COLOR_BLANCO,String);
PI[playerid][TelefonoR] = 0;
}
if(PI[playerid][DniR] >= 1) {
new String[200];
GivePlayerMoney(playerid,20*PI[playerid][DniR]);
format(String,sizeof(String),"{f46e42}-{FFFFFF} Has vendido los dni robados a {00E413}$%d.",20*PI[playerid][DniR]);
Mensaje(playerid,COLOR_BLANCO,String);
PI[playerid][DniR] = 0;
}
if(PI[playerid][TelefonoR] == 0 && PI[playerid][DniR] == 0) {
Mensaje(playerid,COLOR_BLANCO,"{f46e42}-{FFFFFF} No tienes nada para venderme hijo de puta.");
}
} else Mensaje(playerid,COLOR_BLANCO,"No eres ladr�n.");
return 1;
}
CMD:mostrarlicencia(playerid,params[]) {
new Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
new String[300];
if(!sscanf(params,"d",params[0])) {
if(!PDS(5.0,playerid,params[0])) return Mensaje(playerid,COLOR_BLANCO,"Muy lejos del usuario.");
Mensaje(params[0],COLOR_BLANCO,"INSTITUTO VEH�CULAR DE LOS SANTOS.");
format(String,sizeof(String),"Nombre y apellido: {D9D9D9}%s {FFFFFF}Multas: {D9D9D9}%d {FFFFFF}Valor: {D9D9D9}%d {FFFFFF}Fecha de vencimiento:{D9D9D9} 2020.",Nombre,PI[playerid][Multas],PI[playerid][PrecioMultas]);
Mensaje(params[0],COLOR_BLANCO,String);
AccionP(playerid,"Le muestra la licencia.");
} else Mensaje(playerid,COLOR_BLANCO,"/Mostrarlicencia [ID].");
return 1;
}
CMD:colocaranuncio(playerid,params[]) {
Dialog(playerid,D_ELEGIRRUBRO,DIALOG_STYLE_LIST,"- ELIGE","- [Veh�culos]\n- [Propiedad]\n- [Compra-Venta]\n- [Otros]","Elegir","Salir");
return 1;
}
CMD:encarcelar(playerid,params[]) {
new ID,Tiempo,TCarcel,String[300],Nombre[MAX_PLAYER_NAME],NombreE[MAX_PLAYER_NAME];
GetPlayerName(playerid,Nombre,sizeof(Nombre)); 
if(!sscanf(params,"ddd",ID,Tiempo,TCarcel)) {
if(PlayerToPoint(playerid,10.0,264.3,82.6,1001)) {
GetPlayerName(ID,NombreE,sizeof(NombreE));
if(TCarcel == 1) {
PPos(ID,264.3,86,1001);

format(String,sizeof(String),"{0080FF}-{FFFFFF} El oficial{0080FF} %s {FFFFFF}encarcel� a {FF0000}%s {FFFFFF}por {FF0000}%d.",Nombre,NombreE,Tiempo);
Mensaje(playerid,COLOR_BLANCO,String);
PI[ID][Encarcelado] = Tiempo*60;
PI[ID][EnCarcel] = TCarcel;
Mensaje(ID,COLOR_BLANCO,String);
}
else if(TCarcel == 2) {
PPos(ID,264.3,82.6,1001);
PI[ID][Encarcelado] = Tiempo*60;
PI[ID][EnCarcel] = TCarcel;
format(String,sizeof(String),"{0080FF}-{FFFFFF} El oficial{0080FF} %s {FFFFFF}encarcel� a {FF0000}%s {FFFFFF}por {FF0000}%d Minutos(A�os).",Nombre,NombreE,Tiempo);
Mensaje(playerid,COLOR_BLANCO,String);
Mensaje(ID,COLOR_BLANCO,String);
}
}
} else Mensaje(playerid,COLOR_BLANCO,"/Encarcelar [ID] [Minutos] [1 O 2]");
return 1;
}
CMD:darlicenciadearma(playerid,params[]) {
new Nombre[MAX_PLAYER_NAME],String[300];
GetPlayerName(playerid,Nombre,sizeof(Nombre));
if(!sscanf(params,"d",params[0])) {
PI[params[0]][LicenciaA] = 1;
format(String,sizeof(String),"{0080FF}-{FFFFFF} El oficial{0080FF} %s {FFFFFF}te otorg� la {FF0000}licencia de armas .",Nombre);
Mensaje(playerid,COLOR_BLANCO,String);
Mensaje(params[0],COLOR_BLANCO,String);
} else Mensaje(playerid,COLOR_BLANCO,"/DarLicenciadeArma [ID]");
return 1;
}
CMD:multar(playerid,params[]) {
if(PI[playerid][Faccion] == 1 || PI[playerid][Faccion] == 2) {
new String[200],Nombre[MAX_PLAYER_NAME]; GetPlayerName(playerid,Nombre,sizeof(Nombre));
if(!sscanf(params,"dd",params[0],params[1])) {

if(!PDS(5.0,playerid,params[0])) return Mensaje(playerid,COLOR_BLANCO,"Muy lejos del usuario.");
if(params[1] < 0 || params[1] > 10000) return Mensaje(playerid, COLOR_BLANCO, "El m�ximo de multa son 10000$");
if(IsPlayerConnected(params[0]))
{
PI[params[0]][Multas] ++;
PI[params[0]][PrecioMultas] += params[1];
format(String,sizeof(String),"{00A6FF}-{FFFFFF} El oficial {00A6FF}%s {FFFFFF}te ha multado, el valor es de {26D145}$%d {FFFFFF}- Total de multas: {26D145}$%d.",Nombre,params[1],PI[params[0]][PrecioMultas]);
AccionP(playerid,"Mult� a una persona.");
Mensaje(playerid,COLOR_BLANCO,"Has multado a {00A6FF}la persona.");
Mensaje(playerid,COLOR_BLANCO,String);
}
} else Mensaje(playerid,COLOR_BLANCO,"/Multar [ID] [Precio de la multa]");
}
return 1;
}
CMD:esposar(playerid, params[])
{
	    new GetPlayerNameEx[MAX_PLAYER_NAME]; GetPlayerName(playerid,GetPlayerNameEx,sizeof(GetPlayerNameEx));
	    
		if(GetPVarInt(playerid, "Injured") == 1) return SendClientMessage(playerid, COLOR_BLANCO, "No puedes hacer esto ahora.");
		new string[128],
		    Float:Pos[3],
			giveplayerid;
		if(sscanf(params, "d", giveplayerid)) return SendClientMessage(playerid, COLOR_BLANCO, "USA: /esposar [playerid]");
		if(IsPlayerConnected(giveplayerid))
		{
		    new Nombree[MAX_PLAYER_NAME]; GetPlayerName(giveplayerid,Nombree,sizeof(Nombree));
			if (PDS(8.0, playerid, giveplayerid))
			{
				if(giveplayerid == playerid) return SendClientMessage(playerid, COLOR_BLANCO, "No puedes hacer esto contigo mismo!");
				if(GetPlayerSpecialAction(giveplayerid) == SPECIAL_ACTION_HANDSUP)
				{
					format(string, sizeof(string),  "Fuiste esposado por %s.", GetPlayerNameEx);
					SendClientMessage(giveplayerid, COLOR_BLANCO, string);
					format(string, sizeof(string), "Esposaste a %s.", Nombree);
					SendClientMessage(playerid, COLOR_BLANCO, string);
					format(string, sizeof(string), "%s esposa a %s, las esposas estan seguras.", GetPlayerNameEx,Nombree);
					ProxDetector(30.0, playerid, string, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
					GameTextForPlayer(giveplayerid, "~r~Esposado", 2500, 3);
					GetPlayerPos(playerid, Pos[0], Pos[1], Pos[2]);
					ClearAnimations(giveplayerid);
					TogglePlayerControllable(giveplayerid, 0);/*
					Info[giveplayerid][pEstado] = 2;*/
					SetPVarInt(giveplayerid, "PlayerCuffed", 2);
					SetPVarInt(giveplayerid, "IsFrozen", 1);
					PlayerPlaySoundEx(1145, Pos[0], Pos[1], Pos[2]);
					SetPlayerSpecialAction(giveplayerid,SPECIAL_ACTION_CUFFED);
				}
				else return SendClientMessage(playerid, COLOR_GREY, "El jugador tiene que estar con las manos arriba!");
			}
			else return SendClientMessage(playerid, COLOR_GREY, "Ese jugador no est� cerca tuyo.");
		}
		else return SendClientMessage(playerid, COLOR_GREY, "Jugador especificado inv�lido.");
		return 1;
}

CMD:qesposas(playerid, params[])
{
		new GetPlayerNameEx[MAX_PLAYER_NAME]; GetPlayerName(playerid,GetPlayerNameEx,sizeof(GetPlayerNameEx));
 		new Nombree[MAX_PLAYER_NAME];
		new string[128], giveplayerid;
		if(sscanf(params, "d", giveplayerid)) return SendClientMessage(playerid, COLOR_WHITE, "USA: /qesposas [playerid]");
		if(IsPlayerConnected(giveplayerid))
		{
		    GetPlayerName(giveplayerid,Nombree,sizeof(Nombree));
			if (PDS(8.0, playerid, giveplayerid))
			{
				//if(Info[giveplayerid][pJailed] >= 1) return SendClientMessage(playerid, COLOR_WHITE, "No puedes hacer esto con un jugador esposado.");
				if(giveplayerid == playerid) return SendClientMessage(playerid, COLOR_GREY, "No puedes quitarte las esposas tu mismo.");
				DeletePVar(giveplayerid, "IsFrozen");
				format(string, sizeof(string), "El oficial %s te quit� las esposas.", GetPlayerNameEx);
				SendClientMessage(giveplayerid, COLOR_BLANCO, string);
				format(string, sizeof(string), "Le has quitado las esposas a %s.", Nombree);
				SendClientMessage(playerid, COLOR_BLANCO, string);
				format(string, sizeof(string), "[/ME] %s Le quit� las esposas a %s.", GetPlayerNameEx, Nombree);
				ProxDetector(30.0, playerid, string, MoradoME,MoradoME,MoradoME,MoradoME,MoradoME);//
				TogglePlayerControllable(giveplayerid, 1);
				ClearAnimations(giveplayerid);
				SetPlayerSpecialAction(giveplayerid,SPECIAL_ACTION_NONE);
			    ApplyAnimation(giveplayerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0);
				/*Info[giveplayerid][pEstado] = 0;*/
	   			DeletePVar(giveplayerid, "PlayerCuffed");
			}
			else return SendClientMessage(playerid, COLOR_GREY, "Ese jugador no est� cerca tuyo.");
		}
		else return SendClientMessage(playerid, COLOR_GREY, "Jugador especificado inv�lido.");
		return 1;
}
CMD:vendar(playerid,params[]) {
if(!sscanf(params,"d",params[0])) {
if(PI[playerid][Vendas] >= 1) {
if (PDS(3.0, playerid, params[0])) {
AccionP(playerid,"Vend� a una persona");
Mensaje(params[0],COLOR_BLANCO,"Te han {00A6FF}vendado.");
Vendado[params[0]] = 1;
PI[playerid][Vendas] --;
TextDrawShowForPlayer(playerid, VendaB);
Mensaje(playerid,COLOR_BLANCO,"Lo has {00A6FF}vendado.");
} else Mensaje(playerid,COLOR_BLANCO,"No est�s cerca del jugador.");
} else Mensaje(playerid,COLOR_BLANCO,"No tienes ninguna {00A6FF}venda.");
} else Mensaje(playerid,COLOR_BLANCO,"/Vendar {00A6FF}[ID]");
return 1;
}
CMD:quitarlavenda(playerid,params[]) {
if(!sscanf(params,"d",params[0])) {
if(Vendado[params[0]] == 1) {
if (PDS(3.0, playerid, params[0])) {
AccionP(playerid,"Le quit� la venda.");
Mensaje(params[0],COLOR_BLANCO,"Te han {00A6FF}quitado la venda.");
Vendado[params[0]] = 0;
TextDrawHideForPlayer(playerid, VendaB);
PI[playerid][Vendas] ++;
Mensaje(playerid,COLOR_BLANCO,"Le has {00A6FF}quitado la venda.");
} else Mensaje(playerid,COLOR_BLANCO,"No est�s cerca del jugador.");
} else Mensaje(playerid,COLOR_BLANCO,"No tienes ninguna {00A6FF}venda.");
} else Mensaje(playerid,COLOR_BLANCO,"/Quitarlavenda {00A6FF}[ID]");
return 1;
}
CMD:atar(playerid,params[]) {
if(!sscanf(params,"d",params[0])) {
if(PI[playerid][Sogas] >= 1) {
if(Atado[params[0]] == 0) {
if (PDS(3.0, playerid, params[0])) {
PI[playerid][Sogas] --;
ClearAnimations(params[0]);
Atado[params[0]] = 1;
SetPlayerSpecialAction(playerid,SPECIAL_ACTION_CUFFED);
AccionP(playerid,"at� a una persona.");
} else Mensaje(playerid,COLOR_BLANCO,"No est�s cerca del jugador.");
} else Mensaje(playerid,COLOR_BLANCO,"�sta persona ya est� {00A6FF}atada.");
} else Mensaje(playerid,COLOR_BLANCO,"No tienes ninguna {00A6FF}soga.");
} else Mensaje(playerid,COLOR_BLANCO,"/Atar {00A6FF}[ID].");
return 1;
}
CMD:desatar(playerid,params[]) {
if(!sscanf(params,"d",params[0])) {
if(Atado[params[0]] == 1) {
if (PDS(3.0, playerid, params[0])) {
SetPlayerSpecialAction(playerid,SPECIAL_ACTION_NONE);
Atado[params[0]] = 0;
PI[playerid][Sogas] ++;
AccionP(playerid,"Desat� a una persona.");
} else Mensaje(playerid,COLOR_BLANCO,"No est�s cerca del jugador.");
} else Mensaje(playerid,COLOR_BLANCO,"�sta persona no est� {00A6FF}atada.");
} else Mensaje(playerid,COLOR_BLANCO,"/Desatar {00A6FF}[ID].");
return 1;
}
CMD:comprararmas(playerid,params[]) {
if(PlayerToPoint(playerid,3.0,295.7000000,-38.2000000,1001.2000000)) {
Dialog(playerid,D_Ammu,DIALOG_STYLE_LIST,"-Ammu nation","- M4A1 (30) ($3000)\n- MP5 (90) ($2000)\n- Escopeta (20) ($1500)","Comprar","Salir");
} else Mensaje(playerid,COLOR_BLANCO,"No est�s en la posici�n.");
return 1;
}
CMD:cochemax(playerid,params[]) {
new Float:X,Float:Y,Float:Z; GetPlayerPos(playerid,X,Y,Z);
CreateVehicle(559, X,Y,Z, 90.0, 1, 1, -1);
return 1;
}

CMD:informacionpj(playerid,params[]) {
if(AbrioInfo[playerid] == 0) {
TextDrawShowForPlayer(playerid, BoxIPJ1);
TextDrawShowForPlayer(playerid, TextPJ1);
TextDrawShowForPlayer(playerid, TextPJ2);
TextDrawShowForPlayer(playerid, TextPJ3);
TextDrawShowForPlayer(playerid, TextPJ4);
TextDrawShowForPlayer(playerid, BoxIPJ2);
TextDrawShowForPlayer(playerid, TextPJ5);
TextDrawShowForPlayer(playerid, TextPJ6);
TextDrawShowForPlayer(playerid, TextPJ7);
TextDrawShowForPlayer(playerid, TextPJ8);
TextDrawShowForPlayer(playerid, TextPJ9);
EnergiaBar[playerid] = CreateProgressBar(550.00, 334, 56.50, 3.19, 0xFFFFFFFF, 100.0);
ApetitoBar[playerid] = CreateProgressBar(550.00, 353, 56.50, 3.19, 0xFFFFFFFF, 100.0);
SedBar[playerid] = CreateProgressBar(550.00, 371, 56.50, 3.19, 0xFFFFFFFF, 100.0);
//Energ�a BAR.
ShowProgressBarForPlayer(playerid, EnergiaBar[playerid]);
SetProgressBarValue(EnergiaBar[playerid], EnergiaPJ[playerid]);
UpdateProgressBar(EnergiaBar[playerid], playerid);
//Sed BAR
ShowProgressBarForPlayer(playerid, SedBar[playerid]);
SetProgressBarValue(SedBar[playerid], SedPJ[playerid]);
UpdateProgressBar(SedBar[playerid], playerid);
//Apetito BAR
ShowProgressBarForPlayer(playerid, ApetitoBar[playerid]);
SetProgressBarValue(ApetitoBar[playerid], ApetitoPJ[playerid]);
UpdateProgressBar(ApetitoBar[playerid], playerid);
AbrioInfo[playerid] = 1;
SetTimerEx("Qinfopj", 10000, false, "i", playerid);
}
return 1;
}

CMD:empleo(playerid,params[]) {
if(PI[playerid][Trabajo] == 0) {
if(PlayerToPoint(playerid,5.0,2195.44,-1970.62,13.78)) { //Basurero
PI[playerid][Trabajo] = 1;
Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Felicidades , empieza a {9FE800}trabajar.");
}
else if(PlayerToPoint(playerid,5.0,1956.73,-2181.61,13.54)){//Piloto
PI[playerid][Trabajo] = 2;
Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Felicidades , empieza a {9FE800}trabajar.");
}
else if(PlayerToPoint(playerid,5.0,1775.4,-1749.5,14.3)){//Bus Larga distancia
PI[playerid][Trabajo] = 3;
Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Felicidades , empieza a {9FE800}trabajar.");
}
else if(PlayerToPoint(playerid,5.0,-401.36,-1419.22,25.72)){//Cosechador
PI[playerid][Trabajo] = 4;
Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Felicidades , empieza a {9FE800}trabajar.");
}
else if(PlayerToPoint(playerid,5.0,-1031.9,-590.5,32)){//Transportista De Mercaderia
PI[playerid][Trabajo] = 5;
Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Felicidades , empieza a {9FE800}trabajar.");
}
else if(PlayerToPoint(playerid,5.0,1753.8,-1903,13.5)){//Taxista garca
PI[playerid][Trabajo] = 6;
Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Felicidades , empieza a {9FE800}trabajar.");
}
else if(PlayerToPoint(playerid,5.0,1110.6,-1795.5,16.5)){//Bus urbano garca con la sube
PI[playerid][Trabajo] = 7;
Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Felicidades , empieza a {9FE800}trabajar.");
}
else if(PlayerToPoint(playerid,5.0,106.157966,-222.529983,1.578125)){//
PI[playerid][Trabajo] = 9;
Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Felicidades , empieza a {9FE800}trabajar.");
}
} else Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Ya tienes un trabajo, ve a tu trabajo y coloca {9FE800}/RenunciarDelTrabajo.");
return 1;
}
CMD:renunciardeltrabajo(playerid,params[]) {
	if(PI[playerid][Trabajo] == 1) { // Basurero
	if(PlayerToPoint(playerid,5.0,2195.44,-1970.62,13.78)) {
	PI[playerid][Trabajo]=0;
	Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Dejaste de trabajar en la empresa {9FE800}Municipal de Basura.");
	}
	}
	else if(PI[playerid][Trabajo] == 2) { //Piloto
	if(PlayerToPoint(playerid,5.0,1956.73,-2181.61,13.54)) {
	PI[playerid][Trabajo]=0;
	Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Dejaste de trabajar en la empresa {9FE800}Aerolineas.");
	}
	}
	else if(PI[playerid][Trabajo] == 3) { //Bus Larga distancia
	if(PlayerToPoint(playerid,5.0,1775.4,-1749.5,14.3)) {
	PI[playerid][Trabajo]=0;
	Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Dejaste de trabajar en la empresa {9FE800}Buses larga distancia.");
	}
	}
	else if(PI[playerid][Trabajo] == 4) { //Cosechador
	if(PlayerToPoint(playerid,5.0,-401.36,-1419.22,25.72)) {
	PI[playerid][Trabajo]=0;
	Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Dejaste de trabajar en la {9FE800}Granja.");
	}
	}
	else if(PI[playerid][Trabajo] == 5) { //Transportista de mercaderia
	if(PlayerToPoint(playerid,5.0,-1031.9,-590.5,32)) {
	PI[playerid][Trabajo]=0;
	Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Dejaste de trabajar en la empresa {9FE800}Transportista de mercaderia");
	}
	}
	else if(PI[playerid][Trabajo] == 6) { //Taxista
	if(PlayerToPoint(playerid,5.0,1753.8,-1903,13.5)) {
	PI[playerid][Trabajo]=0;
	Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Dejaste de trabajar en la empresa {9FE800}de Taxistas.");
	}
	}
 	else if(PI[playerid][Trabajo] == 7) { //Bus urbano garca con la sube
	if(PlayerToPoint(playerid,5.0,1110.6,-1795.5,16.5)) {
	PI[playerid][Trabajo]=0;
	Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Dejaste de trabajar en la empresa {9FE800}de Buses Urbanos.");
	}
	}
    else if(PI[playerid][Trabajo] == 9) { //Transportista de gasolina
	if(PlayerToPoint(playerid,5.0,106.157966,-222.529983,1.578125)) {
	PI[playerid][Trabajo]=0;
	Mensaje(playerid,COLOR_BLANCO,"{9FE800}[Info]:{FFFFFF} Dejaste de trabajar en la empresa {9FE800}Transportista de Gasolina.");
	}
	}
	return 1;
}
CMD:telefono(playerid,params[]) {
if(Estelefono[playerid] == 0) {
Estelefono[playerid] = 1;
Mensaje(playerid,COLOR_BLANCO,"Has sacado tu tel�fono, para guardarlo /guardartelefono.");
AccionP(playerid,"Saca su tel�fono de su bolsillo.");
TextDrawShowForPlayer(playerid,Tel1); TextDrawShowForPlayer(playerid,Tel2[playerid]); TextDrawShowForPlayer(playerid,Tel3); TextDrawShowForPlayer(playerid,Tel4);
TextDrawShowForPlayer(playerid,Tel5); TextDrawShowForPlayer(playerid,Tel6); TextDrawShowForPlayer(playerid,Tel7[playerid]); TextDrawShowForPlayer(playerid,Tel8);
TextDrawShowForPlayer(playerid,Tel9); TextDrawShowForPlayer(playerid,Tel10); TextDrawShowForPlayer(playerid,Tel11); TextDrawShowForPlayer(playerid,Tel12);
TextDrawShowForPlayer(playerid,Tel13); TextDrawShowForPlayer(playerid,Tel14); TextDrawShowForPlayer(playerid,Tel15); TextDrawShowForPlayer(playerid,Tel16);
TextDrawShowForPlayer(playerid,Tel17); TextDrawShowForPlayer(playerid,Tel18);
SelectTextDraw(playerid, 0xFFFFFF55);
} else Mensaje(playerid,-1,"Ya tienes en mano tu tel�fono.");
return 1;
}


CMD:guardartelefono(playerid,params[]) {
if(Estelefono[playerid] == 1) {
QuitarTel(playerid);
Mensaje(playerid,COLOR_BLANCO,"Has guardado tu tel�fono.");
AccionP(playerid,"Guarda su tel�fono en su bolsillo.");
Estelefono[playerid] = 0;
} else Mensaje(playerid,COLOR_BLANCO,"No tienes el tel�fono en mano.");
return 1;
}
CMD:empezaratrabajar(playerid,params[]) {
new Coche = GetPlayerVehicleID(playerid);
if(TransportistaGas(Coche) && GetVehicleTrailer(Coche)) { 
if(TransportistaGasR[playerid] == 0) {
TransportistaGasR[playerid] = 1;
Mensaje(playerid,0x008EECEC,"Recorrido:{FFFFFF} Primero ve a cargar la gasolina en la {008EEC}petrol�fera.");
Checkpoint(playerid,256.7000000,1435.6000000,13.5000000,5.0);
} else Mensaje(playerid,COLOR_BLANCO,"Ya est�s en un trabajo");
} else Mensaje(playerid,COLOR_BLANCO,"No est�s en un cami�n acoplable o no est�s acoplado a un {008EEC}trailer.");
return 1;
}
CMD:modificarprecios(playerid,params[]) {
if(PI[playerid][Faccion] == 6) {
new String[350];
format(String,sizeof(String),"{FFFFFF}- Precio de cambio {0099FF}[$%d]\n{FFFFFF}- Precio de ruedas {0099FF}[$%d]\n{FFFFFF}- Precio de Modifcaciones{FF6600}(Objetos) {0099FF}[$%d]\n{FFFFFF}- Precio de cambio de pintura {FF6600}[1/2] {0099FF}[$%d]\n{FFFFFF}- Precio de arreglo {0099FF}[$%d]",Mecanico[PCambio],Mecanico[PRuedas],Mecanico[PModificaciones],Mecanico[PPintura],Mecanico[PArreglar]);
Dialog(playerid,D_MecanicoMod,DIALOG_STYLE_LIST,"{FFFFFF}[PRECIOS DE LA {0099FF}FACCI�N{FFFFFF}]",String,"Cambiar","Salir");
} else Mensaje(playerid,COLOR_BLANCO,"- No eres mec�nico.");
return 1;
}
CMD:canasta(playerid,params[]) {
	new String[700],String2[70],Numero;
	if(Canasta[playerid][0] != 0) {
	for(new i=0;i<10;i++) {
	if(Canasta[playerid][i] == 1) { format(String2,sizeof(String2),"{51E06B}(%d) {FFFFFF}- Coca-Cola.\n",Numero); Numero++; strcat(String,String2); }
	else if(Canasta[playerid][i] == 2) { format(String2,sizeof(String2),"{51E06B}(%d) {FFFFFF} - Pepsi.\n",Numero); Numero++; strcat(String,String2); }
	else if(Canasta[playerid][i] == 3) { format(String2,sizeof(String2),"{51E06B}(%d) {FFFFFF} - Pan Jam�n y queso.\n",Numero); Numero++; strcat(String,String2); }
	else if(Canasta[playerid][i] == 4) { format(String2,sizeof(String2),"{51E06B}(%d) {FFFFFF} - Paquete de galletitas.\n",Numero); Numero++; strcat(String,String2); }
	ShowPlayerDialog(playerid,D_Canasto,DIALOG_STYLE_MSGBOX,"- Canasta.",String,"Listo","");
	}
	
	} else SendClientMessage(playerid,-1,"- No tienes ning�n producto en la canasta");
	return 1;
}
CMD:abrirporton(playerid,params[]) {
	if(PlayerToPoint(playerid,10.0,1240.5000000,-741.5000000,97.0000000)) {
	if(PI[playerid][Faccion] == 10) {
	MoveDynamicObject(PortonLCN,1240.5000000,-741.5000000,90.0000000,1.2);
	SetTimer("PortonLaCN",10000,false);
	}
	}
	else if(PlayerToPoint(playerid,10.0,318.0000000,-1190.9000000,75.5000000)) {
	if(PI[playerid][Faccion] == 7) {
	MoveDynamicObject(PortonYak,318.0000000,-1190.9000000,68.5000000,1.2);
	SetTimer("PortonYakuza",10000,false);
	}
	}
	return 1;
}
CMD:crearparkings(playerid,params[]) {
	if(PI[playerid][Staff] == 4) {
	new Float:X,Float:Y,Float:Z,ArchivoP[60],String[128]; GetPlayerPos(playerid,X,Y,Z);
	format(ArchivoP,sizeof(ArchivoP),"Archivos de Parkings/%i.ini",Parkings);
	format(String,sizeof(String),"{FF003C}[!] -{FFFFFF} Has creado un nuevo Parking.{FFFB00} [ID: %d]",Parkings);
	dini_Create(ArchivoP);
	dini_IntSet(ArchivoP,"IDP",Parkings);
	dini_FloatSet(ArchivoP,"PAX",X);	dini_FloatSet(ArchivoP,"PAY",Y);	dini_FloatSet(ArchivoP,"PAZ",Z);
	dini_IntSet(ArchivoP,"PAVW",Parkings);
	PAI[Parkings][IDP]=Parkings; PAI[Parkings][PAX]=X;PAI[Parkings][PAY]=Y;PAI[Parkings][PAZ]=Z;PAI[Parkings][PAVW]=Parkings;
	SendClientMessage(playerid,-1,String);
	format(String,sizeof(String),"{FF003C}[Parking]{FFFFFF}\nPrecio con veh�culo: {61E32D}$200\n\n{FFFB00}[/EntrarParking]",Parkings);
	PAI[Parkings][PickUp]=CreatePickup(1239, 2, X,Y,Z, -1);
	PAI[Parkings][PALabel]=Create3DTextLabel(String,-1,X,Y,Z,25.0,0);
	Parkings++;
	} else SendClientMessage(playerid,-1,"[!] - No eres un desarrollador.");
	return 1;
}
CMD:entrarparking(playerid,params[]) {
	for(new i=0;i<MAX_PARKINGS;i++) {
 	if(PlayerToPoint(playerid,10.0,PAI[i][PAX],PAI[i][PAY],PAI[i][PAZ])) {
  	if(DCoche(playerid)) {
  	new Vehiculo=GetPlayerVehicleID(playerid);
  	GivePlayerMoney(playerid,-200);
  	SendClientMessage(playerid,-1,"{FF003C}[!] -{FFFFFF} Has alquilado un espacio del garage por{61E32D} $200.{FFFFFF} Cuando quieras salir utiliza: {61E32D}/SalirDelParking");
	SetVehicleVirtualWorld(Vehiculo,PAI[i][PAVW]);
	SetPlayerVirtualWorld(playerid,PAI[i][PAVW]);
	SetVehiclePos(Vehiculo, 573.4000200,-1354.8000000,992.7000100);
	SetPlayerPos(playerid, 573.4000200,-1354.8000000,992.7000100);
	PutPlayerInVehicle(playerid, Vehiculo, 0);

  	}
  	else {
  	SetPlayerPos(playerid, 573.4000200,-1354.8000000,992.7000100);
  	SetPlayerVirtualWorld(playerid,PAI[i][PAVW]);
  	}
 	}
	}
	return 1;
}
CMD:salirdelparking(playerid,params[]) {
	new Virtual = GetPlayerVirtualWorld(playerid);
    if(PlayerToPoint(playerid,10.0,573.4000200,-1354.8000000,992.7000100)) {
    for(new i=0;i<MAX_PARKINGS;i++) {
    if(Virtual == PAI[i][IDP]) {
    if(DCoche(playerid)){
    new Vehiculo=GetPlayerVehicleID(playerid);
	SetVehicleVirtualWorld(Vehiculo,0);
	SetPlayerVirtualWorld(playerid,0);
	SetVehiclePos(Vehiculo, PAI[i][PAX],PAI[i][PAY],PAI[i][PAZ]);
	SetPlayerPos(playerid, PAI[i][PAX],PAI[i][PAY],PAI[i][PAZ]);
	PutPlayerInVehicle(playerid, Vehiculo, 0);
    
    }
    else {
   	SetPlayerPos(playerid, PAI[i][PAX],PAI[i][PAY],PAI[i][PAZ]);
  	SetPlayerVirtualWorld(playerid,0);
    }
    }
    }
    }
	return 1;
}
CMD:concesionario(playerid,params[]) {
	new String[100];
	if(PlayerToPoint(playerid,5.0,560.01,-1293.31,17.24)) {
	if(PI[playerid][VehiculoID2]== 999 || PI[playerid][VehiculoID1]== 999) {
	for(new t=0;t<22;t++) {
	TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][t]);


	}
	ConcesionarioBajaG[playerid] =0;
	EstaEnConce[playerid] = 1;
	SelectTextDraw(playerid, 0x00FF00FF);
	ConteoC[playerid][0] = 1;
	ConteoC[playerid][1] = 2;
	ConteoC[playerid][2] = 11;
    ConteoC[playerid][3] = 15;
	PrecioC[playerid][0] = 1;
	PrecioC[playerid][1] = 2;
	PrecioC[playerid][2] = 11;
    PrecioC[playerid][3] = 15;
    ListaC[playerid] = 0;
   	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][0]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][9]);TextDrawSetString(ConcecionarioT[playerid][9],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][9]);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][0]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][7]);TextDrawSetString(ConcecionarioT[playerid][7],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][7]);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][1]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][11]);TextDrawSetString(ConcecionarioT[playerid][11],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][11]);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][1]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][10]);TextDrawSetString(ConcecionarioT[playerid][10],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][10]);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][2]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][13]);TextDrawSetString(ConcecionarioT[playerid][13],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][13]);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][2]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][12]);TextDrawSetString(ConcecionarioT[playerid][12],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][12]);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][3]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][15]);TextDrawSetString(ConcecionarioT[playerid][15],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][15]);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][3]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][14]);TextDrawSetString(ConcecionarioT[playerid][14],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][14]);

    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][3]);TextDrawSetPreviewModel(ConcecionarioT[playerid][3], ConteoC[playerid][0]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][3]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][4]);TextDrawSetPreviewModel(ConcecionarioT[playerid][4], ConteoC[playerid][1]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][4]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][5]);TextDrawSetPreviewModel(ConcecionarioT[playerid][5], ConteoC[playerid][2]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][5]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][6]);TextDrawSetPreviewModel(ConcecionarioT[playerid][6], ConteoC[playerid][3]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][6]);
    }
    }
	else if(PlayerToPoint(playerid,5.0,2131.64,-1150.73,24.122)) { //BAJA-MEDIA GAMMA
	if(PI[playerid][VehiculoID2]== 999 || PI[playerid][VehiculoID1]== 999) {
	for(new t=0;t<22;t++) {
	TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][t]);


	}
	ConcesionarioBajaG[playerid] =1;
	EstaEnConce[playerid] = 1;
	SelectTextDraw(playerid, 0x00FF00FF);
	ConteoC[playerid][0] = 0;
	ConteoC[playerid][1] = 4;
	ConteoC[playerid][2] = 5;
    ConteoC[playerid][3] = 10;
	PrecioC[playerid][0] = 0;
	PrecioC[playerid][1] = 4;
	PrecioC[playerid][2] = 5;
    PrecioC[playerid][3] = 10;
    ListaC[playerid] = 0;
   	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][0]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][9]);TextDrawSetString(ConcecionarioT[playerid][9],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][9]);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][0]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][7]);TextDrawSetString(ConcecionarioT[playerid][7],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][7]);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][1]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][11]);TextDrawSetString(ConcecionarioT[playerid][11],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][11]);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][1]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][10]);TextDrawSetString(ConcecionarioT[playerid][10],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][10]);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][2]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][13]);TextDrawSetString(ConcecionarioT[playerid][13],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][13]);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][2]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][12]);TextDrawSetString(ConcecionarioT[playerid][12],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][12]);
	format(String,sizeof(String),"$%d",PrecioCoches[ConteoC[playerid][3]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][15]);TextDrawSetString(ConcecionarioT[playerid][15],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][15]);
	format(String,sizeof(String),"%s",NombreCoches[ConteoC[playerid][3]-400]);TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][14]);TextDrawSetString(ConcecionarioT[playerid][14],String);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][14]);

    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][3]);TextDrawSetPreviewModel(ConcecionarioT[playerid][3], ConteoC[playerid][0]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][3]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][4]);TextDrawSetPreviewModel(ConcecionarioT[playerid][4], ConteoC[playerid][1]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][4]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][5]);TextDrawSetPreviewModel(ConcecionarioT[playerid][5], ConteoC[playerid][2]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][5]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][6]);TextDrawSetPreviewModel(ConcecionarioT[playerid][6], ConteoC[playerid][3]);TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][6]);
    TextDrawHideForPlayer(playerid,ConcecionarioT[playerid][17]);TextDrawSetString(ConcecionarioT[playerid][17], "Catalogo_de_vehiculos_-_Baja - Media_Gama.");TextDrawShowForPlayer(playerid,ConcecionarioT[playerid][17]);
    
	}
	}else SendClientMessage(playerid,-1,"[!] - No estas en un concesionario.");
	return 1;
}
CMD:cargar(playerid,params[]) { CargarVehiculos(); return 1;}

CMD:cerrarcoche(playerid,params[]) {
	new Float:CXX,Float:CYY,Float:CZZ;
	print("a");
	for(new i=0;i<VehiculosCreados;i++) {
	GetVehiclePos(i+MAX_VEHICULOS+1, CXX, CYY, CZZ);
	if(PlayerToPoint(playerid,5.0,CXX,CYY,CZZ)) {
	if(PI[playerid][VehiculoID1]+MAX_VEHICULOS+1 == i+MAX_VEHICULOS+1 || PI[playerid][VehiculoID2]+MAX_VEHICULOS+1 == i+MAX_VEHICULOS+1) {
	SendClientMessage(playerid,-1,"Has Cerrado tu veh�culo.");
	AccionP(playerid,"Pone las llaves en su veh�culo y lo cierra.");
	CI[i+MAX_VEHICULOS+1][CCerrado]=1;
	}
	}
	}
	return 1;
}
CMD:abrircoche(playerid,params[]) {
	new Float:CXX,Float:CYY,Float:CZZ;
	print("a");
	for(new i=0;i<VehiculosCreados;i++) {
	GetVehiclePos(i+MAX_VEHICULOS+1, CXX, CYY, CZZ);
	if(PlayerToPoint(playerid,5.0,CXX,CYY,CZZ)) {
	if(PI[playerid][VehiculoID1]+MAX_VEHICULOS+1 == i+MAX_VEHICULOS+1 || PI[playerid][VehiculoID2]+MAX_VEHICULOS+1 == i+MAX_VEHICULOS+1) {
	SendClientMessage(playerid,-1,"Has abierto tu veh�culo.");
	AccionP(playerid,"Pone las llaves en su veh�culo y lo abre.");
	CI[i+MAX_VEHICULOS+1][CCerrado]=0;
	}
	}
	}
	return 1;
}
CMD:abrirgarage(playerid,params[]) {
	if(PI[playerid][Faccion] == 6) {
	if(PlayerToPoint(playerid,10.0,1379.03943, -1835.70752, 13.35450)) {
	MoveDynamicObject(GMeca[0],1379.03943, -1835.70752, 0.3545,1,0,0,-90);
//	CreateDynamicObject(980, 1379.03943, -1835.70752, 13.35450,   0.00000, 0.00000, 90.00000);

	}
	else if(PlayerToPoint(playerid,10.0,1379.20581, -1786.93530, 13.35450)) {
	
	MoveDynamicObject(GMeca[1],1379.20581, -1786.93530, 0.35450,1,0,0,-90);
//	CreateDynamicObject(19912, 1379.20581, -1786.93530, 13.35450,   0.00000, 0.00000, -90.00000);

	}
	}
	else if(PI[playerid][Faccion] == 5) {
	if(PlayerToPoint(playerid,10.0,771.36829, -1385.01245, 15.24280)) {
	MoveDynamicObject(NoticieroG,771.36829, -1385.01245, 8.24280,1);
	
	}
	}
	return 1;
}
CMD:cerrargarage(playerid,params[]) {
	if(PI[playerid][Faccion] == 6) {
	if(PlayerToPoint(playerid,10.0,1379.03943, -1835.70752, 13.35450)) {
	MoveDynamicObject(GMeca[0],1379.03943, -1835.70752, 13.35450,0.2,0,0,-90);
//	CreateDynamicObject(980, 1379.03943, -1835.70752, 13.35450,   0.00000, 0.00000, 90.00000);

	}
	else if(PlayerToPoint(playerid,10.0,1379.20581, -1786.93530, 13.35450)) {

	MoveDynamicObject(GMeca[1],1379.20581, -1786.93530, 13.35450,0.2,0,0,-90);
//	CreateDynamicObject(19912, 1379.20581, -1786.93530, 13.35450,   0.00000, 0.00000, -90.00000);

	}
	}
	else if(PI[playerid][Faccion] == 5) {
	if(PlayerToPoint(playerid,10.0,771.36829, -1385.01245, 15.24280)) {
	MoveDynamicObject(NoticieroG,771.36829, -1385.01245, 15.24280,1);

	}
	}
	return 1;
}
CMD:estacionar(playerid,params[]) {
	new Float:CXX,Float:CYY,Float:CZZ,String[120];
//	printf("Quieres estacionar Coche ID : %i",GetPlayerVehicleID(playerid));
	if(PI[playerid][VehiculoID1]+MAX_VEHICULOS+1 == GetPlayerVehicleID(playerid)) {
	format(String,sizeof(String),"Archivos de Vehiculos/%i.ini",PI[playerid][VehiculoID1]);
	printf(String);
	GetVehiclePos(GetPlayerVehicleID(playerid),CXX,CYY,CZZ);
	dini_FloatSet(String,"CX",CXX); dini_FloatSet(String,"CY",CYY); dini_FloatSet(String,"CZ",CZZ);
	SendClientMessage(playerid,-1,"Has estacionado tu coche.");
	}
	else if(PI[playerid][VehiculoID2]+MAX_VEHICULOS+1 == GetPlayerVehicleID(playerid)) {
	format(String,sizeof(String),"Archivos de Vehiculos/%i.ini",PI[playerid][VehiculoID2]);
	printf(String);
	GetVehiclePos(GetPlayerVehicleID(playerid),CXX,CYY,CZZ);
	dini_FloatSet(String,"CX",CXX); dini_FloatSet(String,"CY",CYY); dini_FloatSet(String,"CZ",CZZ);
	SendClientMessage(playerid,-1,"Has estacionado tu coche.");
	}
	else SendClientMessage(playerid,-1,"No estas en tu veh�culo.");
	return 1;
}
CMD:transferirvehiculo(playerid,params[]) {
	if(PI[playerid][VehiculoID1] != 999 || PI[playerid][VehiculoID2] != 999) {
	if(PlayerToPoint(playerid,5.0,358.23,164.13,1008.38)) {
	Dialog(playerid,D_TransferenciaVeh1,DIALOG_STYLE_INPUT,"- Transferencia de veh�culo.","�A qu� persona ((ID del jugador)) quieres transferir tu veh�culo?\n\n\n","Seleccinoar","Salir");
	}  else SendClientMessage(playerid,-1,"No estas en el lugar adecuado.");
	}  else SendClientMessage(playerid,-1,"No tienes ning�n veh�culo.");
	return 1;
}
CMD:irbancoint(playerid,params[]) { SetPlayerPos(playerid,-953.9634, 1441.4124, 1540.3214); return 1;}
CMD:irlstvinterior(playerid,params[]) { SetPlayerPos(playerid,285.9026,2083.1482,1001.8015); return 1;}
CMD:irlstvexterior(playerid,params[]) { SetPlayerPos(playerid,689.1278, -1349.1593, 49.6752); return 1;}
CMD:irlstvfab(playerid,params[]) { SetPlayerPos(playerid,-128.3987, 826.7655, 1993.4196); return 1;}
CMD:crearperiodico(playerid,params[]) {
	ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");
	return 1;
}
CMD:mirarperiodico(playerid,params[]) {
	if(PI[playerid][FechaPeriodicoD] == FechaPer[0] && PI[playerid][FechaPeriodicoM] == FechaPer[1] && PI[playerid][FechaPeriodicoA] == FechaPer[2]) {
	TextDrawSetString(PeriodicosT[3][playerid],PerI[Fecha]);
	TextDrawSetString(PeriodicosT[4][playerid],PerI[Imagen]);
	TextDrawSetString(PeriodicosT[7][playerid],PerI[Subti1]);
	TextDrawSetString(PeriodicosT[8][playerid],PerI[TextoS1]);
	TextDrawSetString(PeriodicosT[10][playerid],PerI[Subti2]);
	TextDrawSetString(PeriodicosT[11][playerid],PerI[TextoS2]);
	TextDrawSetString(PeriodicosT[13][playerid],PerI[Subti3]);
	TextDrawSetString(PeriodicosT[14][playerid],PerI[TextoS3]);
	Mensaje(playerid,-1,"Para guardar el peri�dico ingresa: /GuardarPeriodico ");
	for(new i=0;i<15;i++) {
	TextDrawShowForPlayer(playerid,PeriodicosT[i][playerid]);
	}
	} else Mensaje(playerid,-1,"No tienes el diario de hoy");
	return 1;
}
CMD:volveralp(playerid,params[]) {

	for(new i=0;i<15;i++) {
	TextDrawHideForPlayer(playerid,PeriodicosT[i][playerid]);
	}
	ShowPlayerDialog(playerid,D_Periodico1,DIALOG_STYLE_LIST,"- Dise�o de peri�dico.","1- Modificar Fecha.\n2- Modificar Imagen de portada.\n3- Modificar Subtitulo 1\n4- Modificar Texto del Sub1\n3- Modificar Subtitulo 2\n4- Modificar Texto del Sub2\n3- Modificar Subtitulo 3\n4- Modificar Texto del Sub3\n- Previsualizar.\n-Preparar boceto.","Seleccionar","Cancelar");
	return 1;
}
CMD:guardarperiodico(playerid,params[]) {

	for(new i=0;i<15;i++) {
	TextDrawHideForPlayer(playerid,PeriodicosT[i][playerid]);
	}
	
	return 1;
}
CMD:imprimir(playerid,params[]) {
	if(PreparoBoceto[playerid] == 1) {
	Dialog(playerid,D_Periodico10,DIALOG_STYLE_INPUT,"- Impresora Industrial","{FFFFFF}Seleccione la cantidad de unidades que quieres imprimir.\n\tPrecio por unidad: {26D145}$10","Imprimir","Salir");
	} else Mensaje(playerid,-1,"No preparaste el boceto.");
	return 1;
}
CMD:hora(playerid,params[]) {
	new String[128],Dia,Mes,Anio,Seg,Min,Hora;
	getdate(Anio,Mes,Dia); gettime(Hora,Min,Seg);
	format(String,sizeof(String),"Fecha: [ %d/%d/%d ] - Son las: %d:%d:%d",Dia,Mes,Anio,Hora,Min,Seg);
	Mensaje(playerid,-1,String);
	return 1;
}



CMD:comprarperiodico(playerid,params[]) {
	new Numeropedido=-1,String[50];
	if(PI[playerid][FechaPeriodicoD] != FechaPer[0] && PI[playerid][FechaPeriodicoM] != FechaPer[1] && PI[playerid][FechaPeriodicoA] != FechaPer[2]) {
	if(PlayerToPoint(playerid,4.0,1519,-1718,13)) { Numeropedido=0;}
	else if(PlayerToPoint(playerid,4.0,1445,-1705,14)) { Numeropedido=1;}
	else if(PlayerToPoint(playerid,4.0,1445,-1693,14)) { Numeropedido=2;}
	else if(PlayerToPoint(playerid,4.0,1812,-1862,13)) { Numeropedido=3;}
	else if(PlayerToPoint(playerid,4.0,2093,-1804,13)) { Numeropedido=4;}
	else if(PlayerToPoint(playerid,4.0,1227,-1386,13)) { Numeropedido=5;}
	else if(PlayerToPoint(playerid,4.0,375,-1827,8)) { Numeropedido=6;}
    else { Mensaje(playerid,-1,"No estas en un puesto de peri�dicos."); Numeropedido=-1; }

	if(Numeropedido != -1) {
	if(BuzonDePeriodicos[Numeropedido] != 0) {
	BuzonDePeriodicos[Numeropedido]--;
	format(String,sizeof(String),"Puesto%d",Numeropedido);
	dini_IntSet("Archivos de Periodicos/Puestos.ini",String,BuzonDePeriodicos[Numeropedido]);
	new Dia,Mes,Anio; getdate(Anio,Mes,Dia);
	GivePlayerMoney(playerid,-10);
	PI[playerid][TPeriodico]=1;
	PI[playerid][FechaPeriodicoD]=Dia;
	PI[playerid][FechaPeriodicoM]=Mes;
	PI[playerid][FechaPeriodicoA]=Anio;
	Mensaje(playerid,-1,"Has comprado un peri�dico por $10, para mirarlo : /MirarPeriodico.");
	}
	} else Mensaje(playerid,-1,"Ya tienes el peri�dico de hoy.");
	}
	return 1;
}
CMD:casillero(playerid,params[]) {
	if(PlayerToPoint(playerid,5.0,1365.4,-1760.3,13.6)) {
	if(PI[playerid][Faccion] == 6) {
	if(GetPlayerSkin(playerid) == 42) {
	Dialog(playerid,D_CasilleroMeca,DIALOG_STYLE_LIST,"- Casillero","1- Vestirme con mi Ropa\n2- Guardar mi Uniforme","Seleccionar","Salir");
	}
	else {
	Dialog(playerid,D_CasilleroMeca,DIALOG_STYLE_LIST,"- Casillero","1- Guardar mi Ropa\n2- Vestirme con mi Uniforme","Seleccionar","Salir");
	}
	
	}
	}
	return 1;
}
CMD:pagarmultas(playerid,params[]) {
	if(PlayerToPoint(playerid,5.0,250,67,1003)) {
	if(PI[playerid][Multas]!=0) {
	new String[200],Nombre[MAX_PLAYER_NAME];GetPlayerName(playerid,Nombre,sizeof(Nombre));
	format(String,sizeof(String),"\t\tTransito y Multas:\n\n\n{FFFFFF}Nombre y Apellido: {26D145}%s {FFFFFF}- Multas: {26D145}%d -{FFFFFF} Valor de Multas:{26D145} %d.",Nombre,PI[playerid][Multas],PI[playerid][PrecioMultas]);
	Dialog(playerid,D_PagarMultas,DIALOG_STYLE_MSGBOX,"- Departamento de polic�a de Los Santos",String,"Pagar","Cancelar");
	}else Mensaje(playerid,-1,"No tienes multas.");
	}
	return 1;
}
CMD:mostrardni(playerid,params[]) {
	if(PI[playerid][Dni] != 0) {
	if(!sscanf(params,"d",params[0])) {
	new String[128],Nombre[MAX_PLAYER_NAME],gen[3],Nombre2[24]; GetPlayerName(playerid,Nombre,sizeof(Nombre)); GetPlayerName(playerid,Nombre2,sizeof(Nombre2));
	if(PI[playerid][Genero] == 0) gen="m";
	else gen="f";
	format(String,sizeof(String),"%s",Nombre); TextDrawSetString(TXDNI[params[0]][4],String);
	format(String,sizeof(String),"fecha_de_nacimiento:_1/1/%d",PI[playerid][EdadIC]+2016-18); TextDrawSetString(TXDNI[params[0]][5],String);
	format(String,sizeof(String),"genero:_%s",gen); TextDrawSetString(TXDNI[params[0]][8],String);
	format(String,sizeof(String),"%s",Nombre); TextDrawSetString(TXDNI[params[0]][11],String);
	TextDrawSetPreviewModel(TXDNI[params[0]][2], GetPlayerSkin(playerid));
	format(String,sizeof(String),"D.N.I:_%d",PI[playerid][Dni]); TextDrawSetString(TXDNI[params[0]][13],String);
	for(new i=0;i<14;i++) { TextDrawShowForPlayer(params[0],TXDNI[params[0]][i]);}
	format(String,sizeof(String),"le muestra el D.N.I a %s",Nombre2);
	AccionP(playerid,String);
	}  else Mensaje(playerid,COLOR_BLANCO,"CMD:/MostrarDNI [ID]");
	} else Mensaje(playerid,-1,"No tienes un dni.");
	return 1;
}
CMD:devolverdni(playerid,params[]) {
	if(!sscanf(params,"d",params[0])) {
	new String[128],Nombre2[24]; GetPlayerName(params[0],Nombre2,sizeof(Nombre2));
	for(new i=0;i<14;i++) { TextDrawHideForPlayer(playerid,TXDNI[playerid][i]);}
	format(String,sizeof(String),"le devuelve el D.N.I a %s",Nombre2);
	AccionP(playerid,String);
	}  else Mensaje(playerid,COLOR_BLANCO,"CMD:/DevolverDNI [ID]");
	return 1;
}
CMD:mostrarpasaporte(playerid,params[]) {
	if(PI[playerid][Pasaporte] != 0) {
	if(!sscanf(params,"d",params[0])) {
	new String[128],Nombre[MAX_PLAYER_NAME],gen[3],Nombre2[24]; GetPlayerName(playerid,Nombre,sizeof(Nombre)); GetPlayerName(playerid,Nombre2,sizeof(Nombre2));
	if(PI[playerid][Genero] == 0) gen="m";
	else gen="f";
	format(String,sizeof(String),"%s",Nombre); TextDrawSetString(PasaporteText[params[0]][4],String);
	format(String,sizeof(String),"fecha_de_nacimiento:_1/1/%d",PI[playerid][EdadIC]+2016-18); TextDrawSetString(PasaporteText[params[0]][5],String);
	format(String,sizeof(String),"genero:_%s",gen); TextDrawSetString(PasaporteText[params[0]][8],String);
	format(String,sizeof(String),"%s",Nombre); TextDrawSetString(PasaporteText[params[0]][11],String);
	TextDrawSetPreviewModel(PasaporteText[params[0]][2], GetPlayerSkin(playerid));
	for(new i=0;i<14;i++) { TextDrawShowForPlayer(params[0],PasaporteText[params[0]][i]);}
	format(String,sizeof(String),"le muestra su pasaporte a %s",Nombre2);
	AccionP(playerid,String);
	}  else Mensaje(playerid,COLOR_BLANCO,"CMD:/MostrarPasaporte [ID]");
	} else Mensaje(playerid,-1,"No tienes un pasaporte.");
	return 1;
}
CMD:devolverpasaporte(playerid,params[]) {
	if(!sscanf(params,"d",params[0])) {
	new String[128],Nombre2[24]; GetPlayerName(params[0],Nombre2,sizeof(Nombre2));
	for(new i=0;i<14;i++) { TextDrawHideForPlayer(playerid,PasaporteText[playerid][i]);}
	format(String,sizeof(String),"le devuelve el pasaporte a %s",Nombre2);
	AccionP(playerid,String);
	}  else Mensaje(playerid,COLOR_BLANCO,"CMD:/DevolverPasaporte [ID]");
	return 1;
}
CMD:irar1(playerid,params[]) { SetPlayerPos(playerid,-1827.147338,7.207417,1061.143554); SetPlayerInterior(playerid,14); return 1;}
CMD:irar2(playerid,params[]) { SetPlayerPos(playerid,-1823.4000000,7.1000000,1060.1000000); SetPlayerInterior(playerid,14); return 1;}
CMD:crearnegocio(playerid,params[]) {
	if(!sscanf(params,"dd",params[0],params[1])) {
	if(params[1] > 0 && params[1] < 7) {
	new Float:X,Float:Y,Float:Z,Tipo[30],String[90];GetPlayerPos(playerid,X,Y,Z);
	format(NI[ContarNegocios][nPropietario],24,"Nadie");
	NI[ContarNegocios][nComprado]=0;NI[ContarNegocios][nTipo]=params[1];
	NI[ContarNegocios][nEX]=X;	NI[ContarNegocios][nEY]=Y;	NI[ContarNegocios][nEZ]=Z;
	for(new i=0;i<5;i++) {
	NI[ContarNegocios][nProductos][i]=0;
	NI[ContarNegocios][nPTipo][i]=0;
	NI[ContarNegocios][nPCantidad][i]=0;
	NI[ContarNegocios][nPPrecio][i]=0;
	}
	NI[ContarNegocios][nPrecio]=params[0];
	for(new i=0;i<3;i++) {
	NI[ContarNegocios][nEmpleados][i]=0;
	}
	format(NI[ContarNegocios][nEmpleado1Nom],24,"Nadie");
	format(NI[ContarNegocios][nEmpleado2Nom],24,"Nadie");
	format(NI[ContarNegocios][nEmpleado3Nom],24,"Nadie");
	NI[ContarNegocios][nCajaReg]=0;
	if(NI[ContarNegocios][nTipo] == 1) Tipo="24-7";
	else if(NI[ContarNegocios][nTipo] == 2) Tipo="Bar";
	else if(NI[ContarNegocios][nTipo] == 3) Tipo="Gasolineria";
	else if(NI[ContarNegocios][nTipo] == 4) Tipo="Local er�tico";
	else if(NI[ContarNegocios][nTipo] == 5) Tipo="Ammu-Nation";
	else if(NI[ContarNegocios][nTipo] == 6) Tipo="Tienda de electr�nica";
	format(String,sizeof(String),"[ {0099e0}%s{FFFFFF} ]\n� Precio: {00e038}$%d{ffffff}\n\n[/ComprarNegocio]\n\n ID: %d",Tipo,NI[ContarNegocios][nPrecio],ContarNegocios);
	NI[ContarNegocios][nLabel]=Create3DTextLabel(String,-1,NI[ContarNegocios][nEX],NI[ContarNegocios][nEY],NI[ContarNegocios][nEZ],6.0,0);
	GuardarNegocio(ContarNegocios);
	ContarNegocios++;
	} else {
	Mensaje(playerid,-1,"/CrearNegocio [Precio] [Tipo]");
	Mensaje(playerid,-1,">] [Tipos]: 1- 24-7 | 2- Bar | 3- Gasolineria | 4- Local Er�tico | 5- Ammu-Nation | 6- Tienda de electr�nica");
	}
	} else {
	Mensaje(playerid,-1,"/CrearNegocio [Precio] [Tipo]");
	Mensaje(playerid,-1,">] [Tipos]: 1- 24-7 | 2- Bar | 3- Gasolineria | 4- Local Er�tico | 5- Ammu-Nation | 6- Tienda de electr�nica");
	}
	return 1;
}
CMD:comprarnegocio(playerid,params[]) {
	if(PI[playerid][TNegocio] == -1) {
	for(new i=0;i<MAX_NEGOCIOS;i++) {
	if(PlayerToPoint(playerid, 3.0, NI[i][nEX],NI[i][nEY],NI[i][nEZ])) {
	if(GetPlayerMoney(playerid) >= NI[i][nPrecio]) {
	if(NI[i][nComprado] == 0) {
	new String[300],Nombre[MAX_PLAYER_NAME],Tipo[30];GetPlayerName(playerid,Nombre,sizeof(Nombre));
	format(NI[i][nPropietario],24,"%s",Nombre);
	if(NI[i][nTipo] == 1) Tipo="24-7";
	else if(NI[i][nTipo] == 2) Tipo="Bar";
	else if(NI[i][nTipo] == 3) Tipo="Gasolineria";
	else if(NI[i][nTipo] == 4) Tipo="Local er�tico";
	else if(NI[i][nTipo] == 5) Tipo="Ammu-Nation";
	else if(NI[i][nTipo] == 6) Tipo="Tienda de electr�nica";
	NI[i][nComprado]=1;
	format(String,sizeof(String),">] Compraste un negocio ID[%d] por un valor de $%d.",i,NI[i][nPrecio]);
	Mensaje(playerid,-1,String);
	GivePlayerMoney(playerid,-NI[i][nPrecio]);
	Delete3DTextLabel(NI[i][nLabel]);
	PI[playerid][TNegocio]=i;
	format(String,sizeof(String),"[ {0099e0}%s{FFFFFF} ]\n� Propietario: %s\n\n ID: %d",Tipo,NI[i][nPropietario],i);
	GuardarNegocio(i);
	NI[i][nLabel]=Create3DTextLabel(String,-1,NI[i][nEX],NI[i][nEY],NI[i][nEZ],6.0,0);
	} else Mensaje(playerid,-1,">] No puedes comprar �ste negocio.");
	} else Mensaje(playerid,-1,">] No tienes suficiente dinero para comprar �ste negocio");
	}
	}
	} else Mensaje(playerid,-1,">] No puedes comprar �ste negocio.");
	return 1;
}
CMD:vendernegocio(playerid,params[]) {
	new String[300],Nombre[MAX_PLAYER_NAME],Tipo[30];GetPlayerName(playerid,Nombre,sizeof(Nombre));
	for(new i=0;i<MAX_NEGOCIOS;i++) {
	if(PlayerToPoint(playerid, 3.0, NI[i][nEX],NI[i][nEY],NI[i][nEZ])) {
	if(NI[i][nComprado] == 1 && !strcmp (Nombre, NI[i][nPropietario])) {
	format(NI[i][nPropietario],24,"Nadie");
	if(NI[i][nTipo] == 1) Tipo="24-7";
	else if(NI[i][nTipo] == 2) Tipo="Bar";
	else if(NI[i][nTipo] == 3) Tipo="Gasolineria";
	else if(NI[i][nTipo] == 4) Tipo="Local er�tico";
	else if(NI[i][nTipo] == 5) Tipo="Ammu-Nation";
	else if(NI[i][nTipo] == 6) Tipo="Tienda de electr�nica";
	NI[i][nComprado]=0;
	GivePlayerMoney(playerid,NI[i][nPrecio]/2);
	format(String,sizeof(String),">] Vendiste tu negocio ID: %d, por un valor de $%d.",i,NI[i][nPrecio]/2);
	Mensaje(playerid,-1,String);
    PI[playerid][TNegocio]=-1;
	Delete3DTextLabel(NI[i][nLabel]);
	format(String,sizeof(String),"[ {0099e0}%s{FFFFFF} ]\n� Precio: {00e038}$%d{ffffff}\n\n[/ComprarNegocio]\n\n ID: %d",Tipo,NI[i][nPrecio],i);
	GuardarNegocio(i);
	NI[i][nLabel]=Create3DTextLabel(String,-1,NI[i][nEX],NI[i][nEY],NI[i][nEZ],6.0,0);
	} else Mensaje(playerid,-1,">] No eres propietario de �ste negocio.");
	}
	}
	return 1;
}
CMD:irpos(playerid,params[]) {
	if(!sscanf(params,"dddd",params[0],params[1],params[2],params[3])) {
	SetPlayerPos(playerid,params[0],params[1],params[2]);
	SetPlayerInterior(playerid,params[3]);
	} else Mensaje(playerid,-1,">] [*]{FFFFFF} /IrPos [X][Y][Z][IDINT]");
	return 1;
}
CMD:dint(playerid,params[]) {
	if(!sscanf(params,"dd",params[0],params[1])) {
	SetPlayerInterior(params[0],params[1]);
	} else Mensaje(playerid,-1,">] [*]{FFFFFF} /dint [ID User][IDINT]");
	return 1;
}
CMD:dvw(playerid,params[]) {
	if(!sscanf(params,"dd",params[0],params[1])) {
	SetPlayerVirtualWorld(params[0],params[1]);
	} else Mensaje(playerid,-1,">] [*]{FFFFFF} /dvw [ID User][IDINT]");
	return 1;
}
CMD:gestionarnegocio(playerid,params[]) {
	if(PI[playerid][TNegocio] != -1) {
	if(PlayerToPoint(playerid,3.0,NI[PI[playerid][TNegocio]][nEX],NI[PI[playerid][TNegocio]][nEY],NI[PI[playerid][TNegocio]][nEZ])) {
	MostrarMenuNeg(playerid,PI[playerid][TNegocio],0);
	} else Mensaje(playerid,-1,">] No puedes gestionar �ste negocio.");
	} else Mensaje(playerid,-1,">] No tienes un negocio.");
	return 1;
}
stock MostrarMenuNeg(playerid,Neg,Num) {
	new String[400],String2[50],ProductoNombre[60];
	if(Num == 0) {//Men� principal
	Dialog(playerid,D_Negocio_Menu1,DIALOG_STYLE_LIST,">] Negocios.",">] Ver ganancias\n> Ver Empleados\n> Ver Stock\n> Ver precios","Seleccionar","Cancelar");
	}
	else if(Num == 1) {//Men� Ganancia
	format(String,sizeof(String),"\t\t> Tu negocio gener�:\t\t\t\n\n\n SubTotal(Costo + Ganancia): $%d\n Ganancias totales: $%d",NI[Neg][nVentaConG],NI[Neg][nGanancias]);
	Dialog(playerid,D_Negocio_Menu2,DIALOG_STYLE_MSGBOX,">] Negocios [Ganancias].",String,"Retirar","Volver");
	}
	else if(Num == 2) {//Men� Empleados
	Dialog(playerid,D_Negocio_Menu3,DIALOG_STYLE_LIST,">] Negocios [Empleados].",">] Gestionar empleados\n> Ver empleados","Seleccionar","Volver");
	}
	else if(Num == 3) {//Men� Gesti�n Empleados

	if(NI[Neg][nEmpleados][0] == 1) {format(String2,sizeof(String2),">] %s - Sueldo: $%d\n",NI[Neg][nEmpleado1Nom],NI[Neg][nEmpleadoSueldo][0]); strcat(String,String2);} else {format(String2,sizeof(String2),">] Sin empleado\n");strcat(String,String2);}
	if(NI[Neg][nEmpleados][1] == 1) {format(String2,sizeof(String2),">] %s - Sueldo: $%d\n",NI[Neg][nEmpleado2Nom],NI[Neg][nEmpleadoSueldo][1]); strcat(String,String2);} else {format(String2,sizeof(String2),">] Sin empleado\n");strcat(String,String2);}
	if(NI[Neg][nEmpleados][2] == 1) {format(String2,sizeof(String2),">] %s - Sueldo: $%d",NI[Neg][nEmpleado3Nom],NI[Neg][nEmpleadoSueldo][2]);strcat(String,String2);} else {format(String2,sizeof(String2),">] Sin empleado");strcat(String,String2);}
	Dialog(playerid,D_Negocio_Menu4,DIALOG_STYLE_LIST,">] Negocios [Empleados]",String,"Seleccionar","Volver");
	}
	else if(Num == 4) {//Men� Gesti�n Empleados

	if(NI[Neg][nEmpleados][0] == 1) {format(String2,sizeof(String2),">] %s - Sueldo: $%d\n",NI[Neg][nEmpleado1Nom],NI[Neg][nEmpleadoSueldo][0]); strcat(String,String2);} else {format(String2,sizeof(String2),">] Sin empleado\n");strcat(String,String2);}
	if(NI[Neg][nEmpleados][1] == 1) {format(String2,sizeof(String2),">] %s - Sueldo: $%d\n",NI[Neg][nEmpleado2Nom],NI[Neg][nEmpleadoSueldo][1]); strcat(String,String2);} else {format(String2,sizeof(String2),">] Sin empleado\n");strcat(String,String2);}
	if(NI[Neg][nEmpleados][2] == 1) {format(String2,sizeof(String2),">] %s - Sueldo: $%d",NI[Neg][nEmpleado3Nom],NI[Neg][nEmpleadoSueldo][2]);strcat(String,String2);} else {format(String2,sizeof(String2),">] Sin empleado");strcat(String,String2);}
	Dialog(playerid,D_Negocio_Menu5,DIALOG_STYLE_LIST,">] Negocios [Empleados]",String,"","Volver");
	}
	else if(Num == 5) {
	Dialog(playerid,D_Negocio_Menu6,DIALOG_STYLE_LIST,">] Negocios [Empleados]",">] Modificar Sueldo\n> Despedir empleado","Seleccionar","Volver");
	}
	else if(Num == 6) {
	if(SeleccionoEmpleado[playerid] == 0) { format(String2,sizeof(String2),"%s",NI[PI[playerid][TNegocio]][nEmpleado1Nom]);}
	else if(SeleccionoEmpleado[playerid] == 1) { format(String2,sizeof(String2),"%s",NI[PI[playerid][TNegocio]][nEmpleado2Nom]);}
	else if(SeleccionoEmpleado[playerid] == 2) { format(String2,sizeof(String2),"%s",NI[PI[playerid][TNegocio]][nEmpleado3Nom]);}
	format(String,sizeof(String),">] Ingrese el nuevo sueldo del empleado %s:",String2);
	Dialog(playerid,D_Negocio_Menu7,DIALOG_STYLE_INPUT,">] Negocios [Empleados]",String2,"Modificar","Volver");
	}
	else if(Num == 7) {
	new Sueldo=NI[PI[playerid][TNegocio]][nEmpleadoSueldo][SeleccionoEmpleado[playerid]],Sueldoapagar=Sueldo*32;
	if(SeleccionoEmpleado[playerid] == 0) { format(String2,sizeof(String2),"%s",NI[PI[playerid][TNegocio]][nEmpleado1Nom]);}
	else if(SeleccionoEmpleado[playerid] == 1) { format(String2,sizeof(String2),"%s",NI[PI[playerid][TNegocio]][nEmpleado2Nom]);}
	else if(SeleccionoEmpleado[playerid] == 2) { format(String2,sizeof(String2),"%s",NI[PI[playerid][TNegocio]][nEmpleado3Nom]);}
	format(String,sizeof(String),"\t\t\t> �Estas seguro de despedir a %s?\t\t\t\t\n\n Al despedir a el empleado tendr�s que pagar 1 mes de trabajo ($%d).",String2,Sueldoapagar);
	Dialog(playerid,D_Negocio_Menu8,DIALOG_STYLE_MSGBOX,">] Negocios [Empleados]",String2,"Despedir","Volver");
	}
	else if(Num == 8) {
	if(NI[Neg][nTipo] == 1) {
	format(ProductoNombre,sizeof(ProductoNombre),">] Sprunk - Stock: [%d]\n",NI[Neg][nPCantidad][0]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Hamburguesa - Stock: [%d]\n",NI[Neg][nPCantidad][1]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Agua mineral - Stock: [%d]\n",NI[Neg][nPCantidad][2]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Jugo envasado - Stock: [%d]",NI[Neg][nPCantidad][3]); strcat(String,ProductoNombre);
	}
	else if(NI[Neg][nTipo] == 2) {
	format(ProductoNombre,sizeof(ProductoNombre),">] Caf� - Stock: [%d]\n",NI[Neg][nPCantidad][0]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Tostada - Stock: [%d]\n",NI[Neg][nPCantidad][1]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Porci�n de torta - Stock: [%d]",NI[Neg][nPCantidad][2]); strcat(String,ProductoNombre);
	}
	else if(NI[Neg][nTipo] == 4) {
	format(ProductoNombre,sizeof(ProductoNombre),">] Cerveza - Stock: [%d]\n",NI[Neg][nPCantidad][0]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Vino - Stock: [%d]\n",NI[Neg][nPCantidad][1]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Whisky - Stock: [%d]\n",NI[Neg][nPCantidad][2]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Champagne - Stock: [%d]",NI[Neg][nPCantidad][3]); strcat(String,ProductoNombre);
	}
	else if(NI[Neg][nTipo] == 5) {
	format(ProductoNombre,sizeof(ProductoNombre),">] Armas de bajo calibre - Stock: [%d]\n",NI[Neg][nPCantidad][0]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Armas de alto calibre - Stock: [%d]\n",NI[Neg][nPCantidad][1]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Munici�n de bajo calibre - Stock: [%d]\n",NI[Neg][nPCantidad][2]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Munici�n de alto calibre - Stock: [%d]",NI[Neg][nPCantidad][3]); strcat(String,ProductoNombre);
	}
	else if(NI[Neg][nTipo] == 6) {
	format(ProductoNombre,sizeof(ProductoNombre),">] Tel�fono - Stock: [%d]\n",NI[Neg][nPCantidad][0]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Radio - Stock: [%d]\n",NI[Neg][nPCantidad][1]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] GPS - Stock: [%d]",NI[Neg][nPCantidad][2]); strcat(String,ProductoNombre);
	}
	Dialog(playerid,D_Negocio_Menu9,DIALOG_STYLE_LIST,">] Negocios [Stock]",String,"","Volver");
	}
	else if(Num == 9) {
	if(NI[Neg][nTipo] == 1) {
	format(ProductoNombre,sizeof(ProductoNombre),">] Sprunk - Precio: [$%d]\n",NI[Neg][nPPrecio][0]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Hamburguesa - Precio: [$%d]\n",NI[Neg][nPPrecio][1]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Agua mineral - Precio: [$%d]\n",NI[Neg][nPPrecio][2]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Jugo envasado - Precio: [$%d]",NI[Neg][nPPrecio][3]); strcat(String,ProductoNombre);
	}
	else if(NI[Neg][nTipo] == 2) {
	format(ProductoNombre,sizeof(ProductoNombre),">] Caf� - Precio: [$%d]\n",NI[Neg][nPPrecio][0]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Tostada - Precio: [$%d]\n",NI[Neg][nPPrecio][1]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Porci�n de torta - Precio: [$%d]",NI[Neg][nPPrecio][2]); strcat(String,ProductoNombre);
	}
	else if(NI[Neg][nTipo] == 4) {
	format(ProductoNombre,sizeof(ProductoNombre),">] Cerveza - Precio: [$%d]\n",NI[Neg][nPPrecio][0]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Vino - Precio: [$%d]\n",NI[Neg][nPPrecio][1]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Whisky - Precio: [$%d]\n",NI[Neg][nPPrecio][2]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Champagne - Precio: [$%d]",NI[Neg][nPPrecio][3]); strcat(String,ProductoNombre);
	}
	else if(NI[Neg][nTipo] == 5) {
	format(ProductoNombre,sizeof(ProductoNombre),">] Armas de bajo calibre - Precio: [$%d]\n",NI[Neg][nPPrecio][0]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Armas de alto calibre - Precio: [$%d]\n",NI[Neg][nPPrecio][1]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Munici�n de bajo calibre - Precio: [$%d]\n",NI[Neg][nPPrecio][2]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Munici�n de alto calibre - Precio: [$%d]",NI[Neg][nPPrecio][3]); strcat(String,ProductoNombre);
	}
	else if(NI[Neg][nTipo] == 6) {
	format(ProductoNombre,sizeof(ProductoNombre),">] Tel�fono - Precio: [$%d]\n",NI[Neg][nPPrecio][0]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Radio - Precio: [$%d]\n",NI[Neg][nPPrecio][1]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] GPS - Precio: [$%d]",NI[Neg][nPPrecio][2]); strcat(String,ProductoNombre);
	}
	
	Dialog(playerid,D_Negocio_Menu10,DIALOG_STYLE_LIST,">] Negocios [Precios]",String,"Modificar","Volver");
	}
	else if(Num == 10) {
	Dialog(playerid,D_Negocio_Menu11,DIALOG_STYLE_INPUT,">] Negocios [Precios]",">] Ingrese el nuevo precio para el producto seleccionado.","Modificar","Volver");
	}
	/* Ganancias - Empleados - Stock - Precios */
	return 1;
}
stock MenuDeCompraNegocios(playerid,Neg) {
	new String[400],ProductoNombre[60];
	if(NI[Neg][nTipo] == 1) {
	format(ProductoNombre,sizeof(ProductoNombre),">] Sprunk - Precio: [$%d]\n",NI[Neg][nPPrecio][0]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Hamburguesa - Precio: [$%d]\n",NI[Neg][nPPrecio][1]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Agua mineral - Precio: [$%d]\n",NI[Neg][nPPrecio][2]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Jugo envasado - Precio: [$%d]",NI[Neg][nPPrecio][3]); strcat(String,ProductoNombre);
	}
	else if(NI[Neg][nTipo] == 2) {
	format(ProductoNombre,sizeof(ProductoNombre),">] Caf� - Precio: [$%d]\n",NI[Neg][nPPrecio][0]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Tostada - Precio: [$%d]\n",NI[Neg][nPPrecio][1]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Porci�n de torta - Precio: [$%d]",NI[Neg][nPPrecio][2]); strcat(String,ProductoNombre);
	}
	else if(NI[Neg][nTipo] == 4) {
	format(ProductoNombre,sizeof(ProductoNombre),">] Cerveza - Precio: [$%d]\n",NI[Neg][nPPrecio][0]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Vino - Precio: [$%d]\n",NI[Neg][nPPrecio][1]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Whisky - Precio: [$%d]\n",NI[Neg][nPPrecio][2]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Champagne - Precio: [$%d]",NI[Neg][nPPrecio][3]); strcat(String,ProductoNombre);
	}
	else if(NI[Neg][nTipo] == 5) {
	format(ProductoNombre,sizeof(ProductoNombre),">] Armas de bajo calibre - Precio: [$%d]\n",NI[Neg][nPPrecio][0]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Armas de alto calibre - Precio: [$%d]\n",NI[Neg][nPPrecio][1]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Munici�n de bajo calibre - Precio: [$%d]\n",NI[Neg][nPPrecio][2]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Munici�n de alto calibre - Precio: [$%d]",NI[Neg][nPPrecio][3]); strcat(String,ProductoNombre);
	}
	else if(NI[Neg][nTipo] == 6) {
	format(ProductoNombre,sizeof(ProductoNombre),">] Tel�fono - Precio: [$%d]\n",NI[Neg][nPPrecio][0]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] Radio - Precio: [$%d]\n",NI[Neg][nPPrecio][1]); strcat(String,ProductoNombre);
	format(ProductoNombre,sizeof(ProductoNombre),">] GPS - Precio: [$%d]",NI[Neg][nPPrecio][2]); strcat(String,ProductoNombre);
	}
	Dialog(playerid,D_CompraNeg,DIALOG_STYLE_LIST,">] Men�",String,"Comprar","Salir");
	return 1;
}
CMD:comprar(playerid,params[]) {
	if(PlayerToPoint(playerid,3.0,-30.88,-28.93,1003.55) || PlayerToPoint(playerid,3.0,378.85,-186.60,1000.63) || PlayerToPoint(playerid,3.0,1215.13,-13.35,1000.92)
	|| PlayerToPoint(playerid,3.0,296.60,-38.09,1001.51) || PlayerToPoint(playerid,3.0,-2236.96,130.18,1035.41)) {// 24-7 Unity
	MenuDeCompraNegocios(playerid,GetPlayerVirtualWorld(playerid));
	}
	return 1;
}

