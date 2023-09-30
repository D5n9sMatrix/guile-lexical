/**************************************************************
*                      -= WaterLIB INCLUDE =-                 *
*                      Is Player In Water?                    *
*                                                             *
*   Author:                                                   *
*           Synchro                                           *
*   Version:                                                  *
*           1.0                                               *
*   ChangeLOG:                                                *
*          04/01/12:                                          *
*               First version.                                *
*   Description:                                              *
*           This .inc includes functions to check if a player *
*           is in water.                                      *
***************************************************************/
 
#if defined _ipiw_included
    #endinput
#endif
#define _ipiw_included
 
#include a_samp
 
stock
    IsPlayerInArea(playerid, Float:MinX, Float:MinY, Float:MaxX, Float:MaxY)
    {
        new Float:X, Float:Y, Float:Z;
        GetPlayerPos(playerid, X, Y, Z);
        if(X >= MinX && X <= MaxX && Y >= MinY && Y <= MaxY) {
            return 1;
        }
        return 0;
    }
 
stock
    IsPlayerInWaterLocation(playerid)
    {
        new Float:null[2], Float:MaxZ;
        GetPlayerPos(playerid, null[0], null[1], MaxZ);
        /* Las Venturas */
        if(IsPlayerInArea(playerid, 2044.6, 1206.358, 2192.984, 1376.552) && MaxZ < 0xA)
            return 1;
        else if(IsPlayerInArea(playerid, 2048.504, 1063.239, 2185.174, 1202.49) && MaxZ < 0xA)
            return 1;
        else if(IsPlayerInArea(playerid, 2204.698, 1426.837, 2204.698, 1430.705) && MaxZ < 0xA)
            return 1;
        else if(IsPlayerInArea(playerid, 2032.885, 1852.325, 2114.887, 1991.575) && MaxZ < 0xC)
            return 1;
        else if(IsPlayerInArea(playerid, 2517.086, 2316.493, 2606.897, 2420.93) && MaxZ < 0x16)
            return 1;
        else if(IsPlayerInArea(playerid, 2554.5996, 1548.6178, 2507.7683, 1588.9154) && MaxZ < 0xF)
            return 1;
        /* San Fierro */
        else if(IsPlayerInArea(playerid, -2043.628, -980.9415, -1973.561, -724.0283) && MaxZ < 0x20)
            return 1;
        else if(IsPlayerInArea(playerid, -2753.912, -522.3632, -2665.071, -380.3444) && MaxZ < 0x05)
            return 1;
        /* Los Santos */
        else if(IsPlayerInArea(playerid, 1219.864, -2435.881, 1292.118, -2325.344) && MaxZ < 0xF)
            return 1;
        else if(IsPlayerInArea(playerid, 1923.388, -1223.924, 2010.854, -1168.656) && MaxZ < 0x16)
            return 1;
        else if(IsPlayerInArea(playerid, 1269.301, -837.0452, 1314.935, -781.7769) && MaxZ < 0x5A)
            return 1;
        else if(IsPlayerInArea(playerid, 1087.3953, -682.6734, 1102.3138, -663.0043) && MaxZ < 0x71)
            return 1;
        else if(IsPlayerInArea(playerid, 1268.6118, -784.2910, 1291.8774, -764.6104) && MaxZ < 0x43D)
            return 1;
        /* Bounds */
        else if(MaxZ < 0xF)
            return 1;
        return 0;
    }
   
stock
    IsPlayerUsingSwimAnim(playerid)
    {
        if(IsPlayerInAnyVehicle(playerid) || GetPlayerState(playerid) != PLAYER_STATE_ONFOOT)
            return 0;
        new
            animlib[32],
            animname[32];
        GetAnimationName(GetPlayerAnimationIndex(playerid),animlib,32,animname,32);
        if(!strcmp(animlib, "SWIM", true) && !strcmp(animname, "SWIM_GLIDE", true))
            return 1;
        else if(!strcmp(animlib, "SWIM", true) && !strcmp(animname, "SWIM_DIVE_UNDER", true))
            return 1;
        else if(!strcmp(animlib, "SWIM", true) && !strcmp(animname, "SWIM_DIVE_GLIDE", true))
            return 1;
        else if(!strcmp(animlib, "SWIM", true) && !strcmp(animname, "SWIM_UNDER", true))
            return 1;
        return 0;
    }
   
stock
    IsPlayerInWater(playerid)
    {
        if(IsPlayerInWaterLocation(playerid) && IsPlayerUsingSwimAnim(playerid))
            return 1;
        return 0;
    }
   
/*
native IsPlayerInArea(playerid, Float:MinX, Float:MinY, Float:MaxX, Float:MaxY)
native IsPlayerInWaterLocation(playerid)
native IsPlayerUsingSwimAnim(playerid)
native IsPlayerInWater(playerid)
*/