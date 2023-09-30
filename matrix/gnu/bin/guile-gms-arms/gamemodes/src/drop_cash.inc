#include <YSI-Includes\YSI\y_hooks>

enum _:E_DroppedCash 
{
    dc_OBJECTID,
    dc_PICKUPID,
    dc_EXTRA,
    Text3D:dc_LABELID,
    dc_WORLD,
    dc_INTERIOR,
    Float:dc_X,
    Float:dc_Y,
    Float:dc_Z
};

new List:DroppedCash;

hook OnScriptInit() 
{
    DroppedCash = list_new();
}

stock DropCash(playerid, extra = 0)
{
    new CashInfo[E_DroppedCash];
    if(GivePlayerCash(playerid, -extra, true, true))
    {
        CashInfo[dc_EXTRA] = extra;
        CashInfo[dc_WORLD] = GetPlayerVirtualWorld(playerid);
        CashInfo[dc_INTERIOR] = GetPlayerInterior(playerid);
        GetPlayerPos(playerid, CashInfo[dc_X], CashInfo[dc_Y], CashInfo[dc_Z]);

        if(extra >= 10000) CashInfo[dc_OBJECTID] = CreateDynamicObject(1210, CashInfo[dc_X], CashInfo[dc_Y], CashInfo[dc_Z] - 0.9, 90.0, 0.0, float(random(360)), CashInfo[dc_WORLD], CashInfo[dc_INTERIOR]);
        else CashInfo[dc_PICKUPID] = CreateDynamicPickup(1212, 1, CashInfo[dc_X], CashInfo[dc_Y], CashInfo[dc_Z] - 0.7, CashInfo[dc_WORLD], CashInfo[dc_INTERIOR]);

        new label_str[256];
        format(label_str, sizeof label_str, "{"#PRIMARY_COLOR"}%s$\n{FFFFFF}Presiona {"#PRIMARY_COLOR"}[ H ] {FFFFFF}para recoger el dinero", number_format_thousand(extra));
        CashInfo[dc_LABELID] = CreateDynamic3DTextLabel(label_str, 0xFFFFFFFF, CashInfo[dc_X], CashInfo[dc_Y], CashInfo[dc_Z] - 0.7, 5.0, .testlos = true, .interiorid = CashInfo[dc_INTERIOR], .worldid = CashInfo[dc_WORLD]);
        
        for(new i, j = GetPlayerPoolSize(); i <= j; i++)
        {
            if(IsPlayerStreamedIn(playerid, i))
            {
                Streamer_Update(i);
            }
        }

        list_add_arr(DroppedCash, CashInfo);
    }
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) 
{
    if(newkeys &  KEY_CTRL_BACK)
	{
        if(PI[playerid][pi_STATE] != ROLEPLAY_STATE_CRACK && PI[playerid][pi_STATE] != ROLEPLAY_STATE_JAIL) 
        {
            for(new i = 0; i < list_size(DroppedCash); i ++) 
            {
                new CashInfo[E_DroppedCash];
                list_get_arr(DroppedCash, i, CashInfo);

                if(GetPlayerInterior(playerid) == CashInfo[dc_INTERIOR] && GetPlayerVirtualWorld(playerid) == CashInfo[dc_WORLD] && IsPlayerInRangeOfPoint(playerid, 1.5, CashInfo[dc_X], CashInfo[dc_Y], CashInfo[dc_Z])) 
                {
                    if(PI[playerid][pi_LEVEL] < 3) SendNotification(playerid, "Deber ser nivel 3 o superior para poder recoger cosas del suelo.");
                    else 
                    {
                        if(GivePlayerCash(playerid, CashInfo[dc_EXTRA], true, false))
                        {
                            ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.1, 0, 1, 1, 0, 0, 1);
                            if(IsValidDynamicObject(CashInfo[dc_OBJECTID])) DestroyDynamicObject(CashInfo[dc_OBJECTID]);
                            if(IsValidDynamicPickup(CashInfo[dc_PICKUPID])) DestroyDynamicPickup(CashInfo[dc_PICKUPID]);
                            DestroyDynamic3DTextLabel(CashInfo[dc_LABELID]);
                            list_remove(DroppedCash, i);
                            
                            Auto_SendPlayerAction(playerid, "recoge dinero del suelo.");

                            for(new y, h = GetPlayerPoolSize(); y <= h; y++)
                            {
                                if(IsPlayerStreamedIn(playerid, y))
                                {
                                    Streamer_Update(y);
                                }
                            }
                        }
                    }
                    return Y_HOOKS_BREAK_RETURN_1;
                }
            }
        }
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}