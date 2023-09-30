#include <a_samp>
#include <core>
#include <float>

new glob0[1000];


public OnFilterScriptInit()
{
	print("--------------");
	print("- Anti c-bug -");
	print("-  Iniciado  -");
	print("--------------");
	return 1;
}

public OnPlayerConnect(playerid)
{
	glob0[playerid] = 0;
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys == 2)
	{
		if(glob0[playerid] == 1)
		{
			SendClientMessage(playerid, 0xFFFFFFFF, "{FFFF33}Has sido congelado por 3 segundos por intentar hacer cBug.");
			TogglePlayerControllable(playerid, false);
			SetTimerEx("DescongelarCBUG", 5000, false, "d", playerid);
			SetTimerEx("Advertencia", 800, false, "d", playerid);
			glob0[playerid] = 0;
		}
	}
	if(newkeys == 128)
	{
		if(IsPlayerInAnyVehicle(playerid))
		{
			return 1;
		}
		if(GetPlayerWeapon(playerid) > 20)
		{
			if(!glob0[playerid])
			{
				glob0[playerid] = 1;
				SetTimerEx("AntiCBug", 1000, false, "d", playerid);
			}
		}
	}
	return 1;
}

public DescongelarCBUG(playerid)
{
	TogglePlayerControllable(playerid, true);
	return 0;
}

public AntiCBug(arg0)
{
	glob0[arg0] = 0;
	return 0;
}

