#include <a_samp>
#include <sscanf2>
#include <streamer>
#include <zcmd>
#define Nombre_De_TXT_Label         "Labels.txt"
new Msg[128], Labels;
public OnFilterScriptInit()
{
    Labels = AgregarLabels(Nombre_De_TXT_Label);
    new Linea[128];
    format(Linea, sizeof(Linea), "** %i Labels loaded **",Labels);
    printf(Linea);
    return 1;
}

public OnFilterScriptExit()
{
    DestroyAllDynamic3DTextLabels();
    return 1;
}


CMD:add3d(playerid, params[])
{
    if(!IsPlayerAdmin(playerid)) return 0;
    new Float:X, Float:Y, Float:Z;
    if(unformat(params, "s[128]",params)) return SendClientMessage(playerid, 0xFF0000FF, "{FF0000}Use : /Add3d [Info]");
    GetPlayerPos(playerid, X, Y, Z);
    AgregarLabelsAtxt(Nombre_De_TXT_Label, params, X, Y, Z);
    CreateDynamic3DTextLabel(params, 0xFFFFFFFF, X, Y, Z, 100.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 100.0);
    format(Msg, sizeof(Msg), " You have created a 3d label here!\"%s\".",params);
    return SendClientMessage(playerid, 0xFFFF00FF, Msg);
}

stock AgregarLabels(ArchivoLabels[])
{
    if(!fexist(ArchivoLabels)) return 0;

    new File:ArchivoLab = fopen(ArchivoLabels, io_read),
    Linea[128],
    InformacionL[128],
    Float:LX,
    Float:LY,
    Float:LZ,
    CantidadLabels = 0;
    while(fread(ArchivoLab, Linea))
    {
        if(!unformat(Linea, "p<,>s[128]fff", InformacionL,LX,LY,LZ))
        {
            CreateDynamic3DTextLabel(InformacionL, 0xFFFFFFFF, LX, LY, LZ, 100.0);
            CantidadLabels++;
        }
    }

    fclose(ArchivoLab);
    return CantidadLabels;
}

stock AgregarLabelsAtxt(ArchivoLabels[], InformacionL[], Float:LX, Float:LY, Float:LZ)
{
    new File:ArchivoLab, Linea[128];
    format(Linea, sizeof(Linea), "%s,%.2f,%.2f,%.2f\r\n",InformacionL, LX, LY, LZ);
    ArchivoLab = fopen(ArchivoLabels, io_append);
    fwrite(ArchivoLab, Linea);
    fclose(ArchivoLab);
    return 1;
}
