#include <a_samp>
#include <core>
#include <float>

new Text:glob0;

new Text:glob4;

new glob8;


public OnFilterScriptInit()
{
	glob0 = TextDrawCreate(200.0, 436.0, "00/00/0000");
	TextDrawFont(glob0, 2);
	TextDrawLetterSize(glob0, 0.1716, 1.0499);
	TextDrawTextSize(glob0, 4000.0, 3190.5);
	TextDrawSetOutline(glob0, 1);
	TextDrawSetShadow(glob0, 0);
	TextDrawAlignment(glob0, 2);
	TextDrawColor(glob0, 0xFFFFFFFF);
	TextDrawBackgroundColor(glob0, 0x000000FF);
	TextDrawBoxColor(glob0, 0x000000FF);
	TextDrawUseBox(glob0, true);
	TextDrawSetProportional(glob0, true);
	TextDrawSetSelectable(glob0, 0);
	glob4 = TextDrawCreate(165.0, 436.0, "00:00 -");
	TextDrawFont(glob4, 2);
	TextDrawLetterSize(glob4, 0.1716, 1.0499);
	TextDrawTextSize(glob4, 4000.0, 3190.5);
	TextDrawSetOutline(glob4, 1);
	TextDrawSetShadow(glob4, 0);
	TextDrawAlignment(glob4, 2);
	TextDrawColor(glob4, 0xFFFFFFFF);
	TextDrawBackgroundColor(glob4, 0x000000FF);
	TextDrawBoxColor(glob4, 0x000000FF);
	TextDrawUseBox(glob4, false);
	TextDrawSetProportional(glob4, true);
	TextDrawSetSelectable(glob4, 0);
	glob8 = TextDrawCreate(160.0, 436.0, "_");
	TextDrawFont(glob4, 2);
	TextDrawLetterSize(glob4, 0.1716, 1.0499);
	TextDrawTextSize(glob4, 4000.0, 3190.5);
	TextDrawSetOutline(glob4, 1);
	TextDrawSetShadow(glob4, 0);
	TextDrawAlignment(glob4, 2);
	TextDrawColor(glob4, 0xFFFFFFFF);
	TextDrawBackgroundColor(glob4, 0x000000FF);
	TextDrawBoxColor(glob4, 0x000000FF);
	TextDrawUseBox(glob4, false);
	TextDrawSetProportional(glob4, true);
	TextDrawSetSelectable(glob4, 0);
	SetTimer("AtualizarRelogio", 1000, true);
	print("[FS] Hora e Data carregado com sucesso.");
	return 1;
}

public OnFilterScriptExit()
{
	print("[FS] Hora e Data descarregado com sucesso.");
	return 1;
}

public OnPlayerConnect(playerid)
{
	TextDrawShowForPlayer(playerid, glob0);
	TextDrawShowForPlayer(playerid, glob4);
	TextDrawShowForPlayer(playerid, glob8);
	return 1;
}

public OnPlayerSpawn(playerid)
{
	TextDrawShowForPlayer(playerid, glob0);
	TextDrawShowForPlayer(playerid, glob4);
	TextDrawShowForPlayer(playerid, glob8);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	TextDrawHideForPlayer(playerid, glob0);
	TextDrawHideForPlayer(playerid, glob4);
	TextDrawHideForPlayer(playerid, glob8);
	return 1;
}

public AtualizarRelogio()
{
	new var0 = 0, var1 = 0, var2 = 0, var3 = 0, var4 = 0, var5[128], var6[128];
	gettime(var3, var4, 0);
	getdate(var0, var1, var2);
	format(var5, 128, "%02d/%02d/%d", var2, var1, var0);
	TextDrawSetString(glob0, var5);
	format(var6, 128, "%02d:%02d -", var3, var4);
	TextDrawSetString(glob4, var6);
	return 1;
}

