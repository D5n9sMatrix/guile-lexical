#include <a_samp>
#include <core>
#include <float>

new Float:glob0[51][505];


Float:functionB0(Float:arg0, Float:arg1, arg2)
{
	new Float:var0[4];
	for(new var1 = 0; var1 < 3; var1++)
	{
		var0[var1] = arg0[var1] - arg1[var1];
		var0[var1] = var0[var1] * var0[var1];
	}
	var0[3] = var0[0] + var0[1] + var0[2];
	return (arg2 ? floatsqroot(var0[3]) : var0[3]);
}

Float:function324(Float:arg0, Float:arg1)
{
	new var0[2], var1[2], Float:var2 = 0.0;
	for(new var3 = 0; var3 < 2; var3++)
	{
		var0[var3] = arg0[var3] < arg1[var3];
		var1[var3] = (var0[var3] ? arg1[var3] - arg0[var3] : arg0[var3] - arg1[var3]);
	}
	var2 = atan2(var1[1], var1[0]);
	var2 = (var0[0] ? 270.0 + var2 : 90.0 - var2);
	var2 = (var0[1] ? var2 : 180.0 - var2);
	return var2;
}

function694(Float:arg0, &Float:arg1)
{
	new var0 = 4294967295, Float:var1 = 100000.0;
	for(new var2 = 1, new var3, new var4 = 0, FS_GetHighestButtonID(), var3 = FS_GetHighestButtonID(); var2 <= var3; var2++)
	{
		if(glob0[var2][0])
		{
			arg1 = functionB0(arg0, glob0[var2], 1);
			if(arg1 < var1)
			{
				var1 = arg1;
				var0 = var2;
			}
		}
	}
	arg1 = var1;
	return var0;
}

public Float:FS_CreateButton(Float:arg0, Float:arg1, Float:arg2, Float:arg3)
{
	new var0 = 0;
	for(var0 = 1; var0 <= 50; var0++)
	{
		if(!glob0[var0][0])
		{
		}
		else
		{
		}
	}
	glob0[var0][506] = CreateObject(2886, arg0, arg1, arg2, 0.0, 0.0, arg3, 0);
	glob0[var0][502] = arg0;
	glob0[var0][503] = arg1;
	glob0[var0][504] = arg2;
	glob0[var0][505] = arg3;
	glob0[var0][1] = 0;
	glob0[var0][0] = 1;
	for(new var1 = 0; var1 < 500; var1++)
	{
		glob0[var0][var1] = 1;
	}
	return var0;
}

public FS_DestroyButton(arg0)
{
	if(FS_IsValidButton(arg0))
	{
		CallRemoteFunction(103632, 103704, arg0);
		glob0[arg0][0] = 0;
		DestroyObject(glob0[arg0][506]);
	}
	return 0;
}

public Float:FS_SetButtonPos(arg0, Float:arg1, Float:arg2, Float:arg3, Float:arg4)
{
	if(FS_IsValidButton(arg0))
	{
		new var0 = glob0[arg0][506];
		SetObjectPos(var0, arg1, arg2, arg3);
		SetObjectRot(var0, 0.0, 0.0, arg4);
		glob0[arg0][502] = arg1;
		glob0[arg0][503] = arg2;
		glob0[arg0][504] = arg3;
		glob0[arg0][505] = arg4;
	}
	return 0.0;
}

public FS_MoveButton(arg0, Float:arg1, Float:arg2, Float:arg3, Float:arg4)
{
	if(FS_IsValidButton(arg0))
	{
		MoveObject(glob0[arg0][506], arg1, arg2, arg3, arg4);
		glob0[arg0][1] = 1;
		glob0[arg0][502] = 1203982323;
		glob0[arg0][503] = 1203982323;
		glob0[arg0][504] = 1203982323;
	}
	return 0;
}

public FS_StopButton(arg0)
{
	if(FS_IsValidButton(arg0))
	{
		StopObject(glob0[arg0][506]);
	}
	return 0;
}

public FS_IsValidButton(arg0)
{
	return 0;
}

public FS_GetHighestButtonID()
{
	if(glob0[arg0][0])
	{
	}
	if(arg0 <= 50)
	{
	}
	if(0 < --var0)
	{
		if(glob0[var0][0])
		{
			return var0;
		}
	}
	else
	{
	}
	return -1;
}

public Float:FS_GetButtonObjectID(arg0)
{
	return (FS_IsValidButton(arg0) ? glob0[arg0][506] : 0.0);
}

public FS_GetObjectButtonID(arg0)
{
	for(new var0 = 1, new var1, new var2 = 0, FS_GetHighestButtonID(), var1 = FS_GetHighestButtonID(); var0 <= var1; var0++)
	{
		if(glob0[var0][0] && glob0[var0][506] == arg0)
		{
			return var0;
		}
	}
	return -1;
}

public FS_PrintButtonsInfos()
{
	print("\n ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿\n ³                   Buttons Informations                  ³\n ÃÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄ´\n ³ButtonID³ObjectID³    X    ³    Y    ³    Z    ³    A    ³\n ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄ´");
	for(new var0 = 1; var0 <= 50; var0++)
	{
		if(glob0[var0][0])
		{
			printf(" ³%8d³%8d³%6.2f³%6.2f³%6.2f³%6.2f³", var0, glob0[var0][506], glob0[var0][502], glob0[var0][503], glob0[var0][504], glob0[var0][505]);
		}
	}
	print(" ÀÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÙ\n");
	return 0;
}

public Float:FS_GetDistanceToButton(arg0, arg1, arg2, arg3)
{
	if(FS_IsValidButton(arg0))
	{
		new Float:var0[3];
		var0[0] = arg1;
		var0[1] = arg2;
		var0[2] = arg3;
		return functionB0(var0, glob0[arg0], 1);
	}
	return -1.0;
}

public FS_TeleportPlayerToButton(playerid, arg1)
{
	if(FS_IsValidButton(arg1) && !glob0[arg1][1])
	{
		new var0 = glob0[arg1][505];
		SetPlayerPos(playerid, glob0[arg1][502] - (0.6499 * floatsin(-var0, 1)), glob0[arg1][503] - (0.6499 * floatcos(-var0, 1)), glob0[arg1][504] - 0.6299);
		SetPlayerFacingAngle(playerid, -var0);
		SetCameraBehindPlayer(playerid);
	}
	return 0;
}

public FS_ToggleButtonEnabledForPlayer(arg0, arg1, arg2)
{
	if(FS_IsValidButton(arg1))
	{
		glob0[arg1][arg0] = arg2;
	}
	return 0;
}

public FS_ToggleButtonEnabled(arg0, arg1)
{
	if(FS_IsValidButton(arg0))
	{
		new var0 = 0;
		while(++var0 < 500)
		{
			glob0[arg0][var0] = arg1;
		}
	}
	return 0;
}

public OnPlayerPressButton_Delay(playerid, arg1)
{
	PlayerPlaySound(playerid, 1083, 0.0, 0.0, 0.0);
	CallRemoteFunction(105324, 105404, playerid, arg1);
	return 0;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(GetPlayerState(playerid) == 1)
	{
		if(newkeys & 16)
		{
			new Float:var0 = 0.0, Float:var1 = 0.0, Float:var2[3], var3 = 0;
			GetPlayerPos(playerid, var2, var2, var2);
			var3 = function694(var2, var0);
			if(-1 != var3 && glob0[var3][playerid] && var0 <= 1.2999)
			{
				var1 = function324(var2, glob0[var3]);
				SetPlayerFacingAngle(playerid, var1);
				SetPlayerPos(playerid, glob0[var3][502] - (0.6499 * floatsin(-var1, 1)), glob0[var3][503] - (0.6499 * floatcos(-var1, 1)), glob0[var3][504] - 0.6299);
				ApplyAnimation(playerid, "HEIST9", "Use_SwipeCard", 9.0, 0, 0, 0, 0, 0, 0);
				SetTimerEx("OnPlayerPressButton_Delay", 500, false, "ii", playerid, var3);
			}
		}
	}
	return 0;
}

public OnObjectMoved(objectid)
{
	new var0 = FS_GetObjectButtonID(objectid);
	if(-1 != var0)
	{
		new Float:var1[3];
		GetObjectPos(objectid, var1, var1, var1);
		glob0[var0][502] = var1[0];
		glob0[var0][503] = var1[1];
		glob0[var0][504] = var1[2];
		glob0[var0][1] = 0;
		CallRemoteFunction(105616, 105672, var0);
	}
	return 0;
}

public OnPlayerConnect(playerid)
{
	ApplyAnimation(playerid, "HEIST9", "Use_SwipeCard", 10.0, 0, 0, 0, 0, 0, 0);
	return 0;
}

public OnGameModeInit()
{
	return 1;
}

public OnGameModeExit()
{
	for(new var0 = 1; var0 <= 50; var0++)
	{
		if(glob0[var0][0])
		{
			FS_DestroyButton(var0);
		}
	}
	return 1;
}

