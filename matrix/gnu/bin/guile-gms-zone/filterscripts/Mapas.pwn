#include <a_samp>
#include <streamer>

#pragma	tabsize	(0)

#define	COLOR_WHITE     0xFFFFFF00
#define	COLOR_AMARILLO  0xFFFF00FF
#define COLOR_ROJO 		0xEB0000FF

AntiDeAMX()
{
	new a[][] =
	{
    	"Unarmed (Fist)",
    	"Brass K"
	};
	#pragma unused a
}
new fso_map;

public OnPlayerConnect(playerid)
{
	//Exterior Mercado Negro
	RemoveBuildingForPlayer(playerid, 620, 2121.510, -1909.530, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 2122.659, -1916.790, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 2115.669, -1922.770, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 2116.929, -1916.079, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 2113.399, -1925.040, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 2123.360, -1928.069, 6.843, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 2114.550, -1928.189, 5.031, 0.250);
	//Algo del job de trailero
	RemoveBuildingForPlayer(playerid, 3377, -207.6563, -246.7344, 1.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 3377, -196.7188, -246.1641, 1.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 3378, -207.6563, -246.7344, 1.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 3378, -196.7188, -246.1641, 1.5781, 0.25);

	RemoveBuildingForPlayer(playerid, 12934, -184.5781, -289.8984, 3.7109, 0.25);
	//Base SAEM
	RemoveBuildingForPlayer(playerid, 3301, -216.8750, 2770.1484, 63.5703, 0.25);
	RemoveBuildingForPlayer(playerid, 3301, -282.2266, 2719.2578, 63.5703, 0.25);
	RemoveBuildingForPlayer(playerid, 3300, -264.0234, 2766.4063, 62.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 3300, -166.1328, 2731.0859, 63.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 3299, -195.6016, 2768.7578, 61.4844, 0.25);
	RemoveBuildingForPlayer(playerid, 3299, -314.1875, 2720.6406, 62.2109, 0.25);
	RemoveBuildingForPlayer(playerid, 3298, -258.8438, 2786.1484, 62.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 3298, -165.3906, 2708.1016, 62.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 3297, -229.2500, 2809.9453, 62.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 3297, -147.7891, 2684.8125, 63.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 3345, -167.6797, 2767.1328, 61.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 3343, -154.5547, 2761.0078, 61.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 3342, -275.1797, 2738.4844, 61.3047, 0.25);
	RemoveBuildingForPlayer(playerid, 3341, -289.7422, 2758.2344, 61.0625, 0.25);
	RemoveBuildingForPlayer(playerid, 16761, -312.2422, 2646.3750, 62.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 16762, -327.6094, 2678.5469, 61.6328, 0.25);
	RemoveBuildingForPlayer(playerid, 16763, -279.7188, 2650.2109, 61.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 16764, -288.8359, 2682.4297, 61.6563, 0.25);
	RemoveBuildingForPlayer(playerid, 16765, -227.4531, 2716.3516, 62.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 16012, -264.6719, 2596.5703, 61.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 955, -253.7422, 2597.9531, 62.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 956, -253.7422, 2599.7578, 62.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 16019, -352.1484, 2648.0547, 64.3672, 0.25);
	RemoveBuildingForPlayer(playerid, 16399, -312.2422, 2646.3750, 62.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 16398, -279.7188, 2650.2109, 61.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 16402, -318.2891, 2650.2422, 69.0156, 0.25);
	RemoveBuildingForPlayer(playerid, 1223, -251.5469, 2647.3672, 61.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 16401, -271.9688, 2662.1953, 61.5859, 0.25);
	RemoveBuildingForPlayer(playerid, 16776, -237.0234, 2662.8359, 62.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 1340, -197.4922, 2659.9141, 62.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 16062, -222.6641, 2663.3047, 66.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 16063, -222.3438, 2663.4531, 71.0156, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -206.6328, 2672.2422, 61.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -278.9688, 2679.0234, 61.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 16400, -327.6094, 2678.5469, 61.6328, 0.25);
	RemoveBuildingForPlayer(playerid, 16396, -288.8359, 2682.4297, 61.6563, 0.25);
	RemoveBuildingForPlayer(playerid, 16020, -155.1797, 2635.5078, 63.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 1223, -192.7422, 2648.8047, 61.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -156.0234, 2675.2031, 61.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -368.7266, 2697.9531, 63.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -333.5000, 2694.3672, 62.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -283.9453, 2695.3203, 61.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 1223, -270.3125, 2695.6953, 61.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 1223, -293.9297, 2695.6953, 61.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 672, -243.0313, 2688.3047, 62.4844, 0.25);
	RemoveBuildingForPlayer(playerid, 1223, -251.5469, 2688.8672, 61.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -356.8438, 2707.4219, 62.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 3334, -413.9766, 2706.6641, 65.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -307.9922, 2707.6563, 61.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -263.1563, 2711.1250, 61.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 16013, -286.2266, 2709.7266, 73.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 1223, -245.0078, 2706.7109, 61.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 3284, -282.2266, 2719.2578, 63.5703, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -333.5703, 2719.3516, 61.8672, 0.25);
	RemoveBuildingForPlayer(playerid, 3283, -314.1875, 2720.6406, 62.2109, 0.25);
	RemoveBuildingForPlayer(playerid, 672, -240.8359, 2737.1484, 62.4844, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -267.9453, 2732.0469, 61.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 3173, -275.1797, 2738.4844, 61.3047, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -249.9141, 2744.0859, 61.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -269.6953, 2750.4609, 61.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 3170, -289.7422, 2758.2344, 61.0625, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -297.8047, 2755.1875, 61.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -267.1719, 2758.3594, 61.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 3285, -264.0234, 2766.4063, 62.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 3241, -258.8438, 2786.1484, 62.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 672, -245.3125, 2781.4922, 62.3672, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -242.0313, 2789.3438, 61.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -232.1641, 2685.2734, 61.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -238.6016, 2695.5469, 61.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 1223, -229.0469, 2695.6953, 61.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -202.5703, 2687.9688, 61.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -215.6328, 2695.3125, 61.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 1223, -211.5938, 2695.6953, 61.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 1223, -192.7422, 2688.7969, 61.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -193.6406, 2708.7188, 61.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 1223, -198.8516, 2706.7109, 61.6094, 0.25);
	RemoveBuildingForPlayer(playerid, 16622, -190.8359, 2707.5859, 73.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 16011, -227.4531, 2716.3516, 62.1719, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -209.7734, 2745.3906, 61.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -231.2813, 2757.4297, 61.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 16014, -228.8359, 2751.6094, 72.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 3284, -216.8750, 2770.1484, 63.5703, 0.25);
	RemoveBuildingForPlayer(playerid, 3283, -195.6016, 2768.7578, 61.4844, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -230.4531, 2775.3359, 61.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 672, -213.2891, 2787.9297, 61.9219, 0.25);
	RemoveBuildingForPlayer(playerid, 16015, -235.7891, 2782.9375, 73.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 3242, -229.2500, 2809.9453, 62.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -211.9609, 2805.6641, 61.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 3241, -165.3906, 2708.1016, 62.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -155.0938, 2711.2344, 61.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -177.5078, 2687.7188, 61.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 3285, -166.1328, 2731.0859, 63.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -181.1953, 2728.2109, 61.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -164.1641, 2754.7656, 61.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -168.4844, 2740.5547, 61.3672, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -186.6563, 2753.1406, 61.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 3172, -167.6797, 2767.1328, 61.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -174.5547, 2769.4609, 61.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 3168, -154.5547, 2761.0078, 61.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 3242, -147.7891, 2684.8125, 63.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -150.2734, 2700.0781, 61.1484, 0.25);
	//Remove Buildings///////////////////////////////////////////////////////////////////////////////////////////////
	RemoveBuildingForPlayer(playerid, 4832, 1610.796, -2285.835, 52.750, 0.250);
	RemoveBuildingForPlayer(playerid, 4948, 1610.796, -2285.835, 52.750, 0.250);
	RemoveBuildingForPlayer(playerid, 1525, 1624.625, -2296.242, 14.312, 0.250);
	RemoveBuildingForPlayer(playerid, 712, 1619.507, -2267.203, 20.179, 0.250);
	RemoveBuildingForPlayer(playerid, 712, 1619.507, -2305.812, 20.179, 0.250);
	RemoveBuildingForPlayer(playerid, 712, 1650.796, -2271.195, 5.234, 0.250);
	RemoveBuildingForPlayer(playerid, 712, 1650.789, -2303.531, 5.234, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1653.960, -2267.734, -4.023, 0.250);
	RemoveBuildingForPlayer(playerid, 4992, 1654.539, -2286.804, 13.320, 0.250);
	RemoveBuildingForPlayer(playerid, 1226, 1658.164, -2271.890, 8.742, 0.250);
	//Taller Tunning
	RemoveBuildingForPlayer(playerid, 3244, 2535.093, -2131.875, 12.992, 0.250);
	RemoveBuildingForPlayer(playerid, 3244, 2532.031, -2074.625, 12.992, 0.250);
	RemoveBuildingForPlayer(playerid, 3289, 2484.414, -2141.007, 12.187, 0.250);
	RemoveBuildingForPlayer(playerid, 3289, 2496.062, -2141.007, 12.187, 0.250);
	RemoveBuildingForPlayer(playerid, 3290, 2503.125, -2073.375, 12.429, 0.250);
	RemoveBuildingForPlayer(playerid, 3290, 2515.421, -2073.375, 12.406, 0.250);
	RemoveBuildingForPlayer(playerid, 3288, 2432.726, -2133.023, 12.453, 0.250);
	RemoveBuildingForPlayer(playerid, 3686, 2448.132, -2075.632, 16.046, 0.250);
	RemoveBuildingForPlayer(playerid, 3745, 2475.101, -2073.476, 17.820, 0.250);
	RemoveBuildingForPlayer(playerid, 3745, 2482.023, -2073.476, 17.820, 0.250);
	RemoveBuildingForPlayer(playerid, 3745, 2489.101, -2073.476, 17.820, 0.250);
	RemoveBuildingForPlayer(playerid, 3745, 2496.093, -2073.476, 17.820, 0.250);
	RemoveBuildingForPlayer(playerid, 3290, 2452.960, -2129.015, 25.273, 0.250);
	RemoveBuildingForPlayer(playerid, 3756, 2484.234, -2118.554, 17.703, 0.250);
	RemoveBuildingForPlayer(playerid, 3755, 2484.234, -2118.554, 17.703, 0.250);
	RemoveBuildingForPlayer(playerid, 5295, 2413.054, -2106.421, 23.054, 0.250);
	RemoveBuildingForPlayer(playerid, 5367, 2413.054, -2106.421, 23.054, 0.250);
	RemoveBuildingForPlayer(playerid, 3257, 2432.726, -2133.023, 12.453, 0.250);
	RemoveBuildingForPlayer(playerid, 3258, 2484.414, -2141.007, 12.187, 0.250);
	RemoveBuildingForPlayer(playerid, 3258, 2496.062, -2141.007, 12.187, 0.250);
	RemoveBuildingForPlayer(playerid, 3256, 2452.960, -2129.015, 25.273, 0.250);
	RemoveBuildingForPlayer(playerid, 3567, 2446.828, -2075.843, 13.257, 0.250);
	RemoveBuildingForPlayer(playerid, 3567, 2438.359, -2075.843, 13.257, 0.250);
	RemoveBuildingForPlayer(playerid, 3627, 2448.132, -2075.632, 16.046, 0.250);
	RemoveBuildingForPlayer(playerid, 3643, 2489.101, -2073.476, 17.820, 0.250);
	RemoveBuildingForPlayer(playerid, 3643, 2482.023, -2073.476, 17.820, 0.250);
	RemoveBuildingForPlayer(playerid, 3643, 2475.101, -2073.476, 17.820, 0.250);
	RemoveBuildingForPlayer(playerid, 3643, 2496.093, -2073.476, 17.820, 0.250);
	RemoveBuildingForPlayer(playerid, 3256, 2515.421, -2073.375, 12.406, 0.250);
	RemoveBuildingForPlayer(playerid, 3256, 2503.125, -2073.375, 12.429, 0.250);
	//Tienda DP
	RemoveBuildingForPlayer(playerid, 620, 1210.312, -1559.000, 12.406, 0.250);
	RemoveBuildingForPlayer(playerid, 1231, 1218.281, -1554.085, 15.234, 0.250);
	RemoveBuildingForPlayer(playerid, 792, 1219.851, -1561.335, 12.617, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1210.648, -1546.812, 12.406, 0.250);
	RemoveBuildingForPlayer(playerid, 1231, 1218.281, -1540.945, 15.234, 0.250);
	RemoveBuildingForPlayer(playerid, 792, 1219.851, -1547.898, 12.617, 0.250);
	RemoveBuildingForPlayer(playerid, 792, 1219.851, -1534.468, 12.617, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1210.718, -1525.437, 12.406, 0.250);
	RemoveBuildingForPlayer(playerid, 1231, 1218.281, -1528.398, 15.234, 0.250);
	RemoveBuildingForPlayer(playerid, 792, 1219.851, -1521.367, 12.617, 0.250);
	//
	//new fabricas
    RemoveBuildingForPlayer(playerid, 11012, -2166.8672, -236.5078, 40.8672, 0.25);
	RemoveBuildingForPlayer(playerid, 11088, -2166.8750, -236.5156, 40.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 11270, -2166.8672, -236.5078, 40.8672, 0.25);
	RemoveBuildingForPlayer(playerid, 11271, -2127.5469, -269.9609, 41.0000, 0.25);
	RemoveBuildingForPlayer(playerid, 11282, -2166.8750, -236.5156, 40.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 11081, -2127.5469, -269.9609, 41.0000, 0.25);
	RemoveBuildingForPlayer(playerid, 7146, 2379.8906, 2760.7344, 13.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 7185, 2296.4609, 2810.4766, 15.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 7186, 2296.4609, 2810.4766, 15.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 1358, 2332.6172, 2785.8594, 11.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 1365, 2338.2891, 2787.0469, 10.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 1344, 2361.7969, 2793.0156, 10.6172, 0.25);
	RemoveBuildingForPlayer(playerid, 1344, 2361.1016, 2783.2188, 10.6172, 0.25);
	RemoveBuildingForPlayer(playerid, 1344, 2361.2422, 2781.7656, 10.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1365, 2366.0781, 2797.5313, 10.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 1344, 2374.3516, 2759.8750, 10.6328, 0.25);
	RemoveBuildingForPlayer(playerid, 1365, 2372.6719, 2797.5313, 10.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 1344, 2377.2109, 2759.4453, 10.6172, 0.25);
	RemoveBuildingForPlayer(playerid, 7020, 2379.8906, 2760.7344, 13.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 1344, 2379.2578, 2759.4063, 10.6328, 0.25);
	RemoveBuildingForPlayer(playerid, 1365, 2383.8281, 2757.9844, 10.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 1358, 2388.8125, 2758.6719, 11.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 1503, 2424.1563, 2808.0781, 10.2109, 0.25);
	RemoveBuildingForPlayer(playerid, 18609, -1951.2188, -2441.1484, 30.7109, 0.25);
	RemoveBuildingForPlayer(playerid, 18568, -2061.1875, -2365.9531, 30.3281, 0.25);
	RemoveBuildingForPlayer(playerid, 18566, -2029.5547, -2389.0391, 30.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 18569, -2048.4297, -2373.6094, 30.7109, 0.25);
	RemoveBuildingForPlayer(playerid, 18567, -2018.2500, -2400.5391, 30.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 18565, -2000.6328, -2372.5547, 30.7109, 0.25);
	RemoveBuildingForPlayer(playerid, 13080, 1220.0000, 162.6875, 22.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 13485, 1304.3047, 330.1563, 23.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 1687, 1207.8828, 156.4297, 26.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1688, 1208.8750, 159.1875, 26.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 1689, 1221.4844, 148.0313, 26.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 13078, 1220.0000, 162.6875, 22.8438, 0.25);
	RemoveBuildingForPlayer(playerid, 1689, 1219.4844, 175.8438, 26.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, 1207.8594, 177.5234, 19.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, 1201.8438, 179.5703, 19.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 1688, 1229.1953, 164.8906, 26.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 1687, 1228.2109, 162.1328, 26.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 17349, -542.0078, -522.8438, 29.5938, 0.25);
	RemoveBuildingForPlayer(playerid, 17019, -606.0313, -528.8203, 30.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 1278, -573.0547, -559.6953, 38.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 1278, -533.5391, -559.6953, 38.5469, 0.25);
	RemoveBuildingForPlayer(playerid, 1415, -541.4297, -561.2266, 24.5859, 0.25);
	RemoveBuildingForPlayer(playerid, 17012, -542.0078, -522.8438, 29.5938, 0.25);
	RemoveBuildingForPlayer(playerid, 1415, -513.7578, -561.0078, 24.5859, 0.25);
	RemoveBuildingForPlayer(playerid, 1441, -503.6172, -540.5313, 25.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 1415, -502.6094, -528.6484, 24.5859, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, -502.1172, -521.0313, 25.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1441, -502.4063, -513.0156, 25.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 1415, -620.4141, -490.5078, 24.5859, 0.25);
	RemoveBuildingForPlayer(playerid, 1415, -619.6250, -473.4531, 24.5859, 0.25);
	RemoveBuildingForPlayer(playerid, 1278, -573.0547, -479.9219, 38.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 1278, -552.7656, -479.9219, 38.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, -553.6875, -481.6328, 25.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1441, -554.4531, -496.1797, 25.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1441, -537.0391, -469.1172, 25.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 1278, -532.4688, -479.9219, 38.6484, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, -516.9453, -496.6484, 25.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, -503.1250, -509.0000, 25.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1278, -512.1641, -479.9219, 38.5938, 0.25);
	RemoveBuildingForPlayer(playerid, 1278, -491.8594, -479.9219, 38.5859, 0.25);
	RemoveBuildingForPlayer(playerid, 17020, -475.9766, -544.8516, 28.1172, 0.25);
	RemoveBuildingForPlayer(playerid, 1278, -471.5547, -479.9219, 38.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 11007, -2164.4531, -248.0000, 40.7813, 0.25);
	RemoveBuildingForPlayer(playerid, 11085, -2164.4531, -237.6172, 41.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 11086, -2164.4531, -237.3906, 43.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 11087, -2143.2266, -261.2422, 38.0938, 0.25);
	RemoveBuildingForPlayer(playerid, 11089, -2185.5234, -263.9297, 38.7656, 0.25);
	RemoveBuildingForPlayer(playerid, 11090, -2158.8203, -266.2344, 36.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 1432, -2144.8281, -244.7656, 35.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -2188.6953, -218.3828, 35.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1441, -2184.6484, -226.8750, 36.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1449, -2160.6406, -226.3516, 36.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1450, -2189.4375, -220.4922, 36.0859, 0.25);
	RemoveBuildingForPlayer(playerid, 1518, -2147.1797, -241.8750, 36.7422, 0.25);
	RemoveBuildingForPlayer(playerid, 918, -2182.4453, -237.6953, 35.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 931, -2154.2031, -254.2422, 36.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 936, -2139.5078, -244.7813, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 937, -2147.2109, -242.0156, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 939, -2179.3359, -239.0859, 37.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 941, -2175.0547, -248.0469, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 942, -2159.0625, -239.0625, 37.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 941, -2171.5000, -248.0469, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 941, -2167.9688, -248.0469, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 941, -2164.3281, -248.0469, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 941, -2161.0156, -248.0469, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 941, -2157.4453, -248.0469, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 920, -2139.6172, -252.0859, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 943, -2156.0703, -227.7500, 36.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 944, -2188.5234, -236.8047, 36.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 942, -2174.8281, -235.5625, 37.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 944, -2153.7969, -229.0391, 36.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 944, -2146.2656, -238.4063, 36.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 942, -2140.3359, -229.1484, 37.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 939, -2140.2266, -237.5078, 37.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 944, -2171.1016, -235.7031, 36.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 944, -2145.1641, -234.1719, 36.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 944, -2146.0234, -228.5000, 36.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 944, -2149.8750, -229.7188, 36.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 942, -2164.2031, -236.0234, 37.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 931, -2142.5547, -241.9375, 36.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 918, -2153.0859, -256.2734, 35.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 944, -2177.5391, -259.8281, 36.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 944, -2175.7500, -266.3359, 36.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 943, -2150.5078, -266.3594, 36.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 945, -2157.1563, -248.0078, 45.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 945, -2164.1016, -248.0078, 45.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 945, -2167.7813, -248.0078, 45.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 945, -2171.2266, -248.0078, 45.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 945, -2174.7969, -248.0078, 45.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 945, -2160.7031, -248.0078, 45.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -2164.2188, -231.1563, 35.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 944, -2146.0625, -251.0078, 36.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 944, -2180.3906, -247.4609, 36.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 918, -2173.5938, -268.0781, 40.0781, 0.25);
	RemoveBuildingForPlayer(playerid, 918, -2148.4922, -230.8047, 35.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 918, -2143.4688, -230.3438, 35.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 918, -2167.8281, -246.0859, 35.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 11103, -2180.7031, -218.0391, 37.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 11233, -2164.4531, -255.3906, 38.1250, 0.25);
	RemoveBuildingForPlayer(playerid, 11234, -2180.4531, -251.4688, 37.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 11235, -2180.4531, -261.2891, 37.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 11236, -2164.4531, -255.3906, 38.1250, 0.25);
	//Sodas
	RemoveBuildingForPlayer(playerid, 1302, 0.0, 0.0, 0.0, 6000.0);
	RemoveBuildingForPlayer(playerid, 1209, 0.0, 0.0, 0.0, 6000.0);
	RemoveBuildingForPlayer(playerid, 955, 0.0, 0.0, 0.0, 6000.0);
	RemoveBuildingForPlayer(playerid, 956, 0.0, 0.0, 0.0, 6000.0);
	RemoveBuildingForPlayer(playerid, 1775, 0.0, 0.0, 0.0, 6000.0);
	RemoveBuildingForPlayer(playerid, 1776, 0.0, 0.0, 0.0, 6000.0);
	RemoveBuildingForPlayer(playerid, 1977, 0.0, 0.0, 0.0, 6000.0);
	//sala de entrevista
    RemoveBuildingForPlayer(playerid, 1721, -2034.8047, -117.4531, 1034.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 2190, -2033.8047, -116.8828, 1034.9609, 0.25);
    // Concesionario Perehing Square
	RemoveBuildingForPlayer(playerid, 4024, 1479.8672, -1790.3984, 56.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 4044, 1481.1875, -1785.0703, 22.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 1527, 1448.2344, -1755.8984, 14.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 1231, 1432.3047, -1832.9141, 15.2891, 0.25);
	RemoveBuildingForPlayer(playerid, 4002, 1479.8672, -1790.3984, 56.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 3980, 1481.1875, -1785.0703, 22.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 4003, 1481.0781, -1747.0313, 33.5234, 0.25);
	//Vestuario LSPD
	RemoveBuildingForPlayer(playerid, 3396, 275.3125, 1874.2422, 7.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 3384, 278.0938, 1869.1016, 9.1797, 0.25);
	RemoveBuildingForPlayer(playerid, 3384, 278.0938, 1870.3359, 9.1797, 0.25);
	RemoveBuildingForPlayer(playerid, 3387, 271.2500, 1869.6953, 7.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 3388, 271.2266, 1870.9297, 7.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 3386, 271.2656, 1868.1875, 7.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 3395, 280.3281, 1874.2344, 7.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 3384, 276.5938, 1868.9609, 9.1797, 0.25);
	RemoveBuildingForPlayer(playerid, 3384, 276.5938, 1870.1953, 9.1797, 0.25);
	// Casas de robo
	RemoveBuildingForPlayer(playerid, 3548, 1345.1172, 2612.5703, 12.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 3443, 1345.1172, 2612.5703, 12.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 3548, 1667.4375, 2612.5703, 12.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 3443, 1667.4375, 2612.5703, 12.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 3300, -1464.3438, 2656.5000, 56.6484, 0.25);
	RemoveBuildingForPlayer(playerid, 3341, -1446.4531, 2639.3516, 54.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 3342, -1447.2344, 2653.3047, 54.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 11460, -1523.2891, 2618.5938, 65.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 672, -1454.2734, 2640.1406, 55.8281, 0.25);
	RemoveBuildingForPlayer(playerid, 11461, -1466.0313, 2637.5938, 54.3906, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -1457.8672, 2648.9922, 55.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -1436.1094, 2607.3906, 55.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 3170, -1446.4531, 2639.3516, 54.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -1438.6719, 2630.0234, 55.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 700, -1441.7891, 2647.3281, 55.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 3173, -1447.2344, 2653.3047, 54.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 3285, -1464.3438, 2656.5000, 56.6484, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, -1436.1016, 2655.4766, 55.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 1535, 2482.6484, -1994.9609, 12.9141, 0.25);
	RemoveBuildingForPlayer(playerid, 5341, 2489.5156, -1987.4219, 14.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 3669, 1762.4453, -2096.7109, 15.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 3634, 1762.4453, -2096.7109, 15.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 3840, -2728.2422, -159.9297, 8.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 3826, -2728.2422, -159.9297, 8.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 3840, -2728.2734, -55.3281, 8.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 3826, -2728.2734, -55.3281, 8.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 3654, 2372.6875, -1132.3359, 29.8984, 0.25);
	RemoveBuildingForPlayer(playerid, 3649, 2372.6875, -1132.3359, 29.8984, 0.25);
	RemoveBuildingForPlayer(playerid, 17907, 2426.1641, -1110.0938, 43.4844, 0.25);
	RemoveBuildingForPlayer(playerid, 3460, 940.3828, 1957.7109, 13.7656, 0.25);
	RemoveBuildingForPlayer(playerid, 10511, -2276.3438, -14.9219, 40.2969, 0.25);
	RemoveBuildingForPlayer(playerid, 10369, -2276.3438, -14.9219, 40.2969, 0.25);
	//Barreras de Rutas
	RemoveBuildingForPlayer(playerid, 1308, -1198.9453, -717.8125, 55.8438, 0.25);
	//Blueberry
	RemoveBuildingForPlayer(playerid, 13191, 65.2578, -303.9844, 14.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 13195, 36.8281, -256.2266, 0.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 1426, 29.1719, -292.2734, 1.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 1431, 36.4297, -291.0625, 1.5703, 0.25);
	RemoveBuildingForPlayer(playerid, 1426, 24.5938, -291.7578, 1.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, 29.2344, -286.0547, 1.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, 32.4063, -289.2188, 1.6484, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, 33.6016, -279.3516, 1.1172, 0.25);
	RemoveBuildingForPlayer(playerid, 12861, 36.8281, -256.2266, 0.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 1450, 43.4844, -252.5703, 1.2031, 0.25);
	RemoveBuildingForPlayer(playerid, 1449, 43.1094, -254.9609, 1.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 12805, 65.2578, -303.9844, 14.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 12956, 96.3281, -261.1953, 3.8594, 0.25);
	//Mercado, Rutas, etc
	RemoveBuildingForPlayer(playerid, 13191, 65.2578, -303.9844, 14.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 13192, 164.7109, -234.1875, 0.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 13195, 36.8281, -256.2266, 0.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 12861, 36.8281, -256.2266, 0.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 12805, 65.2578, -303.9844, 14.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 12956, 96.3281, -261.1953, 3.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 12860, 164.7109, -234.1875, 0.4766, 0.25);
	//Restaurante
	RemoveBuildingForPlayer(playerid, 1432, -788.4766, 491.1641, 1375.2891, 0.25);
	RemoveBuildingForPlayer(playerid, 1432, -787.2500, 497.7656, 1375.2891, 0.25);
	RemoveBuildingForPlayer(playerid, 1432, -787.4766, 504.5938, 1370.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 1432, -790.6016, 509.0391, 1370.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 1432, -787.8203, 509.0469, 1370.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 1432, -783.0078, 509.0156, 1370.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 1432, -779.8750, 509.0547, 1370.8594, 0.25);
	//Casa
	RemoveBuildingForPlayer(playerid, 13744, 1272.5938, -803.1094, 86.3594, 0.25);
	//LVPD
	RemoveBuildingForPlayer(playerid, 14856, 198.4688, 168.6797, 1003.8984, 0.25);
	RemoveBuildingForPlayer(playerid, 1771, 190.6406, 174.7422, 1002.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 1771, 194.8750, 174.7422, 1002.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 1771, 199.1328, 174.7422, 1002.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 1771, 188.4922, 162.0234, 1002.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 1771, 192.7266, 162.0234, 1002.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 1771, 196.9844, 162.0234, 1002.6875, 0.25);
	//Combustible Aereo LV
	RemoveBuildingForPlayer(playerid, 8376, 1325.2188, 1538.5469, 11.8984, 0.25);
	RemoveBuildingForPlayer(playerid, 7980, 1325.2188, 1538.5469, 11.8984, 0.25);
	//Basurero
	RemoveBuildingForPlayer(playerid, 693, -184.8750, -1587.8516, 8.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 790, -141.2813, -1618.9531, 5.7109, 0.25);
	RemoveBuildingForPlayer(playerid, 790, -130.3203, -1602.4922, 5.7109, 0.25);
	RemoveBuildingForPlayer(playerid, 670, -141.8906, -1584.0156, 6.3438, 0.25);
	RemoveBuildingForPlayer(playerid, 670, -111.7734, -1553.6875, 2.7422, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -79.2578, -1593.4688, 1.5000, 0.25);
	//Blue Berry
	RemoveBuildingForPlayer(playerid, 1308, 9.0234, 15.1563, -5.7109, 0.25);
	//Cantera
	RemoveBuildingForPlayer(playerid, 16359, 821.4063, 862.0781, 11.0391, 0.25);
	//Gasolineras que explotan
	RemoveBuildingForPlayer(playerid, 1676, 0.0, 0.0, 0.0, 6000.0);
	RemoveBuildingForPlayer(playerid, 1686, 0.0, 0.0, 0.0, 6000.0);
	//Comisaria
	RemoveBuildingForPlayer(playerid, 2204, 225.1094, 122.7422, 1009.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 2204, 225.1094, 125.9688, 1009.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 2210, 226.7891, 128.3984, 1009.2109, 0.25);
	//Interior casa
	RemoveBuildingForPlayer(playerid, 1739, 149.226593, 1381.523438, 1083.750000, 0.250000);
	RemoveBuildingForPlayer(playerid, 1739, 149.226593, 1380.546875, 1083.750000, 0.250000);
	RemoveBuildingForPlayer(playerid, 1739, 151.546906, 1380.546875, 1083.750000, 0.250000);
	RemoveBuildingForPlayer(playerid, 1739, 151.546906, 1381.523438, 1083.750000, 0.250000);
	RemoveBuildingForPlayer(playerid, 1739, 149.226593, 1382.742188, 1083.750000, 0.250000);
	RemoveBuildingForPlayer(playerid, 1739, 151.546906, 1382.656250, 1083.750000, 0.250000);
	RemoveBuildingForPlayer(playerid, 1739, 151.546906, 1383.750000, 1083.750000, 0.250000);
	RemoveBuildingForPlayer(playerid, 1739, 149.226593, 1383.820313, 1083.750000, 0.250000);
	//FBI Exterior
	RemoveBuildingForPlayer(playerid, 1307, 937.9375, -986.5391, 37.0313, 0.25);
	//FBI Interior
	RemoveBuildingForPlayer(playerid, 1502, 341.1328, 168.7969, 1018.9766, 0.25);
	//Avenida Hospital
	RemoveBuildingForPlayer(playerid, 673, 1405.7656, -1424.2500, 13.1797, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1409.7969, -1429.2734, 14.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1411.6250, -1430.1328, 13.1797, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1408.5313, -1425.3984, 14.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1409.8672, -1418.1328, 14.5000, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1411.5703, -1416.5391, 12.9063, 0.25);
	//Matas LSPD
	RemoveBuildingForPlayer(playerid, 6253, 1305.4688, -1619.7422, 13.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 6046, 1305.4688, -1619.7422, 13.3984, 0.25);
	//Conce SF
	RemoveBuildingForPlayer(playerid, 792, -1995.4766, 298.0859, 34.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 1278, -1996.7109, 238.7344, 48.6563, 0.25);
	// LSPD
	RemoveBuildingForPlayer(playerid, 1258, 1510.8906, -1607.3125, 13.6953, 0.25);
	return 0;
}
public OnFilterScriptInit()
{
	AntiDeAMX();
	//fabrica barril 1
    CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para retirar un tanque.", -1, -28.1522,2349.0771,24.1406, 1.5, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0,-1,100.0);
	CreateDynamicObject(931, -28.12510, 2350.26880, 24.11260,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3632, -28.89410, 2350.50317, 24.57990,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -28.09410, 2350.50317, 24.57990,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -27.29410, 2350.50317, 24.57990,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -28.09410, 2350.50317, 23.49990,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -28.89410, 2350.50317, 23.49990,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -27.29410, 2350.50317, 23.49990,   0.00000, 90.00000, 90.00000);
	//fabrica barril 2
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para retirar un tanque.", -1, -1862.2274,112.1568,15.1172, 1.5, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0,-1,100.0);
	CreateDynamicObject(931, -1862.18848, 110.96480, 15.06160,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3632, -1862.21606, 110.78170, 15.52000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -1861.31604, 110.78170, 15.52000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -1863.01611, 110.78170, 15.52000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -1863.01611, 110.78170, 14.46000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -1862.21606, 110.78170, 14.46000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -1861.31604, 110.78170, 14.46000,   0.00000, 90.00000, 90.00000);
	//fabrica barril 3
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para retirar un tanque.", -1, -1051.8615,1548.0118,33.4376, 1.5, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0,-1,100.0);
	CreateDynamicObject(3632, -1052.72217, 1545.96667, 32.96500,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3632, -1053.36621, 1546.76794, 32.96500,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3632, -1054.07861, 1547.71338, 32.96500,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3632, -1052.08411, 1546.48767, 32.96500,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3632, -1052.72815, 1547.28870, 32.96500,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3632, -1053.48840, 1548.24219, 32.96500,   0.00000, 0.00000, 0.00000);
	//fabrica barril 4
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para retirar un tanque.", -1, 260.2088,2890.1047,11.0993, 1.5, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0,-1,100.0);
	CreateDynamicObject(931, 261.16711, 2890.81860, 11.07290,   0.00000, 0.00000, -57.48000);
	CreateDynamicObject(3632, 260.92300, 2891.63403, 11.53290,   0.00000, 90.00000, 31.74000);
	CreateDynamicObject(3632, 261.66000, 2890.11621, 11.53290,   0.00000, 90.00000, 31.74000);
	CreateDynamicObject(3632, 261.34091, 2890.83423, 11.53290,   0.00000, 90.00000, 31.74000);
	CreateDynamicObject(3632, 261.34091, 2890.83423, 10.47290,   0.00000, 90.00000, 31.74000);
	CreateDynamicObject(3632, 261.66000, 2890.11621, 10.47290,   0.00000, 90.00000, 31.74000);
	CreateDynamicObject(3632, 260.92300, 2891.63403, 10.47290,   0.00000, 90.00000, 31.74000);
	//fabrica barril 5
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para retirar un tanque.", -1, -1106.3296,-1675.2111,76.3739, 1.5, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0,-1,100.0);
	CreateDynamicObject(931, -1107.52307, -1675.28638, 76.35530,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3632, -1107.32751, -1676.11975, 76.80260,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3632, -1107.25354, -1674.44128, 76.80260,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3632, -1107.37781, -1675.27625, 76.80260,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3632, -1107.37781, -1675.27625, 75.74260,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3632, -1107.25354, -1674.44128, 75.74260,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3632, -1107.32751, -1676.11975, 75.74260,   0.00000, 90.00000, 0.00000);
	//fabrica barril 6
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para retirar un tanque.", -1, -1506.4595,-633.1711,14.1484, 1.5, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0,-1,100.0);
	CreateDynamicObject(931, -1506.09070, -634.30408, 14.09560,   0.00000, 0.00000, -162.23991);
	CreateDynamicObject(3632, -1505.24915, -634.28003, 14.54110,   0.00000, 90.00000, -71.20000);
	CreateDynamicObject(3632, -1506.87109, -634.71753, 14.54110,   0.00000, 90.00000, -71.20000);
	CreateDynamicObject(3632, -1506.07971, -634.50421, 14.54110,   0.00000, 90.00000, -71.20000);
	CreateDynamicObject(3632, -1506.07971, -634.50421, 13.48110,   0.00000, 90.00000, -71.20000);
	CreateDynamicObject(3632, -1505.24915, -634.28003, 13.48110,   0.00000, 90.00000, -71.20000);
	CreateDynamicObject(3632, -1506.87109, -634.71753, 13.48110,   0.00000, 90.00000, -71.20000);
	//fabrica barril 7
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para retirar un tanque.", -1, -1661.9880,2555.5720,85.2760, 1.5, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0,-1,100.0);
	CreateDynamicObject(931, -1663.18164, 2555.41772, 85.24030,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3632, -1662.93213, 2555.48120, 85.69900,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3632, -1662.89221, 2554.60059, 85.69900,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3632, -1662.93213, 2556.28125, 85.69900,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3632, -1662.93213, 2556.28125, 84.63900,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3632, -1662.93213, 2555.48120, 84.63900,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3632, -1662.89221, 2554.60059, 84.63900,   0.00000, 90.00000, 0.00000);
	//fabrica barril 8
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para retirar un tanque.", -1, -377.2772,-1045.2987,59.0874, 1.5, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0,-1,100.0);
	CreateDynamicObject(931, -377.41971, -1044.11389, 59.07250,   0.00000, 0.00000, 4.20000);
	CreateDynamicObject(3632, -377.37930, -1044.08899, 59.52170,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -376.55981, -1044.11182, 59.52170,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -378.18039, -1044.15881, 59.52170,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -378.18039, -1044.15881, 58.46170,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -377.37930, -1044.08899, 58.46170,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -376.55981, -1044.11182, 58.46170,   0.00000, 90.00000, 90.00000);
	//fabrica barril 9
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para retirar un tanque.", -1, 1946.3438,151.7602,37.0120, 1.5, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0,-1,100.0);
	CreateDynamicObject(931, 1945.17615, 152.03188, 37.26615,   0.00000, 0.00000, 70.80002);
	CreateDynamicObject(3632, 1945.06165, 151.19820, 36.67400,   0.00000, 90.00000, -21.84000);
	CreateDynamicObject(3632, 1945.55725, 152.77541, 36.67400,   0.00000, 90.00000, -21.84000);
	CreateDynamicObject(3632, 1945.19226, 152.01697, 36.67400,   0.00000, 90.00000, -21.84000);
	CreateDynamicObject(3632, 1945.19226, 152.01700, 37.75400,   0.00000, 90.00000, -21.84000);
	CreateDynamicObject(3632, 1945.06165, 151.19820, 37.75400,   0.00000, 90.00000, -21.84000);
	CreateDynamicObject(3632, 1945.55725, 152.77541, 37.75400,   0.00000, 90.00000, -21.84000);
	//fabrica barril 10
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para retirar un tanque.", -1, 21.0083,901.5230,24.1700, 1.5, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0,-1,100.0);
	CreateDynamicObject(931, 20.93822, 902.71606, 24.19840,   0.00000, 0.00000, 7.74000);
	CreateDynamicObject(3632, 20.13590, 902.48370, 24.66050,   0.00000, 90.00000, 96.72000);
	CreateDynamicObject(3632, 21.82771, 902.65155, 24.66050,   0.00000, 90.00000, 96.72000);
	CreateDynamicObject(3632, 20.98610, 902.62323, 24.66050,   0.00000, 90.00000, 96.72000);
	CreateDynamicObject(3632, 20.98610, 902.62323, 23.58050,   0.00000, 90.00000, 96.72000);
	CreateDynamicObject(3632, 20.13590, 902.48370, 23.58050,   0.00000, 90.00000, 96.72000);
	CreateDynamicObject(3632, 21.82770, 902.65161, 23.58050,   0.00000, 90.00000, 96.72000);
	//fabrica barril 11
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para retirar un tanque.", -1, -772.6041,2428.4346,157.0908, 1.5, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0,-1,100.0);
	CreateDynamicObject(931, -772.53308, 2427.23877, 157.11040,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3632, -771.76288, 2427.45483, 157.57820,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -773.38458, 2427.45605, 157.57820,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -772.58307, 2427.38867, 157.57820,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -772.58313, 2427.38867, 156.49820,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -771.76288, 2427.45483, 156.49820,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3632, -773.38458, 2427.45605, 156.49820,   0.00000, 90.00000, 90.00000);
	//fabrica barril 12
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para retirar un tanque.", -1, 1055.1442,-295.8933,73.9851, 1.5, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0,-1,100.0);
	CreateDynamicObject(931, 1053.95239, -295.97281, 73.95870,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3632, 1054.07422, -296.77420, 74.40830,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3632, 1054.08472, -295.13376, 74.40830,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3632, 1054.09692, -295.93469, 74.40830,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3632, 1054.09692, -295.93469, 73.34830,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3632, 1054.08472, -295.13379, 73.34830,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3632, 1054.07422, -296.77420, 73.34830,   0.00000, 90.00000, 0.00000);
	//sala de sanción
	CreateDynamicObject(10230, -979.50909, -6655.33154, 9.00000,   0.00000, 0.00000, 0.00000, 0, -1);
	CreateDynamicObject(19377, -959.31342, -6651.32715, 8.36000,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(19377, -948.83862, -6651.32715, 8.36000,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(19377, -969.78589, -6651.32715, 8.36000,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(19377, -980.25708, -6651.32715, 8.36000,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(19377, -948.85162, -6660.95264, 8.36000,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(19377, -959.35382, -6660.95508, 8.36000,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(19377, -969.82739, -6660.92773, 8.36000,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(19377, -1001.21332, -6660.97119, 8.36000,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(19377, -990.81409, -6660.89160, 8.36000,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(19377, -980.31708, -6660.89160, 8.36000,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(19377, -1011.70428, -6660.97119, 8.36000,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(19377, -990.72302, -6651.32715, 8.36000,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(19377, -1001.21332, -6651.36719, 8.36000,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(19377, -1011.72321, -6651.35742, 8.36000,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(7017, -980.17261, -6666.15869, 8.44720,   -90.00000, 0.00000, 0.00000, 0, -1);
	CreateDynamicObject(7017, -980.02960, -6650.36719, 8.44720,   -90.00000, 0.00000, 0.00000, 0, -1);
	CreateDynamicObject(1391, -953.14600, -6656.83057, 39.00000,   0.00000, 0.00000, 0.00000, 0, -1);
	CreateDynamicObject(1379, -953.39410, -6656.59277, 52.00000,   0.00000, 0.00000, -90.00000, 0, -1);
	CreateDynamicObject(11703, -955.46802, -6656.61084, 60.59830,   5.00000, 0.00000, 90.00000, 0, -1);
	CreateDynamicObject(11401, -992.21338, -6656.63428, 59.49060,   0.00000, 0.00000, 0.00000, 0, -1);
	CreateDynamicObject(1381, -992.25842, -6656.62500, 57.76120,   0.00000, 0.00000, 0.00000, 0, -1);
	CreateDynamicObject(19454, -987.06042, -6651.95166, 56.80360,   0.00000, 90.00000, 90.00000, 0, -1);
	CreateDynamicObject(19377, -997.01678, -6651.51172, 56.80440,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(19377, -987.49719, -6661.89355, 56.80440,   0.00000, 90.00000, 0.00000, 0, -1);
	CreateDynamicObject(19454, -987.06042, -6648.46143, 56.80360,   0.00000, 90.00000, 90.00000, 0, -1);
	CreateDynamicObject(19454, -987.06042, -6655.37158, 56.80360,   0.00000, 90.00000, 90.00000, 0, -1);
	CreateDynamicObject(19454, -997.45398, -6658.07080, 56.80360,   0.00000, 90.00000, 90.00000, 0, -1);
	CreateDynamicObject(19454, -997.45398, -6661.55469, 56.80360,   0.00000, 90.00000, 90.00000, 0, -1);
	CreateDynamicObject(19454, -997.45398, -6664.95898, 56.80360,   0.00000, 90.00000, 90.00000, 0, -1);
	CreateObject(18857, -992.26031, -6656.68506, 54.31190,   0.00000, 0.00000, 0.00000);
	//new fabricas
	CreateObject(8545, 2386.70215, 2798.00000, 14.7530,   0.00000, 0.00000, 0.00000);
	CreateObject(18981, 1226.36914, 168.17130, 18.75570,   0.00000, 90.00000, 156.47990);
	CreateObject(18981, 1203.45593, 178.05659, 18.75570,   0.00000, 90.00000, 156.47990);
	CreateObject(8546, 1219.99915, 162.68225, 22.84000,   0.00000, 0.00000, 66.48000);
	//f - montgomery
	CreateObject(8545, -534.79474, -488.60934, 29.51300,   0.00000, 0.00000, 0.00000);
	CreateObject(11010, -606.20819, -543.22461, 30.43800,   0.00000, 0.00000, 90.00000);
	CreateObject(17021, -606.98657, -490.05493, 33.31790,   0.00000, 0.00000, 0.00000);
	CreateObject(5244, -475.31161, -540.67291, 26.96000,   0.00000, 0.00000, 90.00000);
	CreateObject(8883, -556.38507, -556.49957, 27.86000,   0.00000, 0.00000, 90.00000);
	CreateObject(8947, -479.61310, -507.82129, 27.56110,   0.00000, 0.00000, -90.00000);
	//f - sf
	CreateDynamicObject(16271, -2162.32886, -255.55710, 47.86000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(11081, -2182.63525, -234.71298, 40.98000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(5309, -2119.18677, -228.04922, 37.60000,   0.00000, 0.00000, 90.00000);
	CreateObject(18981, -2178.19092, -258.05820, 33.81500,   0.00000, 90.00000, 0.00000);
	CreateObject(18981, -2153.26123, -258.04688, 33.81500,   0.00000, 90.00000, 0.00000);
	CreateObject(18981, -2178.17920, -233.14850, 33.81500,   0.00000, 90.00000, 0.00000);
	CreateObject(18981, -2153.19312, -233.06630, 33.81500,   0.00000, 90.00000, 0.00000);
	CreateObject(18981, -2129.13574, -263.46155, 33.81500,   0.00000, 90.00000, 0.00000);
	CreateObject(18981, -2128.54932, -238.46306, 33.81500,   0.00000, 90.00000, 0.00000);
	CreateObject(18981, -2185.71997, -208.23981, 33.81500,   0.00000, 90.00000, 0.00000);
	CreateObject(18981, -2160.67798, -208.11031, 33.81500,   0.00000, 90.00000, 0.00000);
	CreateObject(18981, -2135.96118, -213.45039, 33.81500,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2178.43408, -275.35599, 34.22600,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2167.94531, -275.35599, 34.22600,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2157.52002, -275.35599, 34.22600,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2147.06812, -275.35599, 34.22600,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2136.62695, -275.35599, 34.22600,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2126.23267, -275.35599, 34.22600,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2188.83618, -275.35599, 34.22600,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2199.31812, -275.35599, 34.22600,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2195.93530, -265.72629, 34.22600,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2195.93530, -256.09921, 34.22600,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2195.93530, -246.50259, 34.22600,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2195.93530, -236.88341, 34.22600,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2195.93530, -227.20270, 34.22600,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2195.93530, -217.56790, 34.22600,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2195.96899, -208.04941, 34.22600,   0.00000, 90.00000, 0.00000);
	CreateObject(19377, -2196.17212, -204.54230, 34.22600,   0.00000, 90.00000, 0.00000);
	//f - AP
	CreateDynamicObject(1497, -1975.7380, -2433.8020, 29.6238,   0.00000, 0.00000, 45.42000);
	//sala de entrevista
	CreateDynamicObject(1714, -2035.38464, -117.45310, 1034.16406,   356.85840, 0.00000, 90.00000);
	CreateDynamicObject(1721, -2032.74475, -117.45310, 1034.16406,   356.85840, 0.00000, 90.00000);
	new actor_id = CreateDynamicActor(283, -2034.6785, -117.4712, 1035.1719, 	270.1886, 1, 100.0);
	ApplyDynamicActorAnimation(actor_id, "ped", "SEAT_down", 4.000000, 0, 0, 0, 1, 0);
	CreateDynamicObject(19384, -2029.69019, -113.15090, 1035.90479,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3089, -2030.45923, -113.12850, 1035.30664,   0.00000, 0.00000, 0.00000);
	// Concesionario Wang Cars LS
	CreateObject(11317, 1481.12000, -1785.51001, 23.69000,   0.00000, 0.00000, -90.00000);
	CreateObject(11317, 1450.14001, -1798.73999, 23.63000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(632, 1497.42004, -1765.10999, 13.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(632, 1493.07996, -1768.75000, 13.27000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(632, 1492.60999, -1765.22998, 13.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(632, 1488.89001, -1778.87000, 18.86000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(632, 1488.43994, -1778.93994, 13.28000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(632, 1477.56995, -1792.28003, 18.86000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(632, 1473.47998, -1790.42004, 13.27000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(632, 1499.68005, -1742.81006, 13.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(632, 1490.67004, -1742.78003, 13.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(632, 1460.23999, -1790.23999, 13.27000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(632, 1455.37000, -1792.18005, 18.85000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(632, 1444.38000, -1805.22998, 13.23000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(632, 1443.93005, -1805.39001, 18.90000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(982, 1537.10999, -1742.16003, 13.27000,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(982, 1511.23999, -1742.17004, 13.27000,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(982, 1491.87000, -1773.12000, 19.14000,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(982, 1477.31006, -1742.23999, 13.27000,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(982, 1466.25000, -1773.16003, 19.14000,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(982, 1451.54004, -1742.18005, 13.27000,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(982, 1460.87000, -1811.15002, 19.09000,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(982, 1435.21997, -1811.10999, 19.09000,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(983, 1507.25000, -1773.13000, 19.14000,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(983, 1498.31995, -1745.44995, 13.27000,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(983, 1490.18005, -1745.51001, 13.27000,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(983, 1476.22998, -1811.18994, 19.09000,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(1231, 1510.18005, -1747.67004, 15.24000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1231, 1498.82996, -1747.71997, 15.24000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1231, 1489.77002, -1747.93994, 15.24000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1231, 1479.64001, -1747.93005, 15.24000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1231, 1470.60999, -1747.95996, 15.24000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1231, 1460.68005, -1747.91003, 15.24000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1231, 1451.59998, -1747.94995, 15.24000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1267, 1510.64001, -1765.03003, 28.41000,   0.00000, 0.00000, 307.84000);
	CreateDynamicObject(1267, 1420.59998, -1819.12000, 28.61000,   0.00000, 0.00000, 143.92999);
	CreateDynamicObject(1704, 1477.05005, -1788.93994, 12.88000,   0.00000, 0.00000, 264.45001);
	CreateDynamicObject(1723, 1475.62000, -1790.54004, 12.88000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1723, 1471.60999, -1790.55005, 12.88000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1817, 1473.85999, -1788.25000, 12.89000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, 1470.18005, -1788.31006, 12.89000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2002, 1468.21997, -1790.67004, 12.86000,   0.00000, 0.00000, 179.07001);
	CreateDynamicObject(2069, 1476.54004, -1790.75000, 12.90000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2165, 1453.93005, -1786.57996, 12.88000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2167, 1453.47998, -1790.25000, 12.90000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2202, 1453.90002, -1785.19995, 12.85000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2356, 1464.55005, -1782.89001, 12.92000,   0.00000, 0.00000, 272.07999);
	CreateDynamicObject(2356, 1466.45996, -1787.84998, 12.92000,   0.00000, 0.00000, 96.23000);
	CreateDynamicObject(2356, 1464.69995, -1784.81006, 12.92000,   0.00000, 0.00000, 277.12000);
	CreateDynamicObject(2356, 1466.94995, -1789.78003, 12.92000,   0.00000, 0.00000, 86.95000);
	CreateDynamicObject(2356, 1463.92004, -1787.93994, 12.92000,   0.00000, 0.00000, 272.07999);
	CreateDynamicObject(2356, 1463.67004, -1789.81006, 12.92000,   0.00000, 0.00000, 287.56000);
	CreateDynamicObject(2356, 1456.53003, -1781.72998, 12.92000,   0.00000, 0.00000, 353.81000);
	CreateDynamicObject(2356, 1454.33997, -1782.52002, 12.92000,   0.00000, 0.00000, 335.66000);
	CreateDynamicObject(2356, 1454.67004, -1788.02002, 12.92000,   0.00000, 0.00000, 353.04999);
	CreateDynamicObject(2465, 1465.35999, -1791.06995, 14.92000,   0.00000, 0.00000, 175.71001);
	CreateDynamicObject(2480, 1466.94995, -1791.16003, 14.57000,   0.00000, 0.00000, 177.23000);
	CreateDynamicObject(2596, 1477.51001, -1784.43005, 15.76000,   0.00000, 0.00000, 282.45999);
	CreateDynamicObject(2604, 1465.75000, -1783.39001, 13.70000,   0.00000, 0.00000, 270.57999);
	CreateDynamicObject(2604, 1455.26001, -1781.13000, 13.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2605, 1465.14001, -1788.00000, 13.29000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2607, 1465.35999, -1790.06995, 13.29000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2693, 1461.92004, -1780.93994, 13.54000,   0.00000, 0.00000, 159.00999);
	CreateDynamicObject(3851, 1503.19995, -1767.32996, 14.88000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3851, 1503.18994, -1767.40002, 20.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3851, 1485.37000, -1767.12000, 14.85000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3851, 1485.30005, -1767.01001, 20.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3851, 1472.30005, -1766.69995, 14.86000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3851, 1472.20996, -1766.91003, 20.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3851, 1459.13000, -1766.83997, 14.86000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3851, 1459.13000, -1766.77002, 20.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3851, 1472.17004, -1817.53003, 14.83000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3851, 1472.17004, -1817.53003, 20.40000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3851, 1459.04004, -1817.68005, 14.83000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3851, 1459.04004, -1817.54004, 20.40000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3851, 1446.01001, -1817.59998, 14.83000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3851, 1446.01001, -1817.59998, 20.40000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3851, 1428.07996, -1817.56995, 14.83000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3851, 1428.07996, -1817.56995, 20.40000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(4023, 1498.43005, -1800.25000, 24.34000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(4023, 1431.20996, -1780.67004, 24.34000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19164, 1455.92004, -1791.13000, 15.06000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1267, 1420.599976, -1819.119995, 28.610001, 0.000000, 0.000000, 143.929993);
	CreateDynamicObject(1267, 1510.640015, -1765.030029, 28.410000, 0.000000, 0.000000, 307.839996);
	/************************LABEL's*********************************/
	CreateDynamic3DTextLabel("{f21111}Mercado Negro\n{FFFFFF}Pulsa{f21111}'Y'{FFFFFF} para comprar cosas ilegales",COLOR_WHITE,1322.7557,11678.7080,294.1751,15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Venta de protección\n{FFFFFF}Pulsa{f21111}'Y'{FFFFFF} para comprar una protección",COLOR_WHITE,2224.5872,-1742.6190,13.5624,15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1, 100.0);
	CreateDynamic3DTextLabel("Escribe {f21111}/comprar blancas{FFFFFF} para comprar un arma blanca,",COLOR_WHITE,1220.9613,-1556.6808,13.5564,15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Información\n{FFFFFF}Solo {f21111}Personal {FFFFFF}Autorizado.",COLOR_WHITE,1415.6429,-1584.7358,512.5901,15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Información\n{FFFFFF}Bienvenido al {f21111}taller tunning{FFFFFF}de {f21111}RootZone | Roleplay{FFFFFF}\n{FFFFFF}No entres con armas",0xFFFFFF00,2426.2285,-2089.3613,13.5469, 35.0);
	CreateDynamic3DTextLabel("{f21111}Mercado Negro\n{FFFFFF}Pulsa {f21111}'F'{FFFFFF} Para ingresar {FFFFFF}aqui puedes {f21111}comprar{FFFFFF}\n{f21111}Objetos {FFFFFF}Prohibidos",-1,2122.1611,-1904.0657,13.5469, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Tienda RZ\n\n{FFFFFF}para comprar aca\nPulsa la tecla {f21111}[ Y ]{FFFFFF}",-1,1218.4177,-1549.3975,13.5664, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para comprar prendas de vestir.",COLOR_WHITE,1208.4387,-1548.1759,13.6074,15.0,INVALID_PLAYER_ID, INVALID_VEHICLE_ID,1,-1,-1,-1,100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para comprar ropa.",COLOR_WHITE,1214.6182,-1547.5465,13.5664,15.0,INVALID_PLAYER_ID, INVALID_VEHICLE_ID,1,-1,-1,-1,100.0);
	CreateDynamic3DTextLabel("{f21111}Tienda Virtual\n{FFFFFF}Aqui puedes comprar\n{f21111}Accesorios{FFFFFF} y {f21111}Vehiculos {FFFFFF}especiales",-1,1205.2142,-1561.9607,13.5469, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Bienvenido a Root {f21111}Zone\n\n{FFFFFF}Aca puedes rentar bicis De Root{f21111}Zone {FFFFFF}Para comprar a tu gusto\n\nUsa: {f21111}/gps {FFFFFF}> Tienda Root{f21111}Zone",0x0079C9FF,1689.7102,-2325.4473,13.5469,45.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("Para postular a {3399FF}SAPD{FFFFFF}\n{FFFFFF}Escribe {f21111}/curriculum{FFFFFF}",-1, 252.3920, 117.3864, 1003.2188, 5.0);
	Create3DTextLabel("{f21111}Tienda de Bebidas\n {FFFFFF}Para comprar en la tienda escribe{f21111} /comprarbebidas",COLOR_WHITE,499.9684,-20.6495,1000.6797,23,0,1);
	Create3DTextLabel("{FFFFFF}Para comprar materiales\nEscribe {f21111}/comprar materiales{FFFFFF}\nCantidad {f21111}50 materiales{FFFFFF} | Costo: {00EB18}$1250",COLOR_WHITE,2823.3486,-1420.3571,16.2562,23,0,1);
	Create3DTextLabel("{FFFFFF}Para comprar materiales\nEscribe {f21111}/comprar materiales{FFFFFF}\nCantidad {f21111}50 materiales{FFFFFF} | Costo: {00EB18}$1250",COLOR_WHITE,1422.6765,-1319.3438,13.5547,23,0,1);
	Create3DTextLabel("{FFFFFF}Para comprar materiales\nEscribe {f21111}/comprar materiales{FFFFFF}\nCantidad {f21111}250 materiales{FFFFFF} | Costo: {00EB18}$6250",COLOR_WHITE,-1735.7610,1244.9299,7.5469,23,0,1);

    CreateDynamic3DTextLabel("{FFFFFF}Propiedad del Gobierno\n{f21111}Edificio Municipal\n\n{FFFFFF}Pulsa {008FFF}'F'{FFFFFF} para ingresar.", COLOR_WHITE,1411.6011,-1699.4674,13.5395, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 100.0);
    CreateDynamic3DTextLabel("{f21111}Edificio Municipal\n{FFFFFF}Para pedir servicio de grua pulsa {009AFF}'Y'{FFFFFF}",COLOR_WHITE,1459.7444,-1781.2385,1815.9910, 7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
    CreateDynamic3DTextLabel("{f21111}Edificio Municipal\n{FFFFFF}Para vender tu propiedad pulsa {009AFF}'Y'{FFFFFF}",COLOR_WHITE, 1459.7449,-1774.0337,1815.9910, 7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
    CreateDynamic3DTextLabel("{f21111}Edificio Municipal\n{FFFFFF}Para vender tu vehículo pulsa {009AFF}'Y'{FFFFFF}",COLOR_WHITE, 1459.7446,-1777.6266,1815.9910, 7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);

	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'H'{FFFFFF} para ver la lista de actividades.",COLOR_WHITE,-2018.3846,248.9650,1035.8389+0.6,3.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0); //Actividades
	CreateDynamic3DTextLabel("{779ab5}Keypad\n{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para usar.", COLOR_WHITE, -2022.8929, 253.0043, 1036.1030, 1);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'H'{FFFFFF} para\nadministrar la fábrica.",COLOR_WHITE,-2020.4500,251.5991,1035.9010+0.2,3.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0); //Administrar Fabrica
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'H'{FFFFFF} para dejar un {00CC00}bolso con dinero{FFFFFF}.",COLOR_WHITE,235.7830,109.9401,1010.2188+0.2,5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0); //Pulsa 'H' Para dejar un bolso con dinero.
	//Faros
	CreateDynamic3DTextLabel("{FFFFFF}Usa {f21111}/bajar{FFFFFF} para bajar y salir del faro.",COLOR_WHITE,909.7603,-3016.5725,49.9987,20,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Usa {f21111}/bajar{FFFFFF} para bajar y salir del faro.",COLOR_WHITE,154.4787,-1953.9596,47.8722,20,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Usa {f21111}/subir{FFFFFF} para subir al faro.",COLOR_WHITE,905.4720,-3021.9995,7.5059,20,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Usa {f21111}/subir{FFFFFF} para subir al faro.",COLOR_WHITE,154.1846,-1946.6228,5.3903,20,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);

	// Trabajos
	Create3DTextLabel("{FFFFFF}Para ser de Médico, pulsa la tecla {3399FF}'Y'{FFFFFF}\nPara recibir ayuda sobre los trabajos disponibles, escribe {f21111}/ayuda trabajos",COLOR_WHITE,1178.1359,-1361.3021,14.2302,23,0,1);
	Create3DTextLabel("{FFFFFF}Para ser fabricante y vendedor de armas, pulsa la tecla {3399FF}'Y'{FFFFFF}\nPara recibir ayuda sobre los trabajos disponibles, escribe {f21111}/ayuda trabajos",COLOR_WHITE,2122.9236,-2275.1238,20.6719,23,0,1);
	Create3DTextLabel("{FFFFFF}Para ser de Camionero, pulsa la tecla {3399FF}'Y'{FFFFFF}\nPara recibir ayuda sobre los trabajos disponibles, escribe {f21111}/ayuda trabajos",COLOR_WHITE,-65.0107,-340.5569,5.7070,23,0,1);
	Create3DTextLabel("{FFFFFF}Para ser de Guardaespaldas, pulsa la tecla {3399FF}'Y'{FFFFFF}\nPara recibir ayuda sobre los trabajos disponibles, escribe {f21111}/ayuda trabajos",COLOR_WHITE,2226.3508,-1719.0221,13.5261,23,0,1);
	Create3DTextLabel("{FFFFFF}Para ser de Trailero, pulsa la tecla {3399FF}'Y'{FFFFFF}\nPara recibir ayuda sobre los trabajos disponibles, escribe {f21111}/ayuda trabajos",COLOR_WHITE,-242.4498,-236.5014,2.4297,23,0,1);
	CreateDynamic3DTextLabel("{f21111}¿Busca un empleo?\n\n{FFFFFF}Pulsa la tecla {3399FF}'Y'{FFFFFF} para confirmar.",COLOR_WHITE,958.2482,-54.3517,1001.1172,5.0); // TRABAJO PROSTITUCION
	CreateDynamic3DTextLabel("{FFFFFF}Para ser de Taxista, pulsa la tecla {3399FF}'Y'{FFFFFF}\nPara recibir ayuda sobre los trabajos disponibles, escribe {f21111}/ayuda trabajos",COLOR_WHITE,-2024.7489,-113.9102,1038.8187,23,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 5,5,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Para ser de Basurero, pulsa la tecla {3399FF}'Y'{FFFFFF}\nPara recibir ayuda sobre los trabajos disponibles, escribe {f21111}/ayuda trabajos",COLOR_WHITE,-177.6093,-1549.4420,6.3284,23,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Para ser de Mecánico, pulsa la tecla {3399FF}'Y'{FFFFFF}\nPara recibir ayuda sobre los trabajos disponibles, escribe {f21111}/ayuda trabajos",COLOR_WHITE,109.5073,-152.0222,1.7669,23,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Para ser de Transportista, pulsa la tecla {3399FF}'Y'{FFFFFF}\nPara recibir ayuda sobre los trabajos disponibles, escribe {f21111}/ayuda trabajos",COLOR_WHITE,2583.8274,1644.3837,1087.5602,23, INVALID_PLAYER_ID, INVALID_VEHICLE_ID,1,5,1,-1,100.0); //Aquí seria para conseguir el Trabajo de Transportista
	CreateDynamic3DTextLabel("{FFFFFF}Ropa de {f21111}/mecanico",COLOR_WHITE,83.5759,-149.4921,2.5845,15,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Venta de repuestos{FFFFFF}\n Precio: {00CC00}$100{FFFFFF} c/u.\n{FFFFFF}Para comprar repuestos escribe{f21111} /comprar repuestos",COLOR_WHITE,95.9849,-162.9593,2.5938,23,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Ropa de {f21111}/basurero",COLOR_WHITE,-170.3641,-1555.9705,6.5706,23,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Escuela de paracaidismo\n{FFFFFF}Puedes {008FFF}/inscribirse {FFFFFF}para participar en el siguiente salto\nCosto: {00cc00}$5000", -1, 415.0879,2535.5859,19.1484, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Presiona {f21111}Y{FFFFFF} para ver los catalogos de vehículos.", COLOR_WHITE,1746.1914,-1207.4789,60.0131,15.0,	INVALID_PLAYER_ID, INVALID_VEHICLE_ID,0,-1,-1,-1,100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Presiona {f21111}Y{FFFFFF} para ver los catalogos de ropa.", COLOR_WHITE,1741.7913,-1207.4772,60.0131,15.0,	INVALID_PLAYER_ID, INVALID_VEHICLE_ID,0,-1,-1,-1,100.0);
    CreateDynamic3DTextLabel("{FFFFFF}Venta de prendas {f21111}VIP3{FFFFFF}\nEscribe {f21111}/catalogo vip3 {ffffff}para ver el catalogo",COLOR_WHITE,1370.6121,-14.3428,1001.0047,10.0,INVALID_PLAYER_ID, INVALID_VEHICLE_ID,0,-1,-1,-1,100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Presiona {f21111}Y{FFFFFF} para la creación de tu banda.", COLOR_WHITE,1732.0435,-1210.9281,60.0131,10.0,	INVALID_PLAYER_ID, INVALID_VEHICLE_ID,0,-1,-1,-1,100.0);
	CreateDynamic3DTextLabel("{f21111}Hola\n{FFFFFF}Bienvenido aquí puedes gastar los {0A8329}RZ\n\n{FFFFFF}Para comprar una propiedad debes {FF0000}solicitar un mapeo\n{FFFFFF}Para hacerlo escribe {f21111}/crear pedido\n{FFFFFF}tendrás que ser paciente", COLOR_WHITE,1736.3103,-1204.4061,60.013,10.0,INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Iglesia\n\n{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para ingresar", COLOR_WHITE, 2492.0742,925.2387,11.0234, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Propiedad del Gobierno\n{f21111}Estudio de radio\n\n{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para ingresar", COLOR_WHITE, 649.0013,-1360.7864,13.5868, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Propiedad del Gobierno\n{f21111}Salón de eventos\n\n{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para ingresar", COLOR_WHITE, 1423.4301,-1180.1801,25.9922, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Propiedad del Gobierno\n{f21111}Club Alhambra\n\n{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para ingresar", COLOR_WHITE, 1836.9700,-1682.4700,13.4258, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Propiedad del Gobierno\n{f21111}Burdel\n\n{FFFFFF}Pulsa {008FFF}'F'{FFFFFF} para ingresar.", COLOR_WHITE, 2014.8400,1150.4700,10.9203+1.0, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 100.0);

	//Salidas
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,1308.4752,11665.8154,294.2249,15.0,INVALID_PLAYER_ID, INVALID_VEHICLE_ID,1,-1,-1,-1,100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,1433.0850,-1594.1534,512.6520,15.0,INVALID_PLAYER_ID, INVALID_VEHICLE_ID,1,-1,-1,-1,100.0);
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-27.3408,-31.7468,1003.6600+1.0,7.0, -1, -1);
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-27.3931,-58.2556,1003.6500+1.0,7.0, -1, -1);
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,2532.6731,1598.2499,1087.7430+1.0,7.0, -1, -1);
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-2737.1101,625.3660,1385.6547+1.00,7.0, -1, -1); //HPSF
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,1251.8484,-812.2070,1164.2759+1.00,7.0, -1, -1); //HPLV // GANTON
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,2492.0742,925.2387,11.0234+1.0,7.0, -1, -1); //IGLESIA LS
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,2332.5701,-1254.7500,1026.29,7.0, -1, -1); //albergue
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,493.3470,-24.8391,1000.7800,7.0, -1, -1); //Alhambra
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,1204.8600,-13.8459,1001.0200,7.0, -1, -1); //Club Striptis
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,246.38,107.31,1003.22+1.00,7.0, 1, 1);
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,2304.6858,-16.1730,26.7422+1.00,7.0, 1, 1);
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-2240.7715,137.1613,1035.4141+1.00,7.0, 1, 6);
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-30.9883,-92.0101,1003.5469+1.00,7.0,0,1);
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,493.4037,-24.8556,1000.6797+1.00,7.0,0,1);
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,246.7735,62.6075,1003.6406+1.00,7.0,0,1);
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,207.7022,-111.1636,1005.1328+1.00,7.0,0,1);
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,772.2999,-5.2435,1000.7286+1.00,7.0,0,1);
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,834.5561,7.3938,1004.1870+1.00,7.0,0,1);
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-229.1293,1401.1205,27.7656+1.00,7.0, 0, 1);
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,223.0810,1287.0770,1082.1406+1.00,7.0, -1, 1);
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,1403.8179,601.0150,1001.0300+0.3,4.0, -1, -1); //Int 43
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,246.4200,107.3000,1003.2200+1.00,7.0, -1, 1);//SFPD
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,1433.0850,-1594.1534,512.6520,7.0, -1, 1);//SAEM
	Create3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,282.4075,1869.4720,8.7578+1.00,7.0,0,0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,965.5889,-53.1844,1001.1246+0.8,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0); //PROSTIBULO
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,2332.5701,-1254.7500,1026.2899+0.8,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0); //ALBERGUE
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,251.0166,76.3774,1003.6406,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-1166.5009,2126.8232,1246.5457+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
    CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,1738.0498,-1187.7406,60.0131+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,168.1524,1436.1014,1084.8462+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,1783.8291,-1301.7024,13.5026+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,203.4271,1417.9021,1091.2000+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-1074.4355,339.9846,1180.5259+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,387.4330,194.3359,1040.1078+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,207.6859,-110.8290,1005.1328+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,161.4287,-96.9712,1001.8047+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,1092.6782,-152.2306,1001.1160+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,207.0226,-140.2560,1003.5078+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,204.2934,-168.8588,1000.5234+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,227.5291,-8.1299,1002.2109+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,502.0160,-67.6595,998.7578+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-2029.7441,-118.6951,1038.8187+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,2594.2100,1649.7188,1087.5581+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,1204.5865,-13.8364,1000.9219+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,372.3595,-133.5242,1001.4922+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-1387.9806,-324.9726,1052.0834+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,1156.9583,-1312.1549,-10.7849+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-1544.0551,-446.6218,6.0068+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 0,0,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-1232.5634,54.9100,14.1276+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 0,0,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,1719.9429,1619.2629,10.0866+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 0,0,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,390.4993,173.9211,1008.3828+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 3,3,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-376.4527,2196.6853,25.4105+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,269.1789,293.6963,999.8400+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para salir.",COLOR_WHITE,-718.7835,2462.5969,9.9039+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-1275.5626,2108.7246,1246.5457+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-31.0100,-92.0103,1003.5469+1.00,7.0,	INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,254.1746,-41.6122,1002.0308+1.00,7.0,	INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-25.9019,-188.0416,1007.7300+1.00,7.0,	INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,663.4366,-202.8868,1276.7941+1.00,7.0,	INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,1167.2426,-14.5519,1020.6459+1.00,7.0,	INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-100.3841,-25.0388,1000.7188+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,238.5774,138.7619,1003.0234+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,2304.6863,-16.1371,26.7422+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'F'{FFFFFF} para salir.",COLOR_WHITE,-1840.0175,2670.5095,3.5884+1.00,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	//ESTACIONAMIENTOS//
	CreateDynamic3DTextLabel("{FFFFFF}Para meter a prisión alguien\nUsa {f21111}/entregar",0xFFFFFF00,1560.4916,-1693.5004,5.8906,4.0); // Entregar LS
	CreateDynamic3DTextLabel("{FFFFFF}Para meter a prisión alguien\nUsa {f21111}/entregar",0xFFFFFF00,1568.6255,-1693.5498,5.8906,4.0); // Entregar LS
	CreateDynamic3DTextLabel("{FFFFFF}Para meter a prisión alguien\nUsa {f21111}/entregar",0xFFFFFF00,-1590.2043,707.8610,-5.2422,4.0); // Entregar SF
	CreateDynamic3DTextLabel("{FFFFFF}Para meter a prisión alguien\nUsa {f21111}/entregar",0xFFFFFF00,-1589.9172,716.4757,-5.2422,4.0); // Entregar SF
	CreateDynamic3DTextLabel("{FFFFFF}Para meter a prisión alguien\nUsa {f21111}/entregar",0xFFFFFF00,2291.9436,2451.4192,10.8203,4.0); // Entregar LV
	CreateDynamic3DTextLabel("{FFFFFF}Para meter a prisión alguien\nUsa {f21111}/entregar",0xFFFFFF00,2291.8071,2468.6799,10.8203,4.0); // Entregar LV
	CreateDynamic3DTextLabel("{FFFFFF}Para meter a prisión alguien\nUsa {f21111}/entregar",0xFFFFFF00,-196.7497,2738.0884,62.6875,15.0); // Entregar SAEM
    CreateDynamic3DTextLabel("{00CCFF}Elevador\n{FFFFFF}Pulsa {f21111}'Y' {FFFFFF}para usar el elevador.",0xFFFFFF00,265.9726,115.5081,1004.6172, 7);
    CreateDynamic3DTextLabel("{00CCFF}Elevador\n{FFFFFF}Pulsa {f21111}'Y' {FFFFFF}para usar el elevador.",0xFFFFFF00,1524.4830,-1677.9261,6.2188, 7);
    CreateDynamic3DTextLabel("{00CCFF}Elevador\n{FFFFFF}Pulsa {f21111}'Y' {FFFFFF}para usar el elevador.",0xFFFFFF00,1558.0905,-1675.5868,28.3955, 7);
	CreateDynamic3DTextLabel("{f21111}/control",COLOR_WHITE,-1192.7047,2064.7141,1254.8612,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Mostrador{FFFFFF}\n{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver el listado de productos.",COLOR_WHITE,-1262.6428,2119.9490,1246.5457,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Mostrador{FFFFFF}\n{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver el listado de productos.",COLOR_WHITE,-30.5101,-28.9864,1003.5573,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Mostrador{FFFFFF}\n{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver el listado de productos.",COLOR_WHITE,-23.2806,-55.6424,1003.5469,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Mostrador{FFFFFF}\n{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver el listado de productos.",COLOR_WHITE,969.3793,-44.8069,1001.1172,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Mostrador{FFFFFF}\n{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver el listado de productos.",COLOR_WHITE,499.9690,-20.6826,1000.6797,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Mostrador{FFFFFF}\n{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver el listado de productos.",COLOR_WHITE,1214.8466,-13.3504,1000.9219,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Mostrador{FFFFFF}\n{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver el listado de productos.",COLOR_WHITE,-784.2098,500.1945,1371.7422,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Mostrador{FFFFFF}\n{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver el listado de productos.",COLOR_WHITE,-1396.3044,-320.4939,1052.0834,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Venta de Boletos{f21111}\n/comprar boleto",COLOR_WHITE,831.5464,-1361.7238,-0.5015,23);
	CreateDynamic3DTextLabel("{FFFFFF}Venta de Boletos{f21111}\n/comprar boleto",COLOR_WHITE,1757.1368,-1943.4417,13.5703,23);
	CreateDynamic3DTextLabel("{FFFFFF}Venta de Boletos{f21111}\n/comprar boleto",COLOR_WHITE,1746.9652,-1943.4482,13.5703,23);
	CreateDynamic3DTextLabel("{FFFFFF}Venta de Boletos{f21111}\n/comprar boleto",COLOR_WHITE,-1974.0217,116.7847,27.6875,23);
	CreateDynamic3DTextLabel("{FFFFFF}Venta de Boletos{f21111}\n/comprar boleto",COLOR_WHITE,1437.3113,2655.2742,11.3926,23);
	CreateDynamic3DTextLabel("{FFFFFF}Venta de Boletos{f21111}\n/comprar boleto",COLOR_WHITE,1437.4141,2620.1450,11.3926,23);
	CreateDynamic3DTextLabel("{FFFFFF}Venta de Boletos{f21111}\n/comprar boleto",COLOR_WHITE,2856.5955,1314.5538,11.3906,23);
	CreateDynamic3DTextLabel("{FFFFFF}Venta de Boletos{f21111}\n/comprar boleto",COLOR_WHITE,2856.5969,1266.9460,11.3906,23);
	CreateDynamic3DTextLabel("{FFFFFF}Venta de Boletos{f21111}\n/comprar boleto",COLOR_WHITE,826.7249,-1353.6726,13.5369,23);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver la ubicación de los trenes.",COLOR_WHITE,-1959.7164,141.9694,27.6875,7);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver la ubicación de los trenes.",COLOR_WHITE,-1962.3730,130.1360,27.6875,7);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver la ubicación de los trenes.",COLOR_WHITE,1729.7041,-1943.3695,13.5705,7);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver la ubicación de los trenes.",COLOR_WHITE,822.8813,-1353.8101,-0.5078,7);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver la ubicación de los trenes.",COLOR_WHITE,1439.4858,2644.6511,11.3926,7);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver la ubicación de los trenes.",COLOR_WHITE,2856.4263,1296.8097,11.3906,7);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para solicitar el paso.",COLOR_WHITE,832.2947,-2958.3792,12.1438,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para solicitar el paso.",COLOR_WHITE,834.7955,-2959.8113,12.1212,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{00CCFF}Piso: 9\n{FFFFFF}Pulsa '{f21111}Y{FFFFFF}' para usar el elevador.",COLOR_WHITE,1783.6853,-1300.7665,65.8125,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{00CCFF}Piso: 14\n{FFFFFF}Pulsa '{f21111}Y{FFFFFF}' para usar el elevador.",COLOR_WHITE,1783.8641,-1300.7637,93.0391,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{00CCFF}Piso: 17\n{FFFFFF}Pulsa '{f21111}Y{FFFFFF}' para usar el elevador.",COLOR_WHITE,1783.6937,-1300.7670,109.3594,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}/entrar{FFFFFF} para ingresar.",COLOR_WHITE,186.8628,1428.6979,10.5912+0.6,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1,0,0,-1,100.0);
	CreateDynamic3DTextLabel("{f21111}/comprar herramientas",COLOR_WHITE,-1072.1169,354.2132,1180.5259,7.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID,1,-1,-1,-1,100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Ropa de médico: {f21111}/uniforme medico",COLOR_WHITE,1159.4829,-1356.8820,-10.7922,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 9,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Ropa de médico: {f21111}/uniforme medico",COLOR_WHITE,1159.4829,-1356.8820,-10.7922,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 8,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Ropa de médico: {f21111}/uniforme medico",COLOR_WHITE,1159.4829,-1356.8820,-10.7922,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 6,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Ropa de médico: {f21111}/uniforme medico",COLOR_WHITE,1159.4829,-1356.8820,-10.7922,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 7,6,-1, 100.0);
	//SF
	CreateDynamic3DTextLabel("{FFFFFF}Ropa de médico: {f21111}/uniforme medico",COLOR_WHITE,1234.4447,-830.0233,1164.2759,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 9,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Ropa de médico: {f21111}/uniforme medico",COLOR_WHITE,1234.4447,-830.0233,1164.2759,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 8,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Ropa de médico: {f21111}/uniforme medico",COLOR_WHITE,1234.4447,-830.0233,1164.2759,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 6,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Ropa de médico: {f21111}/uniforme medico",COLOR_WHITE,1234.4447,-830.0233,1164.2759,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 7,6,-1, 100.0);
	//LV
	CreateDynamic3DTextLabel("{FFFFFF}Ropa de médico: {f21111}/uniforme medico",COLOR_WHITE,-2729.9434,614.0607,1385.6534,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 9,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Ropa de médico: {f21111}/uniforme medico",COLOR_WHITE,-2729.9434,614.0607,1385.6534,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 8,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Ropa de médico: {f21111}/uniforme medico",COLOR_WHITE,-2729.9434,614.0607,1385.6534,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 6,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Ropa de médico: {f21111}/uniforme medico",COLOR_WHITE,-2729.9434,614.0607,1385.6534,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 7,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver el botiquín.",COLOR_WHITE,1169.7440,-1353.4617,-10.7922,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 8,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver el botiquín.",COLOR_WHITE,1169.7440,-1353.4617,-10.7922,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 7,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver el botiquín.",COLOR_WHITE,1169.7440,-1353.4617,-10.7922,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 6,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver el botiquín.",COLOR_WHITE,1169.7440,-1353.4617,-10.7922,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 9,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver el botiquín.",COLOR_WHITE,-2720.8923,647.0943,1385.6534,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 9,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver el botiquín.",COLOR_WHITE,1235.0582,-821.8716,1164.2759,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, 9,6,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Vaso de Sprunk\nPrecio:{00CC00}$65\n{f21111}/comprar sprunk",COLOR_WHITE,-19.4919,-180.4340,1007.7656, 5.0);
	CreateDynamic3DTextLabel("{FFFFFF}Vaso de Sprunk\nPrecio:{00CC00}$65\n{f21111}/comprar sprunk",COLOR_WHITE,-21.0096,-74.3110,1003.5542, 5.0);
	CreateDynamic3DTextLabel("{f21111}Estantería\n{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para verla.",COLOR_WHITE,255.7412,-40.2322,1002.0234,7.0,				INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Escribe {f21111}/entrar{FFFFFF} para ingresar a la propiedad.",COLOR_WHITE,300.3342,311.4263,999.1484+0.6,15.0,				INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Cerveza {00CC00}$40 {f21111}/comprar cerveza\n{FFFFFF}Vino {00CC00}$60 {f21111}/comprar vino\n{FFFFFF}Sprunk {00CC00}$70 {f21111}/comprar sprunk",COLOR_WHITE,-225.1540,1404.1327,27.7734,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Cerveza {00CC00}$40 {f21111}/comprar cerveza\n{FFFFFF}Vino {00CC00}$60 {f21111}/comprar vino\n{FFFFFF}Sprunk {00CC00}$70 {f21111}/comprar sprunk",COLOR_WHITE,498.6868,-76.0385,998.7578,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}¿Cometió algún crimen?\nAquí puede {f21111}/entregarse",COLOR_WHITE,240.4520,112.8195,1003.2188,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}¿Cometió algún crimen?\nAquí puede {f21111}/entregarse",COLOR_WHITE,235.2946,166.3358,1003.0300,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{f21111}/comprar juguetes",COLOR_WHITE,-103.9013,-22.6749,1000.7188,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{f21111}/comprar juguetes",COLOR_WHITE,1214.0737,-13.3524,1000.9219,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Caja de aquarius con 12 unidades\nPrecio: {00CC00}$1560\n{f21111}/comprar caja",COLOR_WHITE,93.7855,-305.2337,1.5781,23,INVALID_PLAYER_ID, INVALID_VEHICLE_ID,1,0,0,-1,100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Caja de vino con 12 unidades\nPrecio: {00CC00}$600\n{f21111}/comprar caja",COLOR_WHITE,93.7853,-309.5841,1.5781,23,INVALID_PLAYER_ID, INVALID_VEHICLE_ID,1,0,0,-1,100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Caja de cerveza con 12 unidades\nPrecio: {00CC00}$480\n{f21111}/comprar caja",COLOR_WHITE,93.7853,-313.7030,1.5781,23,INVALID_PLAYER_ID, INVALID_VEHICLE_ID,1,0,0,-1,100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Caja de sprunk con 12 unidades\nPrecio: {00CC00}$480\n{f21111}/comprar caja",COLOR_WHITE,86.0509,-315.2853,1.8494,23,INVALID_PLAYER_ID, INVALID_VEHICLE_ID,1,0,0,-1,100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para ver el listado de productos.",COLOR_WHITE,373.7276,-118.8039,1001.4922,7.0,INVALID_PLAYER_ID, INVALID_VEHICLE_ID,1,-1,-1,-1,100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Propiedad del Gobierno\n{f21111}Albergue para indigentes\n\n{FFFFFF}Pulsa {f21111}'F' {FFFFFF}para ingresar.",COLOR_WHITE,-49.9430,-269.3648,6.6332,8.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Propiedad del Gobierno\n{f21111}Club de striptease\n\n{FFFFFF}Pulsa {f21111}'F' {FFFFFF}para ingresar.",COLOR_WHITE,2014.8101,1107.0100,10.9203,5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
    CreateDynamic3DTextLabel("{f21111}Vestuarios de Policías\n\n{FFFFFF}Pulsa {f21111}'F' {FFFFFF}para ingresar.",COLOR_WHITE,276.1852,122.1334,1004.6172,8.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0); // LSPD
    CreateDynamic3DTextLabel("{f21111}Base de los Militares\n\n{FFFFFF}Pulsa {f21111}'F' {FFFFFF}para ingresar.",COLOR_WHITE,-282.7106,2655.8936,62.8985,8.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0); // SAEM
    CreateDynamicPickup(1239, 1,-282.7106,2655.8936,62.8985,-1,-1,-1,35.0);
    //
    CreateDynamicPickup(1275, 1,1416.2917,-1576.3341,512.5913,-1,-1,-1,15.0);
 	CreateDynamicPickup(1242, 1,1420.2274,-1582.7921,512.5981,-1,-1,-1,15.0);
    CreateDynamicPickup(2061, 1,1419.9457,-1576.6808,512.5977,-1,-1,-1,15.0);
    //
	CreateDynamic3DTextLabel("{f21111}Estanteria de Chalecos\n{FFFFFF}Escribe {f21111}/chaleco {FFFFFF}para agarrar uno.",COLOR_WHITE,279.0616,1865.0746,8.7578,8.0);
	CreateDynamic3DTextLabel("{f21111}Estanteria de Chalecos\n{FFFFFF}Escribe {f21111}/chalecos {FFFFFF}para agarrar uno.",COLOR_WHITE,1420.2274,-1582.7921,512.5981,15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Estanteria de Armas\n{FFFFFF}Escribe {f21111}/armamento {FFFFFF}para agarrar las armas.",COLOR_WHITE,1419.9457,-1576.6808,512.5977,15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Estanteria de uniforme\n{FFFFFF}Escribe {f21111}/uniforme militar{FFFFFF}para agarrar el uniforme.",COLOR_WHITE,1416.2917,-1576.3341,512.5913,15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1, 100.0);
	CreateDynamic3DTextLabel("{f21111}Estanteria de Armas\n{FFFFFF}Escribe {f21111}/armas {FFFFFF}para obtenerlas.",COLOR_WHITE,271.4031,1873.6595,8.7578,8.0);
	CreateDynamic3DTextLabel("{f21111}Casillero\n{FFFFFF}Escribe {f21111}/uniforme policia {FFFFFF}para ver la lista.",COLOR_WHITE,278.0614,1873.7704,8.7578,8.0);
	CreateDynamic3DTextLabel("\n{FFFFFF}Pulsa {f21111}'Y'{FFFFFF} para arrojar\n{00CC00}$500{FFFFFF} a la bailarina",COLOR_WHITE,1212.3831,-5.3079,1000.9219,5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}\n\n\n\n¿Necesitas ayuda?\n{f21111}/ayuda club",COLOR_WHITE,1206.2085,-0.9576,1000.9519+1.40,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Sala privada\n{f21111}/entrar",COLOR_WHITE,1204.8096,12.6643,1000.9219+0.75,7.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
    CreateDynamic3DTextLabel("{FFFFFF}¿Quieres comprar algún arma blanca?\nEscribe {f21111}/comprar arma-blanca",COLOR_WHITE,2113.0210,-1871.8363,13.5469,8.0);
	CreateDynamic3DTextLabel("{FFFFFF}Para crear tu emisora de radio usa {f21111}/crear radio{FFFFFF}\nCosto: {00cc00}$15000", COLOR_WHITE,391.1343,183.0587,1040.1156, 9.0);
	//ASCENSOR
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa '{f21111}Y{FFFFFF}' para usar el elevador.",COLOR_WHITE,2117.8604,2415.0771,10.8428,10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa '{f21111}Y{FFFFFF}' para usar el elevador.",COLOR_WHITE,2117.8604,2415.0771,14.8428,10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa '{f21111}Y{FFFFFF}' para usar el elevador.",COLOR_WHITE,2117.8604,2415.0771,19.8428,10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa '{f21111}Y{FFFFFF}' para usar el elevador.",COLOR_WHITE,2117.8604,2415.0771,23.8428,10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa '{f21111}Y{FFFFFF}' para usar el elevador.",COLOR_WHITE,2117.8604,2415.0771,27.8428,10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa '{f21111}Y{FFFFFF}' para usar el elevador.",COLOR_WHITE,2117.8604,2415.0771,31.8428,10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa '{f21111}Y{FFFFFF}' para usar el elevador.",COLOR_WHITE,2117.8604,2415.0771,36.8428,10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa '{f21111}Y{FFFFFF}' para usar el elevador.",COLOR_WHITE,2117.8604,2415.0771,40.8428,10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa '{f21111}Y{FFFFFF}' para usar el elevador.",COLOR_WHITE,2117.8604,2415.0771,44.8428,10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa '{f21111}Y{FFFFFF}' para usar el elevador.",COLOR_WHITE,2117.8604,2415.0771,48.8428,10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1,-1,-1, 100.0);
	CreateDynamic3DTextLabel("{f21111}SALA 1",COLOR_WHITE,1160.1355,-1323.6254,-8.2668,4.0);
	CreateDynamic3DTextLabel("{f21111}SALA 2",COLOR_WHITE,1160.0181,-1333.1748,-8.2668,4.0);
	CreateDynamic3DTextLabel("{f21111}SALA 3",COLOR_WHITE,1153.3662,-1332.9631,-8.2668,4.0);
	CreateDynamic3DTextLabel("{f21111}SALA 4",COLOR_WHITE,1160.4609,-1342.7770,-8.2668,4.0);
	CreateDynamic3DTextLabel("{f21111}SALA 5",COLOR_WHITE,1153.8414,-1342.8153,-8.2668,4.0);
	CreateDynamic3DTextLabel("{f21111}SALA 6",COLOR_WHITE,1153.6920,-1351.9772,-8.2668,4.0);
	// Trabajo Criminal
	CreateDynamic3DTextLabel("{FFFFFF}Aquí puedes solicitar un {008FFF}/encargo{FFFFFF}", COLOR_WHITE, -2187.0981,715.3529,53.8992, 20.0,INVALID_PLAYER_ID, INVALID_VEHICLE_ID,  0, 0, 0, -1, 20.0);
	CreateDynamic3DTextLabel("{FFFFFF}Para unirte al crimen escribe {008FFF}/trabajo criminal{FFFFFF}\nPara recibir ayuda sobre los trabajos disponibles, escribe /ayuda trabajos", COLOR_WHITE, -2181.7563,714.6966,53.8916, 20.0,INVALID_PLAYER_ID, INVALID_VEHICLE_ID,  0, 0, 0, -1, 20.0);
	CreateDynamic3DTextLabel("{FFFFFF}Pulsa {008FFF}'H'{FFFFFF} para salir en el vehículo.", COLOR_WHITE, -2139.2771,-247.7624,544.7359, 7.0,INVALID_PLAYER_ID, INVALID_VEHICLE_ID,  0, 0, -1, -1, 20.0);
	CreateDynamic3DTextLabel("{FFFFFF}Puede {f21111}/inscribirse{FFFFFF} para participar en la carrera.\nCosto:{00CC00} $2.000",COLOR_WHITE,-1447.7421,-313.3544,1052.0969,5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1,-1,-1,-1,25.0);

	/***************************MAPICONS*********************************/
	// Map icon

	CreateDynamicMapIcon(1411.5956,-1699.4991,13.5395, 3, -1, -1, -1, -1, 600.0);       //Edificio Municipal
	CreateDynamicMapIcon(2426.2285,-2089.3613,13.5469, 63, -1, -1, -1, -1, 600.0);       //Tunning
	CreateDynamicMapIcon(2014.8101,1107.0100,10.9203, 21, -1, -1, -1, -1, 600.0);       //Striptease
	CreateDynamicMapIcon(-1808.7142,945.9161,24.8906, 29, 0, 0, 0, -1, 600.0);			//Pizzeria
	CreateDynamicMapIcon(-1720.9456,1359.7822,7.1853, 29, 0, 0, 0, -1, 600.0);			//Pizzeria
	CreateDynamicMapIcon(2083.3376,2224.7012,11.0234, 29, 0, 0, 0, -1, 600.0);			//Pizzeria
	CreateDynamicMapIcon(2756.7642,2477.3533,11.0625, 29, 0, 0, 0, -1, 600.0);			//Pizzeria
	CreateDynamicMapIcon(2638.7839,1849.7867,11.0234, 29, 0, 0, 0, -1, 600.0);			//Pizzeria
	CreateDynamicMapIcon(2331.8098,75.0506,26.6210, 29, 0, 0, 0, -1, 600.0);			//Pizzeria
	CreateDynamicMapIcon(1367.5475,248.2522,19.5669, 29, 0, 0, 0, -1, 600.0);			//Pizzeria
	CreateDynamicMapIcon(203.3945,-201.9418,1.5781, 29, 0, 0, 0, -1, 600.0);			//Pizzeria
	CreateDynamicMapIcon(2105.4844,-1806.4695,13.5547, 29, 0, 0, 0, -1, 600.0);			//Pizzeria
	CreateDynamicMapIcon(2351.8242,2533.6289,10.8203, 29, 0, 0, 0, -1, 600.0);			//Pizzeria
	CreateDynamicMapIcon(2330.6023,2533.6121,10.8203, 29, 0, 0, 0, -1, 600.0);			//Pizzeria
	CreateDynamicMapIcon(2309.5044,2533.6143,10.8203, 29, 0, 0, 0, -1, 600.0);			//Pizzeria
	CreateDynamicMapIcon(-1735.7610,1244.9299,7.5469, 18, 0, 0, 0, -1, 600.0);			//Materiales I (SF)
	CreateDynamicMapIcon(1422.6765,-1319.3438,13.5547, 18, 0, 0, 0, -1, 600.0); 		//Materiales II (LS)
	CreateDynamicMapIcon(2823.3486,-1420.3571,16.2562, 18, 0, 0, 0, -1, 600.0); 		//Materiales III (LS)
	CreateDynamicMapIcon(1173.7434,-1323.3525,15.1953, 22, 0, 0, 0, -1, 600.0);			//Hospital LS
	CreateDynamicMapIcon(2027.2164,-1420.3737,16.9922, 22, 0, 0, 0, -1, 600.0);			//Hospital Groove
	CreateDynamicMapIcon(-2665.0000,640.1640,14.5531, 22, 0, 0, 0, -1, 600.0);			//Hospital SF
	CreateDynamicMapIcon(1607.4094,1815.2427,10.8203, 22, 0, 0, 0, -1, 600.0);			//Hospital LV
	CreateDynamicMapIcon(1564.6022,-1675.2286,61.8959, 30, 0, 0, 0, -1, 600.0);			//LSPD
	CreateDynamicMapIcon(-1605.5137,710.2757,13.8672, 30, 0, 0, 0, -1, 600.0);			//SFPD
	CreateDynamicMapIcon(2290.1978,2431.4529,10.8203, 30, 0, 0, 0, -1, 600.0);			//LVPD
	CreateDynamicMapIcon(2244.4436,-1665.2526,15.4766, 45, 0, 0, 0, -1, 600.0); 		//Binco
	CreateDynamicMapIcon(1456.4785,-1137.6067,23.9485, 45, 0, 0, 0, -1, 600.0); 		//ZIP
	CreateDynamicMapIcon(499.5177,-1360.6284,16.3690, 45, 0, 0, 0, -1, 600.0); 			//Pro Laps
	CreateDynamicMapIcon(454.2013,-1477.9746,30.8137, 45, 0, 0, 0, -1, 600.0); 			//DS
	CreateDynamicMapIcon(2111.9539,-1213.1942,23.9654, 45, 0, 0, 0, -1, 600.0); 		//Sub Urban
	CreateDynamicMapIcon(461.7039,-1500.7959,31.0453, 45, 0, 0, 0, -1, 600.0); 			//Victim
	CreateDynamicMapIcon(-1581.2299,867.9284,7.6953, 52, 0, 0, 0, -1, 600.0); 			//Banco SF
	CreateDynamicMapIcon(1498.4614,-1580.7184,13.5498, 52, 0, 0, 0, -1, 600.0); 		//Banco LSPD
	CreateDynamicMapIcon(2449.4690,2290.2200,10.8203, 52, 0, 0, 0, -1, 600.0); 			//Banco LV
	CreateDynamicMapIcon(1457.1293,-1009.9208,26.8438, 52, 0, 0, 0, -1, 600.0); 		//Banco LS grande
	CreateDynamicMapIcon(1377.0605,1152.7566,10.8203, 60, 0, 0, 0, -1, 600.0);			//Trabajo Transportista
	CreateDynamicMapIcon(2226.3508,-1719.0221,13.5261, 60, 0, 0, 0, -1, 600.0);			//Trabajo Guardaespalda
	CreateDynamicMapIcon(1742.9551,-1864.2202,13.5741, 60, 0, 0, 0, -1, 600.0);			//Trabajo Taxi
	CreateDynamicMapIcon(95.9849,-162.9593,2.5938, 60, 0, 0, 0, -1, 600.0);			//Trabajo Mecanico
	CreateDynamicMapIcon(1178.1359,-1361.3021,14.2302, 60, 0, 0, 0, -1, 600.0);			//Trabajo Medico
	CreateDynamicMapIcon(-177.6093,-1549.4420,6.3284, 60, 0, 0, 0, -1, 600.0);			//Trabajo Basurero
	CreateDynamicMapIcon(2122.9236,-2275.1238,20.6719, 60, 0, 0, 0, -1, 600.0);			//Trabajo Armero
	CreateDynamicMapIcon(-65.0107,-340.5569,5.7070, 60, 0, 0, 0, -1, 600.0);			//Trabajo Camionero
	CreateDynamicMapIcon(-242.4498,-236.5014,2.4297, 60, 0, 0, 0, -1, 600.0);			//Trabajo Trailero
	CreateDynamicMapIcon(-386.7375,-1470.0562,25.7266, 60, 0, 0, 0, -1, 600.0);			//Trabajo Cosechador FR
	CreateDynamicMapIcon(-38.5154,56.1632,3.1172, 60, 0, 0, 0, -1, 600.0);				//Trabajo Cosechador BB
	CreateDynamicMapIcon(2014.8400,1150.4700,10.9203, 60, 0, 0, 0, -1, 600.0);			//Trabajo Prostitución LV
	CreateDynamicMapIcon(2362.7698,2306.3025,8.1406, 58, 0, 0, 0, -1, 600.0);			//Academia
	CreateDynamicMapIcon(1656.1246,-1883.6947,13.1237, 55, 0, 0, 0, -1, 500.0);			//Conce Barato
	CreateDynamicMapIcon(2127.5342,-1123.4701,24.9874, 55, 0, 0, 0, -1, 500.0);			//Conce Coutt And Schutz
	CreateDynamicMapIcon(557.6544,-1260.8588,16.8133, 55, 0, 0, 0, -1, 500.0);			//Conce GROTTI
	CreateDynamicMapIcon(-1989.7445,288.3349,33.9223, 55, 0, 0, 0, -1, 500.0);			//Conce Wang Cars
	CreateDynamicMapIcon(1464.9510,-1780.9888,13.9439, 55, 0, 0, 0, -1, 500.0);			//Conce Wang Cars Los Santos
	CreateDynamicPickup(1318, 1, 649.0013,-1360.7864,13.5868,0,0,-1,100.0);     		//Emisoras
	CreateDynamicPickup(1247, 1, 2756.0522,-2531.8672,13.6400,-1,-1,-1,100.0);     		//Entregar Milicia
	CreateDynamicPickup(1242, 1,2224.5872,-1742.6190,13.5624,-1,-1,-1,100.0);
	/**********************************PICKUPS********************************/
	// Pickups
	CreateDynamicPickup(1239, 1, 252.3920, 117.3864, 1003.2188,-1,-1,-1,100.0);		//CV
	CreateDynamicPickup(1239, 1, -2024.7489,-113.9102,1038.8187,5,5,-1,100.0);		//Trabajo Taxista
	CreateDynamicPickup(1239, 1, 95.9849,-162.9593,2.5938,0,0,-1,100.0); 		//Trabajo Mecanico
	CreateDynamicPickup(1239, 1, -177.6093,-1549.4420,6.3284,0,0,-1,100.0); 		//Trabajo Basurero
	CreateDynamicPickup(1247, 1, 1560.4916,-1693.5004,5.8906,-1,-1,-1,100.0);     	//Entregar LS
	CreateDynamicPickup(1247, 1, 1568.6255,-1693.5498,5.8906,-1,-1,-1,100.0);     	//Entregar LS
	CreateDynamicPickup(1247, 1, -1589.9172,716.4757,-5.2422,-1,-1,-1,100.0);     	//Entregar SF
	CreateDynamicPickup(1247, 1, -1590.2043,707.8610,-5.2422,-1,-1,-1,100.0);     	//Entregar SF
	CreateDynamicPickup(1247, 1, 2291.9436,2451.4192,10.8203,-1,-1,-1,100.0);     	//Entregar LV
	CreateDynamicPickup(1247, 1, 2291.8071,2468.6799,10.8203,-1,-1,-1,100.0);     	//Entregar LV
	CreateDynamicPickup(1247, 1, 235.2946,166.3358,1003.0300,-1,-1,-1,100.0);     	//Entregarse Interior
	CreateDynamicPickup(1247, 1, 240.4520,112.8195,1003.2188,-1,-1,-1,100.0);   	//Entregarse Interior
	CreateDynamicPickup(1275, 1, -170.3641,-1555.9705,6.5706,0,0,-1,100.0);  		//Ropa Basurero
	CreateDynamicPickup(1275, 1, 83.5759,-149.4921,2.5845,0,0,-1,100.0);			//Ropa Mecanico
	CreateDynamicPickup(1318, 1, 2014.8400,1150.4700,10.9203,0,0,-1,100.0);     	//Trabajo Prostitución LV
	CreateDynamicPickup(1318, 1, -49.9430,-269.3648,6.6332,0,0,-1,100.0);     		//ALBERGUE
	CreateDynamicPickup(1318, 1, 1836.9700,-1682.4700,13.4258,0,0,-1,100.0);     	//Club Alhambra
	CreateDynamicPickup(1318, 1, 2014.8101,1107.0100,10.9203,0,0,-1,100.0);     	//Club Stripsea
	CreateDynamicPickup(1318, 1, 1411.5956,-1699.4991,13.5395,0,0,-1,100.0);       //Edificio Municipal
	CreatePickup(1318,0,276.1852,122.1334,1004.6172,1);                             //Vestuario LSPD
	CreatePickup(1239,0,271.4031,1873.6595,8.7578,0);                               //Casilleros Armas
	CreatePickup(1239,0,279.0616,1865.0746,8.7578,0);                             	//Casilleros Chaleco
	CreatePickup(1239,0,278.0614,1873.7704,8.7578,0);                             	//Casilleros Uniformes
	CreatePickup(1239,0, 1459.7444,-1781.2385,1815.9910, 65); 						//Servicio Grua
	CreatePickup(1239,0, 1459.7446,-1777.6266,1815.9910, 65);                       //Vender Vehículo
	CreatePickup(1239,0, 1459.7449,-1774.0337,1815.9910, 65);                       //Vender Propiedad
	CreatePickup(1239,0,1178.1359,-1361.3021,14.2302,0);							//Trabajo Médico
	CreatePickup(1239,0,2122.9236,-2275.1238,20.6719,0);							//Trabajo Armero
	CreatePickup(1239,0,2226.3508,-1719.0221,13.5261,0);							//Trabajo Guardaespalda
	CreatePickup(1239,0,-65.0107,-340.5569,5.7070,0);								//Trabajo Camionero
	CreatePickup(1239,0,-242.4498,-236.5014,2.4297,0);								//Trabajo Trailero
	CreatePickup(1239,0,2583.8274,1644.3837,1087.5602,5);							//Trabajo Transportista
	CreatePickup(1279,0,2823.3486,-1420.3571,16.2562,0);							//Materiales 1 LS
	CreatePickup(1279,0,1422.6765,-1319.3438,13.5547,0);							//Materiales 2 LS
	CreatePickup(1279,0,-1735.7610,1244.9299,7.5469,0);								//Materiales 3 SF
	CreatePickup(1275,1,207.6111,-100.3305,1005.2578,-1);  							//Venta de Ropa
	CreatePickup(1275,1,161.5224,-83.2529,1001.8047,-1);  							//Venta de Ropa
	CreatePickup(1275,1,204.3374,-159.3523,1000.5234,-1);  							//Venta de Ropa
	CreatePickup(1275,1,206.3758,-8.0859,1001.2109,-1);  							//Venta de Ropa
	CreatePickup(1275,1,207.0922,-129.1800,1003.5078,-1);  							//Venta de Ropa
	CreateDynamicPickup(1239, 1,1218.4177,-1549.3975,13.5664,-1,-1,-1,100.0);
	// Casa 1

	CreateDynamicObject(1660, -2270.07739, -23.21504, 34.00061,   0.00000, 0.00000, 89.81997);
	CreateDynamicObject(19491, -2277.36328, -14.37268, 39.18981,   0.00000, 0.00000, 178.58746);
	CreateDynamicObject(19325, -2283.77563, -14.70356, 36.02671,   0.00000, 0.00000, 358.38928);
	CreateDynamicObject(19325, -2271.29102, -15.58237, 34.92504,   0.00000, 0.00000, 358.38928);
	CreateDynamicObject(19325, -2271.2922, -15.5796, 38.1492,   0.0000, 0.0000, 358.3893);
	CreateDynamicObject(19325, -2283.79614, -15.29216, 37.56814,   0.00000, 0.00000, 358.38928);
	CreateDynamicObject(19360, -2279.53711, -15.81921, 37.20731,   0.00000, 90.00000, 358.91687);
	CreateDynamicObject(19360, -2279.36792, -11.01106, 37.21340,   0.00000, 90.00000, 358.91687);
	CreateDynamicObject(19360, -2281.24243, -15.78124, 38.10018,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19360, -2277.84229, -15.68678, 38.45790,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19360, -2277.69263, -12.63804, 38.45790,   0.00000, 0.00000, 359.30511);
	CreateDynamicObject(19362, -2279.48901, -17.13823, 38.03102,   0.00000, 0.00000, 87.61581);
	CreateDynamicObject(1491, -2280.31860, -14.25948, 37.30159,   0.00000, 0.00000, 357.79807);
	CreateDynamicObject(19362, -2281.03955, -10.93697, 38.28719,   0.00000, 0.00000, 178.56532);
	CreateDynamicObject(19362, -2277.26270, -14.36980, 38.77588,   0.00000, 0.00000, 89.57728);
	CreateDynamicObject(19362, -2281.59424, -14.31658, 39.01590,   0.00000, 0.00000, 89.57730);
	CreateDynamicObject(19360, -2281.26465, -12.93083, 37.80422,   0.00000, 0.00000, -2.52000);
	CreateDynamicObject(19360, -2281.09424, -12.96569, 38.00422,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19360, -2279.38110, -15.44888, 39.82830,   0.00000, 90.00000, 358.91690);
	CreateDynamicObject(19360, -2279.35352, -10.94986, 39.82830,   0.00000, 90.00000, 358.85690);
	CreateDynamicObject(19360, -2279.51904, -14.03340, 39.82620,   0.00000, 90.00000, 359.33679);
	CreateDynamicObject(19362, -2279.19360, -9.45388, 38.38719,   0.00000, 0.00000, 90.15282);
	CreateDynamicObject(19362, -2279.30469, -9.42603, 38.69020,   0.00000, 0.00000, 89.03266);
	CreateDynamicObject(19362, -2279.51099, -17.14675, 37.56020,   0.00000, 0.00000, 87.61581);
	CreateDynamicObject(2272, -2280.31177, -10.05162, 38.40161,   0.00000, 0.00000, 358.41095);
	CreateDynamicObject(1702, -2280.49707, -11.56694, 37.30124,   0.00000, 0.00000, 88.73994);
	CreateDynamicObject(19360, -2279.79370, -14.20448, 37.21340,   0.00000, 90.00000, 358.91687);
	CreateDynamicObject(1823, -2281.15918, -15.65022, 37.27958,   0.00000, 0.00000, -90.30002);
	CreateDynamicObject(1823, -2281.15088, -14.33725, 37.27958,   0.00000, 0.00000, -90.30002);
	// Casa 2
	CreateDynamicObject(19503, 932.57257, 1976.01990, 12.76105,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19360, 928.81512, 1975.73108, 10.53680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 932.02417, 1975.77869, 10.53680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 935.23297, 1975.80212, 10.53680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 925.61517, 1975.68701, 10.52980,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 922.42865, 1975.63342, 10.53680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 926.77661, 1972.32837, 10.52680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 922.47351, 1972.15027, 10.53680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 925.67255, 1972.20703, 10.53680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 922.52148, 1968.64990, 10.53680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 925.72589, 1968.72485, 10.53680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 926.82935, 1968.84363, 10.52680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 921.23315, 1972.04395, 10.52680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 921.29291, 1968.54431, 10.52680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 921.13629, 1979.03186, 10.52680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 921.18359, 1975.53552, 10.52680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 922.49664, 1979.12598, 10.53680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 922.33881, 1982.32373, 10.52570,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 921.28662, 1982.52527, 10.52680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 925.55798, 1979.17590, 10.52680,   0.00000, 90.00000, 90.81370);
	CreateDynamicObject(19360, 925.50940, 1982.25195, 10.52570,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 928.76691, 1979.22681, 10.53680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 931.96820, 1979.27173, 10.53680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 935.17261, 1979.29773, 10.53680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 928.72034, 1982.29919, 10.52570,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 931.91541, 1982.35168, 10.52570,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 935.12262, 1982.64417, 10.52570,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 938.42908, 1975.83057, 10.53680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 941.62939, 1975.87231, 10.53680,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(19360, 944.06512, 1975.91052, 10.53580,   0.00000, 90.00000, 90.81470);
	CreateDynamicObject(1649, 921.82104, 1966.90063, 11.46354,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 925.87701, 1966.87244, 11.46354,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 919.73328, 1969.67969, 11.46350,   0.00000, 0.00000, 90.30640);
	CreateDynamicObject(1649, 919.67426, 1976.82080, 11.46350,   0.00000, 0.00000, 90.30640);
	CreateDynamicObject(1649, 924.35101, 1983.93506, 11.46354,   0.00000, 0.00000, 359.69897);
	CreateDynamicObject(1649, 932.01868, 1983.95593, 11.46350,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, 934.53107, 1974.40051, 11.95426,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19358, 937.71356, 1974.40845, 11.95426,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19358, 938.39941, 1977.48926, 11.95426,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19358, 936.89191, 1979.18848, 11.95430,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, 936.91473, 1982.38965, 11.95430,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, 935.85699, 1983.75598, 11.95430,   0.00000, 0.00000, 86.51940);
	CreateDynamicObject(19358, 932.64471, 1983.89429, 9.04939,   0.00000, 0.00000, 88.82820);
	CreateDynamicObject(19358, 929.50488, 1983.94177, 11.95020,   0.00000, 0.00000, 88.82820);
	CreateDynamicObject(19358, 921.02472, 1983.26868, 11.95600,   0.00000, 0.00000, 111.30029);
	CreateDynamicObject(19358, 929.46063, 1983.78210, 11.95600,   0.00000, 0.00000, 88.82820);
	CreateDynamicObject(19358, 927.14948, 1983.83118, 11.95600,   0.00000, 0.00000, 88.82820);
	CreateDynamicObject(19358, 923.94080, 1983.90039, 9.04939,   0.00000, 0.00000, 88.82820);
	CreateDynamicObject(19358, 919.73578, 1981.11401, 11.95430,   0.00000, 0.00000, 1.24904);
	CreateDynamicObject(19358, 919.75488, 1980.02649, 11.95430,   0.00000, 0.00000, 1.24904);
	CreateDynamicObject(19358, 919.82336, 1973.65662, 11.95430,   0.00000, 0.00000, 1.24904);
	CreateDynamicObject(19358, 919.83862, 1973.08301, 11.95430,   0.00000, 0.00000, 1.24904);
	CreateDynamicObject(19358, 927.90625, 1968.71973, 11.95430,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, 927.89844, 1971.87146, 11.95430,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, 927.88147, 1972.96729, 11.95430,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, 929.55396, 1974.45691, 11.95426,   0.00000, 0.00000, 89.18285);
	CreateDynamicObject(19358, 919.79199, 1976.82800, 9.04940,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(13187, 941.12640, 1966.88904, 11.18371,   0.00000, 0.00000, 89.69699);
	CreateDynamicObject(19388, 926.93506, 1975.71069, 11.95430,   0.00000, 0.00000, 36.61544);
	CreateDynamicObject(19388, 939.34869, 1975.99036, 11.95430,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19388, 926.00073, 1982.15576, 11.95430,   0.00000, 0.00000, 359.06027);
	CreateDynamicObject(19358, 926.01575, 1979.00854, 11.95430,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, 924.28149, 1979.31311, 11.95430,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19388, 921.34723, 1979.30432, 11.95430,   0.00000, 0.00000, 90.09337);
	CreateDynamicObject(19358, 927.66882, 1977.88660, 11.95426,   0.00000, 0.00000, 89.18285);
	CreateDynamicObject(19358, 934.14447, 1977.54285, 11.95426,   0.00000, 0.00000, 89.18285);
	CreateDynamicObject(19358, 935.20685, 1977.52295, 11.95426,   0.00000, 0.00000, 89.18285);
	CreateDynamicObject(19358, 925.98724, 1978.54590, 11.95430,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 926.09448, 1966.84192, 11.23014,   0.00000, 0.00000, 359.38477);
	CreateDynamicObject(970, 922.34985, 1966.84448, 11.23014,   0.00000, 0.00000, 359.38477);
	CreateDynamicObject(970, 919.66150, 1970.02917, 11.31972,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 919.61969, 1976.75439, 11.31972,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 932.51831, 1984.05090, 11.21466,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 923.86151, 1984.03760, 11.21466,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19362, 934.06293, 1975.84497, 13.47230,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 937.51514, 1976.05872, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 935.06055, 1979.16101, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 935.09467, 1982.38538, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 931.58777, 1979.20911, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 931.61041, 1982.41199, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 928.11517, 1982.11523, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 928.07642, 1978.90320, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 928.24731, 1976.13391, 13.47230,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 930.89594, 1975.99670, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 924.69891, 1977.37988, 13.47230,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 924.63550, 1980.54004, 13.47230,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 924.67316, 1982.32410, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 921.59003, 1982.15625, 13.47230,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 921.26093, 1978.97266, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 921.23212, 1975.75208, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 921.24335, 1972.59058, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 921.22742, 1969.38025, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 921.25922, 1967.87415, 13.47230,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 924.73218, 1967.89563, 13.47230,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 926.49939, 1967.91882, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 926.37817, 1971.07751, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 926.05078, 1974.23572, 13.46230,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 924.31073, 1974.23438, 13.47130,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 924.11401, 1970.99805, 13.47230,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 940.92352, 1976.05261, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 940.92352, 1976.05261, 13.47430,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19362, 941.59241, 1977.48987, 12.31760,   0.00000, 0.00000, 90.05999);
	CreateDynamicObject(19362, 941.55859, 1974.26599, 12.31760,   0.00000, 0.00000, 90.05999);
	CreateDynamicObject(19362, 943.21332, 1975.87292, 12.31760,   0.00000, 0.00000, 179.39993);
	CreateDynamicObject(19362, 940.88391, 1974.27271, 12.31760,   0.00000, 0.00000, 90.05999);
	CreateDynamicObject(1498, 942.49811, 1983.94519, 10.29375,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2072, 927.65363, 1974.16382, 11.63206,   0.00000, 0.00000, 57.12001);
	CreateDynamicObject(2072, 919.91486, 1967.18665, 11.63206,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2072, 927.64630, 1967.44153, 11.63206,   0.00000, 0.00000, 79.86000);
	CreateDynamicObject(1703, 922.59717, 1967.56372, 10.62350,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1703, 924.94885, 1967.56262, 10.62350,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1703, 927.27380, 1967.56714, 10.62350,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1703, 920.46680, 1972.31128, 10.62350,   0.00000, 0.00000, 90.53999);
	CreateDynamicObject(16780, 931.54095, 1980.65210, 13.38098,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, 923.56952, 1978.18848, 10.61230,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1429, 923.88678, 1978.54773, 11.38379,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2357, 931.48438, 1980.50256, 11.03165,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1721, 930.22339, 1979.40222, 10.62408,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1721, 932.37830, 1979.30090, 10.62408,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1721, 928.58435, 1980.44958, 10.62410,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1721, 932.45874, 1981.64319, 10.62410,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1721, 930.13153, 1981.66479, 10.62410,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1721, 934.31842, 1980.49194, 10.62410,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(16780, 923.82587, 1972.69653, 13.38098,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 926.03394, 1982.94226, 10.22230,   0.00000, 0.00000, 268.02005);
	CreateDynamicObject(1491, 939.38593, 1975.23303, 10.22230,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, 927.35138, 1975.11438, 10.22230,   0.00000, 0.00000, 126.17998);
	CreateDynamicObject(1491, 922.10883, 1979.33264, 10.22230,   0.00000, 0.00000, 180.89998);
	CreateDynamicObject(2630, 925.19739, 1980.46960, 10.61438,   0.00000, 0.00000, -180.29997);
	CreateDynamicObject(2627, 923.52808, 1980.47119, 10.62551,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2628, 920.72986, 1982.10596, 10.61474,   0.00000, 0.00000, 91.86001);
	CreateDynamicObject(14806, 927.16547, 1971.04175, 11.34536,   0.00000, 0.00000, -89.45998);
	CreateDynamicObject(1823, 940.55573, 1977.74377, 10.62490,   0.00000, 0.00000, -181.20000);
	CreateDynamicObject(1823, 942.12531, 1975.48633, 10.62490,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1823, 942.11731, 1977.25012, 10.62490,   0.00000, 0.00000, -89.88000);
	CreateDynamicObject(1823, 942.11731, 1977.25012, 10.62490,   0.00000, 0.00000, -89.88000);
	CreateDynamicObject(19357, 934.36115, 1974.10022, 11.66881,   0.00000, 0.00000, -90.11997);
	// Casa 3
	CreateDynamicObject(19456, -2387.62012, -27.74000, 34.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, -2381.94995, -7.46000, 34.86000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, -2381.97998, -3.31000, 34.86000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(669, -2386.71265, -14.23170, 34.67910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2231, -2393.87256, -25.48170, 35.01910,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19325, -2392.50269, -20.90170, 35.77910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14680, -2393.32251, -22.50170, 36.22910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2225, -2394.58252, -25.46170, 35.01910,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2356, -2392.73267, -19.44170, 35.91910,   84.00000, 0.00000, 265.00000);
	CreateDynamicObject(2636, -2392.79272, -17.84170, 35.64910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2636, -2392.87256, -17.87170, 35.60910,   0.00000, -172.00000, 4.00000);
	CreateDynamicObject(2231, -2395.43262, -25.48170, 35.01910,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2636, -2392.82251, -16.58170, 35.64910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2607, -2393.81274, -19.45170, 35.41910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, -2394.07251, -19.95170, 36.49910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2636, -2392.94263, -16.55170, 35.60910,   0.00000, -172.00000, 4.00000);
	CreateDynamicObject(2846, -2395.58252, -24.05170, 35.01910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1794, -2395.66260, -23.51170, 35.01910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19456, -2397.23999, -27.74000, 34.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2307, -2396.87256, -23.89170, 34.97910,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2596, -2397.35254, -24.99170, 36.69910,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19358, -2396.99268, -19.93170, 36.49910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2825, -2397.24268, -20.50170, 35.01910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, -2398.51270, -23.89170, 36.49910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, -2395.85254, -15.37170, 36.00910,   0.00000, 0.00000, 41.02000);
	CreateDynamicObject(2525, -2399.07251, -23.84170, 35.01910,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1491, -2398.51270, -21.55170, 34.73910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19388, -2398.52271, -20.80170, 36.49910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, -2396.99268, -16.30170, 35.91910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2524, -2399.11255, -22.41170, 35.02910,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19358, -2397.03271, -15.93170, 36.49910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, -2395.18262, -10.67170, 36.21910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, -2395.18262, -10.67170, 36.21910,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2526, -2400.29272, -24.99170, 35.01910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19497, -2396.94263, -14.46170, 36.60910,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19498, -2396.94263, -14.46170, 36.60910,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1491, -2398.51270, -18.35170, 34.73910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19388, -2398.52271, -17.60170, 36.49910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19388, -2400.06274, -22.21170, 36.49910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1723, -2395.72266, -9.74170, 35.05910,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1817, -2401.52271, -24.88170, 35.41910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19462, -2400.20264, -20.69170, 34.97910,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(13188, -2395.21265, -6.22170, 36.24910,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1491, -2400.84253, -22.18170, 34.73910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, -2401.49268, -23.89170, 36.49910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, -2401.52271, -23.98170, 35.41910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19358, -2401.58252, -23.89170, 36.49910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, -2397.25269, -11.22170, 35.03910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2073, -2397.45264, -11.11170, 37.74910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, -2401.45264, -22.77170, 36.49910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, -2395.98267, -7.33170, 35.03910,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1817, -2401.52271, -22.98170, 35.27910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1817, -2402.47266, -25.40170, 36.73910,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(2272, -2400.87256, -19.79170, 36.25910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1817, -2401.52271, -21.20170, 35.43910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, -2395.98267, -5.53170, 35.01910,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19358, -2401.45264, -19.57170, 36.49910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2289, -2397.87256, -9.15170, 36.74910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, -2401.58252, -19.57170, 36.49910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, -2401.52271, -19.42170, 35.43910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1817, -2401.67261, -19.16170, 38.03910,   0.00000, 90.00000, 180.00000);
	CreateDynamicObject(1724, -2399.43262, -12.58170, 35.05910,   0.00000, 0.00000, 114.00000);
	CreateDynamicObject(1817, -2403.83252, -25.52170, 35.45910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19462, -2402.92261, -20.69170, 34.95910,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(2296, -2402.05273, -17.66170, 35.06910,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2069, -2399.88257, -11.05170, 35.09910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1724, -2399.84253, -10.59170, 35.05910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1817, -2405.12256, -25.53170, 36.39910,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19379, -2400.44263, -11.05170, 34.97910,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19358, -2403.12256, -18.05170, 36.49910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1817, -2403.83252, -19.00170, 35.43910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19379, -2401.28271, -11.05170, 34.95910,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(14384, -2405.12256, -21.84170, 36.37910,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19456, -2406.86011, -27.74000, 34.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19462, -2405.04272, -20.69170, 34.97910,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(2636, -2402.80273, -13.48170, 35.68910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2636, -2403.84253, -14.99170, 35.68910,   0.00000, 0.00000, 286.60999);
	CreateDynamicObject(19454, -2401.60254, -7.33170, 35.03910,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19325, -2400.30273, -3.81170, 35.79910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19325, -2406.54272, -21.28170, 35.79910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, -2404.08252, -13.48170, 37.74910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2747, -2404.03271, -13.46170, 35.43910,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2800, -2404.09253, -13.54170, 35.64910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, -2401.60254, -5.59170, 35.01910,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(2636, -2404.06274, -12.00170, 35.68910,   0.00000, 0.00000, 94.84000);
	CreateDynamicObject(1649, -2403.36255, -9.05170, 35.94910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, -2403.36255, -9.05170, 35.94910,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2636, -2405.40259, -13.44170, 35.68910,   0.00000, 0.00000, 177.92000);
	CreateDynamicObject(19325, -2406.54272, -15.04170, 35.79910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, -2405.86255, -9.55170, 36.04910,   0.00000, 0.00000, 41.02000);
	CreateDynamicObject(1535, -2406.46265, -8.06170, 34.92910,   0.00000, 0.00000, 90.00000);
	// Casa 4
	CreateDynamicObject(3399, 2373.24683, -1144.99634, 26.07540,   180.00000, 0.00000, -91.20000);
	CreateDynamicObject(19505, 2372.61548, -1132.35510, 30.88690,   0.00000, 0.00000, 88.74000);
	CreateDynamicObject(19361, 2347.55176, -1294.79443, 49.79911,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19506, 2372.60571, -1132.33765, 30.88690,   0.00000, 0.00000, 88.74000);
	CreateDynamicObject(19506, 2372.60571, -1132.33765, 30.88690,   0.00000, 0.00000, 88.74000);
	CreateDynamicObject(19506, 2372.60571, -1132.33765, 30.88690,   0.00000, 0.00000, 88.74000);
	CreateDynamicObject(19506, 2372.60571, -1132.33765, 30.88690,   0.00000, 0.00000, 88.74000);
	CreateDynamicObject(19506, 2372.60571, -1132.33765, 30.88690,   0.00000, 0.00000, 88.74000);
	CreateDynamicObject(19506, 2372.60571, -1132.33765, 30.88690,   0.00000, 0.00000, 88.74000);
	CreateDynamicObject(19506, 2372.61548, -1132.35510, 30.88690,   0.00000, 0.00000, 88.74000);
	CreateDynamicObject(19506, 2372.66382, -1132.29712, 30.88690,   0.00000, 0.00000, 88.74000);
	CreateDynamicObject(19361, 2373.17505, -1136.72363, 30.55520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19361, 2373.19922, -1133.55066, 30.55520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19361, 2368.53809, -1131.71106, 30.55520,   0.00000, 0.00000, 88.25999);
	CreateDynamicObject(19390, 2371.68262, -1131.80750, 30.55520,   0.00000, 0.00000, 88.26000);
	CreateDynamicObject(19361, 2373.19922, -1133.55066, 30.55520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19361, 2368.57813, -1128.61218, 30.55520,   0.00000, 0.00000, 88.26000);
	CreateDynamicObject(19390, 2370.83740, -1130.25610, 30.55520,   0.00000, 0.00000, 180.00003);
	CreateDynamicObject(19390, 2371.68262, -1128.70508, 30.55520,   0.00000, 0.00000, 88.26000);
	CreateDynamicObject(19361, 2373.28955, -1127.22900, 30.55520,   0.00000, 0.00000, -3.42001);
	CreateDynamicObject(19361, 2373.35889, -1126.18323, 30.55520,   0.00000, 0.00000, -3.42000);
	CreateDynamicObject(19361, 2374.89087, -1128.60352, 30.55520,   0.00000, 0.00000, 88.25999);
	CreateDynamicObject(19390, 2377.32031, -1128.63611, 30.55520,   0.00000, 0.00000, 88.26000);
	CreateDynamicObject(1649, 2376.51221, -1138.51941, 29.45011,   0.00000, 0.00000, -1.83900);
	CreateDynamicObject(1649, 2378.77246, -1136.38464, 29.45010,   0.00000, 0.00000, 89.14009);
	CreateDynamicObject(1649, 2378.82764, -1133.74194, 29.45010,   0.00000, 0.00000, 89.14010);
	CreateDynamicObject(1649, 2369.18286, -1138.41064, 29.45010,   0.00000, 0.00000, -1.83900);
	CreateDynamicObject(1649, 2370.35571, -1124.50146, 29.45010,   0.00000, 0.00000, 178.75999);
	CreateDynamicObject(1649, 2378.95288, -1126.92078, 29.45010,   0.00000, 0.00000, 88.48009);
	CreateDynamicObject(1649, 2378.89526, -1130.01965, 29.45010,   0.00000, 0.00000, 89.14010);
	CreateDynamicObject(19361, 2373.19922, -1133.55066, 30.55520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 2366.83936, -1135.63586, 29.45010,   0.00000, 0.00000, 268.56006);
	CreateDynamicObject(1491, 2370.85303, -1129.50781, 28.79530,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1491, 2372.42871, -1131.79517, 28.79530,   0.00000, 0.00000, 175.56004);
	CreateDynamicObject(1491, 2378.05005, -1128.64807, 28.79530,   0.00000, 0.00000, 179.76007);
	CreateDynamicObject(1491, 2372.42847, -1128.73328, 28.79530,   0.00000, 0.00000, 179.76007);
	CreateDynamicObject(3061, 2376.54712, -1124.70483, 30.20000,   0.00000, 0.00000, 88.74000);
	CreateDynamicObject(19325, 2378.88794, -1127.93372, 29.62025,   0.00000, 0.00000, -1.02000);
	CreateDynamicObject(19325, 2378.76880, -1134.89514, 29.62025,   0.00000, 0.00000, -0.54000);
	CreateDynamicObject(19325, 2371.01489, -1124.56738, 29.21170,   0.00000, 0.00000, 88.50007);
	CreateDynamicObject(19325, 2366.83911, -1135.00891, 29.21170,   0.00000, 0.00000, 178.68018);
	CreateDynamicObject(2269, 2374.60474, -1129.18494, 30.68241,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1737, 2376.04028, -1135.53528, 29.04564,   0.00000, 0.00000, 89.94000);
	CreateDynamicObject(1417, 2372.46509, -1137.94690, 29.31810,   0.00000, 0.00000, -179.70000);
	CreateDynamicObject(2090, 2368.87158, -1135.31006, 28.98830,   0.00000, 0.00000, -0.72000);
	CreateDynamicObject(1799, 2370.70166, -1126.92151, 29.04523,   0.00000, 0.00000, 88.92002);
	CreateDynamicObject(1808, 2375.50537, -1129.04211, 29.04457,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2013, 2373.96289, -1126.41431, 28.94096,   0.00000, 0.00000, 86.75999);
	CreateDynamicObject(2017, 2373.89941, -1127.39941, 28.94018,   0.00000, 0.00000, 86.52000);
	CreateDynamicObject(1808, 2375.49487, -1128.87854, 29.04560,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2079, 2375.05566, -1135.15710, 29.64861,   0.00000, 0.00000, -180.54001);
	CreateDynamicObject(2079, 2376.93286, -1135.15710, 29.64860,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2079, 2376.01855, -1133.59949, 29.64860,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2079, 2376.01855, -1136.89819, 29.64860,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2831, 2376.07031, -1135.20337, 29.83964,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2819, 2374.98145, -1132.26746, 29.04498,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2844, 2371.90576, -1137.50049, 29.04608,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2846, 2368.86377, -1133.84351, 29.67440,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, 2369.39185, -1131.37390, 29.94658,   0.00000, 0.00000, -180.54005);
	// Casa 5
	CreateDynamicObject(19491, -2728.25610, -55.32800, 7.96720,   0.00000, 0.00000, 179.93021);
	CreateDynamicObject(19492, -2728.26611, -55.32550, 7.96720,   0.00000, 0.00000, 179.93021);
	CreateDynamicObject(1506, -2725.07886, -57.35420, 3.10900,   0.00000, 0.00000, 269.35532);
	CreateDynamicObject(1651, -2722.16382, -54.21780, 4.47020,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, -2722.15381, -54.75810, 4.47020,   0.00000, 0.00000, 90.05790);
	CreateDynamicObject(1649, -2722.16724, -54.53212, 7.31020,   0.00000, 0.00000, 90.05790);
	CreateDynamicObject(1649, -2722.16675, -57.96201, 7.31020,   0.00000, 0.00000, 90.05790);
	CreateDynamicObject(1649, -2734.72192, -54.46840, 7.43020,   0.00000, 0.00000, 269.87079);
	CreateDynamicObject(1649, -2734.70361, -58.29340, 4.22940,   0.00000, 87.00000, 270.00000);
	CreateDynamicObject(1649, -2734.73755, -57.66450, 7.23020,   -1.00000, 0.00000, 270.00000);
	CreateDynamicObject(1649, -2734.66724, -55.99130, 4.22940,   0.00000, 87.00000, 270.00000);
	CreateDynamicObject(1506, -2734.73364, -52.73708, 3.24900,   0.00000, 0.00000, 269.35529);
	CreateDynamicObject(630, -2722.65479, -52.93792, 7.06000,   0.00000, 0.00000, 311.27170);
	CreateDynamicObject(630, -2722.69629, -59.72608, 7.06000,   0.00000, 0.00000, 311.27170);
	CreateDynamicObject(2173, -2724.75708, -53.05228, 6.03900,   0.00000, 0.00000, 359.14322);
	CreateDynamicObject(1670, -2723.67920, -53.14822, 6.85270,   0.00000, 0.00000, 193.00000);
	CreateDynamicObject(1671, -2724.24048, -53.41575, 6.51980,   0.00000, 0.00000, -185.00000);
	CreateDynamicObject(1726, -2726.66333, -55.71808, 6.04000,   0.00000, 0.00000, 47.00000);
	CreateDynamicObject(1726, -2725.54980, -58.74281, 6.04000,   0.00000, 0.00000, 135.00000);
	CreateDynamicObject(1433, -2724.97119, -56.80975, 6.03940,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1670, -2725.27002, -56.46774, 6.57270,   0.00000, 0.00000, 225.32526);
	CreateDynamicObject(2857, -2724.79688, -56.82399, 6.54520,   0.00000, 0.00000, -25.00000);
	CreateDynamicObject(2229, -2722.49658, -55.96291, 6.03860,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2229, -2722.38330, -57.35289, 6.03860,   0.00000, 0.00000, 273.64761);
	CreateDynamicObject(2596, -2722.62427, -56.33270, 7.26960,   0.00000, 0.00000, 269.30304);
	CreateDynamicObject(1738, -2724.00708, -59.98100, 6.69710,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2202, -2727.83862, -52.87632, 6.03870,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2002, -2725.95557, -53.11810, 6.03999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1783, -2722.77515, -56.34430, 7.72920,   0.00000, 0.00000, 269.17499);
	CreateDynamicObject(19442, -2732.07153, -53.10850, 7.32620,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19397, -2732.07007, -55.30700, 7.32620,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19442, -2733.79077, -56.83560, 7.12620,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19442, -2732.79077, -56.83560, 7.12620,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19397, -2730.39111, -56.91440, 7.32620,   0.00000, 0.00000, -91.00000);
	CreateDynamicObject(19442, -2728.86011, -57.67450, 7.32620,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19442, -2728.86011, -59.27450, 7.32620,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, -2728.28467, -59.58486, 7.06000,   0.00000, 0.00000, 311.27170);
	CreateDynamicObject(630, -2731.43994, -51.07799, 7.06000,   0.00000, 0.00000, 311.27170);
	CreateDynamicObject(2063, -2730.87573, -59.72267, 6.16749,   0.00000, 0.00000, 176.56871);
	CreateDynamicObject(2517, -2734.15723, -53.77299, 6.04009,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2525, -2732.91870, -52.98212, 6.04078,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1202, -2733.71655, -56.32267, 6.04101,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2132, -2732.93262, -56.29313, 6.03960,   0.00000, 0.00000, 179.26814);
	CreateDynamicObject(2192, -2732.73901, -56.18163, 7.09070,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, -2732.03589, -56.05070, 5.63620,   0.00000, 0.00000, 89.58360);
	CreateDynamicObject(1491, -2731.11621, -56.87161, 5.63619,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19471, -2722.16919, -56.43628, 3.33064,   0.00000, 0.00000, 359.44238);
	CreateDynamicObject(19442, -2732.29297, -59.44620, 7.12620,   0.00000, 0.00000, 180.47990);
	CreateDynamicObject(19442, -2732.29297, -58.03430, 7.12620,   0.00000, 0.00000, 180.47990);
	CreateDynamicObject(19442, -2732.29297, -57.69430, 7.12620,   0.00000, 0.00000, 180.47990);
	CreateDynamicObject(19325, -2722.25195, -56.36411, 6.97092,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19325, -2722.14844, -55.70474, 4.39862,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19325, -2734.70947, -56.62324, 6.77488,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19325, -2734.72046, -57.61562, 3.80000,   0.00000, 0.00000, 0.00000);
	// Casa 6
	CreateDynamicObject(19491, -2728.22803, -159.94388, 8.14820,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19492, -2728.20923, -159.92166, 8.13930,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19471, -2715.95093, -160.67703, 3.32646,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1505, -2725.06250, -163.45731, 3.32820,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1506, -2734.65454, -158.85344, 3.42940,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, -2734.71460, -162.64270, 7.52840,   0.00000, 0.00000, 270.23459);
	CreateDynamicObject(1649, -2734.63940, -162.70375, 4.28323,   0.00000, 0.00000, 270.63663);
	CreateDynamicObject(1649, -2734.64990, -159.04031, 7.58840,   0.00000, 0.00000, 270.23459);
	CreateDynamicObject(1649, -2722.13354, -162.33470, 7.52840,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, -2722.18799, -159.11984, 4.43880,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19397, -2732.02051, -159.37520, 7.95200,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19442, -2732.02051, -156.96910, 7.95200,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19397, -2730.51001, -161.01070, 7.95200,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19442, -2733.80225, -161.01070, 7.51200,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19442, -2732.82227, -161.01070, 7.51200,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19442, -2728.97778, -161.73030, 7.51200,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19442, -2728.97778, -163.33031, 7.51200,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19442, -2728.97778, -164.93030, 7.51200,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2297, -2722.56177, -160.23730, 6.21130,   0.00000, 0.00000, 225.00000);
	CreateDynamicObject(2230, -2722.38794, -160.40860, 6.98190,   0.00000, 0.00000, 274.00000);
	CreateDynamicObject(2230, -2722.38794, -162.04860, 6.98190,   0.00000, 0.00000, 274.00000);
	CreateDynamicObject(2102, -2722.88281, -160.92920, 7.90950,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1736, -2722.54346, -160.94971, 8.46390,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2164, -2723.86865, -157.09850, 6.21190,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2161, -2725.43091, -157.10381, 6.21230,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2199, -2727.02222, -157.14340, 6.21200,   0.00000, 0.00000, 0.40301);
	CreateDynamicObject(2002, -2728.14429, -157.58989, 6.21199,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2294, -2731.42627, -155.53661, 6.21120,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2130, -2731.42627, -157.53200, 6.21300,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2426, -2731.67212, -157.47951, 8.03970,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2814, -2731.42969, -157.71068, 7.25790,   0.00000, 0.00000, 203.20206);
	CreateDynamicObject(2821, -2731.58521, -157.19136, 7.26572,   0.00000, 0.00000, 5.03365);
	CreateDynamicObject(1723, -2728.37207, -164.23070, 6.21230,   0.00000, 0.00000, 89.68267);
	CreateDynamicObject(1330, -2731.48291, -158.35143, 6.67250,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, -2722.84741, -158.29028, 7.24730,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, -2722.83081, -159.32257, 7.24730,   0.00000, 0.00000, 33.60771);
	CreateDynamicObject(630, -2722.69849, -162.66278, 7.24730,   0.00000, 0.00000, 33.60771);
	CreateDynamicObject(630, -2722.86914, -163.71359, 7.24730,   0.00000, 0.00000, -135.00000);
	CreateDynamicObject(630, -2728.32153, -161.23206, 7.24730,   0.00000, 0.00000, 33.60771);
	CreateDynamicObject(1665, -2728.08252, -161.87897, 7.10120,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1512, -2728.27539, -161.95615, 7.27860,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2054, -2728.25562, -162.21960, 6.71530,   0.00000, 0.00000, 84.00000);
	CreateDynamicObject(2843, -2728.93994, -164.15714, 6.69520,   0.00000, 0.00000, -18.00000);
	CreateDynamicObject(2200, -2723.75854, -164.60840, 6.21160,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(2151, -2726.21289, -164.54506, 6.21270,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(1828, -2729.45068, -159.18839, 6.21280,   0.00000, 0.00000, 182.08626);
	CreateDynamicObject(2839, -2726.37769, -164.45030, 7.26262,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1724, -2726.12720, -160.02396, 6.21250,   0.00000, 0.00000, 62.00000);
	CreateDynamicObject(1724, -2726.08032, -162.36314, 6.21250,   0.00000, 0.00000, -258.00000);
	CreateDynamicObject(1822, -2724.91748, -161.47495, 6.21156,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1670, -2724.48608, -161.16399, 6.70770,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2837, -2724.33008, -160.81769, 6.70760,   0.00000, 0.00000, 185.00000);
	CreateDynamicObject(1796, -2734.09180, -160.43240, 6.21260,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1738, -2732.31665, -157.55640, 6.81270,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1751, -2733.56201, -160.74680, 6.71750,   0.00000, 0.00000, 179.66020);
	CreateDynamicObject(2234, -2733.93945, -160.96249, 6.20270,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2844, -2734.45361, -158.71910, 6.92080,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, -2731.99805, -160.11440, 6.21210,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, -2731.30713, -160.98660, 6.21210,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2025, -2734.08301, -163.40117, 6.21090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2066, -2733.82471, -164.18950, 6.21230,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2066, -2733.83179, -161.63174, 6.21230,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2063, -2731.90088, -164.44366, 6.65290,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2526, -2729.50220, -163.04321, 6.21290,   0.00000, 0.00000, -89.00000);
	CreateDynamicObject(2517, -2733.16748, -162.53625, 6.21241,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2524, -2729.56445, -161.60719, 6.21220,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2525, -2731.96851, -161.58199, 6.21300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, -2722.11621, -159.21680, 7.52840,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, -2734.52515, -161.40768, 4.28323,   0.00000, 0.00000, 270.63663);
	CreateDynamicObject(19325, -2722.18628, -160.31929, 3.98907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19325, -2734.68091, -161.46175, 4.03714,   0.00000, 0.00000, 0.00000);
	// Casa 7
	CreateDynamicObject(19505, 1761.59534, -2094.57129, 14.82750,   0.00000, 0.00000, 90.11340);
	CreateDynamicObject(970, 1776.96094, -2102.92627, 13.09640,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1771.46228, -2102.92627, 13.09640,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1766.03381, -2102.92627, 13.09640,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1759.74927, -2102.92627, 13.09640,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1754.77808, -2102.92627, 13.09640,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19506, 1761.59534, -2094.57129, 14.82750,   0.00000, 0.00000, 90.11340);
	CreateDynamicObject(1535, 1763.95911, -2086.84521, 12.97830,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19390, 1766.17566, -2094.37769, 14.72310,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19390, 1763.37451, -2093.43311, 14.72310,   0.00000, 0.00000, 48.04470);
	CreateDynamicObject(19361, 1764.90405, -2092.68018, 14.48310,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19361, 1763.88110, -2090.98145, 14.48310,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2002, 1765.48132, -2091.33252, 12.98630,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(14532, 1767.20117, -2093.55420, 13.96960,   0.00000, 0.00000, 29.15531);
	CreateDynamicObject(19361, 1762.18005, -2088.46167, 14.48310,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19434, 1762.18005, -2090.86475, 14.48310,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19361, 1761.87366, -2098.91626, 14.48310,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19361, 1761.87366, -2095.78442, 14.48310,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19390, 1760.17798, -2094.88062, 14.72310,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19390, 1760.65796, -2091.66919, 14.72310,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19361, 1757.47424, -2091.66919, 14.48310,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2135, 1762.76440, -2087.52588, 12.98600,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2305, 1762.77795, -2090.41089, 12.98600,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2303, 1763.77136, -2090.39502, 12.98670,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2136, 1762.76563, -2089.50342, 12.98560,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2812, 1762.61145, -2089.29810, 14.04140,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19434, 1762.20007, -2091.62476, 14.48310,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2637, 1766.44800, -2088.76611, 13.40110,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(630, 1767.66565, -2087.18774, 14.01330,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2637, 1765.44177, -2097.80591, 13.40110,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2788, 1765.42908, -2099.74463, 13.51370,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2788, 1765.42908, -2096.14795, 13.51370,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2788, 1766.83350, -2097.84351, 13.51370,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2788, 1764.11792, -2097.84351, 13.51370,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19434, 1757.77625, -2094.88062, 14.48310,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19434, 1756.67615, -2094.88062, 14.48310,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19390, 1758.74927, -2093.18872, 14.72310,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, 1757.33545, -2094.50928, 13.79961,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1369, 1756.48389, -2092.36157, 13.57320,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2296, 1761.83264, -2088.23291, 12.98690,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2231, 1762.05298, -2087.59155, 12.98650,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2231, 1762.05298, -2091.38843, 12.98650,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1794, 1759.60779, -2089.56030, 12.98610,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1416, 1756.40479, -2090.84863, 13.56630,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2812, 1765.27625, -2098.07935, 13.82140,   0.00000, 0.00000, 26.46264);
	CreateDynamicObject(2090, 1757.19214, -2098.42358, 12.96100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(913, 1760.62866, -2100.02124, 13.80750,   0.00000, 0.00000, 180.25661);
	CreateDynamicObject(2844, 1760.52637, -2098.69702, 12.98670,   0.00000, 0.00000, -171.00000);
	CreateDynamicObject(2851, 1764.33936, -2099.91260, 12.98670,   0.00000, 0.00000, -171.00000);
	CreateDynamicObject(1491, 1765.37878, -2094.43066, 13.00630,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 1762.77136, -2092.92944, 13.00630,   0.00000, 0.00000, 318.07870);
	CreateDynamicObject(1491, 1759.87988, -2091.71606, 13.00630,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 1758.79346, -2093.92822, 13.00630,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, 1759.39832, -2094.86768, 13.00630,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2524, 1762.65564, -2091.55737, 12.98689,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2525, 1764.18628, -2091.58325, 12.98689,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2851, 1763.99365, -2100.06982, 12.98670,   0.00000, 0.00000, -171.00000);
	CreateDynamicObject(1649, 1765.65894, -2100.74731, 13.90630,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1758.36511, -2100.74634, 13.90630,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19466, 1755.88684, -2097.88257, 14.07130,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19466, 1758.48877, -2086.79810, 14.07130,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19466, 1760.71484, -2086.79199, 14.07130,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19466, 1767.83972, -2091.81372, 14.16790,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19466, 1767.83972, -2098.96973, 14.16790,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19466, 1767.83972, -2088.55591, 14.16790,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19466, 1767.83972, -2095.39478, 14.16790,   0.00000, 0.00000, 0.00000);
	// Casa 8
	CreateDynamicObject(970, 2471.58008, -2000.00000, 13.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 2477.32007, -2000.00000, 13.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1369, 2479.47998, -1989.59998, 13.63000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3092, 2480.18994, -1986.53992, 13.83000,   91.00000, 90.00000, 180.00000);
	CreateDynamicObject(1649, 2478.97998, -1994.40991, 13.57000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1649, 2478.97998, -1994.40991, 13.57000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2306, 2480.56982, -1988.15991, 13.03000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19361, 2480.66992, -1988.92993, 14.55000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2063, 2480.54980, -1991.59998, 13.93000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19361, 2480.66992, -1991.96997, 14.55000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19325, 2482.30981, -1983.70996, 13.64000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2090, 2480.45996, -1995.53992, 13.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2846, 2482.13989, -1987.21997, 13.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1794, 2482.55981, -1987.06995, 13.03000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19390, 2482.36987, -1990.44995, 14.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 2482.32983, -1991.19995, 12.79000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, 2481.41992, -1997.63000, 13.57000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 2481.41992, -1997.63000, 13.57000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 2482.66992, -1991.92993, 12.79000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 2483.26001, -1988.92993, 12.79000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19390, 2483.44995, -1991.94995, 14.55000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19390, 2484.04980, -1988.92993, 14.55000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2844, 2482.94995, -1996.92993, 13.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 2482.43994, -2000.00000, 13.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2296, 2485.28979, -1985.17993, 13.03000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2231, 2485.55981, -1984.51001, 13.03000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19506, 2484.63989, -1991.45996, 14.87000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19505, 2484.63989, -1991.45996, 14.87000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19361, 2485.68994, -1985.29993, 14.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2277, 2484.37988, -1994.77002, 14.58000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19361, 2485.66992, -1987.31995, 14.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(913, 2484.12988, -1997.00000, 13.85000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2231, 2485.55981, -1988.32996, 13.03000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19361, 2484.97998, -1992.62000, 14.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2135, 2486.26001, -1984.41992, 13.02000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2832, 2486.07983, -1986.35999, 14.08000,   0.00000, 0.00000, 62.00000);
	CreateDynamicObject(2524, 2485.92993, -1988.64990, 13.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2136, 2486.25000, -1986.51001, 13.02000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19361, 2484.97998, -1995.79993, 14.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2305, 2486.26001, -1987.46997, 13.02000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1535, 2487.00000, -1983.76001, 13.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 2486.17993, -1989.55994, 12.79000,   0.00000, 0.00000, 310.09000);
	CreateDynamicObject(19390, 2486.67993, -1990.16992, 14.55000,   0.00000, 0.00000, 39.96000);
	CreateDynamicObject(19361, 2487.19995, -1988.06995, 14.55000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2303, 2487.26978, -1987.47998, 13.02000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2525, 2487.47998, -1988.64990, 13.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2807, 2486.98999, -1994.59998, 13.55000,   0.00000, 0.00000, 178.00000);
	CreateDynamicObject(2846, 2487.21997, -1993.93994, 13.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19361, 2488.10986, -1989.58997, 14.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2747, 2488.84985, -1985.52991, 13.45000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2832, 2487.10986, -1996.78992, 13.03000,   0.00000, 0.00000, -55.00000);
	CreateDynamicObject(2002, 2488.73999, -1988.42993, 13.03000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, 2488.45996, -1991.21997, 12.79000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2807, 2488.54980, -1992.67993, 13.55000,   0.00000, 0.00000, 91.00000);
	CreateDynamicObject(2812, 2488.45996, -1994.52991, 13.87000,   0.00000, 0.00000, 55.00000);
	CreateDynamicObject(2747, 2488.51978, -1994.33997, 13.45000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19390, 2489.25000, -1991.27002, 14.55000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2807, 2488.42993, -1996.28992, 13.55000,   0.00000, 0.00000, -98.00000);
	CreateDynamicObject(630, 2490.42993, -1984.39990, 14.05000,   0.00000, 0.00000, -69.00000);
	CreateDynamicObject(1649, 2488.67993, -1997.63000, 13.57000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 2488.67993, -1997.63000, 13.57000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 2488.54004, -2000.00000, 13.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14532, 2490.30981, -1990.39990, 13.99000,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(19325, 2490.83984, -1987.07996, 13.64000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2807, 2489.97998, -1994.60999, 13.55000,   0.00000, 0.00000, 11.00000);
	CreateDynamicObject(19325, 2490.84985, -1994.14990, 13.64000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 2493.54004, -2000.00000, 13.03000,   0.00000, 0.00000, 0.00000);
	// Casa 9
	CreateDynamicObject(630, 1833.47998, 775.65002, 11.58000,   0.00000, 0.00000, 41.02000);
	CreateDynamicObject(630, 1843.48999, 769.83002, 11.54000,   0.00000, 0.00000, 41.02000);
	CreateDynamicObject(669, 1852.63000, 770.96997, 10.21000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1857.41003, 777.53998, 10.34000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1857.41003, 781.65997, 10.34000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, 1838.50000, 763.02002, 10.27000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 1840.82996, 766.84998, 10.27000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, 1840.82996, 763.65002, 10.27000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1535, 1832.88000, 777.14001, 10.46000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, 1844.16003, 774.53003, 11.75000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1649, 1844.16003, 774.53003, 11.75000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1723, 1843.62000, 775.46002, 10.59000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1724, 1839.91003, 772.62000, 10.59000,   0.00000, 0.00000, 114.00000);
	CreateDynamicObject(1724, 1839.50000, 774.60999, 10.59000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1794, 1843.68005, 761.69000, 10.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, 1834.21997, 759.66998, 11.93000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1817, 1835.51001, 766.20001, 10.97000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, 1835.51001, 759.67999, 10.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, 1836.87000, 759.79999, 12.27000,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(1817, 1837.67004, 766.03998, 13.57000,   0.00000, 90.00000, 180.00000);
	CreateDynamicObject(1817, 1837.81995, 765.78003, 10.97000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1817, 1837.81995, 764.00000, 10.97000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1817, 1837.81995, 762.21997, 10.81000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1817, 1837.81995, 761.21997, 10.95000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1817, 1837.81995, 760.32001, 10.95000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1817, 1842.08997, 773.97998, 10.57000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2063, 1842.34998, 768.90002, 11.45000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2069, 1839.45996, 774.15002, 10.63000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 1835.26001, 771.71997, 13.28000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 1841.89001, 774.09003, 13.28000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2225, 1844.76001, 759.73999, 10.55000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2231, 1843.91003, 759.71997, 10.55000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2231, 1845.46997, 759.71997, 10.55000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2272, 1838.46997, 765.40997, 11.79000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2289, 1841.46997, 776.04999, 12.28000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2296, 1837.29004, 767.53998, 10.60000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2307, 1842.46997, 761.31000, 10.51000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2356, 1846.60999, 765.76001, 11.45000,   84.00000, 0.00000, 265.00000);
	CreateDynamicObject(2524, 1840.22998, 762.78998, 10.56000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2525, 1840.27002, 761.35999, 10.55000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2526, 1839.05005, 760.21002, 10.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2596, 1841.98999, 760.21002, 12.23000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2607, 1845.53003, 765.75000, 10.95000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2636, 1833.93994, 771.76001, 11.22000,   0.00000, 0.00000, 177.92000);
	CreateDynamicObject(2636, 1835.50000, 770.21002, 11.22000,   0.00000, 0.00000, 286.60999);
	CreateDynamicObject(2636, 1835.28003, 773.20001, 11.22000,   0.00000, 0.00000, 94.84000);
	CreateDynamicObject(2636, 1836.54004, 771.71997, 11.22000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2636, 1846.40002, 768.65002, 11.14000,   0.00000, -172.00000, 4.00000);
	CreateDynamicObject(2636, 1846.46997, 767.33002, 11.14000,   0.00000, -172.00000, 4.00000);
	CreateDynamicObject(2636, 1846.55005, 767.35999, 11.18000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2636, 1846.52002, 768.62000, 11.18000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2747, 1835.31006, 771.73999, 10.97000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2800, 1835.25000, 771.65997, 11.18000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2825, 1842.09998, 764.70001, 10.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2846, 1843.76001, 761.15002, 10.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(13188, 1844.13000, 778.97998, 11.78000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(14384, 1834.21997, 763.35999, 11.91000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(14680, 1846.02002, 762.70001, 11.76000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19325, 1832.80005, 763.91998, 11.33000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19325, 1832.80005, 770.15997, 11.33000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19325, 1839.04004, 781.39001, 11.33000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19325, 1846.83997, 764.29999, 11.31000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, 1836.21997, 767.15002, 12.03000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19358, 1837.76001, 765.63000, 12.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, 1837.89001, 765.63000, 12.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, 1837.76001, 761.31000, 12.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, 1837.89001, 762.42999, 12.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, 1837.84998, 761.31000, 12.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, 1840.82996, 761.31000, 12.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, 1842.34998, 765.27002, 12.03000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19358, 1842.31006, 769.27002, 12.03000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19358, 1845.27002, 765.25000, 12.03000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19379, 1838.06006, 774.15002, 10.49000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1838.90002, 774.15002, 10.51000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19388, 1839.28003, 762.98999, 12.03000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19388, 1840.81995, 764.40002, 12.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19388, 1840.81995, 767.59998, 12.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1843.35999, 777.87000, 10.57000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19435, 1843.35999, 779.66998, 10.55000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19454, 1837.73999, 777.87000, 10.57000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19454, 1837.73999, 779.60999, 10.55000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19462, 1834.30005, 764.51001, 10.51000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19462, 1836.42004, 764.51001, 10.49000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19462, 1839.14001, 764.51001, 10.51000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19497, 1842.40002, 770.73999, 12.14000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19498, 1842.40002, 770.73999, 12.14000,   0.00000, 0.00000, 180.00000);
	// Casa 10
	CreateDynamicObject(19497, -1450.96265, 2647.85229, 57.14750,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(11461, -1474.37769, 2656.11426, 54.39063,   356.85840, 0.00000, 3.14159);
	CreateDynamicObject(8651, -1450.68042, 2634.96509, 55.84330,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19498, -1450.96216, 2647.84595, 57.14750,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19466, -1446.49231, 2639.37622, 57.28100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19466, -1446.49231, 2643.78101, 57.28100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19466, -1460.58594, 2639.07446, 57.28100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19466, -1460.58594, 2647.31445, 57.28100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1498, -1460.54333, 2654.41650, 55.48700,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(5043, -1449.19788, 2656.18091, 56.60290,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1500, -1458.23560, 2653.22900, 55.52420,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19466, -1454.38159, 2658.53271, 57.28100,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19466, -1456.31335, 2658.53271, 57.28100,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, -1449.19275, 2651.59033, 56.78990,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19471, -1446.49219, 2645.68188, 56.37970,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, -1448.11475, 2646.06421, 57.13140,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19358, -1449.71045, 2646.06519, 57.13140,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19388, -1451.22778, 2644.53296, 57.13040,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, -1448.08582, 2641.48657, 57.13140,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19358, -1451.22778, 2641.32031, 57.13040,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19388, -1451.22778, 2638.39185, 57.13040,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19431, -1450.48096, 2641.48657, 57.13140,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2524, -1448.17542, 2640.87964, 55.55479,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2526, -1447.02832, 2638.55273, 55.55510,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2517, -1449.62744, 2639.89355, 55.55444,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2525, -1449.40137, 2637.31348, 55.55520,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2845, -1449.88806, 2637.99365, 55.55464,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, -1448.95142, 2645.67725, 55.85794,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, -1450.65088, 2645.45313, 55.55227,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(937, -1447.16736, 2643.72852, 55.96050,   0.00000, 0.00000, 89.85050);
	CreateDynamicObject(2000, -1447.45227, 2644.98779, 55.55230,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1421, -1447.25122, 2642.12744, 55.49470,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1421, -1448.33545, 2642.78076, 55.49470,   0.00000, 0.00000, 59.60940);
	CreateDynamicObject(1742, -1451.15942, 2640.64429, 55.55380,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1742, -1451.13916, 2642.78564, 55.55380,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2002, -1451.69189, 2641.52710, 55.55340,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2297, -1449.53674, 2652.47241, 55.55530,   0.00000, 0.00000, 225.26283);
	CreateDynamicObject(948, -1451.09473, 2646.51855, 55.53962,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(948, -1451.62085, 2645.78589, 55.53962,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(948, -1451.68591, 2643.55933, 55.53962,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(948, -1451.78015, 2639.40259, 55.53962,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(948, -1451.80676, 2637.28760, 55.53962,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(948, -1450.61938, 2646.51807, 55.53962,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(948, -1450.14453, 2646.52319, 55.53960,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(948, -1449.67847, 2646.53662, 55.53960,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, -1455.52222, 2651.66577, 57.13040,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, -1455.52222, 2648.46753, 57.13040,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19388, -1456.60071, 2645.75488, 57.13040,   0.00000, 0.00000, 316.47849);
	CreateDynamicObject(19431, -1458.54175, 2644.56519, 56.91040,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19431, -1459.73438, 2644.56519, 56.91040,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19388, -1457.66553, 2643.09106, 57.13040,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, -1457.65552, 2639.88208, 57.13040,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19358, -1457.66553, 2638.37524, 57.13040,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1798, -1458.79565, 2640.40942, 55.55380,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2296, -1460.06604, 2644.32788, 55.54980,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2025, -1460.10266, 2641.37646, 55.55490,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2628, -1456.87500, 2637.81909, 55.55310,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2627, -1455.16577, 2637.93359, 55.55350,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2630, -1453.25659, 2637.52417, 55.55380,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(948, -1457.15430, 2642.06543, 55.53962,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(948, -1457.05676, 2644.37793, 55.53962,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(948, -1455.49805, 2646.19141, 55.53962,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(948, -1454.24695, 2652.85889, 55.53962,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1754, -1454.94385, 2651.98853, 55.55390,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1754, -1454.94385, 2651.00537, 55.55390,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1754, -1454.94385, 2650.02490, 55.55390,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1754, -1454.94385, 2649.09644, 55.55390,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(948, -1454.97595, 2648.30493, 55.53962,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1754, -1453.18152, 2652.76050, 55.55390,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1754, -1452.22046, 2652.76050, 55.55390,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(948, -1451.40332, 2652.92480, 55.53962,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1822, -1453.02271, 2650.16846, 55.55400,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(948, -1449.86523, 2649.06494, 55.53962,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, -1451.27051, 2643.79053, 55.55420,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, -1451.25867, 2637.65112, 55.55420,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, -1457.57935, 2642.32764, 55.55420,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, -1457.06897, 2645.18115, 55.55420,   0.00000, 0.00000, 46.25820);
	CreateDynamicObject(2305, -1460.00952, 2652.71216, 55.55370,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2303, -1460.02075, 2651.70386, 55.55500,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2137, -1460.01074, 2650.73462, 55.55540,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2138, -1460.01074, 2649.75879, 55.55550,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2139, -1460.01074, 2648.76001, 55.55520,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2140, -1460.01074, 2647.76660, 55.55510,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2136, -1460.01074, 2645.78296, 55.55390,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(948, -1457.71411, 2645.25391, 55.53960,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(948, -1456.03528, 2646.93237, 55.53960,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1432, -1457.40771, 2650.48218, 55.55398,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1432, -1457.49902, 2648.28101, 55.55398,   0.00000, 0.00000, 0.00000);
	// Casa 11
	CreateDynamicObject(630, 1655.30005, 2604.10010, 11.59000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 1662.37000, 2604.23999, 11.59000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 1662.52002, 2614.72998, 11.59000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(942, 1679.18994, 2607.64990, 12.23000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1654.38000, 2599.86011, 10.32000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1654.48999, 2606.48999, 11.23000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1654.48999, 2613.33008, 11.23000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1656.69995, 2603.40991, 11.23000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1658.50000, 2599.86011, 10.32000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1658.83997, 2620.62988, 11.23000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1660.97998, 2603.40991, 11.23000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1662.64001, 2599.86011, 10.32000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1666.80005, 2599.86011, 10.32000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1667.45996, 2620.62988, 11.23000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1672.62000, 2599.86011, 10.32000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1676.76001, 2599.86011, 10.32000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1680.89001, 2599.85010, 10.32000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1682.98999, 2601.89990, 10.34000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1208, 1680.07996, 2612.37012, 10.55000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, 1660.22998, 2615.22998, 10.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 1663.43994, 2615.22998, 10.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 1674.32996, 2611.66992, 10.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, 1674.32996, 2614.85010, 10.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1535, 1677.31006, 2620.54004, 10.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1654.58997, 2606.47998, 11.57000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, 1654.58997, 2606.47998, 11.57000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1649, 1654.58997, 2612.91992, 11.57000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, 1654.58997, 2612.91992, 11.57000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1649, 1657.10999, 2603.50000, 11.55000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 1657.10999, 2603.50000, 11.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1660.55005, 2603.50000, 11.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1660.55005, 2603.50000, 11.55000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 1658.81995, 2620.53003, 11.68000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 1658.81995, 2620.53003, 11.68000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1667.18005, 2620.53003, 11.68000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 1667.18005, 2620.53003, 11.68000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1723, 1656.31006, 2606.30005, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1723, 1659.92004, 2604.98999, 10.56000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1723, 1661.35999, 2608.48999, 10.56000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1794, 1655.85999, 2616.89990, 10.54000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, 1658.40002, 2606.60010, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, 1663.75000, 2610.78003, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1950, 1669.97998, 2617.39990, 11.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, 1679.04004, 2613.66992, 11.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 1658.81995, 2607.21997, 13.71000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 1659.43005, 2618.29004, 13.81000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 1670.22998, 2617.46997, 13.71000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2115, 1669.71997, 2617.47998, 10.57000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2115, 1677.50000, 2616.91992, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2120, 1668.15002, 2617.47998, 11.16000,   0.00000, 0.00000, 171.00000);
	CreateDynamicObject(2120, 1669.78003, 2615.98999, 11.16000,   0.00000, 0.00000, -84.00000);
	CreateDynamicObject(2120, 1669.69995, 2618.96997, 11.16000,   0.00000, 0.00000, 98.00000);
	CreateDynamicObject(2120, 1670.65002, 2615.98999, 11.16000,   0.00000, 0.00000, -98.00000);
	CreateDynamicObject(2120, 1670.68994, 2618.95996, 11.16000,   0.00000, 0.00000, 84.00000);
	CreateDynamicObject(2120, 1672.27002, 2617.42993, 11.16000,   0.00000, 0.00000, 4.00000);
	CreateDynamicObject(2120, 1675.18005, 2617.27002, 11.16000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2120, 1675.19995, 2618.59009, 11.16000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2120, 1676.31995, 2619.94995, 11.16000,   0.00000, 0.00000, 98.00000);
	CreateDynamicObject(2135, 1678.89001, 2614.63989, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2136, 1679.88000, 2616.63989, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2138, 1677.89001, 2614.64990, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2139, 1679.87000, 2618.61011, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2139, 1679.87000, 2619.59009, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2219, 1658.92004, 2606.83008, 11.10000,   -25.00000, 22.00000, -10.00000);
	CreateDynamicObject(2225, 1662.30005, 2615.35010, 10.58000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2272, 1655.18005, 2617.94995, 12.12000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2277, 1662.41003, 2607.44995, 12.35000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2289, 1674.17004, 2618.30005, 12.55000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2296, 1656.70996, 2614.85010, 10.57000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2296, 1662.64001, 2619.10010, 10.59000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2303, 1679.88000, 2617.62988, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2305, 1679.84998, 2614.64990, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2306, 1655.52002, 2616.83008, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2307, 1658.04004, 2616.84009, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2346, 1676.55005, 2613.38989, 10.54000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2524, 1663.68994, 2616.81006, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2525, 1663.67004, 2618.22998, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2526, 1663.80005, 2619.89990, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2573, 1677.93994, 2611.37012, 10.56000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2830, 1679.95996, 2616.60010, 11.60000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2832, 1677.55005, 2617.28003, 11.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2846, 1657.09998, 2616.26001, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(13187, 1676.09998, 2603.39990, 11.02000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19359, 1657.81995, 2615.23999, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19359, 1674.31995, 2618.80005, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19379, 1659.81006, 2615.58008, 10.47000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1670.31006, 2615.58008, 10.47000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19384, 1667.02002, 2610.75000, 11.18000,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19389, 1661.01001, 2615.23999, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19389, 1664.20996, 2615.23999, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19389, 1670.97998, 2612.40991, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19389, 1674.31995, 2612.40991, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19389, 1674.31995, 2615.59009, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19432, 1655.43005, 2615.25000, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19451, 1675.68994, 2614.04004, 11.67000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19462, 1659.13000, 2605.37012, 10.47000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19462, 1659.13000, 2608.87012, 10.47000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19462, 1659.13000, 2609.72998, 10.46000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19462, 1677.29004, 2615.57007, 10.47000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19462, 1678.67004, 2615.57007, 10.46000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19464, 1663.06995, 2618.13989, 10.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1665.72998, 2617.69995, 10.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19503, 1667.43994, 2612.57007, 12.69000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19504, 1667.43994, 2612.57007, 12.69000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 1655.30005, 2604.10010, 11.59000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 1662.37000, 2604.23999, 11.59000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 1662.52002, 2614.72998, 11.59000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(942, 1679.18994, 2607.64990, 12.23000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1654.38000, 2599.86011, 10.32000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1654.48999, 2606.48999, 11.23000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1654.48999, 2613.33008, 11.23000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1658.50000, 2599.86011, 10.32000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1658.83997, 2620.62988, 11.23000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1662.64001, 2599.86011, 10.32000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1666.80005, 2599.86011, 10.32000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1667.45996, 2620.62988, 11.23000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1672.62000, 2599.86011, 10.32000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1676.76001, 2599.86011, 10.32000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1680.89001, 2599.85010, 10.32000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1682.98999, 2601.89990, 10.34000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1208, 1680.07996, 2612.37012, 10.55000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, 1660.22998, 2615.22998, 10.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 1663.43994, 2615.22998, 10.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 1674.32996, 2611.66992, 10.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, 1674.32996, 2614.85010, 10.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1535, 1677.31006, 2620.54004, 10.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1654.58997, 2606.47998, 11.57000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, 1654.58997, 2606.47998, 11.57000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1649, 1654.58997, 2612.91992, 11.57000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, 1654.58997, 2612.91992, 11.57000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1649, 1657.10999, 2603.50000, 11.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1660.55005, 2603.50000, 11.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1658.81995, 2620.53003, 11.68000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 1658.81995, 2620.53003, 11.68000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1667.18005, 2620.53003, 11.68000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 1667.18005, 2620.53003, 11.68000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1723, 1656.31006, 2606.30005, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1723, 1659.92004, 2604.98999, 10.56000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1723, 1661.35999, 2608.48999, 10.56000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1794, 1655.85999, 2616.89990, 10.54000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, 1658.40002, 2606.60010, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, 1663.75000, 2610.78003, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1950, 1669.97998, 2617.39990, 11.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, 1679.04004, 2613.66992, 11.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 1658.81995, 2607.21997, 13.71000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 1659.43005, 2618.29004, 13.81000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 1670.22998, 2617.46997, 13.71000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2115, 1669.71997, 2617.47998, 10.57000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2115, 1677.50000, 2616.91992, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2120, 1668.15002, 2617.47998, 11.16000,   0.00000, 0.00000, 171.00000);
	CreateDynamicObject(2120, 1669.78003, 2615.98999, 11.16000,   0.00000, 0.00000, -84.00000);
	CreateDynamicObject(2120, 1669.69995, 2618.96997, 11.16000,   0.00000, 0.00000, 98.00000);
	CreateDynamicObject(2120, 1670.65002, 2615.98999, 11.16000,   0.00000, 0.00000, -98.00000);
	CreateDynamicObject(2120, 1670.68994, 2618.95996, 11.16000,   0.00000, 0.00000, 84.00000);
	CreateDynamicObject(2120, 1672.27002, 2617.42993, 11.16000,   0.00000, 0.00000, 4.00000);
	CreateDynamicObject(2120, 1675.18005, 2617.27002, 11.16000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2120, 1675.19995, 2618.59009, 11.16000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2120, 1676.31995, 2619.94995, 11.16000,   0.00000, 0.00000, 98.00000);
	CreateDynamicObject(2135, 1678.89001, 2614.63989, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2136, 1679.88000, 2616.63989, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2138, 1677.89001, 2614.64990, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2139, 1679.87000, 2618.61011, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2139, 1679.87000, 2619.59009, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2219, 1658.92004, 2606.83008, 11.10000,   -25.00000, 22.00000, -10.00000);
	CreateDynamicObject(2225, 1662.30005, 2615.35010, 10.58000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2272, 1655.18005, 2617.94995, 12.12000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2277, 1662.41003, 2607.44995, 12.35000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2289, 1674.17004, 2618.30005, 12.55000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2296, 1656.70996, 2614.85010, 10.57000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2296, 1662.64001, 2619.10010, 10.59000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2303, 1679.88000, 2617.62988, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2305, 1679.84998, 2614.64990, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2306, 1655.52002, 2616.83008, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2307, 1658.04004, 2616.84009, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2346, 1676.55005, 2613.38989, 10.54000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2524, 1663.68994, 2616.81006, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2525, 1663.67004, 2618.22998, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2526, 1663.80005, 2619.89990, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2573, 1677.93994, 2611.37012, 10.56000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2830, 1679.95996, 2616.60010, 11.60000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2832, 1677.55005, 2617.28003, 11.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2846, 1657.09998, 2616.26001, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19359, 1657.81995, 2615.23999, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19359, 1674.31995, 2618.80005, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19379, 1659.81006, 2615.58008, 10.47000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1670.31006, 2615.58008, 10.47000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19384, 1667.02002, 2610.75000, 11.18000,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19389, 1661.01001, 2615.23999, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19389, 1664.20996, 2615.23999, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19389, 1670.97998, 2612.40991, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19389, 1674.31995, 2612.40991, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19389, 1674.31995, 2615.59009, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19432, 1655.43005, 2615.25000, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19451, 1675.68994, 2614.04004, 11.67000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19462, 1659.13000, 2605.37012, 10.47000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19462, 1659.13000, 2608.87012, 10.47000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19462, 1659.13000, 2609.72998, 10.46000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19462, 1677.29004, 2615.57007, 10.47000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19462, 1678.67004, 2615.57007, 10.46000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19464, 1663.06995, 2618.13989, 10.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1665.72998, 2617.69995, 10.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19504, 1667.43994, 2612.57007, 12.69000,   0.00000, 0.00000, 0.00000);
	// Casa 12
	CreateDynamicObject(630, 1340.05005, 2604.23999, 11.59000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 1340.19995, 2614.72998, 11.59000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(942, 1356.87000, 2607.64990, 12.23000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1331.83997, 2599.77002, 10.38000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1336.00000, 2599.77002, 10.38000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1340.14001, 2599.77002, 10.38000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1344.26001, 2599.77002, 10.38000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1329.77002, 2601.85010, 10.38000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1350.28003, 2599.77002, 10.38000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1354.43994, 2599.77002, 10.38000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1334.38000, 2603.40991, 11.23000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1358.57996, 2599.77002, 10.38000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1338.66003, 2603.40991, 11.23000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1332.17004, 2606.48999, 11.23000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1332.17004, 2613.33008, 11.23000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1336.52002, 2620.62988, 11.23000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1345.14001, 2620.62988, 11.23000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1208, 1357.76001, 2612.37012, 10.55000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, 1352.01001, 2611.66992, 10.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, 1337.91003, 2615.22998, 10.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 1341.12000, 2615.22998, 10.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 1352.01001, 2614.85010, 10.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1535, 1354.98999, 2620.54004, 10.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1334.79004, 2603.50000, 11.55000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 1334.79004, 2603.50000, 11.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1338.22998, 2603.50000, 11.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1338.22998, 2603.50000, 11.55000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 1332.27002, 2606.47998, 11.57000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, 1332.27002, 2606.47998, 11.57000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1649, 1332.27002, 2612.91992, 11.57000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, 1332.27002, 2612.91992, 11.57000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1649, 1336.50000, 2620.53003, 11.68000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 1336.50000, 2620.53003, 11.68000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1344.85999, 2620.53003, 11.68000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 1344.85999, 2620.53003, 11.68000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1723, 1337.59998, 2604.98999, 10.56000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1723, 1333.98999, 2606.30005, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1723, 1339.04004, 2608.48999, 10.56000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1794, 1333.54004, 2616.89990, 10.54000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, 1336.07996, 2606.60010, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, 1341.43005, 2610.78003, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1950, 1347.66003, 2617.39990, 11.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, 1356.71997, 2613.66992, 11.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 1336.50000, 2607.21997, 13.71000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 1337.10999, 2618.29004, 13.81000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 1347.91003, 2617.46997, 13.71000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2115, 1347.40002, 2617.47998, 10.57000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2115, 1355.18005, 2616.91992, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2120, 1347.45996, 2615.98999, 11.16000,   0.00000, 0.00000, -84.00000);
	CreateDynamicObject(2120, 1348.32996, 2615.98999, 11.16000,   0.00000, 0.00000, -98.00000);
	CreateDynamicObject(2120, 1345.82996, 2617.47998, 11.16000,   0.00000, 0.00000, 171.00000);
	CreateDynamicObject(2120, 1349.94995, 2617.42993, 11.16000,   0.00000, 0.00000, 4.00000);
	CreateDynamicObject(2120, 1352.85999, 2617.27002, 11.16000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2120, 1347.38000, 2618.96997, 11.16000,   0.00000, 0.00000, 98.00000);
	CreateDynamicObject(2120, 1348.37000, 2618.95996, 11.16000,   0.00000, 0.00000, 84.00000);
	CreateDynamicObject(2120, 1352.88000, 2618.59009, 11.16000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2120, 1354.00000, 2619.94995, 11.16000,   0.00000, 0.00000, 98.00000);
	CreateDynamicObject(2135, 1356.56995, 2614.63989, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2136, 1357.56006, 2616.63989, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2138, 1355.56995, 2614.64990, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2139, 1357.55005, 2618.61011, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2139, 1357.55005, 2619.59009, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2219, 1336.59998, 2606.83008, 11.10000,   -25.00000, 22.00000, -10.00000);
	CreateDynamicObject(2225, 1339.97998, 2615.35010, 10.58000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2272, 1332.85999, 2617.94995, 12.12000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2277, 1340.08997, 2607.44995, 12.35000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2289, 1351.84998, 2618.30005, 12.55000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2296, 1334.39001, 2614.85010, 10.57000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2296, 1340.31995, 2619.10010, 10.59000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2303, 1357.56006, 2617.62988, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2305, 1357.53003, 2614.64990, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2306, 1333.19995, 2616.83008, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2307, 1335.71997, 2616.84009, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2346, 1354.22998, 2613.38989, 10.54000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2524, 1341.37000, 2616.81006, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2525, 1341.34998, 2618.22998, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2526, 1341.47998, 2619.89990, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2573, 1355.62000, 2611.37012, 10.56000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2830, 1357.64001, 2616.60010, 11.60000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2832, 1355.22998, 2617.28003, 11.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2846, 1334.78003, 2616.26001, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(13187, 1353.78003, 2603.39990, 11.02000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19359, 1335.50000, 2615.23999, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19359, 1352.00000, 2618.80005, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19379, 1337.48999, 2615.58008, 10.47000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1347.98999, 2615.58008, 10.47000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19384, 1344.69995, 2610.75000, 11.18000,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19389, 1348.66003, 2612.40991, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19389, 1352.00000, 2612.40991, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19389, 1338.68994, 2615.23999, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19389, 1341.89001, 2615.23999, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19389, 1352.00000, 2615.59009, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19432, 1333.10999, 2615.25000, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19451, 1353.37000, 2614.04004, 11.67000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19462, 1336.81006, 2605.37012, 10.47000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19462, 1336.81006, 2608.87012, 10.47000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19462, 1336.81006, 2609.72998, 10.46000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19462, 1354.96997, 2615.57007, 10.47000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19462, 1356.34998, 2615.57007, 10.46000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19464, 1343.41003, 2617.69995, 10.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1340.75000, 2618.13989, 10.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19503, 1345.12000, 2612.57007, 12.69000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19504, 1345.12000, 2612.57007, 12.69000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 1332.97998, 2604.10010, 11.59000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1329.77002, 2601.85010, 10.38000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1350.28003, 2599.77002, 10.38000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1354.43994, 2599.77002, 10.38000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1358.57996, 2599.77002, 10.38000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1332.17004, 2606.48999, 11.23000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1332.17004, 2613.33008, 11.23000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1336.52002, 2620.62988, 11.23000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1345.14001, 2620.62988, 11.23000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1208, 1357.76001, 2612.37012, 10.55000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, 1352.01001, 2611.66992, 10.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, 1337.91003, 2615.22998, 10.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 1341.12000, 2615.22998, 10.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 1352.01001, 2614.85010, 10.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1535, 1354.98999, 2620.54004, 10.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1334.79004, 2603.50000, 11.55000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 1334.79004, 2603.50000, 11.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1338.22998, 2603.50000, 11.55000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1338.22998, 2603.50000, 11.55000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 1332.27002, 2606.47998, 11.57000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, 1332.27002, 2606.47998, 11.57000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1649, 1332.27002, 2612.91992, 11.57000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1649, 1332.27002, 2612.91992, 11.57000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1649, 1336.50000, 2620.53003, 11.68000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 1336.50000, 2620.53003, 11.68000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1344.85999, 2620.53003, 11.68000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1649, 1344.85999, 2620.53003, 11.68000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1723, 1337.59998, 2604.98999, 10.56000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1723, 1333.98999, 2606.30005, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1723, 1339.04004, 2608.48999, 10.56000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1794, 1333.54004, 2616.89990, 10.54000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, 1336.07996, 2606.60010, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, 1341.43005, 2610.78003, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1950, 1347.66003, 2617.39990, 11.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, 1356.71997, 2613.66992, 11.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 1336.50000, 2607.21997, 13.71000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 1337.10999, 2618.29004, 13.81000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 1347.91003, 2617.46997, 13.71000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2115, 1347.40002, 2617.47998, 10.57000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2115, 1355.18005, 2616.91992, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2120, 1347.45996, 2615.98999, 11.16000,   0.00000, 0.00000, -84.00000);
	CreateDynamicObject(2120, 1348.32996, 2615.98999, 11.16000,   0.00000, 0.00000, -98.00000);
	CreateDynamicObject(2120, 1345.82996, 2617.47998, 11.16000,   0.00000, 0.00000, 171.00000);
	CreateDynamicObject(2120, 1349.94995, 2617.42993, 11.16000,   0.00000, 0.00000, 4.00000);
	CreateDynamicObject(2120, 1352.85999, 2617.27002, 11.16000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2120, 1347.38000, 2618.96997, 11.16000,   0.00000, 0.00000, 98.00000);
	CreateDynamicObject(2120, 1348.37000, 2618.95996, 11.16000,   0.00000, 0.00000, 84.00000);
	CreateDynamicObject(2120, 1352.88000, 2618.59009, 11.16000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2120, 1354.00000, 2619.94995, 11.16000,   0.00000, 0.00000, 98.00000);
	CreateDynamicObject(2135, 1356.56995, 2614.63989, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2136, 1357.56006, 2616.63989, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2138, 1355.56995, 2614.64990, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2139, 1357.55005, 2618.61011, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2139, 1357.55005, 2619.59009, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2219, 1336.59998, 2606.83008, 11.10000,   -25.00000, 22.00000, -10.00000);
	CreateDynamicObject(2225, 1339.97998, 2615.35010, 10.58000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2272, 1332.85999, 2617.94995, 12.12000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2277, 1340.08997, 2607.44995, 12.35000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2289, 1351.84998, 2618.30005, 12.55000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2296, 1334.39001, 2614.85010, 10.57000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2296, 1340.31995, 2619.10010, 10.59000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2303, 1357.56006, 2617.62988, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2305, 1357.53003, 2614.64990, 10.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2306, 1333.19995, 2616.83008, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2307, 1335.71997, 2616.84009, 10.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2346, 1354.22998, 2613.38989, 10.54000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2524, 1341.37000, 2616.81006, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2525, 1341.34998, 2618.22998, 10.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2526, 1341.47998, 2619.89990, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2573, 1355.62000, 2611.37012, 10.56000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2830, 1357.64001, 2616.60010, 11.60000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2832, 1355.22998, 2617.28003, 11.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2846, 1334.78003, 2616.26001, 10.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19359, 1335.50000, 2615.23999, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19359, 1352.00000, 2618.80005, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19379, 1337.48999, 2615.58008, 10.47000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19384, 1344.69995, 2610.75000, 11.18000,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19389, 1348.66003, 2612.40991, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19389, 1352.00000, 2612.40991, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19389, 1338.68994, 2615.23999, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19389, 1341.89001, 2615.23999, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19389, 1352.00000, 2615.59009, 12.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19432, 1333.10999, 2615.25000, 12.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19451, 1353.37000, 2614.04004, 11.67000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19462, 1336.81006, 2605.37012, 10.47000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19462, 1336.81006, 2608.87012, 10.47000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19462, 1336.81006, 2609.72998, 10.46000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19462, 1354.96997, 2615.57007, 10.47000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19462, 1356.34998, 2615.57007, 10.46000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19464, 1343.41003, 2617.69995, 10.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1340.75000, 2618.13989, 10.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19504, 1345.12000, 2612.57007, 12.69000,   0.00000, 0.00000, 0.00000);
	//BURDEL
	CreateDynamicObject(19859, 966.55151, -52.46260, 1001.37531,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(11711, 966.53741, -53.23390, 1003.04089,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19741, 966.62500, -53.06500, 1003.08228,   90.00000, 90.00000, 0.00000);
	CreateDynamicObject(19620, 966.53833, -53.20070, 1003.67072,   -90.00000, 0.00000, -90.00000);
	CreateDynamicObject(19822, 970.26343, -48.18420, 1001.21979,   0.00000, 0.00000, 270.40500);
	CreateDynamicObject(19818, 960.24030, -57.65086, 1000.71191,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19818, 960.03271, -57.61160, 1000.71191,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19824, 960.10101, -57.93270, 1000.63092,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2024, 959.32562, -58.15600, 1000.09839,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(321, 961.54358, -45.66540, 1001.01398,   0.00000, 115.00000, 22.35356);
	CreateDynamicObject(325, 960.89258, -45.77770, 1001.03387,   0.00000, 90.00000, 33.17600);
	CreateDynamicObject(2118, 960.86719, -45.64840, 1000.10339,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19823, 971.91608, -45.69839, 1001.21979,   0.00000, 0.00000, 270.40500);
	CreateDynamicObject(19820, 971.94049, -45.08165, 1001.21985,   0.00000, 0.00000, 270.40503);
	CreateDynamicObject(19822, 971.85309, -44.45580, 1001.21979,   0.00000, 0.00000, 270.40500);
	CreateDynamicObject(2588, 966.33441, -42.69520, 1002.27869,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19741, 2014.80420, 1150.45691, 14.11850,   0.00000, 10.00000, 10.00000);
	CreateDynamicObject(11720, 2016.05115, 1152.58691, 13.85700,   10.00000, 0.00000, 100.53670);
	CreateDynamicObject(3809, 2018.92041, 1150.28577, 12.69980,   0.00000, 0.00000, 54.81940);
	CreateDynamicObject(1670, 2013.60461, 1153.11609, 14.33210,   0.00000, 10.00000, 10.00000);
	CreateDynamicObject(3809, 2012.85608, 1154.15601, 12.69980,   0.00000, 0.00000, 54.81940);
	CreateDynamicObject(2714, 2015.18152, 1151.08875, 16.10840,   0.00000, 0.00000, 147.73750);
	CreateDynamicObject(2074, 2015.50586, 1151.63501, 16.86390,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(7093, 2032.43994, 1160.33264, 19.69620,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(7392, 2015.04858, 1107.43762, 25.06287,   0.00000, 0.00000, 303.10672);
	CreateDynamicObject(9121, 1944.80469, 1183.91406, 19.77310,   0.00000, 0.00000, 0.00000);
	new TextoStriptease = CreateDynamicObject(19353, 2015.181519, 1106.508301, 15.251000, 0.000000, 0.000000, 302.244507, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterialText(TextoStriptease, 0, "CLUB DE STRIPTEASE", 130, "Arial", 45, 1, 0xFF000000, 0, 1);
	new cobj2 = CreateObject(19003, 1405.479980, 592.429993, 1000.030029, 0.000000, 180.000000, 90.000000);
	SetObjectMaterial(cobj2, 1, 14592, "casinoVault01", "ab_shutter1", 0);
	// Camionero
	CreateDynamicObject(19377, 0.24922, -268.67804, 4.42006,   0.00000, 0.00000, -90.29996);
	CreateDynamicObject(19377, -4.33572, -268.67004, 4.42006,   0.00000, 0.00000, -90.29996);
	CreateDynamicObject(19377, -4.33572, -268.67004, 8.03933,   0.00000, 0.00000, -90.29996);
	CreateDynamicObject(19377, 0.24922, -268.67804, 5.55772,   0.00000, 0.00000, -90.29996);
	CreateDynamicObject(19906, -2.38402, -268.80139, 7.38030,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9361, -63.46594, -339.29431, 7.08195,   0.00000, 0.00000, 44.88001);
	CreateDynamicObject(16378, -64.34240, -341.52200, 5.44218,   0.00000, 0.00000, 0.00000);
 	//FABRICA METANFETAMINA FENIXZONE // CREDITOS KANOX \ OSVALDO \ KONEKO
	CreateObject(19552, -1998.816895, 222.956100, 1034.783203, 0.000000, 0.000000, 0.000000, 0.0); // 0
	CreateObject(11085, -2001.277710, 222.600204, 1040.706787, 0.000000, 0.000000, 0.000000, 0.0); // 0
	CreateDynamicObject(19376, -2016.017578, 189.778107, 1039.498901, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, -2005.197632, 189.778107, 1039.498901, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, -1994.497559, 189.778107, 1039.498901, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, -1983.837646, 189.778107, 1039.498901, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11700, -1995.663818, 192.188293, 1034.756226, 0.000000, 0.000000, 174.090698, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(3498, -1999.198608, 194.136597, 1044.254150, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 1, 11090, "cf_metals_sfse", "gen_chrome", 0);
	CreateDynamicObject(19924, -1999.198608, 194.129395, 1039.983154, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(3498, -1995.674561, 194.136597, 1044.254150, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 1, 11090, "cf_metals_sfse", "gen_chrome", 0);
	CreateDynamicObject(19924, -1995.678589, 194.129395, 1039.983154, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11090, -1995.749390, 194.120895, 1035.467407, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(3498, -1992.278564, 194.136597, 1044.254150, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 1, 11090, "cf_metals_sfse", "gen_chrome", 0);
	CreateDynamicObject(11089, -2022.444824, 196.445007, 1038.005249, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19924, -1992.278564, 194.129395, 1039.983154, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, -2027.477905, 198.186905, 1039.498901, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11235, -2017.181641, 198.876602, 1037.192505, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11089, -1973.890015, 196.324203, 1038.005249, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, -1975.122314, 197.451294, 1039.498901, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11087, -1979.972046, 198.994705, 1037.421021, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11727, -1999.162109, 204.507294, 1040.512329, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11233, -2001.252441, 204.797501, 1037.305908, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11236, -2001.179199, 204.829102, 1037.409424, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1449, -1999.167969, 205.376205, 1035.354858, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11234, -2017.238525, 208.750198, 1037.185913, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(3066, -2015.634888, 209.336777, 1035.836060, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, -2027.477905, 212.246902, 1039.498901, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19858, -1975.693970, 207.165604, 1036.063965, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11089, -2028.523926, 213.360596, 1038.005249, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11007, -2001.251099, 212.209000, 1040.090942, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1447, -2021.160889, 216.962204, 1036.216431, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, -1975.122314, 212.191299, 1039.498901, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1447, -2015.280884, 216.962204, 1036.216431, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19911, -1975.722290, 212.169495, 1034.815430, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1447, -2010.920898, 216.962204, 1036.216431, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1447, -2006.580933, 216.962204, 1036.216431, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1447, -2022.382690, 218.197693, 1036.216431, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1447, -2018.102661, 218.197693, 1036.216431, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1447, -2013.942749, 218.197693, 1036.216431, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(935, -2026.320435, 218.822800, 1039.497559, 0.000000, 0.000000, 39.629700, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, -2020.203003, 218.691498, 1035.252930, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1447, -2009.702759, 218.197693, 1036.216431, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, -2015.963013, 218.691498, 1035.252930, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1447, -2005.342773, 218.197693, 1036.216431, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, -2012.022949, 218.691498, 1035.252930, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, -2007.882935, 218.691498, 1035.252930, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(935, -2025.845215, 220.555603, 1035.377075, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(931, -2020.992676, 220.865295, 1035.808350, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(931, -2016.632690, 220.865295, 1035.808350, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(931, -2012.272705, 220.865295, 1035.808350, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(935, -2026.071167, 221.585037, 1035.377075, 0.000000, 0.000000, 61.718639, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(931, -2008.232666, 220.865295, 1035.808350, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(931, -2003.752686, 220.865295, 1035.808350, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(931, -1999.672729, 220.865295, 1035.808350, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(931, -1995.472656, 220.885300, 1035.808350, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1441, -1977.566284, 218.817703, 1035.456665, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(931, -2025.984985, 223.905746, 1035.808350, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11086, -2000.922852, 222.825806, 1042.744995, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14467, -1978.480835, 222.271255, 1037.085815, 0.000000, 0.000000, 269.401367, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, -2027.477905, 226.826904, 1039.498901, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(945, -2016.399780, 227.016403, 1044.365356, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 0, 19382, "all_walls", "mirror01", 0);
	fso_map = CreateDynamicObject(945, -2012.560059, 227.016403, 1044.365356, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 0, 19382, "all_walls", "mirror01", 0);
	CreateDynamicObject(937, -2016.399780, 226.999298, 1035.337891, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(931, -2025.984985, 227.305695, 1035.808350, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(945, -2008.720215, 227.016403, 1044.365356, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 0, 19382, "all_walls", "mirror01", 0);
	CreateDynamicObject(937, -2012.560059, 226.999298, 1035.337891, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11727, -2007.285034, 227.019806, 1041.790039, 90.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(937, -2008.720215, 226.999298, 1035.337891, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(945, -2004.880371, 227.036407, 1044.365356, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 0, 19382, "all_walls", "mirror01", 0);
	CreateDynamicObject(937, -2004.880737, 226.999298, 1035.337891, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(945, -2001.040649, 227.016403, 1044.365356, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 0, 19382, "all_walls", "mirror01", 0);
	CreateDynamicObject(937, -2001.025879, 226.999298, 1035.337891, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2079, -1982.398682, 227.843643, 1035.436279, 0.000000, 0.000000, 311.223419, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2635, -1983.586182, 229.233551, 1035.218628, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(931, -2018.088501, 233.184097, 1035.808350, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2079, -1981.359863, 229.467148, 1035.436279, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, -1975.122314, 228.771301, 1039.498901, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2120, -1984.681274, 230.740051, 1035.447266, 0.000000, 0.000000, 139.766190, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11727, -2009.985596, 234.065506, 1039.749878, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11236, -2010.198242, 234.187607, 1037.409424, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, -2012.608154, 234.718994, 1039.498901, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1778, -2018.053101, 234.981201, 1034.817749, 0.000000, 0.000000, 310.635712, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2079, -1982.112427, 231.265869, 1035.436279, 0.000000, 0.000000, 48.194672, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11727, -1999.705566, 234.065506, 1039.749878, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2534, -1997.094849, 233.589996, 1034.816284, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2534, -1996.114746, 233.589996, 1034.816284, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(935, -1992.555908, 233.243896, 1035.396362, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(3761, -1976.495972, 230.735001, 1036.790649, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2534, -1995.114746, 233.589996, 1034.816284, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, -2003.068115, 234.718994, 1039.498901, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2534, -1994.114746, 233.589996, 1034.816284, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2074, -2019.756714, 235.932297, 1040.939575, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19860, -2000.389526, 234.415894, 1036.027954, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19393, -2022.099121, 236.302795, 1036.551147, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, -1992.568115, 234.718994, 1039.498901, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1499, -2022.105103, 237.088394, 1034.782959, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2523, -2020.581543, 237.386200, 1034.818481, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2525, -2018.647827, 237.422394, 1034.818481, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19456, -2017.359741, 237.999893, 1040.051147, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19456, -2017.379761, 237.999893, 1036.551147, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2475, -2021.083740, 238.143906, 1035.088745, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2475, -2019.603760, 238.143906, 1035.088745, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2475, -2018.123779, 238.143906, 1035.088745, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, -1982.088257, 234.718994, 1039.498901, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19437, -2022.099121, 238.882797, 1036.551147, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19456, -2022.079102, 239.522797, 1040.051147, 180.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2074, -2020.336548, 239.633102, 1038.807495, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(19378, -2017.892456, 239.641495, 1035.458740, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 0, 19437, "all_walls", "mp_carter_bwall", 0);
	CreateDynamicObject(19393, -2022.099121, 241.289993, 1036.551147, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1499, -2022.105225, 242.080902, 1034.782959, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19437, -2022.099121, 243.697800, 1036.551147, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19456, -2026.819824, 244.419907, 1043.491089, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19456, -2026.819824, 244.419907, 1040.051147, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19393, -2025.342651, 244.419907, 1036.551147, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19437, -2022.936035, 244.419907, 1036.551147, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1499, -2026.125000, 244.396103, 1034.782959, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2475, -2021.519531, 244.382202, 1035.088745, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2475, -2020.039551, 244.382202, 1035.088745, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19456, -2017.379761, 244.539902, 1040.051147, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2475, -2018.559448, 244.382202, 1035.088745, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19456, -2017.379761, 244.539902, 1036.551147, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1723, -2019.713989, 245.164993, 1034.819946, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(630, -2018.611816, 245.188293, 1035.831055, 0.000000, 0.000000, 344.679504, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1723, -2026.222778, 247.955994, 1034.819946, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(16780, -2022.084595, 248.122299, 1039.042847, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2073, -2022.086304, 248.115005, 1038.736450, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2286, -2026.771729, 248.988098, 1036.791992, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19166, -2018.032959, 248.995102, 1036.396606, 90.000000, -90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(19376, -2017.922363, 249.428497, 1035.438843, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 0, 19437, "all_walls", "mp_motel_carpet1", 0);
	CreateDynamicObject(19379, -2022.524414, 249.716705, 1034.752930, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(362, -2018.334351, 249.939804, 1037.356323, 0.000000, 25.000000, -77.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(19376, -2026.908447, 250.151703, 1035.438843, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 0, 19437, "all_walls", "mp_motel_carpet1", 0);
	CreateDynamicObject(630, -2025.993042, 250.875000, 1035.831055, 0.000000, 0.000000, 344.679504, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2069, -2019.596924, 250.949997, 1034.880859, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1724, -2025.834839, 251.268799, 1034.819946, 0.000000, 0.000000, 41.833900, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2605, -2020.921631, 251.603424, 1035.226074, 0.000000, 0.000000, 141.846390, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19456, -2027.670654, 252.492996, 1036.551147, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -2020.016357, 252.589493, 1034.839355, 0.000000, 0.000000, 319.372803, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19305, -2022.979980, 252.916794, 1036.042969, -0.240000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19305, -2022.877441, 252.978195, 1036.103027, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19305, -2022.996948, 253.004303, 1036.103027, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(3092, -2024.558960, 253.623795, 1038.208862, 90.000000, 20.000000, 120.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2074, -2024.755859, 253.850098, 1037.563232, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19456, -2027.468750, 254.002304, 1037.893921, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2737, -2026.748657, 254.028107, 1036.692749, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19393, -2022.930542, 254.016205, 1036.551147, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1829, -2018.762451, 254.524399, 1035.302490, 0.000000, 0.000000, 272.027313, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(18856, -2025.436768, 254.956299, 1039.295288, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(19376, -2022.611206, 255.010193, 1035.438843, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 0, 19437, "all_walls", "mp_motel_carpet1", 0);
	fso_map = CreateDynamicObject(19376, -2017.922363, 259.062500, 1035.438843, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 0, 19437, "all_walls", "mp_motel_carpet1", 0);
	// Interior Emisoras
	CreateObject(14595, 381.04001, 169.10001, 1048.84998,   0.00000, 0.00000, 0.00000);
	CreateObject(14596, 390.45999, 153.80000, 1043.98999,   0.00000, 0.00000, 0.00000);
	CreateObject(14594, 362.70001, 169.20000, 1039.09998,   0.00000, 0.00000, 179.99001);
	CreateDynamicObject(348, 248.889999, 73.580002, 1002.789978, 90.000000, 0.000000, 0.000000);
	CreateDynamicObject(353, 249.389999, 73.190002, 1003.169983, 91.000000, 11.000000, -11.000000);
	CreateDynamicObject(997, 228.229996, 109.629997, 998.799988, 270.000000, 90.000000, 0.000000);
	CreateDynamicObject(997, 224.100006, 109.629997, 998.799988, 270.000000, 190.273926, 100.273865);
	CreateDynamicObject(997, 220.130005, 109.629997, 998.799988, 270.000000, 180.747864, 90.747894);
	CreateDynamicObject(997, 216.199997, 109.629997, 998.799988, 270.000000, 177.253418, 87.253418);
  	CreateDynamicObject(1216, 228.789993, 116.099998, 998.700012, 0.000000, 0.000000, -1.000000);
	CreateDynamicObject(1216, 227.889999, 116.110001, 998.700012, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1216, 226.990005, 116.099998, 998.700012, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1216, 226.190002, 116.110001, 998.700012, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1216, 224.740005, 116.120003, 998.700012, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1216, 223.259995, 116.120003, 998.700012, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1216, 221.699997, 116.120003, 998.700012, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1216, 220.210007, 116.120003, 998.700012, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1216, 214.899994, 116.040001, 998.700012, 0.000000, 0.000000, 1.000000);
	CreateDynamicObject(1216, 213.970001, 116.070000, 998.700012, 0.000000, 0.000000, 1.000000);
	CreateDynamicObject(1498, 213.970001, 127.120003, 997.989990, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1556, 275.760010, 121.339996, 1003.609985, 0.000000, 0.000000, 90.000000);
	CreateDynamicObject(1556, 251.770004, 76.800003, 1002.640015, 0.000000, 0.000000, 180.000000);
	CreateDynamicObject(1556, 207.380005, 141.449997, 1002.010010, 0.000000, 0.000000, 90.000000);
	CreateDynamicObject(1557, 250.899994, 131.020004, 1036.719971, 0.000000, 0.000000, 90.099998);
	CreateDynamicObject(1714, 238.919998, 109.980003, 1009.270020, 356.859985, 0.000000, 271.170013);
	CreateDynamicObject(1714, 229.080002, 126.709999, 1009.210022, 3.140000, 0.000000, 357.890015);
	CreateDynamicObject(1714, 1833.770020, -1283.089966, 108.309998, 0.000000, 0.000000, 264.359985);
	CreateDynamicObject(1715, 229.929993, 123.279999, 1009.210022, 356.859985, 0.000000, 180.449997);
	CreateDynamicObject(1715, 234.990005, 111.360001, 1009.219971, 3.140000, 0.000000, 75.349998);
	CreateDynamicObject(1715, 228.210007, 123.239998, 1009.219971, 3.140000, 0.000000, 163.119995);
	CreateDynamicObject(1715, 234.880005, 109.300003, 1009.219971, 3.140000, 0.000000, 107.320000);
	CreateDynamicObject(1715, 224.350006, 124.330002, 1009.219971, 3.140000, 0.000000, -116.250000);
	CreateDynamicObject(1715, 222.509995, 128.000000, 1009.219971, 356.859985, 0.000000, -3.090000);
	CreateDynamicObject(1715, 224.350006, 123.430000, 1009.219971, 3.140000, 0.000000, -116.250000);
	CreateDynamicObject(1715, 224.350006, 122.570000, 1009.219971, 3.140000, 0.000000, -116.250000);
	CreateDynamicObject(1715, 224.350006, 121.669998, 1009.219971, 3.140000, 0.000000, -116.250000);
	CreateDynamicObject(1715, 224.350006, 120.730003, 1009.219971, 3.140000, 0.000000, -116.250000);
	CreateDynamicObject(1715, 221.179993, 125.230003, 1009.219971, 3.140000, 0.000000, 116.870003);
	CreateDynamicObject(1715, 221.179993, 124.389999, 1009.219971, 3.140000, 0.000000, 116.870003);
	CreateDynamicObject(1715, 221.210007, 123.510002, 1009.219971, 3.140000, 0.000000, 116.250000);
	CreateDynamicObject(1715, 221.210007, 122.570000, 1009.219971, 3.140000, 0.000000, 116.250000);
	CreateDynamicObject(1715, 221.210007, 121.669998, 1009.219971, 3.140000, 0.000000, 116.250000);
	CreateDynamicObject(14856, 232.210007, 121.000000, 999.840027, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(14856, 220.059998, 121.000000, 999.840027, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(19142, 248.619995, 74.580002, 1002.809998, 0.000000, -91.000000, 0.000000);
	CreateDynamicObject(19142, 248.610001, 74.080002, 1002.820007, 76.000000, 0.000000, 353.000000);
	CreateDynamicObject(14414, 216.589996, 1448.000000, 1087.000000, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(2612, 232.679993, 120.750000, 1010.789978, 0.000000, 0.000000, -90.000000);
	CreateDynamicObject(2634, 248.179993, 75.900002, 1003.809998, 0.000000, 180.000000, 270.000000);
	CreateDynamicObject(2358, 250.690002, 73.309998, 1002.799988, 0.000000, 0.000000, 229.000000);
	CreateDynamicObject(2358, 249.580002, 73.139999, 1003.030029, 0.000000, 0.000000, 180.000000);
	CreateDynamicObject(2358, 249.580002, 73.139999, 1002.799988, 0.000000, 0.000000, 188.000000);
	CreateDynamicObject(2358, 248.820007, 73.150002, 1002.799988, 0.000000, 0.000000, 177.000000);
	CreateDynamicObject(2359, 249.330002, 73.660004, 1002.849976, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(14389, 215.970001, 1460.619995, 1093.449951, 0.000000, 0.000000, 180.000000);
	CreateDynamicObject(1886, 225.500000, 120.250000, 1012.890015, 25.000000, 0.000000, 142.000000);
	CreateDynamicObject(19164, 340.779999, 189.589996, 1041.150024, 91.000000, 0.000000, 0.000000);
	CreateDynamicObject(630, 361.059998, 153.919998, 1040.089966, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1495, 355.929993, 164.039993, 1044.890015, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1703, 393.100006, 191.199997, 1039.099976, 0.000000, 0.000000, 358.339996);
	CreateDynamicObject(1703, 384.899994, 186.699997, 1039.099976, 0.000000, 0.000000, 89.949997);
	CreateDynamicObject(1703, 384.899994, 181.699997, 1039.099976, 0.000000, 0.000000, 89.949997);
	CreateDynamicObject(1703, 378.500000, 174.899994, 1039.099976, 0.000000, 0.000000, 89.949997);
	CreateDynamicObject(1703, 371.899994, 164.699997, 1039.099976, 0.000000, 0.000000, 179.190002);
	CreateDynamicObject(1703, 378.600006, 161.600006, 1039.099976, 0.000000, 0.000000, 89.949997);
	CreateDynamicObject(1703, 361.200012, 164.699997, 1039.099976, 0.000000, 0.000000, 179.190002);
	CreateDynamicObject(1703, 346.809998, 176.529999, 1039.099976, 0.000000, 0.000000, 179.190002);
	CreateDynamicObject(1703, 342.269989, 176.610001, 1039.099976, 0.000000, 0.000000, 179.190002);
	CreateDynamicObject(1714, 393.600006, 182.800003, 1039.099976, 0.000000, 0.000000, 176.759995);
	CreateDynamicObject(1714, 395.500000, 183.699997, 1039.099976, 0.000000, 0.000000, 176.759995);
	CreateDynamicObject(1714, 390.500000, 180.899994, 1039.099976, 0.000000, 0.000000, 187.029999);
	CreateDynamicObject(1714, 392.200012, 181.000000, 1039.099976, 0.000000, 0.000000, 183.080002);
	CreateDynamicObject(1714, 390.899994, 179.500000, 1039.099976, 0.000000, 0.000000, 258.910004);
	CreateDynamicObject(1714, 395.000000, 179.399994, 1039.099976, 0.000000, 0.000000, 123.059998);
	CreateDynamicObject(1714, 390.700012, 177.600006, 1039.099976, 0.000000, 0.000000, 213.889999);
	CreateDynamicObject(1714, 394.500000, 177.300003, 1039.099976, 0.000000, 0.000000, 183.080002);
	CreateDynamicObject(1714, 363.230011, 158.850006, 1039.109985, 0.000000, 0.000000, 178.000000);
	CreateDynamicObject(1714, 338.049988, 185.679993, 1039.099976, 0.000000, 0.000000, 273.000000);
	CreateDynamicObject(1714, 337.869995, 179.020004, 1039.099976, 0.000000, 0.000000, 273.000000);
	CreateDynamicObject(1714, 339.899994, 160.259995, 1039.109985, 0.000000, 0.000000, 185.000000);
	CreateDynamicObject(1714, 337.450012, 157.570007, 1039.109985, 0.000000, 0.000000, 271.690002);
	CreateDynamicObject(1714, 345.109985, 147.179993, 1039.109985, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1723, 356.670013, 161.850006, 1039.109985, 0.000000, 0.000000, 270.079987);
	CreateDynamicObject(1723, 360.929993, 154.979996, 1039.099976, 0.000000, 0.000000, 90.029999);
	CreateDynamicObject(1723, 356.670013, 156.720001, 1039.109985, 0.000000, 0.000000, 270.079987);
	CreateDynamicObject(1723, 345.140015, 163.059998, 1039.109985, 0.000000, 0.000000, -91.000000);
	CreateDynamicObject(1723, 346.109985, 161.020004, 1039.109985, 0.000000, 0.000000, 89.040001);
	CreateDynamicObject(1723, 358.899994, 148.419998, 1039.109985, 0.000000, 0.000000, 180.190002);
	CreateDynamicObject(1723, 340.279999, 154.699997, 1039.109985, 0.000000, 0.000000, 179.369995);
	CreateDynamicObject(1806, 392.700012, 185.699997, 1039.099976, 0.000000, 0.000000, 188.250000);
	CreateDynamicObject(1806, 389.799988, 183.899994, 1039.099976, 0.000000, 0.000000, 183.509995);
	CreateDynamicObject(1806, 394.700012, 185.699997, 1039.099976, 0.000000, 0.000000, 182.729996);
	CreateDynamicObject(1806, 391.700012, 183.699997, 1039.099976, 0.000000, 0.000000, 174.029999);
	CreateDynamicObject(1806, 388.100006, 179.600006, 1039.099976, 0.000000, 0.000000, 273.549988);
	CreateDynamicObject(1806, 388.200012, 177.500000, 1039.099976, 0.000000, 0.000000, 281.440002);
	CreateDynamicObject(1817, 391.299988, 190.699997, 1039.099976, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1817, 384.299988, 185.600006, 1039.099976, 0.000000, 0.000000, 269.730011);
	CreateDynamicObject(1817, 395.950012, 190.630005, 1039.099976, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1817, 377.959991, 178.830002, 1039.099976, 0.000000, 0.000000, 269.730011);
	CreateDynamicObject(1817, 377.970001, 160.619995, 1039.099976, 0.000000, 0.000000, 269.730011);
	CreateDynamicObject(1817, 357.290009, 157.789993, 1039.109985, 0.000000, 0.000000, 89.389999);
	CreateDynamicObject(1817, 343.049988, 176.070007, 1039.109985, 0.000000, 0.000000, 359.720001);
	CreateDynamicObject(1817, 354.790009, 147.970001, 1039.109985, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1966, 389.100006, 155.300003, 1047.449951, 0.000000, 0.000000, 179.960007);
	CreateDynamicObject(1966, 394.299988, 154.300003, 1041.000000, 0.000000, 0.000000, 179.960007);
	CreateDynamicObject(1998, 392.700012, 183.199997, 1039.099976, 0.000000, 0.000000, 359.790009);
	CreateDynamicObject(1998, 389.500000, 181.199997, 1039.099976, 0.000000, 0.000000, 359.790009);
	CreateDynamicObject(2001, 390.399994, 194.199997, 1039.099976, 0.000000, 0.000000, 44.990002);
	CreateDynamicObject(2001, 383.500000, 194.199997, 1039.099976, 0.000000, 0.000000, 44.990002);
	CreateDynamicObject(2001, 383.500000, 191.600006, 1039.099976, 0.000000, 0.000000, 44.990002);
	CreateDynamicObject(2001, 396.500000, 184.500000, 1039.099976, 0.000000, 0.000000, 44.990002);
	CreateDynamicObject(2001, 385.000000, 175.100006, 1039.099976, 0.000000, 0.000000, 44.990002);
	CreateDynamicObject(2001, 381.700012, 169.100006, 1039.099976, 0.000000, 0.000000, 44.990002);
	CreateDynamicObject(2001, 365.100006, 169.000000, 1039.099976, 0.000000, 0.000000, 44.990002);
	CreateDynamicObject(2001, 355.529999, 169.119995, 1039.099976, 0.000000, 0.000000, 44.990002);
	CreateDynamicObject(2001, 348.339996, 176.440002, 1039.099976, 0.000000, 0.000000, 44.990002);
	CreateDynamicObject(2001, 348.350006, 162.970001, 1039.099976, 0.000000, 0.000000, 44.990002);
	CreateDynamicObject(2001, 348.299988, 156.850006, 1039.099976, 0.000000, 0.000000, 44.990002);
	CreateDynamicObject(2001, 349.829987, 151.820007, 1039.099976, 0.000000, 0.000000, 44.990002);
	CreateDynamicObject(2002, 397.000000, 186.100006, 1039.099976, 0.000000, 0.000000, 269.170013);
	CreateDynamicObject(2002, 342.529999, 162.979996, 1039.109985, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(2008, 394.700012, 184.199997, 1039.099976, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(2008, 391.500000, 182.199997, 1039.099976, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(2008, 389.500000, 179.199997, 1039.099976, 0.000000, 0.000000, 90.269997);
	CreateDynamicObject(2008, 389.500000, 177.199997, 1039.099976, 0.000000, 0.000000, 90.260002);
	CreateDynamicObject(2009, 396.399994, 179.699997, 1039.099976, 0.000000, 0.000000, 179.729996);
	CreateDynamicObject(2009, 393.399994, 177.600006, 1039.099976, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(2009, 347.640015, 184.399994, 1039.099976, 0.000000, 0.000000, 179.669998);
	CreateDynamicObject(2009, 366.220001, 157.089996, 1039.099976, 0.000000, 0.000000, 90.230003);
	CreateDynamicObject(2009, 345.660004, 183.410004, 1039.099976, 0.000000, 0.000000, 89.949997);
	CreateDynamicObject(2009, 344.660004, 185.389999, 1039.099976, 0.000000, 0.000000, 359.559998);
	CreateDynamicObject(2009, 344.910004, 155.399994, 1039.099976, 0.000000, 0.000000, 359.390015);
	CreateDynamicObject(2009, 346.769989, 151.910004, 1039.099976, 0.000000, 0.000000, 90.230003);
	CreateDynamicObject(2162, 393.100006, 174.800003, 1039.099976, 0.000000, 0.000000, 180.039993);
	CreateDynamicObject(2164, 395.000000, 174.899994, 1039.099976, 0.000000, 0.000000, 179.919998);
	CreateDynamicObject(2164, 397.000000, 174.899994, 1039.099976, 0.000000, 0.000000, 179.919998);
	CreateDynamicObject(2202, 396.899994, 183.800003, 1039.099976, 0.000000, 0.000000, 270.709991);
	CreateDynamicObject(2202, 391.600006, 175.199997, 1039.099976, 0.000000, 0.000000, 180.029999);
	CreateDynamicObject(2230, 341.250000, 146.199997, 1039.099976, 0.000000, 0.000000, 127.000000);
	CreateDynamicObject(2272, 343.970001, 152.960007, 1041.160034, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(2273, 366.230011, 155.820007, 1041.329956, 0.000000, 0.000000, 270.399994);
	CreateDynamicObject(2277, 346.540009, 189.110001, 1041.170044, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(2280, 384.899994, 185.199997, 1041.300049, 0.000000, 0.000000, 90.010002);
	CreateDynamicObject(2281, 396.799988, 180.199997, 1041.300049, 0.000000, 0.000000, 270.000000);
	CreateDynamicObject(2356, 366.380005, 158.259995, 1039.069946, 0.000000, 0.000000, 90.980003);
	CreateDynamicObject(2356, 346.739990, 184.630005, 1039.069946, 0.000000, 0.000000, 178.000000);
	CreateDynamicObject(2356, 345.850006, 185.729996, 1039.069946, 0.000000, 0.000000, 91.000000);
	CreateDynamicObject(2356, 345.820007, 184.350006, 1039.069946, 0.000000, 0.000000, 91.000000);
	CreateDynamicObject(2356, 365.980011, 155.679993, 1039.069946, 0.000000, 0.000000, 359.380005);
	CreateDynamicObject(2356, 364.899994, 155.630005, 1039.069946, 0.000000, 0.000000, -11.000000);
	CreateDynamicObject(2356, 343.140015, 185.839996, 1039.069946, 0.000000, 0.000000, 265.000000);
	CreateDynamicObject(2356, 343.250000, 183.179993, 1039.069946, 0.000000, 0.000000, -91.000000);
	CreateDynamicObject(2356, 345.959991, 155.119995, 1039.069946, 0.000000, 0.000000, 359.380005);
	CreateDynamicObject(2356, 347.049988, 153.100006, 1039.069946, 0.000000, 0.000000, 90.980003);
	CreateDynamicObject(2356, 343.480011, 156.619995, 1039.069946, 0.000000, 0.000000, 265.399994);
	CreateDynamicObject(2356, 343.440002, 155.330002, 1039.069946, 0.000000, 0.000000, -91.000000);
	CreateDynamicObject(2356, 346.820007, 150.500000, 1039.069946, 0.000000, 0.000000, 359.380005);
	CreateDynamicObject(2356, 345.760010, 150.500000, 1039.069946, 0.000000, 0.000000, -11.000000);
	CreateDynamicObject(2596, 397.100006, 185.399994, 1042.300049, 0.000000, 0.000000, 267.109985);
	CreateDynamicObject(2596, 342.260010, 154.479996, 1042.150024, 0.000000, 0.000000, 176.750000);
	CreateDynamicObject(2825, 356.799988, 158.190002, 1039.579956, 0.000000, 0.000000, 40.000000);
	CreateDynamicObject(2825, 345.160004, 156.130005, 1039.910034, 0.000000, 0.000000, 4.000000);
	CreateDynamicObject(2825, 345.950012, 151.860001, 1039.910034, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(2946, 385.799988, 194.800003, 1039.099976, 0.000000, 0.000000, 269.959991);
	CreateDynamicObject(2946, 389.000000, 194.800003, 1039.099976, 0.000000, 0.000000, 90.830002);
	CreateDynamicObject(3921, 341.570007, 149.970001, 1039.650024, 0.000000, 0.000000, 180.779999);
	CreateDynamicObject(14391, 363.239990, 161.199997, 1040.079956, 0.000000, 0.000000, 268.089996);
	CreateDynamicObject(14391, 335.730011, 185.660004, 1040.079956, 0.000000, 0.000000, 0.730000);
	CreateDynamicObject(14391, 335.690002, 178.839996, 1040.079956, 0.000000, 0.000000, 0.730000);
	CreateDynamicObject(14391, 337.730011, 162.589996, 1040.079956, 0.000000, 0.000000, 270.839996);
	CreateDynamicObject(14391, 335.100006, 157.750000, 1040.079956, 0.000000, 0.000000, 0.730000);
	CreateDynamicObject(14391, 345.220001, 144.770004, 1040.079956, 0.000000, 0.000000, 89.230003);
	CreateDynamicObject(14391, 326.559998, 139.820007, 1040.079956, 0.000000, 0.000000, 89.230003);
	CreateDynamicObject(14532, 364.829987, 153.210007, 1040.119995, 0.000000, 0.000000, 0.000000);
	// Edificio Municipal Interior
	CreateDynamicObject(19379, 1475.11304, -1779.23096, 1814.90503,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1464.68604, -1779.23096, 1814.90503,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1464.68604, -1788.83606, 1814.90503,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateObject(19379, 1485.60095, -1779.23096, 1814.90503,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1464.59399, -1769.60999, 1814.90503,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1454.28601, -1788.83606, 1814.90503,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1454.28601, -1779.23096, 1814.90503,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1454.28601, -1769.60999, 1814.90503,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1464.68604, -1761.00000, 1814.93005,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1464.68604, -1751.61804, 1814.93005,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1460.02698, -1760.70996, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1469.61597, -1760.68896, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1469.61694, -1751.08301, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1460.02295, -1751.09802, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1464.82202, -1751.13306, 1816.73999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2256, 1460.12500, -1757.41602, 1817.33801,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(1723, 1458.73401, -1766.37598, 1814.98999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1723, 1471.74500, -1775.01697, 1814.98999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1723, 1477.21899, -1775.01697, 1814.98999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1723, 1479.05701, -1783.35303, 1814.98999,   0.00000, 0.00000, 179.99400, 65, 20);
	CreateDynamicObject(1723, 1473.61499, -1783.30005, 1814.98999,   0.00000, 0.00000, 179.99400, 65, 20);
	CreateDynamicObject(19377, 1464.68604, -1761.00000, 1818.44104,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1464.68604, -1751.61804, 1818.44104,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1465.38098, -1791.10498, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1465.38098, -1794.26001, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1462.13794, -1791.10498, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1462.13501, -1794.29297, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1462.12598, -1795.45996, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1465.37097, -1797.46106, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1465.38098, -1794.26001, 1820.23999,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1465.37097, -1797.45996, 1820.23999,   0.00000, 179.99400, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1462.13501, -1794.29297, 1820.23999,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1465.37097, -1800.61401, 1819.93701,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19435, 1463.80005, -1790.29102, 1818.23999,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19435, 1463.79895, -1791.46399, 1818.23999,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19362, 1463.80005, -1793.70801, 1819.27002,   0.00000, 305.00000, 90.00000, 65, 20);
	CreateDynamicObject(19362, 1463.79895, -1796.52197, 1821.23401,   0.00000, 304.99600, 90.00000, 65, 20);
	CreateDynamicObject(19362, 1463.66101, -1798.61401, 1821.45300,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1462.12598, -1795.46106, 1820.23999,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1463.72498, -1800.16101, 1819.95300,   0.00000, 180.00000, 90.00000, 65, 20);
	CreateDynamicObject(19355, 1460.56006, -1800.16602, 1819.95300,   0.00000, 180.00000, 90.00000, 65, 20);
	CreateDynamicObject(19355, 1458.88098, -1798.64600, 1819.95300,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1458.87500, -1795.48901, 1819.95300,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19362, 1460.41394, -1798.61401, 1821.45300,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19362, 1460.58899, -1795.66199, 1822.50305,   0.00000, 230.00000, 90.00000, 65, 20);
	CreateDynamicObject(19355, 1458.88904, -1792.39905, 1819.95300,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1458.91296, -1795.33606, 1823.45300,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1458.90503, -1792.12805, 1823.45300,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1462.13000, -1795.43604, 1823.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1462.13501, -1792.22998, 1823.73999,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(19362, 1460.58899, -1792.98206, 1824.75696,   0.00000, 230.00000, 90.00000, 65, 20);
	CreateDynamicObject(19355, 1462.13904, -1789.11096, 1823.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1458.91003, -1788.95801, 1823.73999,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19362, 1460.58899, -1790.50696, 1826.84595,   0.00000, 230.00000, 90.00000, 65, 20);
	CreateDynamicObject(19362, 1458.91296, -1792.14099, 1826.95300,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1462.13904, -1789.11096, 1827.23999,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1458.91101, -1788.95300, 1827.23999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1454.28601, -1783.30701, 1823.68396,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19362, 1460.58899, -1789.12598, 1827.31201,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19362, 1462.13501, -1792.31396, 1827.23999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1491, 1456.55103, -1788.35400, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(1491, 1456.52795, -1767.57495, 1814.98999,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1491, 1462.60901, -1765.75403, 1814.98999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19358, 1468.98096, -1764.14600, 1816.73999,   0.00000, 0.00000, 326.99701, 65, 20);
	CreateDynamicObject(19388, 1463.39600, -1765.37805, 1816.73999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19358, 1466.54199, -1765.37805, 1816.73999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19358, 1460.18701, -1765.37805, 1816.73999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19377, 1485.60095, -1779.23096, 1818.44104,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1475.11304, -1779.23096, 1818.44104,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1464.68604, -1769.59900, 1818.44104,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1464.68604, -1779.23096, 1818.44104,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1464.68604, -1785.13599, 1818.46106,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1454.28601, -1785.13599, 1818.46106,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1454.18604, -1769.58899, 1818.44104,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1454.18604, -1776.02197, 1818.44104,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(2434, 1458.74902, -1784.44995, 1814.98999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2435, 1458.91602, -1783.32202, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2435, 1458.91003, -1782.39404, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2435, 1458.91003, -1781.46204, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2435, 1458.91003, -1780.54797, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2435, 1458.91003, -1779.63904, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2435, 1458.91003, -1778.71497, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2435, 1458.91003, -1777.78406, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2435, 1458.91003, -1776.86304, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2435, 1458.91003, -1775.93604, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2435, 1458.91003, -1775.01904, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2435, 1458.91003, -1774.09399, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2435, 1458.91003, -1773.16797, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2435, 1458.91003, -1772.23804, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2434, 1458.91602, -1771.32104, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19174, 1456.62097, -1779.84302, 1817.04102,   0.00000, 0.00000, 90.10000, 65, 20);
	CreateDynamicObject(19893, 1458.83704, -1780.81799, 1816.03101,   0.00000, 0.00000, -67.79900, 65, 20);
	CreateDynamicObject(19893, 1458.95496, -1779.17896, 1816.03101,   0.00000, 0.00000, -91.89900, 65, 20);
	CreateDynamicObject(19893, 1458.92297, -1777.25098, 1816.03101,   0.00000, 0.00000, -82.50000, 65, 20);
	CreateDynamicObject(19893, 1458.94897, -1775.62195, 1816.03003,   0.00000, 0.00000, -85.89900, 65, 20);
	CreateDynamicObject(19893, 1458.83997, -1772.08203, 1816.05005,   0.00000, 0.00000, -77.29900, 65, 20);
	CreateDynamicObject(19387, 1456.16003, -1787.62000, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19357, 1456.16003, -1784.49194, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19357, 1454.58801, -1789.28503, 1816.73999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19357, 1451.39697, -1789.29004, 1816.73999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19357, 1449.88306, -1789.09900, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19357, 1449.88306, -1783.50500, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19357, 1449.88306, -1781.41101, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19357, 1456.16003, -1781.46399, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19449, 1451.34998, -1780.93994, 1816.73999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19449, 1452.96497, -1778.92700, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19387, 1451.43896, -1783.66296, 1816.73999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19387, 1454.59900, -1783.65601, 1816.73999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19357, 1449.87500, -1786.20801, 1814.34094,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19357, 1449.88306, -1786.32800, 1819.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19173, 1456.60596, -1775.90100, 1817.08997,   0.00000, 0.00000, 89.99900, 65, 20);
	CreateDynamicObject(638, 1469.13098, -1767.87305, 1815.68604,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(638, 1469.13098, -1770.45398, 1815.68604,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(638, 1469.13098, -1773.05103, 1815.68604,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(638, 1465.67700, -1766.17603, 1815.68604,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(638, 1468.27600, -1766.17603, 1815.68604,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(19379, 1464.68604, -1783.30701, 1823.68396,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1475.08398, -1783.30701, 1823.68396,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1485.53503, -1783.30701, 1823.68396,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1454.28601, -1773.89697, 1823.68396,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1464.71594, -1773.89697, 1823.68396,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1475.08398, -1773.89697, 1823.68396,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1485.53503, -1773.89697, 1823.68396,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1454.28601, -1764.28894, 1823.68396,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1464.68604, -1764.28894, 1823.68396,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1475.08398, -1764.28894, 1823.68396,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1485.53503, -1764.28894, 1823.68396,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19358, 1463.82605, -1787.57898, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19358, 1457.20898, -1787.44104, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19450, 1464.89502, -1788.16504, 1825.52002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1469.63000, -1783.43701, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19450, 1456.61401, -1782.88501, 1825.52002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1456.61401, -1773.35706, 1825.52002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1479.19702, -1783.43201, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19450, 1456.61401, -1764.14001, 1825.52002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1488.77002, -1783.44299, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19450, 1464.89600, -1780.76196, 1825.52002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1472.73303, -1780.76196, 1825.52002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1480.11597, -1780.76196, 1825.52002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1488.56494, -1780.76196, 1825.52002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19388, 1468.79602, -1776.02002, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19358, 1466.41602, -1776.01196, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19358, 1471.80200, -1776.01904, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19358, 1473.61401, -1776.02002, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19388, 1475.99402, -1776.02002, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19388, 1484.13403, -1776.02002, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19358, 1478.54199, -1776.02002, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19358, 1481.26196, -1776.02002, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19358, 1487.30200, -1776.01904, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19358, 1488.54797, -1776.61206, 1825.52002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19358, 1488.54797, -1773.51904, 1822.52002,   0.00000, 179.99400, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1488.54797, -1767.12000, 1825.52002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1488.77002, -1770.76099, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19450, 1479.19702, -1770.75403, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19450, 1469.63000, -1770.75305, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19388, 1464.89697, -1769.23401, 1825.52002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19358, 1466.56897, -1767.72205, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19358, 1468.26196, -1766.20605, 1825.52002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1468.26294, -1759.87598, 1825.52002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1488.54797, -1759.53699, 1825.52002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1460.09802, -1767.71802, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19379, 1464.68604, -1754.77795, 1823.68396,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1475.08398, -1754.77795, 1823.68396,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1485.53503, -1754.77795, 1823.68396,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19450, 1473.09998, -1756.19897, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19450, 1482.63501, -1756.19202, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19431, 1488.11401, -1756.18799, 1825.52002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19379, 1489.90906, -1765.96106, 1824.52100,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19379, 1489.90796, -1756.87305, 1824.52100,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19357, 1484.73901, -1760.13306, 1822.81995,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19357, 1485.28003, -1758.50098, 1822.81995,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19357, 1484.73901, -1763.33801, 1822.81995,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19357, 1484.73999, -1766.52002, 1822.81995,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19357, 1484.73401, -1769.09302, 1822.81995,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19173, 1479.30298, -1756.33606, 1825.84497,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19174, 1472.38904, -1756.28503, 1825.89697,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19175, 1468.34900, -1762.64001, 1825.86804,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19172, 1471.11304, -1770.66602, 1825.88696,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(19174, 1481.05603, -1770.66699, 1825.87598,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(19377, 1485.53503, -1783.30701, 1827.32202,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1485.53503, -1773.89697, 1827.32202,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1485.53503, -1764.28894, 1827.32202,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1485.53503, -1754.77795, 1827.32202,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1475.08398, -1754.77795, 1827.32202,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1475.08398, -1764.28894, 1827.32202,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1464.68604, -1754.77795, 1827.32202,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1464.68604, -1764.28894, 1827.32202,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1454.28601, -1764.28894, 1827.32202,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1454.28601, -1773.89697, 1827.32202,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1454.28601, -1783.30701, 1827.32202,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1464.68604, -1783.30701, 1827.32202,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1475.08398, -1783.30701, 1827.32202,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1475.08398, -1773.89697, 1827.32202,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1464.68604, -1773.89697, 1827.32202,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19786, 1469.58398, -1769.99902, 1817.18201,   2.89900, 0.00000, -89.90000, 65, 20);
	CreateDynamicObject(19786, 1488.49402, -1768.07605, 1826.14795,   0.00000, 0.00000, -90.00000, 65, 20);
	CreateDynamicObject(19893, 1458.86304, -1782.71301, 1816.03003,   0.00000, 0.00000, -87.00000, 65, 20);
	CreateDynamicObject(1569, 1482.18103, -1780.90906, 1815.00000,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(1569, 1482.18103, -1777.91602, 1815.00000,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(630, 1460.74902, -1751.88696, 1816.09998,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(630, 1469.12500, -1751.73499, 1816.09998,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2258, 1465.99402, -1765.27002, 1817.12305,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(2257, 1469.48901, -1756.67297, 1817.02600,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2267, 1469.50305, -1761.83899, 1817.23804,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2258, 1475.52502, -1774.58301, 1817.21106,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2256, 1475.17603, -1783.72095, 1817.03894,   0.00000, 0.00000, 179.99400, 65, 20);
	CreateDynamicObject(1359, 1481.64404, -1775.04797, 1815.68896,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1359, 1481.68604, -1783.42102, 1815.68896,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1464.68604, -1798.40601, 1814.90503,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(2614, 1488.39697, -1763.90100, 1826.38098,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(18608, 1464.73401, -1766.79004, 1819.92700,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(18084, 1450.71704, -1786.33801, 1816.77295,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(18084, 1487.66296, -1772.17004, 1825.15198,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19460, 1482.23596, -1779.06702, 1813.44104,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19460, 1482.23596, -1779.06702, 1819.83997,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19460, 1477.53796, -1774.46899, 1813.44104,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19368, 1471.13599, -1774.46802, 1813.44104,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19368, 1471.13599, -1774.46899, 1819.83997,   0.00000, 180.00000, 90.00000, 65, 20);
	CreateDynamicObject(19460, 1477.53796, -1774.46899, 1819.83997,   0.00000, 180.00000, 90.00000, 65, 20);
	CreateDynamicObject(19460, 1477.53796, -1783.91199, 1813.44104,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19460, 1477.53796, -1783.91199, 1819.83997,   0.00000, 180.00000, 90.00000, 65, 20);
	CreateDynamicObject(19368, 1471.13599, -1783.91504, 1819.83997,   0.00000, 180.00000, 90.00000, 65, 20);
	CreateDynamicObject(2885, 1475.00696, -1774.33398, 1821.70203,   0.00000, 0.00000, 179.99400, 65, 20);
	CreateDynamicObject(2885, 1485.61304, -1774.33398, 1821.70203,   0.00000, 0.00000, 179.99400, 65, 20);
	CreateDynamicObject(2885, 1482.37500, -1779.84204, 1821.70203,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2885, 1485.61304, -1784.04199, 1821.70203,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2885, 1475.00696, -1784.04199, 1821.70203,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2885, 1469.75696, -1783.84094, 1813.70203,   0.00000, 90.00000, 90.00000, 65, 20);
	CreateDynamicObject(11435, 1469.07202, -1783.84302, 1819.05200,   0.00000, 0.00000, 179.99400, 65, 20);
	CreateDynamicObject(19368, 1469.62195, -1785.60706, 1819.83997,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19368, 1469.62195, -1785.60706, 1813.44104,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19368, 1471.16797, -1783.91199, 1813.44104,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2885, 1472.02197, -1789.55200, 1816.65601,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19368, 1469.62195, -1788.74805, 1819.83997,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19368, 1469.62195, -1788.74805, 1813.44104,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19368, 1466.89905, -1789.42004, 1819.83997,   0.00000, 180.00000, 90.00000, 65, 20);
	CreateDynamicObject(19368, 1466.89905, -1789.42004, 1813.44104,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19368, 1470.02002, -1789.42004, 1819.83997,   0.00000, 180.00000, 90.00000, 65, 20);
	CreateDynamicObject(19368, 1470.02002, -1789.42004, 1813.44104,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(14416, 1463.85706, -1794.96899, 1814.98999,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(19355, 1465.38098, -1791.10498, 1820.23999,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19355, 1462.13904, -1791.10498, 1820.23999,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19362, 1463.66101, -1798.61401, 1818.11694,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(14416, 1460.05798, -1793.15295, 1818.98999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19362, 1460.20398, -1798.61401, 1818.11694,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19368, 1463.68994, -1789.42004, 1819.83997,   0.00000, 180.00000, 90.00000, 65, 20);
	CreateDynamicObject(14416, 1460.05798, -1790.93103, 1820.53796,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19368, 1460.64001, -1789.42004, 1819.83997,   0.00000, 180.00000, 90.00000, 65, 20);
	CreateDynamicObject(19368, 1460.64001, -1789.42004, 1813.44104,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19368, 1458.16504, -1789.42102, 1813.44104,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19368, 1458.16504, -1789.41003, 1819.83997,   0.00000, 179.99400, 90.00000, 65, 20);
	CreateDynamicObject(11435, 1464.89404, -1789.42297, 1819.05200,   0.00000, 0.00000, 179.99400, 65, 20);
	CreateDynamicObject(11435, 1461.70105, -1789.41699, 1819.05200,   0.00000, 0.00000, 179.99400, 65, 20);
	CreateDynamicObject(2885, 1462.09900, -1789.55200, 1813.70203,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19368, 1456.56396, -1789.91699, 1813.44104,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19368, 1456.56396, -1789.91699, 1819.83997,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(2885, 1456.40698, -1793.80396, 1821.70203,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(11435, 1456.61401, -1787.94702, 1819.65100,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(11435, 1456.61401, -1786.25305, 1819.65100,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2885, 1456.40405, -1788.35400, 1824.18103,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(19368, 1456.56702, -1786.89001, 1819.83997,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19460, 1456.54602, -1781.91602, 1813.44104,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19460, 1456.54602, -1781.91602, 1819.83997,   0.00000, 179.99400, 0.00000, 65, 20);
	CreateDynamicObject(2885, 1456.40405, -1775.80200, 1818.90100,   0.00000, 90.00000, 269.99899, 65, 20);
	CreateDynamicObject(19460, 1456.54602, -1773.90002, 1813.44104,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19460, 1456.54602, -1773.89905, 1819.83997,   0.00000, 179.99400, 0.00000, 65, 20);
	CreateDynamicObject(2885, 1456.40503, -1762.12000, 1821.70203,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2885, 1456.39404, -1768.37305, 1824.18103,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(11435, 1456.60803, -1768.71301, 1819.65100,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(11435, 1456.60803, -1767.00598, 1819.65100,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19460, 1456.54602, -1764.30798, 1819.83997,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19368, 1456.54602, -1765.87402, 1813.44104,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2885, 1457.19897, -1765.61694, 1821.70203,   0.00000, 0.00000, 179.99400, 65, 20);
	CreateDynamicObject(2885, 1469.59094, -1765.61694, 1821.70203,   0.00000, 0.00000, 179.99400, 65, 20);
	CreateDynamicObject(2885, 1469.71594, -1769.00000, 1821.70203,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(11435, 1470.04895, -1774.48804, 1819.65100,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19460, 1457.84705, -1765.75806, 1813.44104,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19460, 1459.84802, -1765.75903, 1819.83997,   0.00000, 180.00000, 90.00000, 65, 20);
	CreateDynamicObject(19460, 1468.91602, -1765.75903, 1813.44104,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19460, 1469.15906, -1765.75903, 1819.83997,   0.00000, 180.00000, 90.00000, 65, 20);
	CreateDynamicObject(19460, 1469.57202, -1769.60803, 1813.44104,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19460, 1469.57202, -1769.60803, 1819.83997,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(11435, 1463.01904, -1765.81702, 1819.65100,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(11435, 1464.72400, -1765.82495, 1819.65100,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2885, 1462.64905, -1765.61096, 1824.18103,   0.00000, 0.00000, 179.99400, 65, 20);
	CreateDynamicObject(2885, 1456.40405, -1781.21106, 1821.70203,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(19377, 1471.47998, -1785.25500, 1820.24097,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(19377, 1470.73303, -1788.79602, 1815.91699,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(1649, 1467.68506, -1783.95898, 1816.65601,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(1649, 1465.45203, -1786.18103, 1816.65601,   0.00000, 0.00000, 269.99399, 65, 20);
	CreateDynamicObject(11435, 1465.01099, -1783.94299, 1819.65100,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(19377, 1466.74402, -1790.01501, 1820.24097,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1649, 1465.45203, -1790.55603, 1816.98901,   0.00000, 0.00000, 269.98901, 65, 20);
	CreateDynamicObject(11435, 1465.51196, -1788.87305, 1818.93799,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(19377, 1470.73303, -1788.79602, 1815.91699,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1470.68506, -1788.80798, 1817.34998,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1470.35803, -1788.33801, 1821.25500,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(19377, 1469.54504, -1788.74097, 1821.25500,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19377, 1470.31299, -1789.39600, 1821.25500,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2885, 1470.90698, -1784.06201, 1816.00195,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2885, 1470.90698, -1784.06201, 1823.97998,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2885, 1465.63000, -1789.52600, 1816.00195,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2885, 1465.63000, -1789.52600, 1823.97998,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2885, 1465.60901, -1793.91797, 1821.70203,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19368, 1467.91296, -1783.93005, 1813.44104,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19368, 1465.47400, -1788.51501, 1813.44104,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19441, 1466.31201, -1783.93201, 1813.44104,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19368, 1465.49402, -1785.54297, 1813.44104,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19368, 1467.88696, -1783.91199, 1819.83997,   0.00000, 180.00000, 90.00000, 65, 20);
	CreateDynamicObject(19368, 1465.49402, -1785.62903, 1819.83997,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(19368, 1465.47400, -1788.56604, 1819.83997,   0.00000, 180.00000, 0.00000, 65, 20);
	CreateDynamicObject(2648, 1458.67505, -1772.57800, 1815.61304,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2648, 1458.67505, -1774.08398, 1815.61304,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2648, 1458.67505, -1775.93896, 1815.61304,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2648, 1458.67505, -1777.80603, 1815.61304,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(19441, 1466.41003, -1783.91199, 1819.83997,   0.00000, 180.00000, 90.00000, 65, 20);
	CreateDynamicObject(2648, 1458.67505, -1779.65601, 1815.61304,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2648, 1458.67505, -1781.43506, 1815.61304,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2648, 1458.67505, -1783.33704, 1815.61304,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(3920, 1472.07495, -1785.50696, 1816.96594,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(3920, 1466.97400, -1791.54297, 1816.47595,   0.00000, 0.00000, 91.00000, 65, 20);
	CreateDynamicObject(19894, 1458.97900, -1773.65295, 1816.06006,   0.00000, 0.00000, -88.80000, 65, 20);
	CreateDynamicObject(862, 1466.11304, -1787.23303, 1816.00403,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19893, 1468.83704, -1758.62598, 1815.50598,   0.00000, 0.00000, 20.50000, 65, 20);
	CreateDynamicObject(862, 1466.41199, -1785.08301, 1816.00403,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(862, 1468.71204, -1784.82300, 1816.00403,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2168, 1458.74097, -1782.66296, 1816.23999,   180.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(677, 1467.52502, -1784.59302, 1816.00403,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2168, 1458.74097, -1780.78101, 1816.25806,   179.99400, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1599, 1465.76001, -1787.62500, 1816.18799,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1600, 1465.95105, -1785.71802, 1816.40405,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2168, 1458.74097, -1779.02600, 1816.25806,   179.99400, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1601, 1467.12097, -1784.72302, 1816.39502,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2168, 1458.74097, -1777.22205, 1816.25806,   179.99400, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2168, 1458.74097, -1775.43005, 1816.25806,   179.99400, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1602, 1468.33801, -1784.51196, 1817.19202,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2168, 1458.74097, -1773.57898, 1816.25806,   179.99400, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1605, 1466.52600, -1786.47998, 1816.41602,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1610, 1465.83801, -1784.58801, 1816.00403,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1611, 1465.85400, -1786.73901, 1816.00403,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1714, 1457.80701, -1772.37903, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(1714, 1457.65405, -1774.09302, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(1714, 1457.83203, -1776.06702, 1814.98999,   0.00000, 0.00000, 140.00000, 65, 20);
	CreateDynamicObject(1714, 1457.12598, -1777.66699, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(1714, 1457.48303, -1779.37805, 1814.98999,   0.00000, 0.00000, 76.00000, 65, 20);
	CreateDynamicObject(1714, 1457.40405, -1781.26196, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(1714, 1457.29297, -1783.40503, 1814.98999,   0.00000, 0.00000, 118.00000, 65, 20);
	CreateDynamicObject(1502, 1450.66199, -1783.69800, 1814.98999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2614, 1456.66602, -1777.67603, 1817.31006,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(1502, 1455.35095, -1783.64905, 1814.98999,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(2523, 1454.18799, -1788.71802, 1814.98999,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(2523, 1452.94800, -1788.73901, 1814.98999,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(2162, 1456.62305, -1784.23303, 1816.56604,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2162, 1456.64697, -1772.56201, 1816.56604,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(1846, 1452.95996, -1788.20398, 1816.98999,   90.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2894, 1458.88306, -1772.77405, 1816.04602,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2894, 1458.88403, -1774.48206, 1816.04602,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2894, 1458.84302, -1776.29199, 1816.04602,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2894, 1458.81604, -1778.09204, 1816.04602,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2894, 1458.85803, -1779.91797, 1816.04602,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2894, 1458.84802, -1781.71899, 1816.04602,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2894, 1458.84302, -1783.49402, 1816.04602,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(1726, 1463.73499, -1751.84705, 1815.01501,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1726, 1468.90405, -1755.69202, 1815.01501,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1724, 1461.28796, -1751.86902, 1815.01501,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19443, 1448.22998, -1786.71997, 1816.00903,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(1724, 1467.08203, -1751.80298, 1815.01501,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19443, 1448.22998, -1785.91699, 1816.00903,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(1724, 1469.04004, -1759.15100, 1815.01501,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1724, 1469.01501, -1753.25000, 1815.01501,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1726, 1460.69800, -1758.30505, 1815.01501,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19443, 1448.22998, -1785.16797, 1816.71997,   90.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19443, 1448.22998, -1785.16797, 1817.24500,   90.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(1724, 1460.67004, -1754.91602, 1815.01501,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(1724, 1460.69299, -1760.77002, 1815.01501,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19443, 1448.22998, -1787.54199, 1816.71997,   90.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(2531, 1468.34802, -1763.98401, 1815.01501,   0.00000, 0.00000, 235.75000, 65, 20);
	CreateDynamicObject(19443, 1448.22998, -1787.54199, 1817.24500,   90.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19443, 1448.22998, -1786.71997, 1817.95496,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19443, 1448.22998, -1785.91699, 1817.95496,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(1815, 1460.11304, -1759.55505, 1815.02100,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1815, 1460.13098, -1756.02502, 1815.01501,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1815, 1462.44202, -1752.37500, 1815.01501,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1815, 1465.97998, -1752.42102, 1815.01501,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1815, 1468.42102, -1755.46301, 1815.01501,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1815, 1468.43005, -1758.96301, 1815.01501,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19357, 1449.51501, -1786.28003, 1817.84497,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2230, 1460.22302, -1750.84998, 1816.73999,   0.00000, 0.00000, 38.75000, 65, 20);
	CreateDynamicObject(2528, 1451.44104, -1781.51501, 1814.98999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2230, 1469.86401, -1751.23499, 1816.73999,   0.00000, 0.00000, 318.74799, 65, 20);
	CreateDynamicObject(2528, 1454.57202, -1781.51599, 1814.98999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2230, 1459.78406, -1765.31299, 1816.73999,   0.00000, 0.00000, 138.74600, 65, 20);
	CreateDynamicObject(18075, 1475.30396, -1781.59497, 1818.29102,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19389, 1456.15100, -1768.35400, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19359, 1456.15100, -1771.50500, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19359, 1456.15100, -1774.64697, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19359, 1454.71497, -1774.12305, 1816.73999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19359, 1451.52905, -1774.12305, 1816.73999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19359, 1449.90100, -1772.52100, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19359, 1449.89502, -1769.32703, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19359, 1449.88904, -1766.12500, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19359, 1456.15100, -1765.71399, 1816.73999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19359, 1454.59802, -1766.63306, 1816.73999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(19359, 1451.41101, -1766.62500, 1816.73999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2387, 1450.47498, -1773.56396, 1814.98999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(630, 1468.96997, -1760.79602, 1816.04102,   0.00000, 0.00000, 159.99899, 65, 20);
	CreateDynamicObject(630, 1460.63000, -1764.10205, 1816.04102,   0.00000, 0.00000, 9.99700, 65, 20);
	CreateDynamicObject(2846, 1451.84204, -1773.40405, 1814.98999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2843, 1450.43201, -1771.73901, 1814.98999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(14782, 1450.41003, -1767.27698, 1816.00598,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(14782, 1455.72302, -1773.33606, 1816.00598,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2372, 1453.84204, -1773.56897, 1814.98999,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2382, 1453.29199, -1773.64697, 1815.72302,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(1846, 1453.50305, -1767.69202, 1816.87500,   90.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(19370, 1490.17700, -1773.46399, 1824.21997,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19370, 1490.17700, -1771.88196, 1825.73706,   90.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19370, 1490.17700, -1774.98804, 1825.73706,   90.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(19370, 1490.17700, -1773.46399, 1827.19897,   0.00000, 90.00000, 0.00000, 65, 20);
	CreateDynamicObject(18084, 1487.66296, -1774.77295, 1825.15198,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(18084, 1487.66296, -1773.27002, 1827.45300,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(18084, 1487.66296, -1775.84302, 1827.45300,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2885, 1488.89905, -1772.73901, 1831.01697,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(1491, 1483.35803, -1776.02100, 1823.77002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1491, 1475.20203, -1776.01599, 1823.77002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1491, 1468.01904, -1776.03601, 1823.77002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1714, 1486.71301, -1783.04199, 1823.77002,   0.00000, 0.00000, 150.00000, 65, 20);
	CreateDynamicObject(1723, 1487.98303, -1777.05896, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1724, 1485.42102, -1776.58398, 1823.77002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1998, 1487.00195, -1781.85803, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2174, 1480.70605, -1782.86401, 1823.77002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2310, 1487.33997, -1780.83997, 1824.27002,   0.00000, 0.00000, 45.00000, 65, 20);
	CreateDynamicObject(2310, 1480.93701, -1782.13599, 1824.27002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2161, 1480.21899, -1779.64697, 1823.77002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2164, 1481.56396, -1776.10901, 1823.77002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2167, 1480.65698, -1776.10498, 1823.77600,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(630, 1480.62097, -1780.68005, 1824.79602,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(630, 1480.60901, -1778.33899, 1824.79602,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2245, 1488.07202, -1781.63501, 1824.89099,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2252, 1479.49500, -1779.43103, 1824.58997,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2287, 1487.10400, -1776.57800, 1825.46997,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2286, 1488.46204, -1780.33801, 1825.87000,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2284, 1483.96899, -1782.84802, 1825.46997,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(2282, 1480.68298, -1779.43799, 1825.42896,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(14416, 1482.80005, -1756.57898, 1821.35400,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1482.02002, -1759.94202, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1482.02002, -1761.20203, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1482.02002, -1762.40906, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1482.02002, -1763.66602, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1482.02002, -1764.78503, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1482.02002, -1765.94299, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1482.02002, -1767.08105, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1482.02002, -1768.32605, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1480.63501, -1759.94202, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1480.63501, -1761.20203, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1480.63501, -1762.40906, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1480.63403, -1763.66602, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1480.63403, -1764.78503, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1480.63501, -1765.94299, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1480.63403, -1767.08105, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1480.63501, -1768.32703, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1479.38098, -1759.94104, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1479.38098, -1761.20105, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1479.38098, -1762.40796, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1479.38098, -1763.66602, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1479.38098, -1764.78503, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1479.38098, -1765.94299, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1479.38098, -1767.08105, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1479.38098, -1768.32605, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1478.06494, -1759.94104, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1478.06494, -1761.20105, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1478.06494, -1762.40796, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1478.06494, -1763.66602, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1478.06494, -1764.78503, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1478.06494, -1765.94299, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1478.06494, -1767.08105, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1478.06494, -1768.32605, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1476.58704, -1759.94104, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1476.58704, -1761.20105, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1476.58704, -1762.40796, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1476.58704, -1763.66602, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1476.58704, -1764.78503, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1476.58704, -1765.94299, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1476.58704, -1767.08105, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1476.58704, -1768.32605, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1475.06494, -1759.94104, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1475.06494, -1761.20105, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1475.06494, -1762.40796, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1475.06494, -1763.66602, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1475.06494, -1764.78503, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1475.06494, -1765.94299, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1475.06494, -1767.08105, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1475.06494, -1768.32605, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1473.55603, -1759.94104, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1473.55603, -1761.20105, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1473.55603, -1762.40796, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1473.55603, -1763.66602, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1473.55603, -1764.78503, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1473.55603, -1765.94299, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1473.55603, -1767.08105, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1473.55603, -1768.32605, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1472.20105, -1759.94104, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1472.20105, -1761.20105, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1472.20105, -1762.40796, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1472.20105, -1763.66602, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1472.20105, -1764.78503, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1472.20105, -1765.94299, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1472.20105, -1767.08105, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1721, 1472.20105, -1768.32605, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2184, 1485.39502, -1762.95300, 1824.60803,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(630, 1488.13000, -1770.38904, 1825.63306,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(630, 1487.91296, -1756.68701, 1825.63306,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(2961, 1462.34399, -1787.49304, 1825.39197,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(2205, 1475.72998, -1781.57202, 1823.77002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2162, 1479.54700, -1783.33398, 1823.77002,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(2164, 1478.06396, -1776.14197, 1823.77002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2167, 1472.84302, -1777.99402, 1823.77002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2162, 1473.61499, -1776.10498, 1825.14197,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(630, 1473.33398, -1777.22803, 1824.79602,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(630, 1473.34802, -1782.92297, 1824.79602,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2319, 1479.57202, -1780.19202, 1823.77002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2894, 1485.52600, -1763.97205, 1825.38403,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2289, 1479.98706, -1779.45496, 1825.80505,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2267, 1476.30701, -1783.31702, 1825.71802,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(2266, 1473.32605, -1780.47400, 1825.57104,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(14455, 1466.88000, -1783.32703, 1825.44202,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2608, 1465.20300, -1779.98901, 1825.88196,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2205, 1470.83398, -1779.91199, 1823.77002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2163, 1466.11499, -1776.10205, 1823.77002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2164, 1470.72705, -1776.12903, 1823.77002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2162, 1472.64600, -1781.55701, 1825.33203,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1714, 1476.34900, -1783.10901, 1823.77002,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(1714, 1472.25000, -1779.27002, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1714, 1487.52600, -1764.01501, 1824.60803,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(2264, 1465.51099, -1778.11401, 1825.37000,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(2258, 1472.61902, -1779.34595, 1825.79102,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1491, 1464.86902, -1768.45300, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(18075, 1462.76599, -1777.38501, 1818.33997,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19172, 1485.28796, -1770.84802, 1825.89001,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19174, 1475.81299, -1770.83899, 1825.85303,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19173, 1467.62402, -1770.84802, 1825.85303,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1723, 1465.48206, -1782.82202, 1823.77002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(1723, 1481.19800, -1775.44897, 1823.77002,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(1723, 1473.33606, -1775.43799, 1823.77002,   0.00000, 0.00000, 180.00000, 65, 20);
	CreateDynamicObject(1723, 1464.27502, -1780.90405, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1724, 1464.30103, -1778.72705, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1724, 1464.28406, -1783.98303, 1823.77002,   0.00000, 0.00000, 270.00000, 65, 20);
	CreateDynamicObject(1726, 1457.25000, -1783.95605, 1823.77002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(1726, 1459.31799, -1768.28101, 1823.77002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(1726, 1457.18005, -1776.03796, 1823.77002,   0.00000, 0.00000, 90.00000, 65, 20);
	CreateDynamicObject(630, 1457.35999, -1785.91602, 1824.79602,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(630, 1457.35205, -1778.93103, 1824.79602,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(630, 1457.43799, -1771.00903, 1824.79602,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2319, 1470.58801, -1771.30200, 1823.77002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2319, 1479.83203, -1771.36401, 1823.77002,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2241, 1471.98999, -1771.26404, 1824.77100,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2245, 1470.79297, -1771.31299, 1824.57703,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2252, 1480.04297, -1771.39197, 1824.58997,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(2253, 1481.06702, -1771.35901, 1824.54797,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(18075, 1464.94104, -1757.87500, 1818.31604,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(18075, 1457.87805, -1777.86206, 1827.18994,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(18075, 1473.11499, -1763.48706, 1827.16101,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(18075, 1482.66602, -1763.47705, 1827.17004,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(18075, 1468.55896, -1777.72998, 1827.23999,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(18075, 1480.10303, -1773.59802, 1827.19995,   0.00000, 0.00000, 0.00000, 65, 20);
	CreateDynamicObject(19807, 1458.72900, -1784.24304, 1816.07996,   0.00000, 0.00000, -121.39900, 65, 20);
	CreateDynamicObject(19814, 1456.62500, -1785.22095, 1815.31104,   0.00000, 0.00000, 90.39900, 65, 20);
	// Helipuerto
	CreateDynamicObject(3928, 1571.66907, -1644.66003, 27.39072,   0.00000, 0.00000, 0.00000);
   	//Puerta de Ascensor en Tejado SAPD
	CreateDynamicObject(18758, 1560.30432, -1675.72144, 29.13131,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18756, 1560.28809, -1673.74756, 29.30280,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18757, 1560.30249, -1677.74512, 29.29012,   0.00000, 0.00000, 0.00000);
	// ELEVADOR LSPD-SFPD
	CreateDynamicObject(3051, 265.33090, 115.86120, 1004.83917,   0.00000, 0.00000, -44.00000);
	CreateDynamicObject(3051, 266.51889, 115.86120, 1004.83917,   0.00000, 0.00000, -44.00000);
	CreateDynamicObject(3051, 1523.80005, -1678.48254, 6.57950,   0.00000, 0.00000, 44.00000);
	CreateDynamicObject(3051, 1523.83606, -1677.31055, 6.57950,   0.00000, 0.00000, 44.00000);
	CreateDynamicObject(3051, -1605.69226, 671.68188, -4.51780,   0.00000, 0.00000, -223.00000);
	CreateDynamicObject(3051, -1606.89233, 671.66388, -4.51780,   0.00000, 0.00000, -223.00000);
	// ELEVADOR LVPD
	CreateDynamicObject(3051, 218.18491, 181.21960, 1003.19678,   0.00000, 0.00000, 136.00000);
	CreateDynamicObject(3051, 219.37450, 181.21960, 1003.19678,   0.00000, 0.00000, 136.00000);
	//Medico mapeo
	CreateDynamicObject(1649, 1181.80005, -1364.65002, 14.06000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1181.85999, -1364.68005, 13.71000,   0.00000, 0.00000, 90.09000);
	CreateDynamicObject(1649, 1181.80005, -1364.68005, 14.06000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1523, 1181.80005, -1362.46997, 13.20000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(630, 1181.32996, -1366.15002, 14.24000,   0.00000, 0.00000, 0.30000);
	CreateDynamicObject(14680, 1180.68994, -1363.56006, 15.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1523, 1181.80005, -1359.43005, 13.20000,   0.00000, 0.00000, 268.00000);
	CreateDynamicObject(2002, 1179.93005, -1367.00000, 13.19000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2774, 1181.01001, -1360.05005, 16.53000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(14680, 1180.68994, -1368.00000, 15.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14680, 1180.68005, -1359.45996, 15.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2685, 1179.53003, -1367.42004, 15.04000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14680, 1177.65002, -1363.42004, 15.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1181.80005, -1357.26001, 14.06000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1649, 1181.80005, -1357.21997, 14.06000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1181.83997, -1357.17004, 13.71000,   0.00000, 0.00000, 90.09000);
	CreateDynamicObject(14680, 1177.53003, -1367.71997, 15.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14680, 1177.75000, -1359.54004, 15.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2605, 1176.28003, -1366.41003, 13.60000,   0.00000, 0.00000, 269.73001);
	CreateDynamicObject(630, 1181.26001, -1355.62000, 14.24000,   0.00000, 0.00000, 0.30000);
	CreateDynamicObject(2607, 1173.98999, -1365.05005, 13.60000,   0.00000, 0.00000, 180.10001);
	CreateDynamicObject(2007, 1174.02002, -1366.95996, 13.21000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2356, 1173.59998, -1366.04004, 13.23000,   0.00000, 0.00000, 328.28000);
	CreateDynamicObject(2000, 1173.27002, -1366.96997, 13.21000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2774, 1181.01001, -1367.66003, 3.26000,   180.00000, 0.00000, 0.00000);
	CreateDynamicObject(2596, 1175.64001, -1354.71997, 15.78000,   0.00000, 0.00000, 359.75000);
	CreateDynamicObject(19003, 1172.06006, -1360.53003, 13.21000,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19003, 1170.76001, -1360.67004, 16.90000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(948, 1173.33997, -1354.72998, 13.20000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2774, 1181.01001, -1354.18005, 3.26000,   180.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1166.83997, -1354.69995, 14.86000,   0.00000, 0.00000, -90.00000);
	//objetos casas.
	CreateDynamicObject(2100, -63.490002, 1367.239990, 1079.209961, 0.000000, 0.000000, 327.720001, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1567, -70.779999, 1356.520020, 1079.150024, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1567, -70.779999, 1356.520020, 1079.150024, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1567, -70.779999, 1356.520020, 1079.150024, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1567, -43.349998, 1413.119995, 1083.439941, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1567, -43.349998, 1413.119995, 1083.439941, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2100, -52.610001, 1403.459961, 1083.430054, 0.000000, 0.000000, 120.760002, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1567, 94.230003, 1332.160034, 1087.369995, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2100, 87.849998, 1322.099976, 1082.859985, 0.000000, 0.000000, 144.300003, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1567, 94.230003, 1332.160034, 1087.369995, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2100, 87.849998, 1322.099976, 1082.859985, 0.000000, 0.000000, 144.300003, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1491, 20.969999, 1410.709961, 1083.439941, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2100, 26.750000, 1343.989990, 1083.369995, 0.000000, 0.000000, 140.699997, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2526, 34.790001, 1340.239990, 1087.869995, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2524, 36.020000, 1345.250000, 1087.869995, 0.000000, 0.000000, 270.350006, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2525, 36.020000, 1343.410034, 1087.939941, 0.000000, 0.000000, 270.420013, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2527, 33.189999, 1341.359985, 1087.869995, 0.000000, 0.000000, 180.080002, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2526, 34.790001, 1340.239990, 1087.869995, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1567, 30.580000, 1345.829956, 1087.880005, 0.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2100, 26.750000, 1343.989990, 1083.369995, 0.000000, 0.000000, 140.699997, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2524, 18.620001, 1410.060059, 1083.439941, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1567, 24.750000, 1419.520020, 1083.439941, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2100, 33.470001, 1409.869995, 1083.430054, 0.000000, 0.000000, 214.009995, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1567, 24.750000, 1419.520020, 1083.439941, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1491, 20.969999, 1410.709961, 1083.439941, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2524, 18.620001, 1410.060059, 1083.439941, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2525, 16.780001, 1409.969971, 1083.430054, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2526, 16.690001, 1413.000000, 1083.430054, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	//PuertaCasa Especial complementos
	CreateDynamicObject(976, -90.85190, -1135.46204, 0.25050,   0.00000, 0.00000, 68.90480);
	CreateDynamicObject(969, -84.57200, -1118.88611, 0.28050,   0.00000, 0.00000, 69.50000);
	//POSTES (COMPLEMENTO)
	CreateDynamicObject(1226, 2293.08228, -1145.27551, 29.58690,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2279.99194, -1154.52112, 29.58690,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1226, 2292.38257, -1380.08630, 26.92210,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2280.79126, -1388.83435, 26.92210,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1226, 2204.38525, -1651.12708, 18.14690,   0.00000, 0.00000, 257.73291);
	CreateDynamicObject(1226, 2220.35596, -1643.45129, 18.34730,   0.00000, 0.00000, 77.55600);
	CreateDynamicObject(1226, 2194.36987, -1726.57727, 16.44560,   0.00000, 0.00000, -270.00000);
	CreateDynamicObject(1226, 2207.23291, -1738.21985, 16.25810,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1226, 2282.77783, -1479.52344, 25.64640,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1226, 2267.41089, -1488.68066, 25.43370,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1226, 1957.06165, -1949.97803, 16.40970,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1226, 1966.28027, -1962.03809, 16.40970,   0.00000, 0.00000, 0.00000);
	//IGLESIA
	CreateObject(10368, -2181.780029, -94.500000, 1034.160034, 0.000000, 0.000000, 0.000000, 0.0); // 0
	CreateDynamicObject(2515, -2191.800049, -84.589996, 1016.450012, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(630, -2191.949951, -78.589996, 1016.500000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2245, -2195.500000, -83.029999, 1015.780029, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(638, -2191.770020, -81.349998, 1021.030029, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2639, -2196.550049, -82.160004, 1016.090027, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2245, -2195.500000, -86.089996, 1015.780029, 0.000000, 0.000000, 283.540009, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(2631, -2197.219971, -84.580002, 1015.520020, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 0, 18646, "matcolours", "red-2", 0xFFFFFFFF);
	CreateDynamicObject(638, -2191.770020, -87.769997, 1021.030029, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2639, -2196.550049, -86.980003, 1016.090027, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(630, -2191.949951, -90.910004, 1016.500000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2639, -2199.250000, -82.160004, 1016.090027, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2639, -2199.250000, -86.980003, 1016.090027, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(2631, -2201.120117, -84.580002, 1015.520020, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 0, 18646, "matcolours", "red-2", 0xFFFFFFFF);
	CreateDynamicObject(2284, -2201.199951, -79.239998, 1017.960022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2639, -2201.949951, -82.160004, 1016.090027, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14413, -2201.209961, -77.989998, 1015.469971, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2639, -2201.949951, -86.980003, 1016.090027, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2260, -2201.179932, -90.260002, 1017.929993, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2639, -2204.649902, -82.160004, 1016.090027, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(2631, -2205.020020, -84.580002, 1015.520020, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 0, 18646, "matcolours", "red-2", 0xFFFFFFFF);
	CreateDynamicObject(2639, -2204.649902, -86.980003, 1016.090027, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14413, -2177.290039, -77.989998, 1015.469971, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2639, -2207.350098, -82.160004, 1016.090027, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2639, -2207.350098, -86.980003, 1016.090027, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(2631, -2208.919922, -84.580002, 1015.520020, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 0, 18646, "matcolours", "red-2", 0xFFFFFFFF);
	CreateDynamicObject(2272, -2209.199951, -79.239998, 1017.900024, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2639, -2210.050049, -82.160004, 1016.090027, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2639, -2210.050049, -86.980003, 1016.090027, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2285, -2209.189941, -90.209999, 1017.979980, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2251, -2214.770020, -86.879997, 1016.320007, 0.000000, 0.000000, 82.529999, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2894, -2215.919922, -84.589996, 1016.900024, 0.000000, 0.000000, 271.350006, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2180, -2215.909912, -85.070000, 1016.099976, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(630, -2215.870117, -78.330002, 1016.500000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(3809, -2216.050049, -78.269997, 1019.940002, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(630, -2215.870117, -91.190002, 1016.500000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(3809, -2216.050049, -91.190002, 1019.940002, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -2218.250000, -83.470001, 1016.109985, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -2218.250000, -84.529999, 1016.109985, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -2218.250000, -85.650002, 1016.109985, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(3092, -2218.439941, -84.599998, 1021.590027, 0.000000, 0.000000, -91.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19380, -2218.840088, -84.320000, 1020.039978, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19453, -2219.090088, -80.489998, 1017.919983, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19429, -2219.340088, -84.540001, 1021.619995, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19429, -2219.340088, -84.709999, 1021.619995, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19439, -2219.719971, -83.709999, 1019.700012, 0.000000, -90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1491, -2219.800049, -79.320000, 1016.169983, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1491, -2218.830078, -91.080002, 1015.469971, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19380, -2218.840088, -73.820000, 1020.039978, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(18765, -2219.919922, -84.599998, 1011.109985, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19390, -2220.500000, -85.349998, 1017.919983, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19390, -2220.540039, -79.339996, 1017.919983, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19429, -2220.300049, -83.970001, 1022.099976, 0.000000, -90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19429, -2220.300049, -83.970001, 1022.280029, 0.000000, -90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19429, -2220.300049, -85.250000, 1022.099976, 0.000000, -90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19429, -2220.300049, -85.250000, 1022.280029, 0.000000, -90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19439, -2221.179932, -83.709999, 1019.719971, 0.000000, -90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(18765, -2220.669922, -87.099998, 1010.650024, 90.000000, 0.000000, 34.709999, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19380, -2218.840088, -83.720001, 1029.660034, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19380, -2218.840088, -94.820000, 1022.780029, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1491, -2222.000000, -81.620003, 1016.169983, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(18765, -2221.280029, -86.660004, 1010.849976, 90.000000, 0.000000, 27.980000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19390, -2222.030029, -84.080002, 1017.919983, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19390, -2222.030029, -80.879997, 1017.919983, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2272, -2221.399902, -89.220001, 1017.520020, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(10049, -2209.229980, -57.689999, 1012.289978, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19380, -2218.840088, -96.320000, 1013.159973, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2525, -2222.530029, -79.260002, 1016.190002, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19453, -2222.030029, -87.070000, 1021.419983, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2524, -2222.719971, -79.250000, 1016.190002, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19380, -2221.989990, -90.550003, 1020.039978, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -2223.030029, -85.790001, 1019.770020, 0.000000, 0.000000, 314.089996, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2372, -2223.590088, -82.180000, 1016.190002, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19378, -2223.659912, -80.190002, 1016.099976, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2635, -2223.379883, -86.529999, 1020.190002, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19453, -2223.659912, -85.190002, 1021.419983, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19453, -2223.790039, -77.660004, 1017.919983, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19378, -2223.659912, -77.570000, 1019.679993, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2392, -2224.560059, -82.370003, 1016.849976, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2846, -2224.570068, -81.489998, 1016.190002, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2526, -2224.370117, -78.169998, 1016.190002, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19378, -2223.659912, -90.370003, 1019.679993, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -2224.060059, -88.870003, 1019.770020, 0.000000, 0.000000, -135.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(3361, -2225.520020, -84.059998, 1017.690002, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1708, -2225.610107, -81.239998, 1016.190002, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1803, -2225.830078, -86.269997, 1019.770020, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19453, -2226.159912, -77.980003, 1017.919983, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19453, -2226.909912, -82.849998, 1017.919983, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19453, -2226.909912, -85.190002, 1017.919983, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19453, -2226.909912, -79.830002, 1017.919983, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19378, -2226.120117, -87.949997, 1023.219971, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19453, -2226.909912, -82.849998, 1021.419983, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19453, -2226.699951, -89.830002, 1021.419983, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(5426, -2217.770020, -65.760002, 1036.280029, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19453, -2230.590088, -81.510002, 1017.919983, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(10049, -2217.709961, -111.730003, 1012.289978, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2296, -2230.219971, -88.849998, 1019.770020, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19453, -2230.550049, -87.610001, 1021.419983, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19378, -2233.280029, -80.190002, 1016.099976, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19378, -2233.290039, -90.269997, 1019.679993, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(5426, -2217.770020, -52.759998, 1036.280029, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(10368, -2252.250000, -74.650002, 1034.160034, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11487, -2182.790039, -84.589996, 1115.209961, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	//Tapones
	CreateDynamicObject(19911, 262.13000, -1639.60999, 21.65000,   90.00000, 90.00000, 79.70000);
	CreateDynamicObject(19795, 280.16000, -1613.90002, 33.68000,   0.00000, 0.00000, 80.10000);
	CreateDynamicObject(8948, 298.48001, -1543.05005, 25.36000,   0.00000, 0.00000, 324.82999);
	CreateDynamicObject(19795, 286.17999, -1614.93994, 33.68000,   0.00000, 0.00000, 80.10000);
	CreateDynamicObject(19795, 292.20001, -1616.02002, 33.68000,   0.00000, 0.00000, 80.10000);
	CreateDynamicObject(17951, 199.74001, -1747.54004, 4.98000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(17950, 199.81000, -1751.83997, 5.32000,   0.00000, 0.00000, 0.00000);
	//Atajo antirol
	CreateDynamicObject(17031, -653.23865, -1242.47546, 17.84816,   0.00000, 0.00000, 344.43555);
	CreateDynamicObject(17031, -637.85748, -1199.13257, 17.84816,   0.00000, 0.00000, 344.43555);
	CreateDynamicObject(17031, -671.11127, -1289.79419, 23.87844,   0.00000, 0.00000, 345.63940);
	CreateDynamicObject(17031, -640.53241, -1170.99915, 29.91255,   0.00000, 0.00000, 148.65471);
	CreateDynamicObject(18228, -645.46002, -1064.15002, 20.96000,   0.00000, 0.00000, 317.12000);
	CreateDynamicObject(18228, -649.44000, -1056.64001, 33.09000,   0.00000, 0.00000, 314.87000);
	CreateDynamicObject(18228, -690.65002, -1051.70996, 51.85000,   0.00000, 0.00000, 330.29001);
	CreateDynamicObject(18228, -653.27002, -1036.50000, 49.42000,   0.00000, 0.00000, 330.29001);
	//Puertas empresa privada
	CreateDynamicObject(8378,-1752.3497300,998.9746700,18.6794000,0.0000000,0.0000000,91.0000000); //
	CreateDynamicObject(1682,-1758.8903800,960.1687000,18.3711000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(1682,-1748.9477500,960.1652800,18.3711000,0.0000000,0.0000000,0.0000000); //
	//ALBERGUE
	CreateObject(14474, 2333.608643, -1238.816040, 1026.969971, 0.000000, 0.000000, 0.000000, 0.0); // 0
	CreateObject(14475, 2333.508057, -1236.215210, 1028.969971, 0.000000, 0.000000, 0.000000, 0.0); // 0
	CreateDynamicObject(1498, 2331.797119, -1255.200195, 1025.186646, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2334.852295, -1252.832031, 1026.165405, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2334.852295, -1252.832031, 1025.185425, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2331.621338, -1251.489990, 1029.161743, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2328.642578, -1252.784424, 1025.185425, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1413, 2337.080811, -1251.926147, 1026.393188, 0.000000, 180.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1413, 2327.954346, -1251.911377, 1026.313232, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2337.623047, -1252.910034, 1025.185425, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2328.578369, -1251.433228, 1029.161743, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19836, 2328.879639, -1250.065674, 1025.972778, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2327.026855, -1252.815796, 1025.185425, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2850, 2330.514893, -1249.129639, 1025.187134, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2328.578369, -1251.433228, 1030.121704, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1413, 2327.969971, -1249.209961, 1026.093140, 0.000000, -90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1413, 2339.640869, -1251.926147, 1026.313232, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2338.039795, -1250.139160, 1029.161743, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2866, 2327.105469, -1249.711792, 1029.185913, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2846, 2332.992188, -1247.203125, 1029.187012, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2846, 2338.279541, -1248.801392, 1025.186890, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1413, 2335.770752, -1249.169312, 1031.579590, 0.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2338.164063, -1248.171021, 1025.185425, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, 2327.796387, -1255.236816, 1033.685425, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2338.039795, -1248.459229, 1029.161743, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2341.356934, -1252.884644, 1026.165405, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2341.356934, -1252.884644, 1025.185425, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2329.986816, -1246.387817, 1029.161743, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1413, 2338.812256, -1247.368164, 1026.113159, 0.000000, -90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2059, 2332.554199, -1244.784912, 1025.204590, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2860, 2327.984375, -1244.569336, 1025.186768, 0.000000, 0.000000, 269.409088, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1413, 2337.542725, -1244.630859, 1026.313232, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2343.019775, -1251.159180, 1029.161743, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1413, 2325.793213, -1245.534424, 1026.313232, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2846, 2327.268799, -1244.819580, 1029.186401, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1369, 2330.408203, -1243.229004, 1025.764282, 0.000000, 0.000000, 349.352814, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2322, 2325.754639, -1245.014648, 1026.517578, 0.000000, 0.000000, 170.498901, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14872, 2326.215820, -1244.613037, 1025.606445, 0.000000, 0.000000, 56.893299, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19452, 2334.015137, -1242.947754, 1027.972412, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2328.542236, -1243.226563, 1029.161743, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2328.542236, -1243.226563, 1030.121704, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1450, 2331.769287, -1241.543701, 1025.797241, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2331.657959, -1241.608521, 1029.161743, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1763, 2325.592041, -1243.005493, 1025.185547, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2328.589844, -1241.541260, 1026.165405, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2328.589844, -1241.541260, 1025.185425, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2343.029297, -1245.688965, 1029.161743, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2328.562012, -1241.504395, 1029.161743, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19457, 2331.089111, -1240.680176, 1027.972412, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19457, 2330.869141, -1240.680176, 1027.972412, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1502, 2335.753174, -1240.610596, 1029.160645, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2840, 2333.392578, -1239.799561, 1029.184814, 0.000000, 0.000000, 51.774811, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19393, 2336.534912, -1240.594360, 1030.926880, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19452, 2331.097168, -1239.496216, 1027.972412, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19452, 2330.857178, -1239.496216, 1027.972412, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19452, 2334.015137, -1239.467651, 1027.972412, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19452, 2334.275146, -1239.467651, 1027.972412, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2524, 2334.863770, -1239.709351, 1029.187134, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, 2322.470947, -1245.270996, 1033.685425, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1413, 2327.594971, -1240.818481, 1031.819580, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2524, 2334.863770, -1238.709351, 1029.187134, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2325.441162, -1239.914429, 1025.185425, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19457, 2332.629883, -1238.283691, 1028.857178, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2514, 2338.943848, -1239.288818, 1029.187012, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14443, 2333.504150, -1237.869141, 1029.181641, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1502, 2334.171387, -1237.687622, 1029.160645, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2514, 2340.123779, -1239.288818, 1029.187012, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2527, 2338.906982, -1238.321655, 1025.186157, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19457, 2332.639893, -1238.283691, 1032.857178, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2514, 2341.363770, -1239.288818, 1029.187012, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2527, 2340.207031, -1238.321655, 1025.186157, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19393, 2334.137451, -1236.941528, 1030.926880, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2527, 2341.487061, -1238.321655, 1025.186157, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2330.016113, -1236.310791, 1029.161743, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2328.580566, -1236.456055, 1029.161743, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2840, 2326.722412, -1236.162231, 1025.186157, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11707, 2342.070313, -1237.301392, 1026.243042, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2840, 2328.653809, -1234.631226, 1029.186157, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1502, 2339.664307, -1235.470459, 1029.160645, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19393, 2340.445068, -1235.452271, 1030.926880, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2826, 2333.524902, -1233.368164, 1025.186890, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2328.681152, -1233.543579, 1026.165405, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2328.681152, -1233.543579, 1025.185425, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2328.681152, -1233.543579, 1029.161743, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2328.681152, -1233.543579, 1030.121704, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2337.878418, -1233.351440, 1026.165405, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19376, 2322.441406, -1235.466797, 1029.787964, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2337.878418, -1233.351440, 1025.185425, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2333.506348, -1232.665527, 1025.185425, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2328.426514, -1231.583374, 1025.185425, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1440, 2336.456543, -1230.932495, 1025.706299, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19378, 2329.570801, -1230.073853, 1028.856323, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1450, 2333.697754, -1229.545166, 1029.765991, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19632, 2327.284668, -1227.800171, 1025.502808, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(849, 2326.972900, -1227.765137, 1025.445435, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1413, 2330.831543, -1226.205200, 1026.093140, 0.000000, -90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14384, 2338.532959, -1226.138306, 1026.683960, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2840, 2330.039795, -1224.907837, 1025.186768, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2331.426514, -1223.504150, 1026.165405, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1413, 2330.816406, -1223.526611, 1026.313232, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2331.426514, -1223.504150, 1025.185425, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2334.906494, -1223.504150, 1026.165405, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1800, 2334.906494, -1223.504150, 1025.185425, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19378, 2330.970215, -1221.218262, 1031.556274, -33.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	//ESTACIONAMIENTO INTERIOR 2
	CreateDynamicObject(19313, -540.88000, 2326.52002, 72.31000,   0.00000, 0.00000, 90.00000,6);
	CreateDynamicObject(19313, -540.88000, 2326.52002, 78.96000,   0.00000, 0.00000, 90.00000,6);
	CreateDynamicObject(19313, -540.88000, 2340.58008, 72.31000,   0.00000, 0.00000, 90.00000,6);
	CreateDynamicObject(19313, -540.88000, 2340.58008, 78.96000,   0.00000, 0.00000, 90.00000,6);
	CreateDynamicObject(16083, -546.56000, 2336.44995, 77.03000,   0.00000, 0.00000, 343.60999,6);
	CreateDynamicObject(18673, -546.21002, 2336.45996, 78.42000,   0.00000, 0.00000, 0.00000,6);
	CreateDynamicObject(18673, -546.37000, 2336.30005, 78.42000,   0.00000, 0.00000, 0.00000,6);
	CreateDynamicObject(18673, -546.53003, 2336.45996, 78.42000,   0.00000, 0.00000, 0.00000,6);
	CreateDynamicObject(16337, -548.56000, 2348.02002, 75.52000,   0.00000, 0.00000, 118.51000,6);
	CreateDynamicObject(19313, -547.40002, 2350.09009, 72.31000,   0.00000, 0.00000, 339.87000,6);
	CreateDynamicObject(19313, -547.40002, 2350.09009, 78.96000,   0.00000, 0.00000, 339.87000,6);
	CreateDynamicObject(16318, -559.65997, 2337.90991, 79.22000,   0.00000, 0.00000, 354.45999,6);
	CreateDynamicObject(19382, -566.54999, 2336.28003, 77.49000,   80.44000, 0.00000, 263.20001,6);
	CreateDynamicObject(3350, -555.77002, 2353.07007, 75.63000,   0.00000, 0.00000, 120.00000,6);
	CreateDynamicObject(3276, -568.70001, 2336.33008, 81.55000,   0.00000, 8.90000, -7.28000,6);
	CreateDynamicObject(19382, -571.87000, 2336.92993, 78.37000,   80.44000, 0.00000, 263.20001,6);
	CreateDynamicObject(19313, -563.56000, 2354.19995, 78.96000,   0.00000, 0.00000, 351.51999,6);
	CreateDynamicObject(3276, -580.71997, 2337.71997, 83.41000,   5.02000, 8.00000, -8.02000,6);
	CreateDynamicObject(19382, -582.03998, 2338.16992, 79.87000,   80.44000, 0.00000, 263.20001,6);
	CreateDynamicObject(10032, -1275.28003, 461.26001, 6.20000,   0.00000, 0.00000, 0.00000,6);
	CreateDynamicObject(10843, -1270.55005, 479.95999, 18.26000,   0.00000, 180.00000, 180.00000,6);
	CreateDynamicObject(10843, -1269.72998, 442.45001, 18.26000,   0.00000, 180.00000, 0.00000,6);
	CreateDynamicObject(10843, -1297.96997, 460.89999, 14.27000,   0.00000, 0.00000, 0.00000,6);
	CreateDynamicObject(10843, -1270.54004, 494.12000, 14.27000,   0.00000, 0.00000, 0.00000,6);
	CreateDynamicObject(10843, -1242.53003, 461.47000, 14.27000,   0.00000, 0.00000, 180.00000,6);
	CreateDynamicObject(10843, -1270.54004, 427.63000, 14.27000,   0.00000, 0.00000, 0.00000,6);
	CreateDynamicObject(10834, -1372.68005, 457.81000, 1.17000,   0.00000, 0.00000, 0.00000,6);
	//CRIMINAL
	CreateDynamicObject(19121, -2173.42993, 661.37000, 48.81000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3594, -2184.45752, 698.03320, 53.20000,   0.00000, 0.00000, 55.33000);
	CreateDynamicObject(18690, -2184.46265, 697.50439, 52.88979,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(944, -2180.26733, 714.35901, 53.68530,   -0.14000, 0.00000, 88.91890);
	CreateDynamicObject(9823, -2178.83472, 711.54230, 54.30970,   0.00000, 0.00000, 90.13156);
	CreateDynamicObject(9823, -2178.88892, 711.81995, 54.30970,   0.00000, 0.00000, 270.50620);
	CreateDynamicObject(944, -2179.64160, 718.36902, 53.68530,   -0.14000, 0.00000, 177.21536);
	CreateDynamicObject(944, -2183.25977, 718.21484, 53.68530,   -0.14000, 0.00000, 186.07954);
	CreateDynamicObject(1217, -2187.05591, 718.24152, 53.30177,   0.00000, 0.00000, 0.93685);
	CreateDynamicObject(11745, -2180.27441, 715.14984, 54.38660,   -0.04000, 0.00000, 339.52151);
	CreateDynamicObject(1210, -2180.56250, 713.69281, 54.22180,   271.00000, -240.00000, 208.00000);
	CreateDynamicObject(358, -2180.31128, 714.32520, 54.27650,   297.00000, 19.00000, 336.00000);
	CreateDynamicObject(2040, -2182.23779, 717.94171, 54.32520,   0.00000, 0.00000, 4.11203);
	CreateDynamicObject(2040, -2182.51538, 717.91534, 54.32520,   0.00000, 0.00000, 358.01053);
	CreateDynamicObject(19942, -2184.07495, 717.83337, 54.35010,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19942, -2183.91235, 717.80804, 54.25010,   271.00000, 0.00000, 341.06192);
	CreateDynamicObject(19078, -2178.19409, 718.10327, 54.25460,   -360.00000, 269.00000, 95.43950);
	CreateDynamicObject(964, -2186.28638, 716.97211, 52.70460,   0.00000, 0.00000, 7.80900);
	// Interior 43 - Objetos Empresa privada
	CreateObject(14592, 1419.31226, 592.60938, 1006.87689,   0.00000, 0.00000, 90.00000);
	new cobj0 = CreateObject(19003, 1405.479980, 592.429993, 1000.030029, 0.000000, 180.000000, 90.000000);
	SetObjectMaterial(cobj0, 256, 14592, "casinoVault01", "ab_shutter1");
	CreateDynamicObject(1806, 1430.95996, 599.00000, 999.96002,   0.00000, 0.00000, 271.06000);
	CreateDynamicObject(2073, 1429.85999, 597.47998, 1004.31000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1806, 1430.97998, 596.90002, 999.96002,   0.00000, 0.00000, 267.70001);
	CreateDynamicObject(2008, 1432.45996, 598.82001, 999.96002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2008, 1432.45996, 596.84003, 999.96002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, 1433.80005, 599.29999, 999.96002,   0.00000, 0.00000, 276.85001);
	CreateDynamicObject(1714, 1433.81995, 597.02002, 999.96002,   0.00000, 0.00000, 267.91000);
	CreateDynamicObject(1726, 1425.92004, 590.65997, 999.96002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2700, 1434.92004, 597.90002, 1002.88000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2289, 1435.12000, 595.21997, 1002.25000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2073, 1429.85999, 590.46002, 1004.31000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2141, 1435.89001, 595.66998, 999.25000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1567, 1436.73999, 601.12000, 999.96997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1567, 1436.73999, 601.12000, 1002.44000,   -8.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1425.80005, 587.50000, 999.96002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1726, 1428.62000, 587.58002, 999.96002,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1502, 1435.30005, 591.58002, 999.96002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(14638, 1435.28003, 591.58002, 1002.46002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2281, 1429.56006, 587.51001, 1001.96002,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2099, 1435.17004, 589.52002, 999.96002,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1726, 1432.57996, 587.58002, 999.96002,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1502, 1439.10999, 594.83002, 999.96002,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19379, 1440.25000, 599.97498, 999.89001,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(2283, 1440.43005, 598.13000, 1002.08002,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19870, 1408.53003, 601.66998, 1001.21997,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(15032, 1443.42004, 599.69000, 1001.71997,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(19899, 1409.01001, 592.17999, 1000.02002,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19627, 1409.01001, 592.09003, 1001.28003,   0.00000, 0.00000, 52.39000);
	CreateDynamicObject(19621, 1408.98999, 591.37000, 1001.37000,   0.00000, 0.00000, 332.31000);
	CreateDynamicObject(19921, 1408.79004, 591.84998, 1002.19000,   0.00000, 0.00000, 281.14999);
	CreateDynamicObject(19903, 1409.13000, 589.01001, 1000.02002,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2523, 1432.92004, 579.73999, 999.96997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1421, 1414.98999, 581.33002, 1000.71997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11707, 1434.34998, 580.15997, 1001.04999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14638, 1435.28003, 591.58002, 1002.46002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2700, 1434.92004, 597.90002, 1002.88000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2526, 1431.59998, 578.46997, 999.96997,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2528, 1432.60999, 578.38000, 999.96997,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2525, 1433.41003, 578.28998, 999.96997,   -6.00000, 0.00000, 180.00000);
	CreateDynamicObject(19873, 1433.30005, 578.21002, 1000.52002,   3.00000, 0.00000, 0.00000);
	CreateDynamicObject(1502, 1435.30005, 578.32001, 999.96002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(14638, 1435.28003, 578.34003, 1002.46002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3014, 1412.97998, 582.10999, 1000.19000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19171, 1412.33997, 582.35999, 1001.46002,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(3014, 1412.38000, 582.10999, 1000.19000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19169, 1412.33997, 582.35999, 1002.96002,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(2282, 1430.39001, 570.97998, 1001.96002,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19170, 1410.83997, 582.35999, 1001.46002,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19168, 1410.83997, 582.35999, 1002.96002,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(11737, 1416.95996, 574.72998, 1002.09998,   90.00000, 0.00000, -90.00000);
	CreateDynamicObject(1721, 1412.38000, 578.19000, 999.96002,   0.00000, 0.00000, 20.00000);
	CreateDynamicObject(1518, 1409.22998, 582.35999, 1000.98999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1721, 1411.38000, 577.77002, 999.96002,   0.00000, 0.00000, 12.00000);
	CreateDynamicObject(1518, 1408.58997, 582.35999, 1000.98999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1502, 1417.12000, 572.29999, 999.96002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(14638, 1417.08997, 572.33002, 1002.46002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2181, 1408.09998, 581.94000, 999.96997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1440.17004, 570.89001, 999.96002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1721, 1410.31995, 577.60999, 999.96002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19870, 1408.53003, 601.66998, 1001.21997,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1721, 1409.26001, 577.77002, 999.96002,   0.00000, 0.00000, -12.00000);
	CreateDynamicObject(1721, 1408.21997, 578.19000, 999.96002,   0.00000, 0.00000, -20.00000);
	CreateDynamicObject(19898, 1403.60486, 589.66309, 1000.04999,   0.00000, 0.00000, 293.54010);
	CreateDynamicObject(19450, 1403.15002, 582.51001, 998.28998,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19898, 1405.18994, 574.15002, 999.97998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14782, 1398.69995, 591.54999, 1001.03998,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(10148, 1403.18994, 608.79498, 1001.96997,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19870, 1399.05005, 601.66998, 1001.21997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14450, 1392.68994, 600.88000, 1001.67999,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(16775, 1391.69995, 578.69000, 1003.72998,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(925, 1392.53003, 564.71002, 1000.97998,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(14584, 1386.64001, 565.35999, 1001.71997,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1886, 1432.43994, 466.97000, 1011.33002,   15.00000, 0.00000, 142.31000);
	CreateDynamicObject(19873, 2510.32275, 1568.27734, 1087.10352,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19898, 2506.10229, 1597.52026, 1086.72339,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19870, 1408.53003, 601.66998, 1001.21997,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19870, 1408.53003, 601.66998, 1001.21997,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19870, 1408.53003, 601.66998, 1001.21997,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19465, 1438.34998, 594.84003, 1002.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(15032, 1443.42004, 599.69000, 1001.71997,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(1502, 1439.10999, 594.89001, 999.96002,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19379, 1440.25000, 599.96002, 999.89001,   0.00000, 90.00000, 90.00000);
	//Hospital SF
	CreateObject(10301, -2718.239990, 616.690002, 1361.599976, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1533, -2737.530029, 625.320007, 1384.380005, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1533, -2737.530029, 623.830017, 1384.380005, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2737.689941, 627.479980, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2773, -2735.129883, 627.440002, 1385.160034, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1533, -2737.530029, 628.039978, 1384.380005, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2739.010010, 622.630005, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(3660, -2734.459961, 622.880005, 1386.430054, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1533, -2737.530029, 629.460022, 1384.380005, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19432, -2734.129883, 621.919983, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2773, -2732.510010, 627.440002, 1385.160034, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2739.370117, 632.380005, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2738.989990, 618.150024, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2773, -2729.919922, 627.440002, 1385.160034, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(3660, -2734.449951, 632.679993, 1386.430054, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19432, -2734.479980, 633.099976, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2729.389893, 621.530029, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2603, -2739.189941, 616.900024, 1385.000000, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, -2735.030029, 616.900024, 1385.000000, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2740.699951, 616.539978, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2773, -2727.399902, 627.440002, 1385.160034, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2603, -2731.219971, 616.900024, 1385.000000, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2729.379883, 618.150024, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2729.570068, 633.309998, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2730.439941, 616.619995, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1846, -2727.860107, 618.979980, 1386.650024, 90.000000, 0.000000, 359.010010, -1, -1);
	CreateDynamicObject(2524, -2728.260010, 617.559998, 1384.640015, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1892, -2725.010010, 624.859985, 1384.650024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1892, -2725.010010, 628.919983, 1384.650024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2380, -2730.310059, 614.729980, 1386.790039, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1808, -2724.370117, 621.409973, 1384.599976, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19389, -2735.899902, 611.809998, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19359, -2724.659912, 619.840027, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1491, -2736.679932, 611.760010, 1384.640015, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2686, -2724.590088, 619.940002, 1386.660034, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(2596, -2733.570068, 612.299988, 1387.760010, 20.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(1808, -2730.649902, 612.789978, 1384.640015, 0.000000, 0.000000, 270.000000, -1, -1);
	CreateDynamicObject(19451, -2742.320068, 611.809998, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2712, -2725.010010, 617.070007, 1385.239990, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2796, -2724.659912, 616.669983, 1387.550049, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19389, -2724.659912, 616.469971, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1723, -2731.379883, 611.140015, 1384.650024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2729.479980, 611.809998, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19389, -2740.699951, 610.140015, 1386.400024, 180.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2690, -2740.770020, 610.059998, 1386.780029, 0.000000, 0.000000, 80.000000, -1, -1);
	CreateDynamicObject(1491, -2724.659912, 615.729980, 1384.650024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2514, -2727.889893, 612.409973, 1384.640015, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(1649, -2740.669922, 609.719971, 1386.719971, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19359, -2740.939941, 609.619995, 1386.699951, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2741, -2726.810059, 612.030029, 1385.760010, 0.000000, 0.000000, 184.000000, -1, -1);
	CreateDynamicObject(19359, -2724.659912, 613.299988, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2724.669922, 638.039978, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(932, -2726.459961, 610.760010, 1384.650024, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(19432, -2726.020020, 610.929993, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1649, -2735.770020, 606.869995, 1386.750000, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(1649, -2735.770020, 606.869995, 1386.750000, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19405, -2735.860107, 606.830017, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19389, -2739.070068, 606.830017, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1491, -2739.850098, 606.809998, 1384.640015, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19405, -2732.649902, 606.830017, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19432, -2725.310059, 610.039978, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1523, -2724.689941, 610.000000, 1384.569946, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, -2737.510010, 605.489990, 1385.000000, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, -2734.610107, 605.479980, 1385.000000, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(932, -2718.050049, 617.929993, 1384.650024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, -2731.820068, 605.489990, 1385.000000, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19359, -2723.139893, 609.979980, 1388.829956, 180.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2190, -2720.689941, 638.729980, 1385.599976, 0.000000, 0.000000, 133.899994, -1, -1);
	CreateDynamicObject(1523, -2721.659912, 610.070007, 1384.569946, 0.000000, 0.000000, -180.000000, -1, -1);
	CreateDynamicObject(19451, -2740.699951, 603.729980, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2558, -2755.030029, 612.500000, 1386.869995, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19432, -2724.669922, 643.650024, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3657, -2714.949951, 625.859985, 1385.170044, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(10722, -2741.780029, 616.000000, 1405.300049, -90.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2894, -2719.010010, 638.210022, 1385.599976, 0.000000, 0.000000, 148.509995, -1, -1);
	CreateDynamicObject(3657, -2714.949951, 626.590027, 1385.170044, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(1808, -2731.459961, 603.869995, 1384.569946, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(3657, -2714.949951, 622.210022, 1385.170044, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(1997, -2716.010010, 617.869995, 1384.630005, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(3657, -2714.949951, 621.489990, 1385.170044, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(10722, -2741.719971, 635.609985, 1405.310059, -90.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19389, -2723.419922, 643.469971, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(3657, -2714.949951, 630.419983, 1385.170044, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3657, -2714.949951, 631.150024, 1385.170044, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(1723, -2726.919922, 604.830017, 1384.650024, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(19451, -2727.280029, 604.219971, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1715, -2719.139893, 640.229980, 1384.650024, 0.000000, 0.000000, 320.369995, -1, -1);
	CreateDynamicObject(2596, -2735.959961, 602.080017, 1387.760010, 20.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(2200, -2724.469971, 645.090027, 1384.650024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1997, -2718.919922, 610.390015, 1384.630005, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(19451, -2735.820068, 601.770020, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19405, -2721.840088, 606.830017, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2714.090088, 618.409973, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1549, -2713.979980, 618.669983, 1384.650024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2731.129883, 601.929993, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, -2722.780029, 605.599976, 1385.000000, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1649, -2721.040039, 606.849976, 1386.750000, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1649, -2721.040039, 606.849976, 1386.750000, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(2190, -2715.790039, 637.789978, 1385.599976, 0.000000, 0.000000, 153.570007, -1, -1);
	CreateDynamicObject(19359, -2713.929932, 616.820007, 1386.400024, 0.000000, 0.000000, 4.000000, -1, -1);
	CreateDynamicObject(19451, -2726.659912, 648.539978, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2716.860107, 609.979980, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(932, -2716.500000, 610.419983, 1384.650024, 0.000000, 0.000000, -180.000000, -1, -1);
	CreateDynamicObject(1997, -2714.719971, 613.030029, 1384.650024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(14855, -2716.429932, 640.369995, 1389.099976, 0.000000, 0.000000, 270.000000, -1, -1);
	CreateDynamicObject(19359, -2713.929932, 613.619995, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19359, -2718.629883, 606.830017, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19432, -2713.050049, 615.030029, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2603, -2719.909912, 605.609985, 1385.000000, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1715, -2715.229980, 639.760010, 1384.650024, 0.000000, 0.000000, 349.920013, -1, -1);
	CreateDynamicObject(1549, -2723.750000, 647.909973, 1384.719971, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1997, -2717.850098, 607.429993, 1384.650024, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(2191, -2717.429932, 642.869995, 1384.609985, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19432, -2712.340088, 615.909973, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2161, -2717.419922, 643.570007, 1384.619995, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(19451, -2724.669922, 649.270020, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2723.489990, 602.090027, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2190, -2713.040039, 637.669983, 1385.599976, 0.000000, 0.000000, 153.570007, -1, -1);
	CreateDynamicObject(19451, -2717.010010, 643.469971, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19432, -2713.919922, 611.260010, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2596, -2710.689941, 618.690002, 1387.630005, 24.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(19432, -2713.899902, 610.760010, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3657, -2710.310059, 618.919983, 1385.170044, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(2066, -2720.899902, 647.799988, 1384.640015, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, -2717.280029, 605.599976, 1385.000000, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19389, -2715.419922, 606.830017, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(3657, -2708.500000, 625.859985, 1385.170044, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3657, -2708.500000, 626.559998, 1385.170044, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(1549, -2710.899902, 637.070007, 1384.650024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1715, -2712.370117, 639.969971, 1384.650024, 0.000000, 0.000000, 352.630005, -1, -1);
	CreateDynamicObject(3657, -2708.500000, 622.109985, 1385.170044, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(2596, -2710.689941, 636.869995, 1387.630005, 24.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3657, -2708.500000, 621.409973, 1385.170044, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, -2710.040039, 615.070007, 1385.000000, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3657, -2708.500000, 630.390015, 1385.170044, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3657, -2708.500000, 631.140015, 1385.170044, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(2604, -2718.489990, 647.919983, 1385.459961, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2596, -2719.500000, 602.030029, 1387.760010, 20.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(19451, -2708.989990, 616.299988, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19359, -2710.610107, 638.570007, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2718.850098, 601.770020, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1491, -2711.219971, 610.030029, 1384.640015, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3384, -2718.260010, 601.859985, 1386.000000, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(3386, -2708.149902, 616.059998, 1384.569946, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2717.040039, 648.539978, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19389, -2710.449951, 609.989990, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1549, -2706.919922, 618.669983, 1384.650024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1715, -2714.260010, 646.500000, 1384.650024, 0.000000, 0.000000, 124.690002, -1, -1);
	CreateDynamicObject(19389, -2710.610107, 641.780029, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19432, -2706.580078, 632.210022, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1808, -2715.820068, 602.020020, 1384.569946, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(1808, -2709.260010, 610.229980, 1384.569946, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(19432, -2705.870117, 631.309998, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19432, -2705.870117, 633.080017, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2603, -2706.469971, 615.070007, 1385.000000, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1216, -2705.800049, 633.419983, 1385.290039, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(1998, -2713.719971, 648.020020, 1384.650024, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(19432, -2705.159912, 632.190002, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2596, -2707.939941, 610.340027, 1387.760010, 20.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(19451, -2713.979980, 601.929993, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1216, -2704.780029, 632.200012, 1385.290039, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2704.469971, 618.409973, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19405, -2707.239990, 609.989990, 1386.400024, 0.000000, 0.000000, 270.000000, -1, -1);
	CreateDynamicObject(19451, -2709.000000, 606.830017, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(3387, -2704.550049, 616.099976, 1384.599976, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2712.159912, 648.340027, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3657, -2703.340088, 618.869995, 1385.170044, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(2686, -2707.719971, 643.320007, 1386.729980, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1649, -2706.139893, 609.969971, 1385.780029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1649, -2706.139893, 609.969971, 1385.780029, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(1997, -2706.399902, 609.440002, 1384.650024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2707.389893, 643.469971, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(955, -2706.620117, 642.900024, 1385.060059, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, -2702.830078, 615.070007, 1385.000000, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3657, -2701.000000, 627.570007, 1385.170044, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(19451, -2700.530029, 623.239990, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3383, -2703.379883, 610.909973, 1384.640015, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(10722, -2706.889893, 615.989990, 1405.310059, -90.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2700.530029, 632.859985, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3657, -2701.000000, 635.070007, 1385.170044, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(10722, -2737.790039, 593.419983, 1405.300049, -90.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(10722, -2706.800049, 635.609985, 1405.310059, -90.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3384, -2700.719971, 615.880005, 1385.910034, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(3089, -2704.179932, 606.719971, 1385.959961, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2699.379883, 616.299988, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19359, -2699.510010, 614.679993, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3089, -2702.679932, 606.719971, 1385.959961, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19359, -2702.689941, 606.820007, 1389.060059, 180.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2700.830078, 609.989990, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2705.120117, 602.049988, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2524, -2698.649902, 615.710022, 1384.640015, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2700.530029, 642.460022, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2514, -2697.899902, 613.609985, 1384.640015, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(19359, -2697.989990, 613.109985, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1723, -2704.510010, 599.549988, 1384.650024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2741, -2697.239990, 613.289978, 1385.760010, 0.000000, 0.000000, 184.000000, -1, -1);
	CreateDynamicObject(19359, -2699.580078, 606.830017, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1778, -2696.560059, 613.969971, 1384.599976, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19389, -2696.310059, 614.700012, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1491, -2696.310059, 613.960022, 1384.650024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1997, -2694.699951, 619.419983, 1384.650024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19405, -2696.300049, 611.500000, 1386.400024, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(19451, -2697.770020, 643.469971, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(932, -2696.000000, 610.989990, 1384.650024, 0.000000, 0.000000, -180.000000, -1, -1);
	CreateDynamicObject(19432, -2697.189941, 606.830017, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(3089, -2693.739990, 616.330017, 1385.959961, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2693.129883, 619.979980, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19389, -2692.979980, 616.299988, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2702.969971, 595.559998, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19359, -2696.300049, 605.309998, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19405, -2691.679932, 615.070007, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19432, -2696.300049, 602.900024, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3089, -2696.199951, 602.090027, 1385.959961, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19389, -2691.679932, 611.869995, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1808, -2691.500000, 610.280029, 1384.569946, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(3089, -2694.699951, 602.090027, 1385.959961, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19389, -2691.679932, 608.669983, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19359, -2694.770020, 602.130005, 1389.060059, 180.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2596, -2689.350098, 616.070007, 1387.750000, 20.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19432, -2691.679932, 606.260010, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2695.669922, 598.609985, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1997, -2692.260010, 604.599976, 1384.650024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1679, -2689.090088, 613.140015, 1385.119995, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19359, -2691.679932, 603.859985, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19432, -2692.409912, 602.190002, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(14384, -2690.399902, 605.940002, 1386.140015, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(10722, -2702.729980, 593.419983, 1405.310059, -90.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2687.010010, 616.400024, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2747, -2688.639893, 609.390015, 1385.260010, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2686.580078, 616.299988, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2747, -2686.979980, 609.320007, 1385.260010, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2747, -2689.629883, 602.619995, 1385.260010, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2747, -2687.219971, 608.159973, 1385.239990, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2747, -2687.239990, 606.479980, 1385.140015, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2687.010010, 606.770020, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2747, -2687.260010, 605.150024, 1385.140015, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2747, -2687.229980, 604.039978, 1385.260010, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2747, -2687.530029, 602.630005, 1385.260010, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19451, -2684.719971, 609.849976, 1384.569946, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2686.790039, 602.169983, 1386.400024, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19451, -2687.399902, 597.260010, 1386.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(10722, -2673.379883, 608.349976, 1405.310059, -90.000000, 0.000000, 0.000000, -1, -1);
	//Hospital Ganton - LV
	CreateObject(7996, 1276.479980, -826.630005, 1161.239990, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(19176, 1252.380005, -812.229980, 1164.760010, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(19445, 1252.550049, -809.880005, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19379, 1248.119995, -809.849976, 1163.189941, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(14680, 1247.800049, -814.140015, 1165.209961, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(630, 1251.699951, -816.849976, 1164.329956, 0.000000, 0.000000, 76.000000, -1, -1);
	CreateDynamicObject(19445, 1252.550049, -809.880005, 1168.530029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(630, 1251.760010, -807.150024, 1164.329956, 0.000000, 0.000000, 76.000000, -1, -1);
	CreateDynamicObject(19379, 1248.140015, -809.849976, 1166.910034, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19377, 1248.099976, -809.849976, 1166.849976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(1817, 1249.550049, -807.640015, 1163.270020, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19445, 1253.959961, -806.570007, 1165.030029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2447, 1249.599976, -807.000000, 1166.989990, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2700, 1250.400024, -818.000000, 1166.040039, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(1723, 1251.939941, -818.520020, 1163.270020, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(1723, 1247.530029, -817.039978, 1163.270020, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(19445, 1247.640015, -817.630005, 1165.030029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19445, 1253.959961, -806.570007, 1168.530029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2272, 1246.500000, -816.989990, 1165.489990, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(19445, 1252.550049, -819.500000, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19380, 1248.140015, -809.869995, 1170.349976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(2448, 1247.180054, -807.000000, 1166.989990, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1723, 1246.439941, -807.159973, 1163.270020, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2700, 1249.900024, -818.000000, 1169.369995, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(19445, 1247.640015, -817.630005, 1168.530029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19379, 1248.119995, -819.479980, 1163.189941, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(1369, 1246.719971, -818.690002, 1163.880005, 0.000000, 0.000000, -47.000000, -1, -1);
	CreateDynamicObject(2700, 1246.140015, -818.000000, 1166.040039, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(19445, 1252.550049, -819.500000, 1168.530029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19379, 1248.140015, -819.479980, 1166.910034, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19377, 1248.099976, -819.479980, 1166.849976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(2449, 1244.800049, -807.000000, 1166.989990, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1720, 1242.550049, -811.900024, 1163.280029, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(19445, 1244.339966, -806.570007, 1165.030029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2700, 1246.140015, -818.000000, 1169.369995, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(1720, 1242.689941, -808.070007, 1163.280029, 0.000000, 0.000000, -91.000000, -1, -1);
	CreateDynamicObject(1817, 1243.390015, -817.570007, 1163.270020, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19380, 1248.140015, -819.500000, 1170.349976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(2190, 1241.689941, -811.679993, 1164.060059, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(19445, 1244.339966, -806.570007, 1168.530029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2169, 1241.270020, -812.989990, 1163.270020, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(2826, 1241.319946, -814.010010, 1164.060059, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2169, 1241.270020, -811.030029, 1163.270020, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(14680, 1241.209961, -813.840027, 1165.209961, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2196, 1241.069946, -813.549988, 1164.060059, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(2169, 1241.290039, -814.789978, 1163.270020, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(2196, 1241.060059, -810.349976, 1164.060059, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(2169, 1241.270020, -809.090027, 1163.270020, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(2190, 1241.609985, -807.890015, 1164.060059, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(19383, 1242.910034, -819.309998, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2169, 1241.270020, -807.130005, 1163.270020, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(2190, 1240.319946, -815.090027, 1164.060059, 0.000000, 0.000000, 185.000000, -1, -1);
	CreateDynamicObject(2356, 1240.069946, -813.450012, 1163.280029, 0.000000, 0.000000, -156.000000, -1, -1);
	CreateDynamicObject(1523, 1242.939941, -820.059998, 1163.260010, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2356, 1239.890015, -811.390015, 1163.280029, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(14680, 1248.760010, -823.919983, 1165.209961, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1523, 1242.939941, -820.059998, 1166.760010, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2603, 1251.420044, -824.369995, 1163.729980, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19383, 1242.910034, -819.309998, 1168.530029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(6299, 1242.729980, -805.210022, 1169.050049, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1720, 1240.060059, -816.150024, 1163.280029, 0.000000, 0.000000, -170.000000, -1, -1);
	CreateDynamicObject(2603, 1251.359985, -824.369995, 1167.369995, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, 1248.939941, -824.369995, 1163.729980, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2356, 1239.979980, -808.210022, 1163.280029, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(2603, 1248.939941, -824.369995, 1167.369995, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2169, 1239.329956, -814.789978, 1163.270020, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(14680, 1249.900024, -824.280029, 1168.699951, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, 1246.540039, -824.369995, 1163.729980, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2356, 1238.469971, -813.400024, 1163.280029, 0.000000, 0.000000, -178.000000, -1, -1);
	CreateDynamicObject(2190, 1238.630005, -815.000000, 1164.060059, 0.000000, 0.000000, 156.000000, -1, -1);
	CreateDynamicObject(2603, 1246.540039, -824.369995, 1167.369995, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1723, 1242.310059, -822.179993, 1163.270020, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(1723, 1242.310059, -822.179993, 1167.020020, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(19445, 1247.640015, -825.789978, 1165.030029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2603, 1244.400024, -824.369995, 1163.729980, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19379, 1237.619995, -809.849976, 1163.189941, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19377, 1237.640015, -809.849976, 1166.849976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, 1244.319946, -824.369995, 1167.369995, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19379, 1237.640015, -809.869995, 1166.910034, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19445, 1247.640015, -825.789978, 1168.530029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2603, 1250.800049, -827.090027, 1163.650024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2069, 1237.750000, -807.080017, 1163.319946, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2174, 1236.790039, -811.150024, 1163.280029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2603, 1250.800049, -827.090027, 1167.369995, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, 1248.560059, -827.090027, 1163.650024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2277, 1236.800049, -809.820007, 1165.469971, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2603, 1248.560059, -827.090027, 1167.369995, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19380, 1237.640015, -809.869995, 1170.349976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(2202, 1236.760010, -808.020020, 1163.280029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19445, 1236.199951, -809.390015, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, 1246.180054, -827.090027, 1163.650024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19379, 1237.640015, -819.479980, 1163.189941, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(1649, 1236.199951, -815.789978, 1164.459961, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(1649, 1236.199951, -815.789978, 1164.459961, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19399, 1236.199951, -815.789978, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19377, 1237.640015, -819.479980, 1166.849976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19379, 1237.640015, -819.500000, 1166.910034, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, 1246.180054, -827.090027, 1167.369995, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19445, 1242.910034, -825.729980, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1723, 1235.609985, -812.469971, 1163.270020, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(2826, 1242.420044, -825.690002, 1163.760010, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1817, 1242.930054, -826.130005, 1163.270020, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19445, 1242.910034, -825.729980, 1168.530029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1817, 1242.930054, -826.130005, 1167.030029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2603, 1244.079956, -827.090027, 1163.650024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1523, 1236.170044, -818.200012, 1163.260010, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(14680, 1235.089966, -813.520020, 1165.209961, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19445, 1252.550049, -829.119995, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, 1244.079956, -827.090027, 1167.369995, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19380, 1237.640015, -819.500000, 1170.349976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19383, 1236.199951, -818.989990, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1369, 1237.130005, -821.239990, 1163.880005, 0.000000, 0.000000, 20.780001, -1, -1);
	CreateDynamicObject(19379, 1248.119995, -829.109985, 1163.189941, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19445, 1252.550049, -829.119995, 1168.530029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(14680, 1235.680054, -816.869995, 1168.699951, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19377, 1248.099976, -829.109985, 1166.849976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19379, 1248.140015, -829.130005, 1166.910034, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, 1234.819946, -807.979980, 1163.650024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1723, 1242.310059, -827.080017, 1163.270020, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(1723, 1242.310059, -827.080017, 1166.979980, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(14680, 1235.119995, -818.520020, 1165.209961, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19445, 1234.719971, -806.570007, 1165.030029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19380, 1248.140015, -829.130005, 1170.349976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19445, 1234.719971, -806.570007, 1168.530029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1649, 1236.199951, -822.130005, 1164.459961, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1649, 1236.199951, -822.130005, 1164.459961, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(19399, 1236.199951, -822.369995, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2748, 1232.880005, -812.419983, 1167.609985, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2747, 1232.859985, -810.119995, 1167.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2747, 1232.859985, -814.219971, 1167.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2146, 1232.780029, -816.030029, 1163.760010, 0.000000, 0.000000, 55.000000, -1, -1);
	CreateDynamicObject(2603, 1232.819946, -807.940002, 1163.650024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2748, 1232.880005, -808.260010, 1167.609985, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2748, 1232.880005, -816.500000, 1167.609985, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2700, 1233.660034, -820.280029, 1166.040039, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(14680, 1248.849976, -832.080017, 1165.209961, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1523, 1236.170044, -824.780029, 1163.260010, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(2747, 1232.859985, -818.219971, 1167.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19383, 1236.199951, -825.570007, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(14680, 1250.140015, -832.429993, 1168.699951, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2146, 1247.589966, -832.500000, 1163.760010, 0.000000, 0.000000, 75.000000, -1, -1);
	CreateDynamicObject(2748, 1232.880005, -820.140015, 1167.609985, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2146, 1247.589966, -832.500000, 1167.469971, 0.000000, 0.000000, -76.000000, -1, -1);
	CreateDynamicObject(2603, 1230.689941, -813.200012, 1163.650024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1720, 1233.300049, -822.500000, 1163.280029, 0.000000, 0.000000, -180.000000, -1, -1);
	CreateDynamicObject(2573, 1232.650024, -821.260010, 1163.270020, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(14680, 1235.680054, -825.429993, 1168.699951, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2272, 1230.579956, -813.530029, 1165.449951, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2700, 1250.369995, -833.479980, 1166.040039, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2747, 1232.859985, -821.820007, 1167.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, 1230.709961, -807.929993, 1163.650024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19383, 1242.910034, -832.150024, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2700, 1250.369995, -833.479980, 1169.469971, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19445, 1229.979980, -811.479980, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2146, 1236.949951, -828.380005, 1163.760010, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19445, 1247.640015, -833.849976, 1165.030029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19445, 1231.469971, -820.679993, 1165.030029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19379, 1237.640015, -829.109985, 1163.189941, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19377, 1237.640015, -829.109985, 1166.849976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19383, 1242.910034, -832.150024, 1168.530029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19379, 1237.640015, -829.130005, 1166.910034, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19445, 1229.979980, -811.479980, 1168.530029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2603, 1230.699951, -819.320007, 1163.729980, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2748, 1232.880005, -823.580017, 1167.609985, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2700, 1245.050049, -833.479980, 1166.040039, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19445, 1247.640015, -833.849976, 1168.530029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2700, 1246.589966, -833.479980, 1169.469971, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1523, 1242.939941, -832.900024, 1163.260010, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1523, 1242.939941, -832.900024, 1166.760010, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1649, 1236.199951, -828.770020, 1164.459961, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(1649, 1236.199951, -828.770020, 1164.459961, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19399, 1236.199951, -828.770020, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19380, 1237.640015, -829.130005, 1170.349976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(14680, 1235.910034, -828.960022, 1165.209961, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2146, 1231.000000, -822.440002, 1163.760010, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2747, 1232.859985, -825.260010, 1167.400024, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19445, 1229.979980, -821.099976, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1369, 1233.630005, -827.330017, 1163.880005, 0.000000, 0.000000, 20.780001, -1, -1);
	CreateDynamicObject(19445, 1229.979980, -821.099976, 1168.530029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19426, 1242.900024, -834.710022, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2146, 1231.989990, -826.080017, 1163.760010, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(630, 1242.380005, -834.789978, 1164.329956, 0.000000, 0.000000, 76.000000, -1, -1);
	CreateDynamicObject(2146, 1231.050049, -825.150024, 1163.760010, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19426, 1242.900024, -834.710022, 1168.530029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19445, 1244.010010, -835.590027, 1165.030029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(630, 1242.380005, -834.789978, 1168.010010, 0.000000, 0.000000, 76.000000, -1, -1);
	CreateDynamicObject(19445, 1244.010010, -835.590027, 1168.530029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1723, 1241.410034, -835.000000, 1163.270020, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(2380, 1234.469971, -830.289978, 1164.880005, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(19379, 1227.140015, -816.659973, 1163.189941, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(1723, 1241.410034, -835.000000, 1166.969971, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(19377, 1227.140015, -816.659973, 1166.849976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19379, 1227.140015, -816.659973, 1166.910034, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19379, 1227.140015, -807.020020, 1163.189941, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19377, 1227.140015, -807.020020, 1166.849976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19383, 1236.199951, -832.150024, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19379, 1227.140015, -807.020020, 1166.910034, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19380, 1227.140015, -816.659973, 1170.349976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19380, 1227.140015, -807.020020, 1170.349976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(1491, 1236.219971, -832.900024, 1163.280029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2527, 1234.719971, -832.000000, 1163.300049, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2146, 1230.900024, -828.000000, 1163.760010, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19353, 1231.479980, -828.239990, 1168.530029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2146, 1230.900024, -828.049988, 1164.739990, 0.000000, -180.000000, 0.000000, -1, -1);
	CreateDynamicObject(630, 1230.650024, -827.609985, 1168.010010, 0.000000, 0.000000, 76.000000, -1, -1);
	CreateDynamicObject(19426, 1232.290039, -830.460022, 1168.530029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2063, 1231.469971, -830.039978, 1164.119995, 0.000000, 0.000000, -180.000000, -1, -1);
	CreateDynamicObject(19426, 1235.489990, -833.849976, 1165.030029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(14680, 1236.369995, -834.669983, 1165.209961, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2526, 1232.119995, -831.049988, 1163.300049, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19445, 1231.469971, -830.460022, 1165.030029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(630, 1233.959961, -832.750000, 1168.010010, 0.000000, 0.000000, 76.000000, -1, -1);
	CreateDynamicObject(19353, 1233.010010, -832.150024, 1168.530029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(2524, 1233.569946, -833.250000, 1163.300049, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(19435, 1232.380005, -832.159973, 1166.849976, 0.000000, 90.000000, 90.000000, -1, -1);
	CreateDynamicObject(2525, 1232.150024, -832.630005, 1163.300049, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19353, 1231.579956, -832.150024, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19379, 1227.140015, -826.299988, 1163.189941, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(2399, 1234.229980, -834.169983, 1169.079956, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19377, 1227.140015, -826.299988, 1166.849976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19379, 1227.140015, -826.299988, 1166.910034, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19353, 1233.089966, -833.849976, 1165.030029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19445, 1229.979980, -830.719971, 1165.030029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19353, 1231.579956, -832.150024, 1168.530029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19353, 1233.089966, -833.849976, 1168.530029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19445, 1229.979980, -830.719971, 1168.530029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19380, 1227.140015, -826.299988, 1170.349976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(2145, 1232.859985, -834.159973, 1167.000000, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19445, 1234.380005, -835.590027, 1165.030029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19445, 1234.380005, -835.590027, 1168.530029, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(14395, 1231.760010, -834.090027, 1164.780029, 0.000000, 0.000000, 91.000000, -1, -1);
	CreateDynamicObject(2145, 1232.880005, -835.000000, 1167.000000, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19426, 1232.439941, -834.710022, 1168.530029, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19379, 1237.640015, -838.739990, 1163.189941, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19377, 1237.619995, -838.750000, 1166.849976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19379, 1237.619995, -838.750000, 1166.910034, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19380, 1237.619995, -838.750000, 1170.349976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19380, 1231.020020, -835.210022, 1163.209961, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(19380, 1227.140015, -835.890015, 1170.349976, 0.000000, 90.000000, 0.000000, -1, -1);
	CreateDynamicObject(1567, 1271.099976, -821.590027, 1088.780029, 0.000000, 0.000000, 270.000000, -1, -1);
	CreateDynamicObject(2141, 1274.699951, -823.179993, 1084.630005, 0.000000, 0.000000, 90.000000, -1, -1);
	// Estacionamiento camionero
	CreateDynamicObject(8948, 2058.68994, 2437.64990, 11.58000,   0.00000, 0.00000, 90.00000, 4);
	CreateDynamicObject(3448, 2082.19995, 2417.37988, 9.96000,   0.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(3448, 2082.19995, 2417.37988, 14.24000,   0.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(3448, 2082.19995, 2417.37988, 18.56000,   0.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(3448, 2082.19995, 2417.37988, 22.84000,   0.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(6873, 2053.02002, 2403.21997, 9.82000,   0.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(3448, 2082.19995, 2417.37988, 27.16000,   0.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(3448, 2082.19995, 2417.37988, 31.46000,   0.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(3448, 2082.19995, 2417.37988, 35.74000,   0.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(3448, 2082.19995, 2417.37988, 40.06000,   0.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(3448, 2082.19995, 2417.37988, 44.34000,   0.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(3448, 2082.19995, 2417.37988, 48.66000,   0.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(6971, 2098.87012, 2402.58008, 9.83000,   0.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(19305, 2117.87988, 2414.71997, 11.15000,   0.00000, 0.00000, 190.00000, 4);
	CreateDynamicObject(19305, 2117.87988, 2414.71997, 15.45000,   0.00000, 0.00000, 190.00000, 4);
	CreateDynamicObject(19305, 2117.87988, 2414.71997, 19.75000,   0.00000, 0.00000, 190.00000, 4);
	CreateDynamicObject(19305, 2117.87988, 2414.71997, 24.05000,   0.00000, 0.00000, 190.00000, 4);
	CreateDynamicObject(19552, 2111.54004, 2437.66992, 49.44000,   90.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(19305, 2117.87988, 2414.71997, 28.35000,   0.00000, 0.00000, 190.00000, 4);
	CreateDynamicObject(6972, 2053.62988, 2374.30005, 30.75000,   0.00000, 0.00000, 180.00000, 4);
	CreateDynamicObject(6972, 2116.37988, 2409.83008, 30.75000,   0.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(19305, 2117.87988, 2414.71997, 32.65000,   0.00000, 0.00000, 190.00000, 4);
	CreateDynamicObject(19305, 2117.87988, 2414.71997, 36.95000,   0.00000, 0.00000, 190.00000, 4);
	CreateDynamicObject(19305, 2117.87988, 2414.71997, 41.25000,   0.00000, 0.00000, 190.00000, 4);
	CreateDynamicObject(19305, 2117.87988, 2414.71997, 45.55000,   0.00000, 0.00000, 190.00000, 4);
	CreateDynamicObject(19305, 2117.87988, 2414.71997, 49.85000,   0.00000, 0.00000, 190.00000, 4);
	CreateDynamicObject(19552, 2116.96997, 2489.23999, 49.44000,   90.00000, 0.00000, 90.00000, 4);
	CreateDynamicObject(6972, 2116.83008, 2374.30005, 30.75000,   0.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(19552, 2103.80005, 2367.11011, 49.44000,   90.00000, 0.00000, 0.00000, 4);
	CreateDynamicObject(19552, 2116.96997, 2345.83008, 49.44000,   90.00000, 0.00000, 90.00000, 4);
	// Mercado, Rutas, mecanico, etc
	CreateDynamicObject(973, -1749.83997, -659.71997, 20.87000,   0.00000, 7.60000, 87.03000);
	CreateDynamicObject(973, -1749.31006, -641.15997, 18.63000,   0.00000, 6.00000, 89.63000);
	CreateDynamicObject(973, -1749.46997, -650.47998, 19.69000,   0.00000, 7.00000, 88.41000);
	CreateDynamicObject(973, -1749.43994, -631.84003, 17.77000,   0.00000, 4.50000, 91.93000);
	CreateDynamicObject(973, -1749.76001, -622.52002, 17.06000,   0.00000, 4.20000, 91.93000);
	CreateDynamicObject(973, -1747.34998, -593.97998, 16.21000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(973, -1737.95996, -593.97998, 16.21000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(973, -1791.59998, -566.09998, 16.30000,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(973, -1782.40002, -566.09998, 16.30000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(973, -1728.57996, -593.94000, 16.21000,   0.00000, 0.00000, 0.50000);
	CreateDynamicObject(973, -1773.59998, -566.09998, 16.30000,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(973, -1764.19995, -566.09998, 16.30000,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(973, -1754.90002, -566.09998, 16.30000,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(973, -1736.31995, -566.09998, 16.30000,   0.00000, 0.00000, 179.99001);
	CreateDynamicObject(973, -1749.23999, -687.10999, 24.97000,   0.00000, 10.30000, 99.60000);
	CreateDynamicObject(973, -1747.25000, -696.01001, 26.86000,   0.00000, 13.00000, 105.65000);
	CreateDynamicObject(973, -1745.29004, -704.94000, 28.60000,   0.00000, 8.53000, 99.30000);
	CreateDynamicObject(973, -1727.39001, -750.78998, 36.04000,   0.00000, -3.00000, -93.00000);
	CreateDynamicObject(973, -1713.52002, -732.76001, 36.19000,   0.00000, 6.00000, 193.00000);
	CreateDynamicObject(973, -1750.28003, -678.01001, 23.45000,   0.00000, 8.50000, 93.35000);
	CreateDynamicObject(973, -1750.31006, -668.84003, 22.12000,   0.00000, 8.00000, 87.03000);
	CreateDynamicObject(973, -1745.69995, -566.09998, 16.30000,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(973, -1750.90002, -603.87000, 16.21000,   0.00000, 0.20000, 96.32000);
	CreateDynamicObject(973, -1750.15002, -613.16998, 16.48000,   0.00000, 3.00000, 92.86000);
	CreateDynamicObject(973, -1526.22998, -806.28003, 56.68000,   0.00000, 10.00000, 157.41000);
	CreateDynamicObject(973, -1517.70996, -809.82001, 58.30000,   0.00000, 10.00000, 157.41000);
	CreateDynamicObject(973, -1508.95996, -812.22998, 60.12000,   0.00000, 12.32000, 171.72000);
	CreateDynamicObject(973, -1499.87000, -813.35999, 62.11000,   0.00000, 12.32000, 174.16000);
	CreateDynamicObject(973, -1490.79004, -813.90002, 64.39000,   0.00000, 15.82000, 179.10001);
	CreateDynamicObject(973, -1481.76001, -813.84998, 66.89000,   0.00000, 15.00000, 181.42999);
	CreateDynamicObject(973, -1472.69995, -813.62000, 69.36000,   0.00000, 15.50000, 181.42999);
	CreateDynamicObject(973, -1465.01001, -810.00000, 71.73000,   0.00000, 10.50000, 234.45000);
	CreateDynamicObject(973, -1458.31995, -804.47998, 73.81000,   0.00000, 15.50000, 205.62000);
	CreateDynamicObject(973, -1449.72998, -802.42999, 76.43000,   0.00000, 17.00000, 181.77000);
	CreateDynamicObject(973, -1440.76001, -802.15002, 78.93000,   0.00000, 14.00000, 181.77000);
	CreateDynamicObject(973, -1431.75000, -801.84998, 80.78000,   0.00000, 9.20000, 181.77000);
	CreateDynamicObject(973, -1422.82996, -803.44000, 81.86000,   0.00000, 4.20000, 157.91000);
	CreateDynamicObject(973, -1414.72998, -807.87000, 82.20000,   0.00000, 0.00000, 144.96001);
	CreateDynamicObject(973, -1406.29004, -810.27002, 82.16000,   0.00000, -0.50000, 183.33000);
	CreateDynamicObject(973, -1255.09998, -777.79999, 66.10000,   0.00000, 354.00000, 208.25000);
	CreateDynamicObject(973, -1247.00000, -773.29999, 65.00000,   0.00000, 352.50000, 210.00000);
	CreateDynamicObject(973, -1239.00000, -768.70001, 64.00000,   0.00000, 355.25000, 209.75000);
	CreateDynamicObject(973, -1231.50000, -763.29999, 63.70000,   0.00000, 0.75000, 222.00000);
	CreateDynamicObject(973, -1224.90002, -756.79999, 63.10000,   0.00000, 352.00000, 227.25000);
	CreateDynamicObject(973, -1212.97949, -742.57837, 60.48780,   -0.18000, 351.06000, 231.94000);
	CreateDynamicObject(973, -840.15997, -1038.84998, 87.92000,   359.50000, 7.50000, 44.14000);
	CreateDynamicObject(973, -846.20001, -1045.79004, 89.13000,   359.50000, 7.50000, 53.83000);
	CreateDynamicObject(973, -833.52002, -1032.42004, 86.58000,   359.50000, 9.04000, 44.14000);
	CreateDynamicObject(973, -851.34003, -1053.47998, 90.35000,   359.50000, 7.50000, 58.79000);
	CreateDynamicObject(973, -826.21997, -1026.90002, 85.24000,   359.50000, 7.50000, 30.13000);
	CreateDynamicObject(973, -856.06000, -1061.43994, 91.57000,   359.50000, 7.50000, 60.05000);
	CreateDynamicObject(973, -818.19000, -1022.25000, 84.02000,   359.50000, 7.50000, 30.13000);
	CreateDynamicObject(973, -859.82001, -1069.81995, 92.78000,   359.50000, 7.50000, 71.81000);
	CreateDynamicObject(973, -809.87000, -1018.33002, 82.80000,   359.50000, 7.50000, 20.43000);
	CreateDynamicObject(973, -862.63000, -1078.68005, 94.00000,   359.50000, 7.50000, 73.07000);
	CreateDynamicObject(973, -865.33002, -1087.55005, 95.21000,   359.50000, 7.50000, 73.07000);
	CreateDynamicObject(973, -801.12000, -1015.38000, 81.58000,   359.50000, 7.50000, 16.96000);
	CreateDynamicObject(973, -867.97998, -1096.30005, 96.40000,   359.50000, 7.50000, 73.07000);
	CreateDynamicObject(973, -870.38000, -1105.23999, 97.66000,   359.50000, 8.00000, 77.07000);
	CreateDynamicObject(973, -792.14001, -1013.20001, 80.48000,   359.50000, 5.94000, 10.47000);
	CreateDynamicObject(973, -872.38000, -1114.28003, 98.35000,   0.00000, 0.50000, 78.20000);
	CreateDynamicObject(973, -874.06000, -1123.43994, 98.66000,   0.00000, 3.25000, 81.00000);
	CreateDynamicObject(973, -875.35999, -1132.64001, 99.58000,   0.00000, 8.04000, 83.00000);
	CreateDynamicObject(973, -876.27002, -1141.85999, 100.93000,   1.98000, 8.51000, 85.45000);
	CreateDynamicObject(973, -735.19000, -1015.76001, 75.70000,   359.51999, 4.12000, 354.95001);
	CreateDynamicObject(973, -725.88000, -1016.58002, 75.03000,   359.51999, 4.12000, 354.95001);
	CreateDynamicObject(973, -716.54999, -1016.84998, 74.45000,   359.51999, 3.06000, 1.76000);
	CreateDynamicObject(973, -707.21997, -1016.52002, 73.96000,   359.51999, 3.06000, 2.32000);
	CreateDynamicObject(973, -697.88000, -1016.14001, 73.46000,   359.51999, 3.06000, 2.32000);
	CreateDynamicObject(973, -688.64001, -1015.33002, 72.72000,   359.51999, 6.00000, 7.73000);
	CreateDynamicObject(973, -679.44000, -1013.92999, 71.74000,   359.51999, 6.00000, 9.69000);
	CreateDynamicObject(973, -670.27002, -1012.35999, 70.77000,   359.51999, 6.00000, 9.69000);
	CreateDynamicObject(973, -661.08002, -1010.79999, 69.93000,   359.51999, 4.36000, 9.69000);
	CreateDynamicObject(973, -652.26001, -1008.29999, 69.23000,   359.51999, 4.36000, 21.85000);
	CreateDynamicObject(973, -643.53998, -1005.15002, 68.44000,   359.51999, 5.44000, 17.96000);
	CreateDynamicObject(973, -634.94000, -1001.67999, 67.56000,   359.51999, 5.44000, 26.17000);
	CreateDynamicObject(973, -458.67001, -830.94000, 49.51000,   0.00000, 2.21000, 182.03999);
	CreateDynamicObject(973, -449.81000, -828.89001, 49.53000,   0.00000, -1.99000, 204.11000);
	CreateDynamicObject(973, -441.32999, -825.09998, 49.23000,   0.00000, -1.99000, 204.11000);
	CreateDynamicObject(973, -432.59000, -822.12000, 48.97000,   0.00000, -1.19000, 193.50000);
	CreateDynamicObject(973, -423.57999, -819.92999, 48.73000,   0.00000, -1.48000, 193.50000);
	CreateDynamicObject(973, -414.45999, -818.23999, 48.41000,   0.00000, -2.48000, 187.50000);
	CreateDynamicObject(973, -405.16000, -818.10999, 48.10000,   0.00000, -1.32000, 173.94000);
	CreateDynamicObject(973, -396.03000, -819.73999, 47.77000,   0.00000, -2.84000, 165.58000);
	CreateDynamicObject(18228, -678.86438, -1049.00781, 52.46140,   7.00000, 4.00000, -5.00000);
	CreateDynamicObject(973, -1218.81995, -749.79999, 61.80000,   0.16000, 352.41000, 230.73000);
	CreateDynamicObject(973, -1207.84937, -734.93835, 59.04153,   -0.18000, 351.06000, 240.33989);
	CreateDynamicObject(973, -1203.50293, -726.81506, 57.68426,   -0.06000, 352.13995, 243.51981);
	CreateDynamicObject(973, -1199.37939, -718.50793, 56.38427,   -0.06000, 352.13995, 243.51981);
	CreateDynamicObject(1308, -1199.01233, -717.66583, 55.84375,   356.85840, 0.00000, 3.14159);

	CreateDynamicObject(18228, -1789.28003, -657.90002, 18.03000,   0.00000, 0.00000, 51.42000);
	CreateDynamicObject(13435, -1779.59998, -631.14001, 21.24000,   4.00000, 5.00000, 90.00000);
	CreateDynamicObject(14872, -1795.30005, -629.90002, 17.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1463, -1797.09998, -628.20001, 17.20000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(12937, -1796.59998, -624.29999, 19.00000,   0.00000, 358.00000, 0.00000);
	CreateDynamicObject(12808, -1788.40002, -605.90002, 18.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(837, -1805.50000, -599.40002, 15.80000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(836, -1774.50000, -603.79999, 16.40000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(747, -1750.23999, -596.77002, 15.44000,   0.00000, 0.00000, 351.54001);
	CreateDynamicObject(13435, -1795.40002, -549.79999, 17.60000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(791, -1795.34998, -545.28003, 4.80000,   0.00000, 0.00000, 301.03000);
	CreateDynamicObject(845, -1785.59998, -544.79999, 15.00000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(982, -1531.18005, 119.19000, 3.23000,   0.00000, 0.00000, 134.89999);
	CreateDynamicObject(982, -1513.00000, 137.34000, 3.23000,   0.00000, 0.00000, 135.02000);
	CreateDynamicObject(982, -1514.70996, 158.09000, 3.23000,   0.00000, 0.00000, 45.00000);
	CreateDynamicObject(982, -1535.76001, 160.89000, 3.23000,   0.00000, 0.00000, 134.82001);
	CreateDynamicObject(982, -1553.89001, 142.81000, 3.23000,   0.00000, 0.00000, 135.00000);
	CreateDynamicObject(970, -1566.19995, 135.39999, 4.20000,   0.00000, 0.00000, 315.00000);
	CreateDynamicObject(970, -1566.19995, 135.39999, 3.10000,   0.00000, 0.00000, 315.00000);
	CreateDynamicObject(970, -1570.00000, 139.20000, 3.10000,   0.00000, 0.00000, 315.00000);
	CreateDynamicObject(970, -1570.00000, 139.20000, 4.20000,   0.00000, 0.00000, 315.00000);
	CreateDynamicObject(970, -1573.72998, 139.45000, 3.10000,   0.00000, 0.00000, 45.00000);
	CreateDynamicObject(970, -1573.72998, 139.45000, 4.20000,   0.00000, 0.00000, 45.00000);
	CreateDynamicObject(970, -1577.72998, 135.45000, 3.10000,   0.00000, 0.00000, 45.00000);
	CreateDynamicObject(970, -1577.72998, 135.45000, 4.20000,   0.00000, 0.00000, 45.00000);
	CreateDynamicObject(970, -1581.72998, 131.45000, 3.10000,   0.00000, 0.00000, 45.00000);
	CreateDynamicObject(970, -1581.72998, 131.45000, 4.20000,   0.00000, 0.00000, 45.00000);
	CreateDynamicObject(18228, -1786.29004, -708.04999, 24.30000,   0.00000, 0.00000, 65.10000);
	CreateDynamicObject(2060, -1071.69995, -1201.18005, 128.66000,   0.00000, 70.00000, 356.85001);
	CreateDynamicObject(2060, -1072.23999, -1200.93994, 128.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2060, -1072.06006, -1201.26001, 128.64000,   0.00000, 0.00000, 262.76001);
	CreateDynamicObject(2060, -1072.34998, -1201.50000, 128.38000,   0.00000, 0.00000, 349.26999);
	CreateDynamicObject(17030, -869.94000, -1171.07996, 85.88000,   0.00000, 0.00000, 142.00000);
	CreateDynamicObject(19468, -1086.23999, -1233.41003, 128.34000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19468, -1086.56006, -1233.54004, 128.34000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3287, -1085.98999, -1235.66003, 131.67000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, -1101.20996, -182.77000, 14.44000,   0.00000, 0.00000, 45.02000);
	CreateDynamicObject(3465, -1109.29004, -190.89000, 14.44000,   0.00000, 0.00000, 45.02000);
	CreateDynamicObject(9192, -1118.82996, -199.53999, 17.95000,   0.00000, 0.00000, 47.74000);
	CreateDynamicObject(3934, -1116.75000, -175.00000, 13.15000,   0.00000, 0.00000, 44.57000);
	CreateDynamicObject(11392, -1123.40002, -171.25999, 13.16000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(689, -182.69000, -387.06000, 1.46000,   357.00000, 0.00000, 55.00000);
	CreateDynamicObject(12861, 26.05000, -242.69000, 0.55000,   0.00000, 0.00000, 269.29001);
	CreateDynamicObject(3627, 41.38000, -261.20001, 4.40000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3569, 41.19000, -262.48001, 3.16000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3630, 32.70000, -294.79999, 2.65000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2567, 35.03000, -308.88000, 3.01000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3630, 50.76000, -294.98001, 2.27000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(5269, 56.47000, -294.26999, 2.91000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1431, 58.86000, -291.41000, 1.13000,   0.00000, 0.00000, 329.39999);
	CreateDynamicObject(925, 51.50000, -302.57999, 1.75000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1421, 59.07000, -293.72000, 1.25000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3577, 47.63000, -312.07001, 1.51000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(931, 55.60000, -302.57999, 1.75000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(5269, 54.41000, -304.50000, 3.03000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2567, 36.63000, -326.92999, 2.97000,   0.00000, 0.00000, 180.00000);

    /*mecanico antiguo
	CreateDynamicObject(14680, 80.40000, -152.80000, 2.60000,   0.00000, 0.00000, 270.00000);
	CeateDynamicObject(1347, 84.61426, -166.02344, 2.00000,   90.00000, 180.00549, 359.98352);
	CreateDynamicObject(2816, 84.76000, -166.17819, 2.42000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1347, 84.75801, -165.10396, 2.00000,   90.00000, 180.00549, 359.97803);
	CreateDynamicObject(366, 85.02246, -167.24902, 2.10000,   0.00000, 40.00000, 103.00000);
	CreateDynamicObject(2103, 84.85000, -165.12628, 2.44000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(365, 84.98106, -166.22272, 2.60000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1431, 53.59000, -294.06000, 1.13000,   0.00000, 0.00000, 14.22000);
	CreateDynamicObject(1787, 84.92001, -162.68915, 2.50000,   0.00000, 90.00000, 89.99988);
	CreateDynamicObject(1787, 85.02881, -163.13712, 2.50000,   0.00000, 90.00000, 89.99982);
	CreateDynamicObject(2846, 83.60000, -149.00000, 1.60000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2395, 86.35000, -161.48126, 5.00000,   0.00000, 90.00000, 220.00000);
	CreateDynamicObject(1439, 90.50000, -160.45000, 1.58575,   0.00000, 0.00000, 179.99451);
	CreateDynamicObject(2674, 90.34708, -158.26065, 1.60558,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2673, 88.98421, -149.61986, 1.66607,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2378, 84.70000, -148.10001, 2.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(12991, 85.70000, -150.60001, 1.60000,   0.00000, 0.00000, 179.99988);
	CreateDynamicObject(3055, 88.00293, -160.95020, 2.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2673, 86.21382, -148.26651, 1.67018,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2096, 87.20000, -152.70000, 1.60000,   0.00000, 0.00000, 219.99989);
	CreateDynamicObject(1787, 89.82758, -167.98232, 2.00000,   0.00000, 90.00000, 116.01138);
	CreateDynamicObject(1787, 90.00000, -168.30000, 2.00000,   0.00000, 90.00000, 119.99988);
	CreateDynamicObject(10282, 89.67090, -164.78906, 2.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2673, 87.49727, -149.50848, 1.67109,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1440, 88.21755, -148.51106, 2.10067,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(12957, 94.61621, -158.98926, 2.30000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1347, 93.34729, -168.37517, 2.00000,   90.00000, 179.99451, 269.99451);
	CreateDynamicObject(1787, 92.84961, -161.53320, 2.10000,   0.00000, 49.99878, 339.99939);
	CreateDynamicObject(1787, 92.91087, -161.60001, 2.00000,   0.00000, 90.00000, 89.99982);
	CreateDynamicObject(925, 91.06821, -148.62650, 2.63619,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11392, 93.32951, -161.72353, 1.60000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1347, 94.30000, -168.42996, 2.00000,   90.00000, 180.00000, 270.00012);
	CreateDynamicObject(11392, 93.68375, -161.98639, 1.60000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1787, 93.72372, -161.39999, 2.00000,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3594, 106.90000, -153.10001, 1.50000,   358.00000, 5.00000, 330.00000);
	CreateDynamicObject(18451, 116.10465, -149.14899, 1.09055,   0.00000, 0.00000, 0.00000);*/
	
	CreateDynamicObject(3630, 42.01000, -324.23001, 6.63000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(5269, 61.25000, -301.63000, 2.89000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(925, 53.94000, -312.32999, 1.75000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1448, 66.21000, -296.64001, 0.66000,   0.00000, 0.00000, 339.04001);
	CreateDynamicObject(7619, 65.14000, -300.63000, 5.20000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(7832, 65.14000, -300.63000, 5.20000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(7497, 65.14000, -300.63000, 5.20000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1448, 69.49000, -296.54999, 0.66000,   0.00000, 0.00000, 339.04001);
	CreateDynamicObject(1448, 70.08000, -298.39001, 0.66000,   0.00000, 0.00000, 13.08000);
	CreateDynamicObject(3577, 65.88000, -305.67999, 1.51000,   0.00000, 0.00000, 13.77000);
	CreateDynamicObject(5269, 74.48000, -294.31000, 2.89000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3630, 51.89000, -321.76999, 2.09000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3568, 85.38000, -279.09000, 2.95000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3577, 64.21000, -310.26999, 1.51000,   0.00000, 0.00000, 0.70000);
	CreateDynamicObject(5269, 61.41000, -313.95001, 1.75000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3630, 53.57000, -324.23001, 6.63000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1448, 76.10000, -299.73999, 0.66000,   0.00000, 0.00000, 27.62000);
	CreateDynamicObject(5269, 80.56000, -294.31000, 2.89000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3569, 91.03000, -278.95999, 2.95000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1448, 78.34000, -301.79999, 0.66000,   0.00000, 0.00000, 354.01999);
	CreateDynamicObject(5269, 75.32000, -305.94000, 2.89000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1847, 77.42000, -305.79999, 0.57000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2567, 67.73000, -320.20999, 2.45000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3630, 65.21000, -324.23001, 6.63000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3577, 73.61000, -318.50000, 1.31000,   0.00000, 0.00000, 126.21000);
	CreateDynamicObject(1448, 88.61000, -298.64999, 0.66000,   0.00000, 0.00000, 47.48000);
	CreateDynamicObject(1883, 77.51000, -314.57999, 0.57000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2567, 67.96000, -325.54999, 2.45000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1883, 81.81000, -309.78000, 0.57000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2543, 87.55000, -302.70001, 0.54000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2543, 88.56000, -301.69000, 0.54000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(5269, 91.07000, -298.62000, 2.89000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3474, 108.93000, -265.73001, 7.47000,   0.00000, 0.00000, 92.29000);
	CreateDynamicObject(2543, 88.56000, -303.69000, 0.54000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2543, 89.55000, -302.70001, 0.54000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1883, 81.81000, -314.57999, 0.57000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2542, 85.08000, -315.79999, 0.52000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(5269, 95.13000, -303.70001, 2.89000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3014, 94.17000, -305.23999, 0.65000,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(3014, 86.06000, -315.35001, 0.65000,   0.00000, 90.00000, -90.00000);
	CreateDynamicObject(2541, 86.08000, -315.79999, 0.52000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2541, 87.08000, -315.79999, 0.52000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3014, 94.17000, -309.57999, 0.65000,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(5269, 95.13000, -312.12000, 2.89000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3014, 94.17000, -313.70001, 0.65000,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(12934, 133.92000, -265.03000, 3.91000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19359, 158.44000, -296.85001, 2.32000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19451, 171.71001, -275.17999, 2.29000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1500, 193.21001, -229.19000, 0.60000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, 194.07001, -231.12000, 0.78000,   0.00000, 0.00000, 84.00000);
	CreateDynamicObject(2748, 195.05000, -224.95000, 1.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2747, 195.64000, -226.74001, 1.20000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18644, 195.69000, -230.46001, 1.60000,   90.00000, 0.00000, 47.00000);
	CreateDynamicObject(2607, 195.62000, -231.07001, 1.18000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(18635, 195.58000, -231.75999, 1.56000,   90.00000, 0.00000, 62.00000);
	CreateDynamicObject(18634, 195.78999, -231.24001, 1.62000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(2069, 196.46001, -232.60001, 0.82000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19164, 197.82001, -230.11000, 3.42000,   90.00000, 90.00000, -90.00000);
	CreateDynamicObject(1714, 198.23000, -234.89000, 0.78000,   0.00000, 0.00000, 178.00000);
	CreateDynamicObject(2063, 199.53000, -224.75999, 1.68000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1438, 199.69000, -228.62000, 0.78000,   0.00000, 0.00000, 185.00000);
	CreateDynamicObject(14532, 200.02000, -231.50000, 1.76000,   0.00000, 0.00000, 114.12000);
	CreateDynamicObject(2628, 205.50000, -225.34000, 0.77000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2190, 211.22000, -224.59000, 1.91000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2710, 212.81000, -233.91000, 0.87000,   0.00000, 0.00000, 171.00000);
	CreateDynamicObject(1210, 213.48000, -235.10001, 0.92000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2226, 213.67999, -233.84000, 0.78000,   0.00000, 0.00000, 135.00000);
	CreateDynamicObject(19317, 214.41000, -234.97000, 1.50000,   -18.00000, 4.00000, 185.00000);
	CreateDynamicObject(2404, 214.87000, -235.14000, 2.27000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(366, 215.03000, -234.10001, 0.81000,   84.00000, 0.00000, 0.00000);
	CreateDynamicObject(2028, 218.57001, -224.81000, 1.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1788, 219.50999, -224.81000, 1.95000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1429, 220.58000, -224.72000, 2.15000,   0.00000, 0.00000, 193.00000);
	CreateDynamicObject(2225, 220.92000, -225.31000, 0.76000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19318, 221.39000, -225.83000, 1.95000,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(1518, 221.61000, -227.27000, 2.19000,   0.00000, 0.00000, -76.00000);
	CreateDynamicObject(1347, 221.30000, -234.62000, 1.34000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2406, 222.12000, -228.56000, 2.04000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(672, -98.56000, -403.69000, 0.75000,   356.85999, 0.00000, -0.43000);
 	// Sprunks
	CreateDynamicObject(1775, 365.4287, 164.6942, 1040.2156,   0.0000, 0.0000, 180.0000);
	// Puente basurero
	CreateDynamicObject(1231, 67.80000, -1518.78003, 6.67000,   0.00000, 0.00000, 85.12000);
	CreateDynamicObject(984, 62.47000, -1516.48999, 4.70000,   0.00000, 180.00000, 263.60999);
	CreateDynamicObject(14411, 69.20000, -1549.32996, 1.24000,   0.00000, 0.00000, 83.61000);
	CreateDynamicObject(8838, 51.68000, -1517.79004, 2.48000,   0.00000, 0.00000, 353.60001);
	CreateDynamicObject(1231, 66.63000, -1549.18994, 7.13000,   0.00000, 0.00000, 85.12000);
	CreateDynamicObject(982, 48.17000, -1514.88000, 4.66000,   0.00000, 180.00000, 263.60999);
	CreateDynamicObject(984, 60.40000, -1550.22998, 5.18000,   0.00000, 180.00000, 263.60999);
	CreateDynamicObject(8838, 50.51000, -1546.69995, 2.92000,   0.00000, 0.00000, 173.60001);
	CreateDynamicObject(19911, 262.13000, -1639.60999, 21.65000,   90.00000, 90.00000, 79.70000);
	CreateDynamicObject(1231, 35.62000, -1515.02002, 6.67000,   0.00000, 0.00000, 85.12000);
	CreateDynamicObject(983, 32.37000, -1512.65002, 4.66000,   0.00000, 180.00000, 255.55000);
	CreateDynamicObject(982, 46.09000, -1548.63000, 5.14000,   0.00000, 180.00000, 263.60999);
	CreateDynamicObject(14411, 26.61000, -1513.10999, 0.70000,   0.00000, 0.00000, 255.39000);
	CreateDynamicObject(19461, 25.09000, -1512.48999, 1.21000,   -34.00000, 90.00000, 75.59000);
	CreateDynamicObject(1231, 34.26000, -1545.35999, 7.13000,   0.00000, 0.00000, 85.12000);
	CreateDynamicObject(14411, 31.71000, -1545.01001, 1.24000,   0.00000, 0.00000, 263.60999);
	CreateDynamicObject(19462, 33.41950, -1514.66699, 3.91760,   0.00000, -90.00000, 75.00000);
	// Autoservicio
	CreateDynamicObject(19859, -24.389999, -188.419998, 1007.989990, 0.000000, 0.000000, 180.000000);
	CreateDynamicObject(19859, -27.389999, -188.419998, 1007.989990, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(1216, -22.250000, -187.800003, 1007.409973, 0.000000, 0.000000, 180.000000);
	CreateDynamicObject(1650, -30.709999, -186.490005, 1007.940002, 0.000000, 0.000000, 81.529999);
	CreateDynamicObject(1650, -30.690001, -186.169998, 1007.940002, 0.000000, 0.000000, 104.709999);
	CreateDynamicObject(19877, -27.080000, -183.039993, 1008.729980, 0.000000, 0.000000, 90.589996);
	CreateDynamicObject(19627, -30.660000, -185.210007, 1007.650024, 0.000000, 0.000000, 41.130001);
	CreateDynamicObject(2941, -30.719999, -184.550003, 1007.729980, 0.000000, 0.000000, 90.000000);
	CreateDynamicObject(1349, -25.639999, -181.880005, 1007.309998, 0.000000, 0.000000, 142.779999);
	CreateDynamicObject(1811, -32.290001, -184.899994, 1007.250000, 0.000000, 0.000000, 180.539993);
	CreateDynamicObject(19325, -33.709999, -187.479996, 1009.020020, 0.000000, 0.000000, 90.000000);
	CreateDynamicObject(19325, -33.709999, -187.440002, 1009.020020, 0.000000, 0.000000, 90.000000);
	CreateDynamicObject(19325, -33.709999, -187.380005, 1009.020020, 0.000000, 0.000000, 90.000000);
	CreateDynamicObject(19325, -17.790001, -187.460007, 1009.020020, 0.000000, 0.000000, 90.000000);
	CreateDynamicObject(19325, -17.790001, -187.399994, 1009.020020, 0.000000, 0.000000, 90.000000);
	CreateDynamicObject(19325, -17.790001, -187.360001, 1009.020020, 0.000000, 0.000000, 90.000000);
	CreateDynamicObject(19449, -33.049999, -182.770004, 1008.469971, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(2541, -21.020000, -179.919998, 1006.669983, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(19449, -30.730000, -179.440002, 1008.489990, 0.000000, 0.000000, 90.000000);
	CreateDynamicObject(19449, -21.110001, -179.399994, 1008.489990, 0.000000, 0.000000, 90.000000);
	CreateDynamicObject(2541, -20.020000, -179.919998, 1006.669983, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(14669, -25.910000, -177.850006, 1006.729980, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(19449, -16.500000, -183.080002, 1008.489990, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(2541, -19.020000, -179.919998, 1006.669983, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(19825, -19.520000, -179.529999, 1009.270020, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(2541, -18.020000, -179.919998, 1006.669983, 0.000000, 0.000000, 0.000000);
	CreateDynamicObject(19877, -13.070000, -182.869995, 1008.750000, 0.000000, 0.000000, -90.000000);
	// Rejas SFDP
	CreateDynamicObject(984, -1592.29871, 712.25092, -5.61160,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(984, -1592.29871, 720.33691, -5.61160,   0.00000, 0.00000, 90.00000);
	// Rejas LVDP
	CreateDynamicObject(984, 2288.19019, 2428.52954, 2.89620,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(984, 2274.81592, 2428.52954, 2.89620,   0.00000, 0.00000, 0.00000);
	// Casa circulo
	CreateDynamicObject(8417, 1100.82971, -825.41302, 106.44310,   0.00000, 180.00000, 8.00000);
	CreateDynamicObject(5302, 1103.27002, -816.54999, 86.76000,   90.00000, 0.00000, 91.07000);
	// Boleterias y pantallas
	CreateDynamicObject(2754, 1729.68311, -1942.34570, 13.49110,   0.00000, -16.00000, 90.00000);
	CreateDynamicObject(2754, 823.55548, -1353.05615, -0.43030,   0.00000, -18.00000, 48.00000);
	CreateDynamicObject(2754, -1960.71155, 141.99190, 27.88580,   0.00000, -20.00000, 180.00000);
	CreateDynamicObject(2754, -1961.29834, 130.12930, 27.65780,   0.00000, -20.00000, 0.00000);
	CreateDynamicObject(2754, 1439.53345, 2645.57642, 11.49720,   0.00000, -12.00000, 90.00000);
	CreateDynamicObject(2754, 2855.49438, 1296.84717, 11.55130,   0.00000, -14.00000, 180.00000);
	CreateDynamicObject(19167, 1729.63904, -1942.79016, 14.02160,   -270.00000, -90.00000, 90.00000);
	CreateDynamicObject(19167, 823.24988, -1353.38501, 0.03580,   90.00000, -90.00000, 45.00000);
	CreateDynamicObject(19167, -1960.25183, 141.96091, 28.34970,   90.00000, 90.00000, 0.00000);
	CreateDynamicObject(19167, -1961.75659, 130.14169, 28.12620,   90.00000, 90.00000, 180.00000);
	CreateDynamicObject(19167, 1439.50928, 2645.16772, 11.99860,   90.00000, -90.00000, 90.00000);
	CreateDynamicObject(19167, 2855.91992, 1296.84387, 12.08330,   90.00000, -90.00000, 180.00000);
	CreateDynamicObject(962, 832.14069, -1361.21155, -0.69850,   90.00000, 2.00000, -47.00000);
	// Interior Banco Peque??	CreateDynamicObject(1495, 824.41998, 10.88000, 1003.17999,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2284, 827.76001, -0.98000, 1005.63000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2290, 828.78003, -1.00000, 1003.16998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2773, 828.46997, 5.09000, 1003.66998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 827.53998, 7.97000, 1003.66998,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 828.46997, 3.18000, 1003.69000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 826.56000, 7.01000, 1003.69000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 826.56000, 5.09000, 1003.66998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 827.53998, 2.21000, 1003.66998,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 825.62000, 4.13000, 1003.69000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 825.62000, 2.21000, 1003.69000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8657, 824.95001, 12.86000, 1003.16998,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8657, 824.95001, -2.32000, 1003.16998,   90.00000, 0.00000, 180.00000);
	CreateDynamicObject(19464, 833.29999, 12.11000, 1005.71002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19464, 834.96997, 1.49000, 1005.71002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 834.96997, 13.33000, 1005.71002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 827.37000, 12.11000, 1005.71002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19464, 833.28003, -1.59000, 1005.71002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19464, 827.35999, -1.59000, 1005.71002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19465, 834.96997, 7.41000, 1005.71002,   0.00000, 0.00000, 0.00000);
	// Entrega Transportista
	CreateDynamicObject(3246, 2881.93994, 1768.18994, 9.79000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3474, 2870.47998, 1726.63000, 16.63000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3585, 2895.11011, 1748.88000, 11.42000,   0.00000, 0.00000, 84.00000);
	CreateDynamicObject(3585, 2866.13989, 1689.47998, 11.44000,   0.00000, 0.00000, -49.50000);
	CreateDynamicObject(5126, 2892.34009, 1750.06006, 24.79000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(8339, 2886.52002, 1697.48999, 13.77000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(8342, 2866.93994, 1777.33997, 12.69000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(12859, 2861.93994, 1751.72998, 9.80000,   0.00000, 0.00000, 0.00000);
	//CLUB STRIPTEASE
	CreateDynamicObject(19374, 1202.20703, -8.99510, 1002.13031,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19374, 1208.33728, -8.70550, 1002.13031,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19374, 1202.20703, -7.91510, 1002.13031,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19374, 1206.78235, -7.06860, 1002.13031,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19374, 1206.78235, -5.74860, 1002.13031,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19374, 1209.84229, -7.02860, 1002.13031,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19374, 1209.84229, -5.74860, 1002.13031,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19374, 1208.31726, -4.06550, 1002.13031,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19374, 1213.85107, -7.29100, 1002.13031,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19374, 1212.80396, -5.11000, 1002.13031,   0.00000, 0.00000, 45.36700);
	CreateDynamicObject(19374, 1212.77759, -2.95590, 1002.13031,   0.00000, 0.00000, 134.48351);
	CreateDynamicObject(14832, 1212.18750, -2.17190, 1001.22882,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14837, 1212.18750, -2.17190, 1001.22882,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14833, 1212.35156, -2.17190, 1001.28882,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19382, 1218.58862, -8.83950, 1002.13031,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19374, 1215.04919, -3.06890, 1002.13031,   0.00000, 0.00000, 45.36700);
	CreateDynamicObject(19374, 1221.92737, -10.91010, 1002.13031,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19382, 1220.52820, -4.11690, 1002.13031,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19374, 1223.41956, -12.56112, 1002.13031,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19374, 1222.01001, -2.69322, 1002.13031,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19374, 1223.65088, -1.15830, 1002.13031,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19836, 1202.71399, 9.10360, 999.94421,   0.00000, 0.00000, 0.00000);
	// Combustible Aereo LV
	CreateDynamicObject(3465, 1318.78, 1547.69, 11.11,   0.00, 0.00, 180.00);
	CreateDynamicObject(3465, 1318.78, 1532.55, 11.11,   0.00, 0.00, 180.00);
	CreateDynamicObject(3934, 1332.66, 1540.41, 9.81,   0.00, 0.00, 0.00);
	CreateDynamicObject(9192, 1345.28, 1520.65, 14.45,   0.00, 0.00, 0.00);
	CreateDynamicObject(10814, 1322.54, 1542.54, 13.69,   0.00, 0.00, -90.00);
	CreateDynamicObject(11392, 1329.67, 1544.93, 9.83,   0.00, 0.00, 0.00);
	// Combustible Aereo SF
	CreateDynamicObject(3465, -1101.21, -182.77, 14.44,   0.00, 0.00, 45.02);
	CreateDynamicObject(3465, -1109.29, -190.89, 14.44,   0.00, 0.00, 45.02);
	CreateDynamicObject(3934, -1116.75, -175.00, 13.15,   0.00, 0.00, 44.57);
	CreateDynamicObject(9192, -1118.83, -199.54, 17.95,   0.00, 0.00, 47.74);
	CreateDynamicObject(11392, -1123.40, -171.26, 13.16,   0.00, 0.00, 0.00);
	// Combustible Airport LS
	CreateDynamicObject(3465, 1947.42, -2631.66, 13.85,   0.02, 0.00, 0.00);
	CreateDynamicObject(3465, 1947.42, -2646.78, 13.85,   0.02, 0.00, 0.00);
	CreateDynamicObject(3465, 1987.20, -2646.78, 13.85,   0.02, 0.00, 0.00);
	CreateDynamicObject(3465, 1987.20, -2631.66, 13.85,   0.02, 0.00, 0.00);
	CreateDynamicObject(3934, 1968.36, -2638.58, 12.55,   0.00, 0.00, 0.00);
	CreateDynamicObject(9192, 1945.16, -2618.32, 17.14,   0.00, 0.00, 90.00);
	CreateDynamicObject(10814, 1951.03, -2636.59, 16.43,   0.00, 0.00, -90.00);
	CreateDynamicObject(10814, 1983.51, -2641.40, 16.43,   0.00, 0.00, 90.00);
	// Combustible Muelle LV
	CreateDynamicObject(984, 2353.23999, 594.08002, 9.72000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(984, 2353.23999, 570.00000, 9.72000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3465, 2315.30005, 585.32001, 11.29000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, 2315.30005, 582.20001, 11.29000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, 2326.10010, 585.32001, 11.29000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, 2315.30005, 579.28003, 11.29000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, 2326.10010, 582.20001, 11.29000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, 2315.30005, 576.17999, 11.29000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, 2326.10010, 579.28003, 11.29000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, 2326.10010, 576.17999, 11.29000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, 2293.78003, 522.59003, 2.15000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3465, 2290.04004, 522.59003, 2.15000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8555, 2315.26001, 583.28998, -13.49000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9171, 2317.36011, 582.97998, 12.95000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(9193, 2294.70996, 604.45001, 14.83000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(9193, 2298.91992, 522.88000, 5.65000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19445, 2357.50000, 596.96997, 8.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19445, 2357.50000, 587.34998, 8.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19445, 2357.50000, 577.71002, 8.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19445, 2352.62012, 563.37000, 8.11000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19445, 2357.50000, 568.09003, 8.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 2355.48999, 588.59998, 9.85000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 2355.48999, 598.21997, 9.85000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 2355.48999, 568.42999, 9.85000,   0.00000, 90.00000, 0.00000);
	// Banco Central
	CreateObject(14853, 1069.18005, -151.36000, 1001.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(647, 1078.71997, -147.31000, 1001.77002,   0.00000, 0.00000, 46.96000);
	CreateDynamicObject(756, 1081.20996, -148.77000, 1000.57001,   0.00000, 0.00000, 131.50999);
	CreateDynamicObject(756, 1079.96997, -147.28999, 1000.57001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(756, 1077.31995, -144.94000, 1000.57001,   0.00000, 0.00000, 90.36000);
	CreateDynamicObject(1549, 1077.10999, -138.34000, 1000.10999,   0.00000, 0.00000, 61.00000);
	CreateDynamicObject(1726, 1076.98999, -141.07001, 1000.10999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1726, 1076.98999, -133.81000, 1000.10999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1727, 1078.84998, -142.58000, 1000.10999,   0.00000, 0.00000, 159.25999);
	CreateDynamicObject(1727, 1077.62000, -137.74001, 1000.10999,   0.00000, 0.00000, 38.82000);
	CreateDynamicObject(1746, 1078.83997, -140.03000, 1000.12000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1806, 1102.56006, -149.21001, 1000.12000,   0.00000, 0.00000, 316.89999);
	CreateDynamicObject(1806, 1102.56006, -145.23000, 1000.12000,   0.00000, 0.00000, 279.00000);
	CreateDynamicObject(1806, 1105.35999, -148.28000, 1000.12000,   0.00000, 0.00000, 92.13000);
	CreateDynamicObject(1806, 1102.56006, -141.75000, 1000.12000,   0.00000, 0.00000, 271.88000);
	CreateDynamicObject(1806, 1105.59998, -144.25000, 1000.12000,   0.00000, 0.00000, 92.13000);
	CreateDynamicObject(1806, 1105.59998, -140.99001, 1000.12000,   0.00000, 0.00000, 99.24000);
	CreateDynamicObject(1806, 1092.01001, -133.64000, 1000.12000,   0.00000, 0.00000, 175.57001);
	CreateDynamicObject(1806, 1093.79004, -133.64000, 1000.12000,   0.00000, 0.00000, 175.57001);
	CreateDynamicObject(1806, 1095.56995, -133.64000, 1000.12000,   0.00000, 0.00000, 204.21001);
	CreateDynamicObject(1806, 1090.01001, -133.64000, 1000.12000,   0.00000, 0.00000, -178.00000);
	CreateDynamicObject(1806, 1105.14001, -132.83000, 1000.12000,   0.00000, 0.00000, 134.92000);
	CreateDynamicObject(1808, 1081.03003, -135.50999, 1000.12000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1808, 1078.13000, -130.50999, 1000.12000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1886, 1096.47998, -152.42000, 1004.60999,   20.26000, 0.00000, 239.69000);
	CreateDynamicObject(1886, 1086.02002, -149.03000, 1005.04999,   40.26000, 0.00000, 180.00000);
	CreateDynamicObject(1886, 1105.69995, -135.85001, 1005.04999,   20.26000, 0.00000, 302.42001);
	CreateDynamicObject(1886, 1077.19995, -135.85001, 1005.04999,   20.26000, 0.00000, 66.76000);
	CreateDynamicObject(1892, 1092.35999, -149.98000, 1000.12000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1892, 1095.47998, -149.98000, 1000.12000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1892, 1089.16003, -149.98000, 1000.12000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1998, 1105.14001, -149.23000, 1000.07001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1998, 1105.14001, -145.28999, 1000.07001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1998, 1105.14001, -141.92999, 1000.07001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1998, 1092.72998, -133.64999, 1000.10999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1998, 1094.65002, -133.64999, 1000.10999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1998, 1090.81006, -133.64999, 1000.10999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1998, 1096.56995, -133.64999, 1000.10999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2001, 1089.18005, -152.25000, 1000.10999,   0.00000, 0.00000, 73.73000);
	CreateDynamicObject(2001, 1096.54004, -152.25000, 1000.10999,   0.00000, 0.00000, 73.73000);
	CreateDynamicObject(2001, 1083.55005, -149.34000, 1000.10999,   0.00000, 0.00000, 73.73000);
	CreateDynamicObject(2161, 1106.23999, -146.32001, 1000.12000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2161, 1096.20996, -130.27000, 1000.12000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2162, 1094.43005, -130.25000, 1000.12000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2162, 1087.39001, -130.25000, 1000.12000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2164, 1089.37000, -130.25000, 1000.12000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2186, 1091.53003, -130.73000, 1000.09998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2252, 1076.80005, -143.53999, 1001.34998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2266, 1076.96997, -140.13000, 1002.26001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2282, 1105.77002, -144.33000, 1001.96002,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2700, 1080.40002, -135.52000, 1003.63000,   0.00000, 15.00000, 258.44000);
	CreateDynamicObject(2754, 1086.98999, -149.41000, 1001.01001,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2754, 1084.93005, -149.41000, 1001.01001,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2773, 1093.41003, -142.57001, 1000.64001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 1091.48999, -142.57001, 1000.64001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 1089.56995, -142.57001, 1000.64001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 1094.39001, -141.61000, 1000.63000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1096.31995, -141.61000, 1000.64001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1091.48999, -140.64999, 1000.63000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 1089.56995, -140.64999, 1000.63000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 1097.25000, -140.64999, 1000.63000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 1092.46997, -139.69000, 1000.63000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1094.39001, -139.69000, 1000.64001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1091.48999, -138.73000, 1000.64001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 1089.56995, -138.73000, 1000.64001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 1097.25000, -138.73000, 1000.64001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 1094.39001, -137.77000, 1000.64001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1096.31995, -137.77000, 1000.63000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1100.67004, -135.53000, 1000.63000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1079.46997, -135.53000, 1000.63000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2826, 1078.82996, -140.03000, 1000.62000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16760, 2439.73999, 2279.19995, 21.66000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19176, 2449.889893, 2290.260010, 11.300000, 0.000000, 0.000000, 90.000000);
	CreateDynamicObject(5422, 2455.979980, 2403.229980, 11.430000, 0.000000, 0.000000, 90.000000);
	CreateDynamicObject(16760, 1103.75000, -132.89999, 1008.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(18075, 1090.10999, -142.62000, 1004.92999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18075, 1101.31006, -142.62000, 1004.92999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18075, 1078.39001, -142.62000, 1004.92999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18075, 1090.10999, -129.63000, 1004.92999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18075, 1101.31006, -129.63000, 1004.92999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18075, 1078.39001, -129.63000, 1004.92999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18653, 1085.97998, -148.31000, 1002.63000,   180.00000, 0.00000, 206.19000);
	CreateDynamicObject(18653, 1102.20996, -145.84000, 1002.63000,   180.00000, 0.00000, 192.95000);
	CreateDynamicObject(18653, 1102.20996, -142.46001, 1002.63000,   180.00000, 0.00000, 192.95000);
	CreateDynamicObject(18653, 1102.20996, -138.94000, 1002.63000,   180.00000, 0.00000, 192.95000);
	CreateDynamicObject(18653, 1092.93005, -135.22000, 1002.60999,   180.00000, 0.00000, 192.95000);
	CreateDynamicObject(18653, 1091.01001, -135.22000, 1002.60999,   180.00000, 0.00000, 192.95000);
	CreateDynamicObject(18653, 1094.82996, -135.22000, 1002.60999,   180.00000, 0.00000, 206.36000);
	CreateDynamicObject(18653, 1097.31006, -135.22000, 1002.60999,   180.00000, 0.00000, 206.36000);
	CreateDynamicObject(18653, 1087.13000, -135.22000, 1002.60999,   180.00000, 0.00000, 192.95000);
	CreateDynamicObject(18653, 1099.55005, -135.22000, 1002.60999,   180.00000, 0.00000, 206.36000);
	CreateDynamicObject(18653, 1102.31006, -135.22000, 1002.60999,   180.00000, 0.00000, 192.95000);
	CreateDynamicObject(18653, 1080.44995, -135.22000, 1002.60999,   180.00000, 0.00000, 192.95000);
	CreateDynamicObject(18653, 1106.18994, -135.22000, 1002.60999,   180.00000, 0.00000, 192.95000);
	CreateDynamicObject(18653, 1078.48999, -135.22000, 1002.60999,   180.00000, 0.00000, 192.95000);
	CreateDynamicObject(18653, 1076.63000, -135.22000, 1002.60999,   180.00000, 0.00000, 192.95000);
	CreateDynamicObject(19176, 2449.88989, 2290.26001, 11.30000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19176, 1092.82996, -152.88000, 1001.60999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19325, 1085.97998, -150.41000, 999.28998,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19325, 1104.25000, -145.83000, 999.28998,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19325, 1104.25000, -142.45000, 999.28998,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19325, 1104.25000, -138.92999, 999.28998,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19325, 1083.79004, -135.21001, 1002.07001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19325, 1105.63000, -135.21001, 1002.07001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19325, 1100.60999, -130.19000, 1002.07001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19325, 1075.18994, -135.21001, 1002.07001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19325, 1081.32996, -130.19000, 1002.09003,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19377, 1076.35999, -150.61000, 1000.17999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, 1076.35999, -140.99001, 1000.17999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19379, 1090.53003, -148.05000, 1000.03003,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1101.03003, -148.05000, 1000.03003,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1080.03003, -148.05000, 1000.03003,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1090.53003, -138.42000, 1000.03003,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1101.03003, -138.42000, 1000.03003,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1080.03003, -138.42000, 1000.03003,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1090.53003, -128.80000, 1000.03003,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1101.03003, -128.80000, 1000.03003,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1080.03003, -128.80000, 1000.03003,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19446, 1094.81006, -135.21001, 999.26001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19446, 1091.94995, -135.21001, 1004.29999,   180.00000, 0.00000, 90.00000);
	CreateDynamicObject(19446, 1085.18994, -135.21001, 999.26001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19446, 1101.56995, -135.21001, 1004.29999,   180.00000, 0.00000, 90.00000);
	CreateDynamicObject(19446, 1082.32996, -135.21001, 1004.29999,   180.00000, 0.00000, 90.00000);
	CreateDynamicObject(19446, 1102.31006, -133.37000, 1004.29999,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19446, 1106.51001, -135.21001, 999.26001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19446, 1073.75000, -135.21001, 999.26001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19446, 1072.68994, -135.21001, 1004.29999,   180.00000, 0.00000, 90.00000);
	CreateDynamicObject(19466, 1098.43994, -135.21001, 1001.88000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19466, 1092.92004, -134.10001, 1001.88000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19466, 1091.00000, -134.10001, 1001.88000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19466, 1094.81995, -134.10001, 1001.88000,   0.00000, 0.00000, 0.00000);
	// Plantas Cosechador
	CreateDynamicObject(826, -274.10999, -54.91000, 1.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -272.69000, -43.79000, 2.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -244.55000, -34.88000, 1.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -218.20000, -77.97000, 1.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -154.17000, -12.12000, 2.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -190.05000, 2.10000, 1.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -246.55000, 27.08000, 1.20000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -220.14999, 95.11000, 2.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -179.53000, 80.86000, 1.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -126.70000, 58.50000, 2.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -124.94000, 59.37000, 2.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -122.33000, 101.71000, 1.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -107.63000, 145.21001, 1.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -173.95000, 167.20000, 6.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -10.15000, -8.51000, 1.09000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -39.68000, -106.08000, 1.51000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, 19.34000, -82.02000, 0.26000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, 64.44000, -30.17000, 0.10000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, 70.04000, 3.49000, -0.62000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, 46.04000, 38.88000, 0.58000,   0.00000, 25.00000, -11.00000);
	CreateDynamicObject(826, 21.97000, 61.60000, 2.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -216.82001, -1480.54004, 6.21000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -227.31000, -1515.43994, 5.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -245.03999, -1554.44995, 2.35000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -304.35001, -1514.18005, 9.35000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -333.23999, -1517.18994, 13.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -323.67999, -1471.18994, 11.72000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -331.14001, -1551.81995, 14.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -213.70000, -1422.28003, 2.26000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -169.30000, -1412.33997, 1.59000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -185.84000, -1351.38000, 2.65000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -244.96001, -1314.80005, 8.88000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -223.75000, -1371.85999, 6.15000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -256.70001, -1396.63000, 8.69000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -301.03000, -1428.12000, 12.71000,   0.00000, 10.00000, 0.00000);
	CreateDynamicObject(826, -321.98999, -1323.84998, 7.75000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -347.26999, -1269.52002, 24.65000,   0.00000, 38.00000, 18.00000);
	CreateDynamicObject(826, -370.73001, -1340.01001, 21.44000,   0.00000, 0.00000, 171.20000);
	CreateDynamicObject(826, -366.14999, -1351.50000, 19.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -385.48001, -1383.16003, 21.30000,   0.00000, 0.00000, 171.20000);
	CreateDynamicObject(826, -402.39999, -1353.81006, 22.98000,   0.00000, 0.00000, 171.20000);
	CreateDynamicObject(826, -417.95999, -1294.47998, 29.96000,   0.00000, 0.00000, 186.67999);
	CreateDynamicObject(826, -437.10999, -1285.42004, 34.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(826, -519.26001, -1415.53003, 11.63000,   0.00000, 0.00000, 186.67999);
	CreateDynamicObject(826, -533.28998, -1422.83997, 11.02000,   0.00000, 0.00000, 171.20000);
	CreateDynamicObject(826, -576.85999, -1419.18994, 11.21000,   0.00000, 0.00000, 171.20000);
	CreateDynamicObject(826, -524.03998, -1388.53003, 12.98000,   0.00000, 0.00000, 171.20000);
	CreateDynamicObject(826, -537.44000, -1327.87000, 17.44000,   0.00000, 0.00000, 186.67999);
	CreateDynamicObject(826, -556.14001, -1336.81995, 19.84000,   0.00000, 0.00000, 171.20000);
	CreateDynamicObject(826, -579.78998, -1320.10999, 20.70000,   0.00000, 0.00000, 171.20000);
	CreateDynamicObject(826, -475.41000, -1335.26001, 27.67000,   0.00000, 0.00000, 171.20000);
	// Oficina Transportista
	CreateDynamicObject(630, 2595.47998, 1649.71997, 1087.57996,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 2588.40991, 1640.84998, 1087.57996,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(630, 2582.16992, 1649.46997, 1087.57996,   0.00000, 0.00000, 16.78000);
	CreateDynamicObject(630, 2585.79004, 1640.76001, 1087.57996,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(923, 2588.64990, 1667.33997, 1087.43994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(923, 2575.65991, 1659.31006, 1087.43994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(923, 2580.43994, 1675.54004, 1087.43994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(923, 2576.39990, 1678.53003, 1087.43994,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1502, 2572.98999, 1640.23999, 1086.55005,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 2595.25000, 1643.45996, 1086.56006,   0.00000, 0.00000, 188.88000);
	CreateDynamicObject(1714, 2592.97998, 1643.47998, 1086.56006,   0.00000, 0.00000, 178.00000);
	CreateDynamicObject(1714, 2592.30005, 1641.29004, 1086.56006,   0.00000, 0.00000, -4.00000);
	CreateDynamicObject(1714, 2585.14990, 1642.29004, 1086.56006,   0.00000, 0.00000, 178.00000);
	CreateDynamicObject(1714, 2583.01001, 1642.28003, 1086.56006,   0.00000, 0.00000, 178.00000);
	CreateDynamicObject(1723, 2583.11011, 1649.59998, 1086.55005,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1723, 2582.18994, 1646.59998, 1086.55005,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1723, 2565.65991, 1635.51001, 1086.55005,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1998, 2592.18994, 1643.84998, 1086.55005,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2002, 2589.86011, 1640.84998, 1086.56006,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2008, 2594.14990, 1644.81006, 1086.55005,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2008, 2593.17993, 1640.88000, 1086.55005,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2008, 2584.23999, 1643.52002, 1086.55005,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2008, 2582.28003, 1643.52002, 1086.55005,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 2592.12012, 1643.83997, 1090.67004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 2585.14990, 1647.41003, 1090.67004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2073, 2585.13989, 1643.81995, 1090.67004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2167, 2594.26001, 1640.34998, 1086.56006,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2167, 2595.19995, 1640.35999, 1086.56006,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2167, 2590.92993, 1640.32996, 1086.56006,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2272, 2592.23999, 1640.83997, 1089.00000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2277, 2595.17993, 1647.22998, 1089.08997,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2286, 2595.78003, 1638.06006, 1088.42004,   0.00000, 91.00000, -90.00000);
	CreateDynamicObject(2356, 2594.07007, 1646.26001, 1086.55005,   0.00000, 0.00000, 189.03000);
	CreateDynamicObject(2356, 2592.13989, 1646.30005, 1086.55005,   0.00000, 0.00000, 174.39000);
	CreateDynamicObject(2356, 2584.92993, 1644.97998, 1086.55005,   0.00000, 0.00000, 174.39000);
	CreateDynamicObject(2356, 2582.60010, 1644.94995, 1086.55005,   0.00000, 0.00000, 178.00000);
	CreateDynamicObject(2524, 2573.12012, 1642.42004, 1086.56006,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2525, 2573.76001, 1643.98999, 1086.56006,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2567, 2587.58008, 1674.02002, 1083.30005,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2567, 2586.73999, 1676.02002, 1088.48999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2567, 2561.31006, 1663.97998, 1088.48999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2567, 2560.96997, 1670.68994, 1088.48999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2567, 2561.01001, 1676.14001, 1088.48999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2567, 2561.02002, 1682.10999, 1088.48999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2596, 2584.68994, 1640.66003, 1089.62000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2773, 2585.96997, 1648.80005, 1087.06995,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 2585.97998, 1644.42004, 1087.06995,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3089, 2595.78003, 1637.26001, 1087.90002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3089, 2573.01001, 1640.23999, 1090.38000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(7891, 2596.39990, 1672.00000, 1088.38000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(10184, 2596.06006, 1631.66003, 1088.22998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(10184, 2572.47998, 1684.29004, 1089.06006,   0.00000, 0.00000, 265.00000);
	CreateDynamicObject(14583, 2565.68994, 1673.62000, 1088.46997,   0.00000, 0.00000, 0.00000);
	CreateObject(14592, 2587.29004, 1656.21997, 1093.47998,   0.00000, 0.00000, 0.00000);
	// Oficina Unity
	CreateDynamicObject(366, -2022.59998, -112.60000, 1038.90002,   0.00000, 0.00000, 179.05518);
	CreateDynamicObject(1714, -2025.50000, -118.70000, 1037.80005,   0.00000, 0.00000, 207.72949);
	CreateDynamicObject(1714, -2022.59961, -113.50000, 1037.80005,   0.00000, 0.00000, 293.75244);
	CreateDynamicObject(1715, -2026.30005, -115.80000, 1037.80005,   0.00000, 0.00000, 19.77539);
	CreateDynamicObject(1715, -2025.59998, -114.00000, 1037.80005,   0.00000, 0.00000, 89.97803);
	CreateDynamicObject(1716, -2034.80005, -113.60000, 1037.80005,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1721, -2027.09998, -112.70000, 1037.80005,   0.00000, 0.00000, 185.07568);
	CreateDynamicObject(1723, -2036.19995, -118.10000, 1037.80005,   0.00000, 0.00000, 88.00049);
	CreateDynamicObject(1723, -2034.59998, -113.10000, 1037.80005,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1724, -2036.09998, -114.90000, 1037.80005,   0.00000, 0.00000, 71.19141);
	CreateDynamicObject(1738, -2027.19995, -118.90000, 1038.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1808, -2026.40002, -112.70000, 1037.80005,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2008, -2026.00000, -117.40000, 1037.80005,   0.00000, 0.00000, 359.00574);
	CreateDynamicObject(2008, -2023.89941, -114.09961, 1037.80005,   0.00000, 0.00000, 87.00623);
	CreateDynamicObject(2066, -2024.40002, -118.70000, 1037.80005,   0.00000, 0.00000, 270.02197);
	CreateDynamicObject(2066, -2024.00000, -118.10000, 1037.80005,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2162, -2021.40002, -113.60000, 1039.69995,   0.00000, 0.00000, 270.02197);
	CreateDynamicObject(2164, -2021.39941, -113.59961, 1037.80005,   0.00000, 0.00000, 269.04968);
	CreateDynamicObject(2186, -2021.80005, -117.70000, 1037.80005,   0.00000, 0.00000, 271.01074);
	CreateDynamicObject(2195, -2031.30005, -118.60000, 1038.40002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2195, -2031.39941, -113.09961, 1038.40002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2201, -2024.00000, -118.10000, 1039.19995,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2239, -2036.09998, -115.30000, 1037.80005,   0.00000, 0.00000, 34.60693);
	CreateDynamicObject(2256, -2030.30005, -119.20000, 1039.40002,   0.00000, 0.00000, 181.03271);
	CreateDynamicObject(2279, -2032.59998, -113.10000, 1040.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2284, -2036.09998, -116.10000, 1039.69995,   0.00000, 0.00000, 89.97803);
	CreateDynamicObject(2287, -2022.00000, -118.00000, 1039.90002,   0.00000, 0.00000, 270.02197);
	CreateDynamicObject(2289, -2022.40002, -112.60000, 1040.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2311, -2033.59998, -116.10000, 1037.80005,   0.00000, 0.00000, 271.01074);
	CreateDynamicObject(2596, -2031.90002, -118.90000, 1040.69995,   0.00000, 0.00000, 198.83044);
	CreateDynamicObject(2596, -2027.55005, -112.88000, 1040.59998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2816, -2033.59998, -117.40000, 1038.30005,   0.00000, 0.00000, 314.51660);
	CreateDynamicObject(2826, -2033.59998, -116.40000, 1038.30005,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2833, -2030.69995, -116.60000, 1037.90002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2854, -2024.00000, -114.10000, 1038.59998,   0.00000, 0.00000, 65.25879);
	CreateDynamicObject(2961, -2028.69995, -119.00000, 1039.50000,   0.00000, 0.00000, 183.01025);
	CreateDynamicObject(3055, -2029.90002, -112.40000, 1040.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3089, -2030.64001, -119.20000, 1039.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(4641, -2029.19995, -111.30000, 1039.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14532, -2024.09998, -117.20000, 1038.80005,   0.00000, 0.00000, 0.93384);
	CreateObject(14530, -2029.00000, -114.50000, 1039.59998,   0.00000, 0.00000, 0.00000);
	// Map Garage
	CreateDynamicObject(9093, 302.20901, 300.02090, 999.87598,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1557, 299.47000, 312.13000, 998.15997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1080, 306.12350, 309.86530, 1000.66400,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(2279, 303.07819, 311.51651, 1000.80011,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, 304.59659, 311.69241, 999.01239,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1080, 306.12350, 308.93530, 1000.66400,   0.00000, 0.00000, -180.00000);
	
	//Garage by Juancito
	new tmpobjid;
	tmpobjid = CreateDynamicObject(19375, -1141.047485, -4245.258789, 8075.055175, 0.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(tmpobjid, 0, 2755, "ab_dojowall", "mp_apt1_roomfloor", 0x00000000);
	tmpobjid = CreateDynamicObject(19375, -1141.047485, -4234.761718, 8075.055175, 0.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(tmpobjid, 0, 2755, "ab_dojowall", "mp_apt1_roomfloor", 0x00000000);
	tmpobjid = CreateDynamicObject(19375, -1131.414550, -4234.763183, 8075.055175, 0.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(tmpobjid, 0, 2755, "ab_dojowall", "mp_apt1_roomfloor", 0x00000000);
	tmpobjid = CreateDynamicObject(19375, -1131.414550, -4245.262695, 8075.055175, 0.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(tmpobjid, 0, 2755, "ab_dojowall", "mp_apt1_roomfloor", 0x00000000);
	tmpobjid = CreateDynamicObject(19375, -1131.414550, -4245.262695, 8078.640136, 0.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "sl_vicbrikwall01", 0x00000000);
	tmpobjid = CreateDynamicObject(19375, -1141.045776, -4245.262695, 8078.640136, 0.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "sl_vicbrikwall01", 0x00000000);
	tmpobjid = CreateDynamicObject(19375, -1141.045776, -4234.760742, 8078.640136, 0.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "sl_vicbrikwall01", 0x00000000);
	tmpobjid = CreateDynamicObject(19375, -1131.423950, -4234.760742, 8078.640136, 0.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "sl_vicbrikwall01", 0x00000000);
	tmpobjid = CreateDynamicObject(19453, -1131.419067, -4250.439941, 8076.829589, 0.000000, 0.000000, 90.000000);
	tmpobjid = CreateDynamicObject(19453, -1126.529785, -4234.331054, 8076.829589, 0.000000, 0.000000, 0.000000);
	tmpobjid = CreateDynamicObject(19453, -1126.529785, -4243.931640, 8076.829589, 0.000000, 0.000000, 0.000000);
	tmpobjid = CreateDynamicObject(19453, -1141.049926, -4250.445800, 8076.829589, 0.000000, 0.000000, 90.000000);
	tmpobjid = CreateDynamicObject(19453, -1145.939819, -4245.540527, 8076.829589, 0.000000, 0.000000, 180.000000);
	tmpobjid = CreateDynamicObject(19453, -1145.939819, -4235.905761, 8076.829589, 0.000000, 0.000000, 180.000000);
	tmpobjid = CreateDynamicObject(19453, -1141.050781, -4229.439941, 8076.829589, 0.000000, 0.000000, 270.000000);
	tmpobjid = CreateDynamicObject(19453, -1131.431274, -4229.439941, 8076.829589, 0.000000, 0.000000, 270.000000);
	tmpobjid = CreateDynamicObject(19434, -1126.528198, -4249.551269, 8076.825683, 0.000000, 0.000000, 0.000000);
	tmpobjid = CreateDynamicObject(19434, -1145.939575, -4230.311523, 8076.825683, 0.000000, 0.000000, 0.000000);
	tmpobjid = CreateDynamicObject(1522, -1145.875244, -4229.518066, 8075.141113, 0.000000, 0.000000, 0.000000);
	tmpobjid = CreateDynamicObject(19862, -1136.563964, -4250.339843, 8077.581542, 0.000000, 0.000000, 0.000000);
	//Estacionamiento interior casas
	CreateObject(14876, 279.29999, 307.20001, 1013.20001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2280, 277.20001, 311.00000, 1010.90002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1557, 273.94000, 311.70001, 1008.13000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2280, 277.20001, 311.00000, 1010.90002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, 279.39999, 311.29999, 1009.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1080, 280.60001, 310.29999, 1010.90002,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(9093, 276.79999, 299.67999, 1009.90002,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1080, 280.60001, 309.29999, 1010.90002,   0.00000, 0.00000, 184.00000);
	CreateDynamicObject(1080, 280.60001, 310.29999, 1010.90002,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2063, 279.39999, 311.29999, 1009.00000,   0.00000, 0.00000, 0.00000);
	// LVPD
	CreateDynamicObject(19302, 208.97000, 157.35001, 1003.28003,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19304, 208.97000, 158.23000, 1005.15002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19304, 208.97000, 179.14000, 1005.15002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19303, 209.00999, 180.00999, 1003.28003,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1800, 196.80000, 171.61000, 1001.84003,   3.14000, 0.00000, 0.00000);
	CreateDynamicObject(1800, 196.88000, 160.47000, 1001.84003,   3.14000, 0.00000, 0.00000);
	CreateDynamicObject(1800, 192.56000, 171.61000, 1001.84003,   3.14000, 0.00000, 0.00000);
	CreateDynamicObject(1800, 192.58000, 160.47000, 1001.84003,   3.14000, 0.00000, 0.00000);
	CreateDynamicObject(1800, 188.38000, 160.47000, 1001.84003,   3.14000, 0.00000, 0.00000);
	CreateDynamicObject(1800, 188.38000, 171.61000, 1001.84003,   3.14000, 0.00000, 0.00000);
	CreateDynamicObject(14408, 196.89999, 1449.33997, 1093.18994,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19302, 197.17999, 177.06000, 1003.28998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19302, 197.17999, 160.34000, 1003.28998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19302, 192.94000, 177.06000, 1003.28998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19302, 192.94000, 160.34000, 1003.28998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19302, 188.72000, 160.34000, 1003.28998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19302, 188.72000, 177.06000, 1003.28998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19303, 198.94000, 177.02000, 1003.28998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19303, 198.94000, 160.30000, 1003.28998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19303, 194.70000, 177.02000, 1003.28998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19303, 194.70000, 160.30000, 1003.28998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19303, 190.46001, 177.02000, 1003.28998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19303, 190.46001, 160.30000, 1003.28998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19304, 198.08000, 177.06000, 1005.15997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, 198.08000, 160.30000, 1005.15997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, 193.82001, 177.06000, 1005.15997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, 193.82001, 160.30000, 1005.15997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, 189.58000, 177.06000, 1005.15997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, 189.58000, 160.30000, 1005.15997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19380, 192.42000, 173.05000, 1001.92999,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19380, 192.42000, 162.55000, 1001.92999,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19456, 195.92999, 175.36000, 1003.75000,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19456, 195.70000, 165.09000, 1003.75000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19456, 191.44000, 172.28999, 1003.75000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19456, 191.92000, 165.09000, 1003.75000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19456, 191.44000, 165.09000, 1003.75000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19456, 190.98000, 164.12000, 1003.75000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19456, 187.72000, 163.28999, 1003.75000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19456, 187.72000, 174.45000, 1003.75000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19390, 207.38000, 142.19000, 1003.77002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19434, 207.38000, 144.60001, 1003.77002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19434, 207.38000, 139.78000, 1003.77002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19446, 207.38000, 142.96001, 1007.26001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1537, 207.35817, 143.19112, 1002.01563,   0.00000, 0.00000, 90.46000);
	CreateDynamicObject(19273, 209.49760, 160.25330, 1003.51257,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19273, 208.74040, 160.27650, 1003.51257,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19273, 208.73891, 177.17010, 1003.51257,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19273, 209.56461, 177.13010, 1003.51257,   0.00000, 0.00000, 180.00000);
	// Barras LS
	CreateDynamicObject(994, 1077.69995, -1842.30005, 12.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(994, 1071.19995, -1842.30005, 12.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(994, 1068.59998, -1836.19995, 12.60000,   0.00000, 0.00000, 294.00000);
	CreateDynamicObject(994, 1066.00000, -1830.30005, 12.60000,   0.00000, 0.00000, 294.00000);
	CreateDynamicObject(994, 1084.19995, -1842.30005, 12.50000,   0.00000, 0.00000, 0.00000);
	// Granjero
	CreateDynamicObject(3279, -388.94119, -1454.96021, 23.98810,   0.00000, 0.00000, 180.00000);
	// Vestuario SAPD
	CreateDynamicObject(14782, 278.53949, 1874.50732, 8.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19463, 289.81131, 1870.27869, 8.75290,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19463, 283.00076, 1871.79309, 8.75290,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2204, 282.86780, 1873.97327, 7.75350,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2063, 270.77066, 1873.68994, 8.60000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2035, 270.80811, 1874.29614, 8.04690,   0.00000, 0.00000, -69.00000);
	CreateDynamicObject(2035, 270.96310, 1873.07874, 9.00000,   0.00000, 0.00000, 84.00000);
	CreateDynamicObject(2041, 270.82028, 1874.31812, 9.56666,   0.00000, 0.00000, 62.00000);
	CreateDynamicObject(2041, 270.81927, 1873.91309, 9.56666,   0.00000, 0.00000, 62.00000);
	CreateDynamicObject(2041, 270.81223, 1873.46899, 9.56666,   0.00000, 0.00000, 62.00000);
	CreateDynamicObject(2001, 282.11258, 1874.50720, 7.75552,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1569, 282.92371, 1867.99658, 7.70000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1569, 282.91412, 1871.00122, 7.70000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2063, 279.23431, 1864.43860, 8.60000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2386, 281.34067, 1874.66577, 7.99900,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19461, 272.05789, 1864.17859, 7.75350,   90.00000, 0.00000, -90.00000);
	CreateDynamicObject(19461, 272.19650, 1870.50391, 7.75350,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(1502, 273.90796, 1865.01721, 7.75490,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19397, 273.86041, 1865.77502, 9.40000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19369, 273.86633, 1868.98096, 9.40000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2523, 273.24905, 1870.31909, 7.75860,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2523, 273.26880, 1868.91003, 7.75860,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2528, 271.08917, 1864.99622, 7.75760,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2517, 272.07773, 1869.77795, 7.75610,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2517, 271.04620, 1867.88770, 7.75615,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2035, 270.74701, 1873.19336, 8.04690,   0.00000, 0.00000, -98.00000);
	CreateDynamicObject(8674, 273.94028, 1877.51184, 8.80000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8674, 273.91959, 1875.66919, 11.70000,   180.00000, 0.00000, 90.00000);
	CreateDynamicObject(19303, 273.05896, 1870.63672, 8.99000,   0.00000, 0.00000, -181.00000);
	CreateDynamicObject(19142, 278.29269, 1864.48022, 8.20000,   190.00000, 90.00000, 180.00000);
	CreateDynamicObject(19142, 278.87149, 1864.51404, 8.20000,   190.00000, 90.00000, 180.00000);
	CreateDynamicObject(19142, 279.44461, 1864.51855, 8.20000,   190.00000, 90.00000, 180.00000);
	CreateDynamicObject(19142, 280.00879, 1864.48779, 8.20000,   190.00000, 90.00000, 180.00000);
	CreateDynamicObject(19142, 280.02881, 1864.48779, 9.63000,   190.00000, 90.00000, 180.00000);
	CreateDynamicObject(19142, 279.52109, 1864.45044, 9.63000,   190.00000, 90.00000, 180.00000);
	CreateDynamicObject(19142, 278.96790, 1864.45227, 9.63000,   190.00000, 90.00000, 180.00000);
	CreateDynamicObject(19142, 278.39011, 1864.44373, 9.63000,   190.00000, 90.00000, 180.00000);
	CreateDynamicObject(18637, 279.75040, 1864.32263, 9.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(18637, 278.40231, 1864.31396, 9.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2737, 277.38141, 1864.28406, 8.76000,   0.00000, 90.00000, 180.00000);
	CreateDynamicObject(2796, 273.89636, 1865.98914, 10.60000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2226, 282.56302, 1872.78528, 8.79820,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2064, 273.21057, 1873.81750, 8.40000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2068, 270.41885, 1874.81104, 10.40000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2060, 270.78012, 1873.20313, 8.65000,   0.00000, 0.00000, 98.00000);
	CreateDynamicObject(2737, 276.08859, 1864.28406, 8.76000,   0.00000, 90.00000, 180.00000);
	CreateDynamicObject(19462, 273.10339, 1864.16003, 9.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2737, 274.79999, 1864.28406, 8.76000,   0.00000, 90.00000, 180.00000);
	
	// Exterior SAPD
	CreateDynamicObject(970, 1544.68994, -1620.40002, 13.03000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(970, 1544.68994, -1635.13000, 13.13000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1495, 1582.62000, -1638.02002, 14.91000,   0.00000, 0.00000, 0.00000);
	// Academia
	CreateObject(19531, 602.830017, -235.979996, 1275.760010, 0.000000, 0.000000, 0.000000, 0.0); // 0
	CreateDynamicObject(19454, 625.73999, -180.13000, 1278.64001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19460, 624.26001, -180.13000, 1280.38000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19460, 624.26001, -180.13000, 1276.83997,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1720, 630.71002, -186.39999, 1275.76001,   0.00000, 0.00000, 177.66000);
	CreateDynamicObject(19377, 666.75000, -219.99001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1720, 629.51001, -186.38000, 1275.76001,   0.00000, 0.00000, 174.08000);
	CreateDynamicObject(1720, 628.25000, -186.32001, 1275.76001,   0.00000, 0.00000, 172.23000);
	CreateDynamicObject(1720, 626.97998, -186.38000, 1275.76001,   0.00000, 0.00000, 171.73000);
	CreateDynamicObject(14602, 648.81464, -203.02277, 1281.16003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 637.46997, -199.25000, 1275.79004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1806, 627.87000, -193.55000, 1275.79004,   0.00000, 0.00000, 270.98001);
	CreateDynamicObject(19377, 657.12000, -219.99001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19834, 644.28998, -210.03999, 1278.62000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2627, 663.31000, -222.50000, 1275.76001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19273, 643.17999, -210.12000, 1277.14001,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19273, 643.15997, -210.48000, 1277.14001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2627, 660.31000, -222.50000, 1275.76001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2162, 625.88000, -196.09000, 1275.79004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19377, 657.12000, -219.99001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1806, 648.38000, -191.71001, 1275.79004,   0.00000, 0.00000, 95.58000);
	CreateDynamicObject(1806, 645.72998, -194.39999, 1275.79004,   0.00000, 0.00000, 271.16000);
	CreateDynamicObject(2627, 663.31000, -222.50000, 1275.76001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19834, 644.28998, -210.03999, 1278.62000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2627, 660.31000, -222.50000, 1275.76001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1806, 645.66998, -192.67000, 1275.79004,   0.00000, 0.00000, 293.09000);
	CreateDynamicObject(2627, 657.31000, -222.50000, 1275.76001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19273, 643.17999, -210.12000, 1277.14001,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19273, 643.15997, -210.48000, 1277.14001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2627, 654.31000, -222.50000, 1275.76001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19461, 647.65002, -218.97000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19273, 645.27002, -217.16000, 1277.14001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19442, 645.56000, -217.95000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, 647.50000, -219.99001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19397, 644.38000, -217.10001, 1277.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2164, 645.40997, -187.35001, 1275.79004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19437, 644.28003, -217.94000, 1279.22998,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19273, 643.37000, -217.03000, 1277.14001,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2202, 642.00000, -189.78999, 1275.79004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19442, 643.26001, -217.95000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14782, 664.73999, -227.67000, 1276.73999,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2001, 637.46997, -199.25000, 1275.79004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 637.46997, -206.71001, 1275.79004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19461, 642.75000, -218.97000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19397, 647.65002, -225.38000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19273, 639.98999, -187.32001, 1277.14001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19456, 642.75000, -222.16000, 1281.01001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1256, 643.97998, -181.99001, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, 666.75000, -230.49001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19377, 657.12000, -230.49001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(2628, 663.31000, -231.77000, 1275.76001,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2628, 660.31000, -231.77000, 1275.76001,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19273, 642.81000, -224.42000, 1277.14001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19273, 642.69000, -224.42000, 1277.14001,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1985, 649.91998, -229.36000, 1278.69995,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19397, 642.75000, -225.38000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1256, 640.97998, -181.99001, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1256, 643.97998, -178.99001, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2190, 631.96997, -205.32001, 1276.52002,   0.00000, 0.00000, 202.48000);
	CreateDynamicObject(1985, 649.91998, -231.66000, 1278.69995,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, 647.50000, -230.49001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1714, 630.78998, -203.13000, 1275.79004,   0.00000, 0.00000, 89.60000);
	CreateDynamicObject(19461, 647.65002, -231.78999, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19538, 665.13000, -235.98000, 1275.81006,   90.00000, 90.00000, 180.00000);
	CreateDynamicObject(1256, 640.97998, -175.97000, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1806, 627.87000, -207.05000, 1275.79004,   0.00000, 0.00000, 270.98001);
	CreateDynamicObject(1806, 627.87000, -198.33000, 1275.79004,   0.00000, 0.00000, 270.98001);
	CreateDynamicObject(19461, 642.75000, -231.78999, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14778, 659.35999, -237.75000, 1279.21997,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19456, 642.75000, -231.78999, 1281.01001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1720, 630.71002, -186.39999, 1275.76001,   0.00000, 0.00000, 177.66000);
	CreateDynamicObject(1806, 627.87000, -193.55000, 1275.79004,   0.00000, 0.00000, 270.98001);
	CreateDynamicObject(14791, 657.53998, -238.75999, 1277.28003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1806, 627.87000, -213.61000, 1275.79004,   0.00000, 0.00000, 270.98001);
	CreateDynamicObject(1256, 637.97998, -175.97000, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1256, 634.97998, -178.99001, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2163, 625.84998, -203.17000, 1275.79004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2202, 626.37000, -209.19000, 1275.79004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2164, 625.89001, -198.62000, 1275.79004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1720, 629.51001, -186.38000, 1275.76001,   0.00000, 0.00000, 174.08000);
	CreateDynamicObject(2162, 625.88000, -196.09000, 1275.79004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19397, 646.27002, -236.57001, 1277.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1720, 628.25000, -186.32001, 1275.76001,   0.00000, 0.00000, 172.23000);
	CreateDynamicObject(2164, 625.89001, -213.39999, 1275.79004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3407, 631.69000, -180.16000, 1276.76001,   180.00000, 0.00000, 0.00000);
	CreateDynamicObject(19610, 631.69000, -180.16000, 1277.19995,   25.00000, 10.00000, 88.39000);
	CreateDynamicObject(19611, 631.69000, -180.16000, 1275.57996,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, 666.75000, -240.99001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19377, 657.12000, -240.99001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1256, 634.97998, -175.97000, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1720, 626.97998, -186.38000, 1275.76001,   0.00000, 0.00000, 171.73000);
	CreateDynamicObject(19273, 642.81000, -237.25999, 1277.14001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19273, 642.71002, -237.25000, 1277.14001,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2001, 637.46997, -206.71001, 1275.79004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14782, 664.73999, -227.67000, 1276.73999,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1806, 627.87000, -198.33000, 1275.79004,   0.00000, 0.00000, 270.98001);
	CreateDynamicObject(19461, 639.84998, -236.57001, 1277.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19273, 645.09003, -239.84000, 1277.14001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, 647.50000, -240.99001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19377, 666.75000, -230.49001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(2627, 657.31000, -222.50000, 1275.76001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19538, 602.83002, -173.50999, 1275.81006,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(13640, 625.79999, -222.28999, 1276.65002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19461, 662.03998, -246.17000, 1277.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 625.73999, -180.13000, 1278.64001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19364, 663.53998, -246.16000, 1280.96997,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2164, 625.89001, -198.62000, 1275.79004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, 630.78998, -203.13000, 1275.79004,   0.00000, 0.00000, 89.60000);
	CreateDynamicObject(19461, 652.40997, -246.17000, 1277.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19460, 624.26001, -180.13000, 1276.83997,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19460, 624.26001, -180.13000, 1280.38000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3594, 631.03003, -234.74001, 1276.01001,   0.00000, 0.00000, 41.53000);
	CreateDynamicObject(3594, 631.03003, -234.74001, 1278.44995,   0.00000, 0.00000, 39.98000);
	CreateDynamicObject(2627, 654.31000, -222.50000, 1275.76001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3594, 631.03003, -234.84000, 1277.22998,   0.00000, 0.00000, 221.86000);
	CreateDynamicObject(3594, 631.03003, -234.74001, 1279.63000,   0.00000, 0.00000, 221.86000);
	CreateDynamicObject(19456, 647.48999, -246.16000, 1280.96997,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3594, 627.23999, -237.24001, 1278.13000,   0.00000, 0.00000, 135.62000);
	CreateDynamicObject(13647, 616.77002, -225.89000, 1275.75000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3594, 618.50629, -229.09300, 1278.03003,   30.00000, 0.00000, 5.70440);
	CreateDynamicObject(3594, 625.37000, -239.73000, 1277.05005,   0.00000, 0.00000, 223.85001);
	CreateDynamicObject(3594, 625.37000, -239.73000, 1276.01001,   0.00000, 0.00000, 43.21000);
	CreateDynamicObject(3594, 611.79999, -222.13000, 1276.01001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2190, 631.96997, -205.32001, 1276.52002,   0.00000, 0.00000, 202.48000);
	CreateDynamicObject(19943, 622.42999, -247.25999, 1276.39001,   -90.00000, 0.00000, 40.60000);
	CreateDynamicObject(19461, 647.65002, -218.97000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, 647.50000, -219.99001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3594, 603.42999, -222.13000, 1276.01001,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3594, 600.79999, -222.08000, 1276.94995,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3594, 600.79999, -222.08000, 1276.01001,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19913, 617.84998, -252.03000, 1278.08997,   0.00000, 0.00000, 42.22000);
	CreateDynamicObject(19538, 602.83002, -173.50999, 1275.81006,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19943, 617.34998, -252.13000, 1276.39001,   -90.00000, 0.00000, 40.60000);
	CreateDynamicObject(18753, 602.64001, -235.96001, 1301.76001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(13295, 677.89001, -274.44000, 1282.27002,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19943, 612.09003, -256.84000, 1276.39001,   -90.00000, 0.00000, 40.60000);
	CreateDynamicObject(19531, 602.83002, -235.98000, 1307.04004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19955, 589.81000, -221.78000, 1274.93005,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19955, 588.08002, -222.03000, 1274.70996,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(13647, 597.09003, -244.91000, 1275.75000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19912, 586.85999, -221.71001, 1281.18005,   0.00000, -90.00000, 0.00000);
	CreateDynamicObject(19273, 645.27002, -217.16000, 1277.14001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19913, 589.69000, -236.11000, 1278.08997,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(13590, 584.87000, -226.14999, 1276.89001,   0.00000, 0.00000, 179.83000);
	CreateDynamicObject(1308, 632.35999, -278.20001, 1278.32996,   360.00000, -149.00000, 270.00000);
	CreateDynamicObject(19912, 586.37000, -231.27000, 1278.50000,   0.00000, 0.00000, 85.76000);
	CreateDynamicObject(3594, 587.97998, -236.75999, 1276.13000,   0.00000, 0.00000, 11.48000);
	CreateDynamicObject(19442, 645.56000, -217.95000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19538, 580.75000, -218.77000, 1275.81006,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(8580, 638.73999, -283.16000, 1280.16003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19437, 644.28003, -217.94000, 1279.22998,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19397, 644.38000, -217.10001, 1277.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19273, 643.37000, -217.03000, 1277.14001,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19442, 643.26001, -217.95000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2628, 663.31000, -231.77000, 1275.76001,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2163, 625.84998, -203.17000, 1275.79004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19461, 642.75000, -218.97000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19912, 582.96002, -231.86000, 1278.50000,   0.00000, 0.00000, 1.99000);
	CreateDynamicObject(19377, 657.12000, -230.49001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(2628, 660.31000, -231.77000, 1275.76001,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19456, 642.75000, -222.16000, 1281.01001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1806, 627.87000, -207.05000, 1275.79004,   0.00000, 0.00000, 270.98001);
	CreateDynamicObject(19538, 665.13000, -235.98000, 1275.81006,   90.00000, 90.00000, 180.00000);
	CreateDynamicObject(19397, 647.65002, -225.38000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2202, 626.37000, -209.19000, 1275.79004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1985, 649.91998, -229.36000, 1278.69995,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, 666.75000, -240.99001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19273, 642.81000, -224.42000, 1277.14001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19273, 642.69000, -224.42000, 1277.14001,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19397, 642.75000, -225.38000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14778, 659.35999, -237.75000, 1279.21997,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1985, 649.91998, -231.66000, 1278.69995,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, 647.50000, -230.49001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19538, 575.54999, -186.89000, 1275.81006,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(1806, 627.87000, -213.61000, 1275.79004,   0.00000, 0.00000, 270.98001);
	CreateDynamicObject(2164, 625.89001, -213.39999, 1275.79004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19461, 647.65002, -231.78999, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19538, 580.56000, -186.91000, 1309.68994,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(14791, 657.53998, -238.75999, 1277.28003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19456, 642.75000, -231.78999, 1281.01001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, 657.12000, -240.99001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19364, 663.53998, -246.16000, 1280.96997,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19538, 580.56000, -186.91000, 1309.68994,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19461, 642.75000, -231.78999, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19461, 662.03998, -246.17000, 1277.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19397, 646.27002, -236.57001, 1277.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19456, 657.12000, -246.16000, 1280.96997,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(13640, 625.79999, -222.28999, 1276.65002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, 647.50000, -240.99001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19456, 639.84998, -236.57001, 1281.01001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19273, 642.81000, -237.25999, 1277.14001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19273, 642.71002, -237.25000, 1277.14001,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19397, 646.03998, -239.75999, 1277.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19461, 647.65002, -241.41000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19397, 642.74982, -238.25722, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19273, 645.09998, -239.69000, 1277.14001,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19273, 645.09003, -239.84000, 1277.14001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19461, 639.84998, -236.57001, 1277.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19442, 643.63000, -239.75999, 1277.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19461, 652.40997, -246.17000, 1277.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19456, 642.75000, -241.41000, 1280.95996,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14782, 651.22998, -245.70000, 1276.73999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19456, 647.48999, -246.16000, 1280.96997,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3594, 631.03003, -234.74001, 1279.63000,   0.00000, 0.00000, 221.86000);
	CreateDynamicObject(3594, 631.03003, -234.74001, 1278.44995,   0.00000, 0.00000, 39.98000);
	CreateDynamicObject(3594, 631.03003, -234.84000, 1277.22998,   0.00000, 0.00000, 221.86000);
	CreateDynamicObject(3594, 631.03003, -234.74001, 1276.01001,   0.00000, 0.00000, 41.53000);
	CreateDynamicObject(13647, 616.77002, -225.89000, 1275.75000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3594, 611.79999, -222.13000, 1276.01001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3594, 618.50629, -229.09300, 1278.03003,   30.00000, 0.00000, 5.70440);
	CreateDynamicObject(3594, 627.23999, -237.24001, 1278.13000,   0.00000, 0.00000, 135.62000);
	CreateDynamicObject(19538, 575.54999, -186.89000, 1275.81006,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19273, 639.98999, -187.32001, 1277.14001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1256, 634.97998, -181.99001, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1806, 645.66998, -192.67000, 1275.79004,   0.00000, 0.00000, 293.09000);
	CreateDynamicObject(19377, 666.75000, -219.99001, 1279.31995,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1720, 626.96002, -174.03000, 1275.76001,   0.00000, 0.00000, 22.26000);
	CreateDynamicObject(19273, 640.00000, -186.89999, 1277.14001,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2009, 648.17999, -194.50999, 1275.79004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1806, 645.72998, -191.60001, 1275.79004,   0.00000, 0.00000, 271.16000);
	CreateDynamicObject(1720, 628.25000, -174.03000, 1275.76001,   0.00000, 0.00000, 8.11000);
	CreateDynamicObject(1999, 647.20001, -192.49001, 1275.79004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1806, 648.38000, -193.41000, 1275.79004,   0.00000, 0.00000, 89.62000);
	CreateDynamicObject(2162, 642.83002, -187.35001, 1275.79004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1720, 629.51001, -174.03999, 1275.76001,   0.00000, 0.00000, 6.39000);
	CreateDynamicObject(1256, 634.97998, -178.99001, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1256, 637.97998, -181.99001, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1720, 630.78003, -174.10001, 1275.76001,   0.00000, 0.00000, 350.94000);
	CreateDynamicObject(1806, 648.38000, -191.71001, 1275.79004,   0.00000, 0.00000, 95.58000);
	CreateDynamicObject(2164, 645.40997, -187.35001, 1275.79004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1256, 637.97998, -178.99001, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1256, 640.97998, -181.99001, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1256, 634.97998, -175.97000, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2163, 648.23999, -187.36000, 1275.79004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1256, 640.97998, -178.99001, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1256, 637.97998, -175.97000, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1256, 643.97998, -181.99001, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1557, 663.85999, -202.19000, 1275.80005,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1256, 640.97998, -175.97000, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1256, 643.97998, -178.99001, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1256, 643.97998, -175.97000, 1276.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19538, 625.79999, -156.22000, 1275.81006,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19538, 708.06000, -218.77000, 1275.81006,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19538, 705.21997, -218.75999, 1310.38000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19538, 702.12000, -186.89000, 1275.81006,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19538, 650.02002, -124.46000, 1275.81006,   90.00000, 0.00000, -90.00000);
	CreateDynamicObject(19531, 675.78131, -124.95560, 1283.36462,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3594, 625.37000, -239.73000, 1277.05005,   0.00000, 0.00000, 223.85001);
	CreateDynamicObject(3594, 625.37000, -239.73000, 1276.01001,   0.00000, 0.00000, 43.21000);
	CreateDynamicObject(13295, 677.89001, -274.44000, 1282.27002,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3594, 603.42999, -222.13000, 1276.01001,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19531, 602.83002, -235.98000, 1307.04004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3594, 600.79999, -222.08000, 1276.94995,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3594, 600.79999, -222.08000, 1276.01001,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(18753, 602.64001, -235.96001, 1301.76001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3279, 610.69000, -233.49001, 1275.76001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19943, 622.42999, -247.25999, 1276.39001,   -90.00000, 0.00000, 40.60000);
	CreateDynamicObject(19913, 615.96997, -243.08000, 1278.08997,   0.00000, 0.00000, 42.22000);
	CreateDynamicObject(19955, 589.81000, -221.78000, 1274.93005,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19912, 586.85999, -221.71001, 1281.18005,   0.00000, -90.00000, 0.00000);
	CreateDynamicObject(19955, 588.08002, -222.03000, 1274.70996,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19913, 624.13000, -256.60999, 1278.08997,   0.00000, 0.00000, 42.22000);
	CreateDynamicObject(19913, 617.84998, -252.03000, 1278.08997,   0.00000, 0.00000, 42.22000);
	CreateDynamicObject(19943, 617.34998, -252.13000, 1276.39001,   -90.00000, 0.00000, 40.60000);
	CreateDynamicObject(19538, 580.75000, -218.77000, 1275.81006,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(13590, 584.87000, -226.14999, 1276.89001,   0.00000, 0.00000, 179.83000);
	CreateDynamicObject(19912, 586.37000, -231.27000, 1278.50000,   0.00000, 0.00000, 85.76000);
	CreateDynamicObject(19913, 589.69000, -236.11000, 1278.08997,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19912, 582.96002, -231.86000, 1278.50000,   0.00000, 0.00000, 1.99000);
	CreateDynamicObject(19943, 612.09003, -256.84000, 1276.39001,   -90.00000, 0.00000, 40.60000);
	CreateDynamicObject(13647, 597.09003, -244.91000, 1275.75000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3594, 587.97998, -236.75999, 1276.13000,   0.00000, 0.00000, 11.48000);
	CreateDynamicObject(19912, 593.71997, -248.92999, 1279.30005,   0.00000, -90.00000, 0.00000);
	CreateDynamicObject(1308, 632.35999, -278.20001, 1278.32996,   360.00000, -149.00000, 270.00000);
	CreateDynamicObject(19956, 583.88000, -239.88000, 1274.97998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8580, 638.73999, -283.16000, 1280.16003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19402, 633.98999, -280.12000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19865, 636.89001, -281.20999, 1274.82996,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1278, 625.08002, -274.89999, 1276.56006,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19448, 629.25000, -278.42001, 1277.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19912, 582.20001, -242.03000, 1278.50000,   0.00000, 0.00000, 352.79999);
	CreateDynamicObject(3594, 590.34998, -249.96001, 1278.89001,   90.00000, 90.00000, 0.00000);
	CreateDynamicObject(19325, 634.03998, -281.89999, 1276.66003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19325, 633.97998, -281.95999, 1276.66003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19912, 571.46002, -232.28000, 1278.50000,   0.00000, 0.00000, 6.94000);
	CreateDynamicObject(19325, 633.94000, -282.07999, 1276.66003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2788, 632.20001, -281.16000, 1276.48999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19533, 644.45001, -288.09000, 1275.78003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1308, 625.94000, -278.20001, 1278.32996,   360.00000, -149.00000, 270.00000);
	CreateDynamicObject(19402, 633.98999, -283.32001, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2747, 630.89001, -281.26999, 1276.41003,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19589, 599.97998, -259.48999, 1275.76001,   0.00000, 0.00000, 40.13000);
	CreateDynamicObject(19589, 601.96997, -261.29001, 1275.76001,   0.00000, 0.00000, 40.13000);
	CreateDynamicObject(2788, 629.72998, -281.20999, 1276.48999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19386, 627.33002, -280.10999, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19589, 603.23999, -263.31000, 1275.76001,   0.00000, 0.00000, 40.13000);
	CreateDynamicObject(19381, 632.00000, -283.32001, 1275.88000,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1491, 627.34998, -280.85001, 1275.76001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3363, 572.82001, -236.53999, 1275.75000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19386, 624.38000, -280.10001, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19386, 633.98999, -286.53000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19378, 628.83002, -283.32001, 1275.90002,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19448, 619.84003, -278.41000, 1277.48999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3279, 558.70001, -222.97000, 1275.76001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 624.39001, -280.84000, 1275.76001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1308, 618.88000, -278.20001, 1278.32996,   360.00000, -149.00000, 270.00000);
	CreateDynamicObject(1726, 629.56000, -284.19000, 1275.98999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1507, 634.01001, -287.26999, 1275.82996,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19912, 583.87000, -252.19000, 1278.50000,   0.00000, 0.00000, 80.19000);
	CreateDynamicObject(19356, 624.38000, -283.31000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1726, 631.54999, -287.42001, 1275.98999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19912, 570.72998, -240.60001, 1278.50000,   0.00000, 0.00000, 349.00000);
	CreateDynamicObject(3594, 586.47998, -256.01001, 1276.13000,   0.00000, 0.00000, 132.55000);
	CreateDynamicObject(19448, 627.33002, -286.53000, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2297, 627.71997, -286.48999, 1275.98999,   0.00000, 0.00000, 44.82000);
	CreateDynamicObject(19448, 629.25000, -288.10001, 1277.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2417, 621.62000, -283.00000, 1275.98999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19386, 615.08002, -279.98001, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2514, 623.83002, -285.10999, 1275.98999,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19356, 621.03998, -284.01001, 1277.46997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19448, 619.84003, -283.48999, 1277.48999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3594, 563.44000, -235.88000, 1277.96997,   30.00000, 0.00000, 90.00000);
	CreateDynamicObject(19386, 624.38000, -286.51999, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19386, 622.71997, -285.54001, 1277.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2141, 618.91998, -282.88000, 1275.98999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3361, 630.06000, -290.39999, 1277.82996,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1498, 615.10999, -280.72000, 1275.79004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19956, 592.38000, -263.54001, 1274.97998,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1491, 621.94000, -285.54999, 1275.76001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19378, 618.33002, -283.32001, 1275.90002,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1491, 624.39001, -287.26001, 1275.76001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2049, 547.20001, -218.81000, 1277.25000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2145, 616.89001, -283.17999, 1274.17004,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2145, 616.15002, -283.17999, 1275.03003,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2145, 615.39001, -283.17999, 1275.77002,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1308, 614.84998, -284.64001, 1278.32996,   360.00000, -149.00000, 357.63000);
	CreateDynamicObject(2049, 545.35999, -218.81000, 1277.25000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19448, 619.84003, -288.07001, 1277.48999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1798, 617.82001, -287.04001, 1275.94995,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19448, 615.07001, -286.39001, 1277.51001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2049, 543.46002, -218.81000, 1277.25000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19956, 583.71002, -262.14999, 1274.97998,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3415, 555.71002, -235.92999, 1275.77002,   0.00000, 0.00000, 180.96001);
	CreateDynamicObject(3594, 550.83331, -231.05580, 1277.96997,   30.00000, 11.00000, 188.00000);
	CreateDynamicObject(3819, 603.22998, -282.67999, 1276.75000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19955, 550.84998, -236.05000, 1278.71997,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3594, 579.57001, -265.69000, 1278.03003,   25.00000, 0.00000, 90.00000);
	CreateDynamicObject(13647, 577.39001, -263.92999, 1275.75000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3594, 580.57001, -267.57001, 1278.01001,   35.00000, -40.00000, 96.00000);
	CreateDynamicObject(3356, 556.34003, -246.13000, 1279.72998,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(3594, 577.78998, -266.42001, 1276.13000,   0.00000, 0.00000, 82.39000);
	CreateDynamicObject(3594, 576.02002, -266.62000, 1277.29004,   0.00000, 0.00000, 107.45000);
	CreateDynamicObject(1327, 591.06000, -278.87000, 1275.73999,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19913, 574.34998, -268.81000, 1278.08997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19913, 549.40002, -243.75999, 1278.08997,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19957, 550.83002, -247.14000, 1278.88000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3819, 603.22998, -293.44000, 1276.75000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19538, 540.35999, -235.98000, 1275.81006,   90.00000, 90.00000, 0.00000);
	CreateDynamicObject(19912, 562.96997, -263.54999, 1278.50000,   0.00000, 0.00000, 268.98001);
	CreateDynamicObject(1327, 591.22998, -286.98999, 1275.73999,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(3594, 565.83002, -266.51001, 1276.98999,   0.00000, 0.00000, 111.87000);
	CreateDynamicObject(19913, 605.60999, -298.41000, 1278.08997,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3594, 565.83002, -266.51001, 1276.13000,   0.00000, 0.00000, 111.87000);
	CreateDynamicObject(19538, 602.83002, -298.44000, 1275.81006,   90.00000, 0.00000, 180.00000);
	CreateDynamicObject(3594, 553.27002, -262.32001, 1276.13000,   0.00000, 0.00000, 93.04000);
	CreateDynamicObject(1327, 560.01001, -278.85001, 1275.73999,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1327, 560.02002, -286.97000, 1275.73999,   0.00000, 90.00000, 90.00000);
	// Interior 40 Oficina
	CreateObject(14576, 1401.660034, 506.440002, 1008.150024, 0.000000, 0.000000, 0.000000, 0.0); // 0
	CreateObject(14577, 1462.270020, 487.500000, 1013.280029, 0.000000, 0.000000, 180.000000, 0.0); // 0
	CreateObject(14592, 1419.300049, 592.619995, 1006.890015, 0.000000, 0.000000, 90.000000, 0.0); // 0
	CreateObject(18753, 1449.310059, 556.010010, 999.440002, 0.000000, 0.000000, 0.000000, 0.0); // 0
	CreateDynamicObject(19354, 1454.079956, 550.039978, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1557, 1454.160034, 550.049988, 999.950012, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1557, 1454.150024, 553.070007, 999.950012, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1454.079956, 553.250000, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2011, 1454.689941, 549.250000, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2010, 1454.739990, 553.919983, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19379, 1452.420044, 550.200012, 999.909973, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1722, 1455.660034, 548.659973, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14527, 1460.380005, 551.669983, 1001.159973, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1455.270020, 548.330017, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1455.270020, 554.750000, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1722, 1456.619995, 548.659973, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19377, 1452.420044, 550.200012, 1003.530029, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1742, 1456.160034, 554.780029, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1722, 1457.569946, 548.659973, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1502, 1457.699951, 554.729980, 999.950012, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1722, 1458.530029, 548.659973, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(9823, 1458.420044, 548.239990, 1001.380005, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19400, 1458.479980, 548.330017, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19384, 1458.479980, 554.750000, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1457.030029, 556.390015, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1722, 1459.489990, 548.659973, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14527, 1460.380005, 551.669983, 1001.159973, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2002, 1460.020020, 554.200012, 999.989990, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2561, 1460.459961, 548.840027, 1001.270020, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1722, 1460.439941, 548.659973, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1455.510010, 557.919983, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1452.339966, 557.919983, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2558, 1461.180054, 554.250000, 1001.289978, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2273, 1455.640015, 558.489990, 1001.729980, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1459.880005, 556.390015, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1722, 1461.400024, 548.659973, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1502, 1454.040039, 558.739990, 999.950012, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(9625, 1462.969971, 554.820007, 999.299988, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1722, 1461.400024, 554.390015, 1000.000000, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1461.680054, 548.330017, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19400, 1461.680054, 554.750000, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19384, 1454.000000, 559.489990, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1722, 1462.349976, 548.659973, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1722, 1462.349976, 554.390015, 1000.000000, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19379, 1462.920044, 550.200012, 999.909973, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2528, 1451.280029, 559.210022, 999.989990, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19377, 1462.920044, 550.200012, 1003.530029, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19379, 1452.420044, 559.830017, 999.909973, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2523, 1451.310059, 559.710022, 999.989990, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19377, 1452.420044, 559.830017, 1003.530029, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1450.699951, 559.599976, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(9625, 1462.969971, 554.820007, 999.299988, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1722, 1463.310059, 548.659973, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2258, 1463.300049, 548.450012, 1001.900024, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1459.869995, 559.599976, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1455.510010, 561.109985, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2276, 1458.439941, 560.520020, 1001.609985, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1452.339966, 561.109985, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1722, 1464.270020, 548.659973, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2254, 1464.500000, 554.640015, 1002.109985, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2520, 1464.449951, 562.650024, 999.969971, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1468.140015, 558.010010, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2356, 1469.719971, 551.530029, 999.989990, 0.000000, 0.000000, 277.170013, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2609, 1469.150024, 547.140015, 1000.710022, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1465.170044, 564.229980, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1458.719971, 561.109985, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1464.890015, 548.330017, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14527, 1471.319946, 552.440002, 1001.159973, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1464.890015, 554.750000, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19379, 1462.920044, 559.830017, 999.909973, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19400, 1466.510010, 550.039978, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19384, 1466.510010, 553.250000, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1649, 1466.530029, 549.570007, 1001.469971, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1649, 1466.530029, 549.570007, 1001.469971, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19377, 1462.920044, 559.830017, 1003.530029, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1502, 1466.489990, 554.039978, 999.950012, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2185, 1467.060059, 550.979980, 999.989990, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19382, 1466.510010, 547.630005, 1002.169983, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2528, 1467.280029, 563.619995, 1000.020020, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1999, 1472.150024, 553.460022, 999.989990, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2272, 1471.920044, 547.320007, 1001.729980, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1466.510010, 546.830017, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1466.510010, 556.460022, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2002, 1467.060059, 555.270020, 999.989990, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2161, 1471.829956, 557.909973, 1001.409973, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1502, 1470.109985, 561.919983, 999.950012, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1659, 1467.680054, 552.520020, 1002.880005, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1467.449951, 548.080017, 999.989990, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2165, 1467.109985, 557.440002, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2356, 1468.569946, 550.489990, 999.989990, 0.000000, 0.000000, 104.739998, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2162, 1467.089966, 557.900024, 1001.799988, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1467.939941, 555.940002, 999.989990, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2193, 1468.069946, 547.309998, 1000.000000, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2522, 1464.469971, 561.719971, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1465.170044, 561.119995, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1468.140015, 546.739990, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2202, 1473.390015, 550.390015, 1000.010010, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1463.859985, 562.669983, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2520, 1464.449951, 562.650024, 999.969971, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1468.140015, 558.010010, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2356, 1469.719971, 551.530029, 999.989990, 0.000000, 0.000000, 277.170013, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2609, 1469.150024, 547.140015, 1000.710022, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2356, 1469.719971, 552.489990, 999.989990, 0.000000, 0.000000, 267.130005, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2356, 1474.619995, 548.849976, 999.989990, 0.000000, 0.000000, 189.520004, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1567, 1470.800049, 564.150024, 999.950012, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19377, 1473.430054, 559.830017, 1003.530029, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1465.170044, 564.229980, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2008, 1471.310059, 551.549988, 999.989990, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2308, 1475.500000, 548.309998, 1000.000000, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2226, 1475.560059, 548.070007, 1000.789978, 0.000000, 0.000000, 254.279999, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1471.569946, 564.229980, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(9093, 1476.050049, 553.070007, 1001.500000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1476.069946, 550.039978, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1235, 1470.800049, 547.270020, 1000.479980, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2162, 1475.979980, 548.460022, 1001.799988, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1742, 1476.130005, 555.669983, 1000.000000, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14527, 1471.319946, 552.440002, 1001.159973, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1468.369995, 561.119995, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2199, 1470.199951, 557.869995, 999.989990, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1471.339966, 546.739990, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2528, 1467.280029, 563.619995, 1000.020020, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1999, 1472.150024, 553.460022, 999.989990, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2272, 1471.920044, 547.320007, 1001.729980, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2523, 1467.750000, 563.650024, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1471.339966, 558.010010, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2356, 1472.640015, 552.070007, 999.989990, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2161, 1471.829956, 557.909973, 1001.409973, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1502, 1470.109985, 561.919983, 999.950012, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1468.369995, 564.229980, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2202, 1473.390015, 550.390015, 1000.010010, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11707, 1434.349976, 580.159973, 1001.049988, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19379, 1473.410034, 550.200012, 999.909973, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19377, 1473.410034, 550.200012, 1003.530029, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19384, 1470.079956, 562.669983, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1978, 1451.290039, 512.539978, 1008.280029, 0.000000, 0.000000, 182.740005, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1726, 1432.579956, 587.580017, 999.960022, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1471.569946, 561.119995, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2356, 1474.619995, 548.849976, 999.989990, 0.000000, 0.000000, 189.520004, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1502, 1435.300049, 591.580017, 999.960022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1566, 1453.599976, 506.500000, 1007.619995, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2001, 1425.800049, 587.500000, 999.960022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2073, 1429.859985, 590.460022, 1004.309998, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2289, 1435.119995, 595.219971, 1002.250000, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1726, 1425.920044, 590.659973, 999.960022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1806, 1430.979980, 596.900024, 999.960022, 0.000000, 0.000000, 267.700012, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2073, 1429.859985, 597.479980, 1004.309998, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19171, 1412.339966, 582.359985, 1001.460022, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19169, 1412.339966, 582.359985, 1002.960022, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1806, 1430.959961, 599.000000, 999.960022, 0.000000, 0.000000, 271.059998, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1408.219971, 578.190002, 999.960022, 0.000000, 0.000000, -20.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19170, 1410.839966, 582.359985, 1001.460022, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19168, 1410.839966, 582.359985, 1002.960022, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19898, 1405.189941, 574.150024, 999.979980, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1518, 1409.229980, 582.359985, 1000.989990, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1518, 1408.589966, 582.359985, 1000.989990, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2181, 1408.099976, 581.940002, 999.969971, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19941, 1402.550049, 524.929993, 1000.849976, 0.000000, 0.000000, 2.450000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19903, 1409.130005, 589.010010, 1000.020020, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2196, 1401.400024, 524.510010, 1000.849976, 0.000000, 0.000000, 137.429993, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19450, 1403.150024, 582.510010, 998.289978, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19621, 1408.989990, 591.369995, 1001.369995, 0.000000, 0.000000, 332.309998, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19627, 1409.010010, 592.090027, 1001.280029, 0.000000, 0.000000, 52.389999, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19921, 1408.790039, 591.849976, 1002.190002, 0.000000, 0.000000, 281.149994, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19899, 1409.010010, 592.179993, 1000.020020, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(925, 1392.530029, 564.710022, 1000.979980, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19898, 1403.604858, 589.663086, 1000.049988, 0.000000, 0.000000, 293.540100, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(19003, 1405.479980, 592.429993, 1000.030029, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 1, 14592, "casinoVault01", "ab_shutter1", 0xFFFFFFFF);
	CreateDynamicObject(2284, 1422.329956, 495.109985, 1008.429993, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(346, 1424.650024, 490.839996, 1006.460022, 90.000000, 0.000000, 335.500000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(356, 1424.880005, 490.559998, 1006.729980, 0.000000, -90.000000, 87.800003, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(346, 1424.189941, 490.839996, 1006.460022, 90.000000, 0.000000, 13.410000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(356, 1424.719971, 490.559998, 1006.729980, 0.000000, -90.000000, 85.690002, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(349, 1424.359985, 490.640015, 1006.729980, 0.000000, -90.000000, 86.790001, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(349, 1424.180054, 490.640015, 1006.729980, 0.000000, -90.000000, 94.029999, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(346, 1423.709961, 490.839996, 1006.460022, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(349, 1423.959961, 490.640015, 1006.729980, 0.000000, -90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(351, 1423.739990, 490.640015, 1006.429993, 0.000000, -90.000000, 87.739998, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(16775, 1391.699951, 578.690002, 1003.729980, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14782, 1398.699951, 591.549988, 1001.039978, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1726, 1418.619995, 492.420013, 1006.330017, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14584, 1386.640015, 565.359985, 1001.719971, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14782, 1430.449951, 485.820007, 1007.369995, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2636, 1425.060059, 484.720001, 1006.989990, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2042, 1423.589966, 484.940002, 1007.219971, 0.000000, 0.000000, 172.660004, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
 	CreateDynamicObject(2041, 1423.010010, 484.920013, 1007.340027, 0.000000, 0.000000, 175.529999, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2636, 1421.660034, 484.779999, 1006.989990, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19165, 1423.400024, 482.670013, 1008.119995, 90.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1726, 1418.619995, 483.779999, 1006.330017, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1886, 1432.439941, 466.970001, 1011.330017, 15.000000, 0.000000, 142.309998, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1473.089966, 559.599976, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1502, 1473.770020, 557.989990, 999.950012, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1474.550049, 546.739990, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1567, 1470.800049, 564.150024, 999.950012, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19379, 1473.410034, 559.830017, 999.909973, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19377, 1473.430054, 559.830017, 1003.530029, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19384, 1474.550049, 558.010010, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2558, 1475.520020, 553.729980, 1001.289978, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2308, 1475.500000, 548.309998, 1000.000000, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2609, 1475.770020, 551.609985, 1000.710022, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2226, 1475.560059, 548.070007, 1000.789978, 0.000000, 0.000000, 254.279999, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1471.569946, 564.229980, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2164, 1475.930054, 550.780029, 999.989990, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(9093, 1476.050049, 553.070007, 1001.500000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1476.069946, 550.039978, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19400, 1476.069946, 553.250000, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2162, 1475.979980, 548.460022, 1001.799988, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1742, 1476.130005, 555.669983, 1000.000000, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1476.069946, 546.830017, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1476.069946, 556.460022, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1476.069946, 559.599976, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2289, 1474.250000, 564.099976, 1001.950012, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1474.770020, 564.229980, 1001.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19354, 1476.069946, 562.809998, 1001.710022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2001, 1475.569946, 563.729980, 1000.000000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2001, 1440.170044, 570.890015, 999.960022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2282, 1430.390015, 570.979980, 1001.960022, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1502, 1435.300049, 578.320007, 999.960022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14638, 1435.280029, 578.340027, 1002.460022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19873, 1433.300049, 578.210022, 1000.520020, 3.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2525, 1433.410034, 578.289978, 999.969971, -6.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2528, 1432.609985, 578.380005, 999.969971, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11707, 1434.349976, 580.159973, 1001.049988, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2526, 1431.599976, 578.469971, 999.969971, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2523, 1432.920044, 579.739990, 999.969971, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1978, 1451.569946, 513.039978, 1007.400024, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1978, 1451.290039, 512.539978, 1008.280029, 0.000000, 0.000000, 182.740005, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1726, 1432.579956, 587.580017, 999.960022, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2099, 1435.170044, 589.520020, 999.960022, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1886, 1435.489990, 514.570007, 1011.320007, 15.000000, 0.000000, 330.510010, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1502, 1417.119995, 572.299988, 999.960022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14638, 1417.089966, 572.330017, 1002.460022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2281, 1429.560059, 587.510010, 1001.960022, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11737, 1416.959961, 574.729980, 1002.099976, 90.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1726, 1428.619995, 587.580017, 999.960022, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1502, 1435.300049, 591.580017, 999.960022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14638, 1435.280029, 591.580017, 1002.460022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1566, 1453.599976, 506.500000, 1007.619995, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2001, 1425.800049, 587.500000, 999.960022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2073, 1429.859985, 590.460022, 1004.309998, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2289, 1435.119995, 595.219971, 1002.250000, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1726, 1425.920044, 590.659973, 999.960022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2283, 1440.430054, 598.130005, 1002.080017, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1421, 1414.989990, 581.330017, 1000.719971, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1412.380005, 578.190002, 999.960022, 0.000000, 0.000000, 20.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1714, 1433.819946, 597.020020, 999.960022, 0.000000, 0.000000, 267.910004, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2700, 1434.920044, 597.900024, 1002.880005, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2008, 1432.459961, 596.840027, 999.960022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1411.380005, 577.770020, 999.960022, 0.000000, 0.000000, 12.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1806, 1430.979980, 596.900024, 999.960022, 0.000000, 0.000000, 267.700012, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(939, 1452.060059, 500.730011, 1008.710022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1410.319946, 577.609985, 999.960022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(3014, 1412.979980, 582.109985, 1000.190002, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1714, 1433.800049, 599.299988, 999.960022, 0.000000, 0.000000, 276.850006, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(3014, 1412.380005, 582.109985, 1000.190002, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2008, 1432.459961, 598.820007, 999.960022, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2073, 1429.859985, 597.479980, 1004.309998, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19171, 1412.339966, 582.359985, 1001.460022, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19169, 1412.339966, 582.359985, 1002.960022, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1409.260010, 577.770020, 999.960022, 0.000000, 0.000000, -12.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1567, 1436.739990, 601.119995, 999.969971, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1567, 1436.739990, 601.119995, 1002.440002, -8.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1806, 1430.959961, 599.000000, 999.960022, 0.000000, 0.000000, 271.059998, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2188, 1446.880005, 498.839996, 1007.340027, 0.000000, 0.000000, 215.190002, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1408.219971, 578.190002, 999.960022, 0.000000, 0.000000, -20.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19170, 1410.839966, 582.359985, 1001.460022, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19168, 1410.839966, 582.359985, 1002.960022, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19898, 1405.189941, 574.150024, 999.979980, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1518, 1409.229980, 582.359985, 1000.989990, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2785, 1451.380005, 496.880005, 1007.190002, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1518, 1408.589966, 582.359985, 1000.989990, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2181, 1408.099976, 581.940002, 999.969971, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1723, 1419.729980, 507.769989, 1006.349976, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19941, 1402.550049, 524.929993, 1000.849976, 0.000000, 0.000000, 2.450000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19941, 1402.550049, 524.820007, 1000.849976, 0.000000, 0.000000, 350.660004, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19941, 1402.530029, 524.690002, 1000.849976, 0.000000, 0.000000, 358.390015, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2205, 1402.349976, 524.820007, 999.919983, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19042, 1402.280029, 524.840027, 1000.869995, -12.000000, 0.000000, 45.610001, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19903, 1409.130005, 589.010010, 1000.020020, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, 1401.310059, 526.219971, 999.960022, 0.000000, 0.000000, 10.960000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2196, 1401.400024, 524.510010, 1000.849976, 0.000000, 0.000000, 137.429993, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14601, 1404.449951, 519.799988, 1007.340027, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1514, 1401.050049, 524.739990, 1000.960022, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19450, 1403.150024, 582.510010, 998.289978, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19621, 1408.989990, 591.369995, 1001.369995, 0.000000, 0.000000, 332.309998, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1886, 1413.229980, 507.790009, 1011.349976, 15.000000, 0.000000, 29.270000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19627, 1409.010010, 592.090027, 1001.280029, 0.000000, 0.000000, 52.389999, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19921, 1408.790039, 591.849976, 1002.190002, 0.000000, 0.000000, 281.149994, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19899, 1409.010010, 592.179993, 1000.020020, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(925, 1392.530029, 564.710022, 1000.979980, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1886, 1403.859985, 513.250000, 1005.039978, 20.000000, 0.000000, 340.779999, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19898, 1403.604858, 589.663086, 1000.049988, 0.000000, 0.000000, 293.540100, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	fso_map = CreateDynamicObject(19003, 1405.479980, 592.429993, 1000.030029, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterial(fso_map, 1, 14592, "casinoVault01", "ab_shutter1", 0xFFFFFFFF);
	CreateDynamicObject(14782, 1430.449951, 492.299988, 1007.369995, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2284, 1422.329956, 495.109985, 1008.429993, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
 	CreateDynamicObject(346, 1424.650024, 490.839996, 1006.460022, 90.000000, 0.000000, 335.500000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(356, 1424.880005, 490.559998, 1006.729980, 0.000000, -90.000000, 87.800003, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(346, 1424.189941, 490.839996, 1006.460022, 90.000000, 0.000000, 13.410000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(356, 1424.719971, 490.559998, 1006.729980, 0.000000, -90.000000, 85.690002, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2467, 1424.530029, 490.559998, 1006.030029, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19870, 1408.530029, 601.669983, 1001.219971, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(356, 1424.540039, 490.559998, 1006.729980, 0.000000, -90.000000, 94.889999, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(349, 1424.359985, 490.640015, 1006.729980, 0.000000, -90.000000, 86.790001, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(349, 1424.180054, 490.640015, 1006.729980, 0.000000, -90.000000, 94.029999, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(346, 1423.709961, 490.839996, 1006.460022, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(349, 1423.959961, 490.640015, 1006.729980, 0.000000, -90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(351, 1423.739990, 490.640015, 1006.429993, 0.000000, -90.000000, 87.739998, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(16775, 1391.699951, 578.690002, 1003.729980, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14782, 1398.699951, 591.549988, 1001.039978, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1726, 1418.619995, 492.420013, 1006.330017, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14584, 1386.640015, 565.359985, 1001.719971, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14782, 1430.449951, 485.820007, 1007.369995, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
 	CreateDynamicObject(1886, 1436.180054, 482.019989, 1011.349976, 15.000000, 0.000000, 193.610001, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2636, 1425.060059, 484.720001, 1006.989990, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1523, 1433.140015, 481.290009, 1006.359985, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2042, 1423.589966, 484.940002, 1007.219971, 0.000000, 0.000000, 172.660004, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(11690, 1423.430054, 484.790009, 1006.349976, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19304, 1433.010010, 481.290009, 1009.489990, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2041, 1423.010010, 484.920013, 1007.340027, 0.000000, 0.000000, 175.529999, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2636, 1421.660034, 484.779999, 1006.989990, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19870, 1399.050049, 601.669983, 1001.219971, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19165, 1423.400024, 482.670013, 1008.119995, 90.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1886, 1403.819946, 494.839996, 1005.039978, 20.000000, 0.000000, 189.830002, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1726, 1418.619995, 483.779999, 1006.330017, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(10148, 1403.189941, 608.809998, 1001.969971, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1566, 1404.939941, 491.809998, 1009.619995, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1886, 1406.819946, 491.260010, 1016.739990, 15.000000, 0.000000, 317.070007, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1566, 1404.500000, 491.809998, 1013.799988, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14450, 1392.689941, 600.880005, 1001.679993, 0.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(3055, 1453.359985, 472.010010, 1008.419983, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1886, 1400.510010, 491.190002, 1012.349976, 15.000000, 0.000000, 55.770000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1886, 1432.439941, 466.970001, 1011.330017, 15.000000, 0.000000, 142.309998, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14601, 1456.949951, 456.649994, 1013.200012, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	// Interior 11 - Objetos Restaurante
	CreateObject(19455, -796.150024, 492.720001, 1368.099976, 0.000000, 0.000000, 0.000000, 0.0); // 0
	CreateDynamicObject(1556, -795.559998, 508.779999, 1370.729980, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(3964, -796.530029, 504.640015, 1374.359985, 0.000000, 0.000000, 358.829987, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -789.369995, 508.450012, 1370.739990, 0.000000, 0.000000, 93.150002, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -789.869995, 504.200012, 1370.739990, 0.000000, 0.000000, 86.650002, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2830, -788.119995, 508.570007, 1371.560059, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2635, -787.979980, 508.440002, 1371.140015, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -787.989990, 507.089996, 1370.739990, 0.000000, 0.000000, 177.940002, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2683, -787.750000, 508.410004, 1371.680054, -0.020000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -787.929993, 509.809998, 1370.739990, 0.000000, 0.000000, 357.299988, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2804, -793.289978, 502.609985, 1367.489990, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2769, -788.690002, 504.209991, 1371.579956, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1520, -788.500000, 504.470001, 1371.619995, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2635, -788.510010, 504.239990, 1371.140015, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2769, -788.390015, 504.209991, 1371.579956, 0.000000, 0.000000, 116.750000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -786.530029, 508.450012, 1370.739990, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -787.109985, 504.239990, 1370.739990, 0.000000, 0.000000, 264.899994, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -784.770020, 508.450012, 1370.739990, 0.000000, 0.000000, 86.849998, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -785.169983, 504.200012, 1370.739990, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2635, -784.119995, 508.440002, 1371.140015, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1543, -784.059998, 508.589996, 1371.560059, 0.000000, 0.000000, 217.220001, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -784.070007, 507.649994, 1370.739990, 0.000000, 0.000000, 177.940002, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -784.109985, 509.809998, 1370.739990, 0.000000, 0.000000, 357.299988, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -783.409973, 508.450012, 1370.739990, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2635, -783.830017, 504.239990, 1371.140015, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2683, -783.789978, 504.299988, 1371.680054, -0.020000, 0.000000, 47.049999, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2561, -790.599976, 497.540009, 1370.000000, 0.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2561, -791.960022, 496.700012, 1370.000000, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -787.780029, 498.529999, 1375.199951, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -781.890015, 508.450012, 1370.739990, 0.000000, 0.000000, 94.459999, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -789.200012, 497.190002, 1375.199951, 0.000000, 0.000000, 88.400002, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -782.469971, 504.239990, 1370.739990, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1491, -792.580017, 494.989990, 1370.739990, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1491, -795.609985, 495.220001, 1375.199951, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1544, -787.789978, 497.390015, 1376.020020, 0.000000, 0.000000, 278.940002, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19393, -791.799988, 495.010010, 1372.500000, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2635, -787.799988, 497.149994, 1375.599976, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2769, -787.840027, 497.160004, 1376.040039, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1546, -780.849976, 508.459991, 1371.660034, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19394, -794.830017, 495.239990, 1376.959961, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2252, -796.130005, 494.750000, 1375.479980, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2524, -793.739990, 494.640015, 1375.199951, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2635, -780.539978, 508.440002, 1371.140015, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -786.359985, 497.230011, 1375.199951, 0.000000, 0.000000, 268.029999, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -780.489990, 507.089996, 1370.739990, 0.000000, 0.000000, 177.940002, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -780.489990, 509.809998, 1370.739990, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1546, -780.289978, 508.320007, 1371.660034, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19393, -791.280029, 494.559998, 1368.109985, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -787.780029, 495.809998, 1375.199951, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2524, -795.940002, 493.640015, 1375.199951, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1494, -790.539978, 494.549988, 1366.339966, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -779.130005, 508.450012, 1370.739990, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -794.590027, 493.589996, 1366.359985, 0.000000, 0.000000, 17.180000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -793.289978, 493.630005, 1366.359985, 0.000000, 0.000000, 1.060000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1734, -793.729980, 492.209991, 1369.540039, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -788.359985, 493.670013, 1375.199951, 0.000000, 0.000000, 353.970001, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1896, -793.630005, 492.339996, 1367.119995, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1502, -793.239990, 492.000000, 1375.680054, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1502, -796.460022, 491.959991, 1375.680054, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -789.780029, 492.239990, 1375.199951, 0.000000, 0.000000, 88.400002, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2635, -788.359985, 492.190002, 1375.599976, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2769, -788.330017, 492.290009, 1376.040039, 0.000000, 0.000000, 70.809998, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2277, -793.080017, 490.829987, 1368.239990, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2683, -788.489990, 492.100006, 1376.140015, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1720, -794.340027, 490.989990, 1366.359985, 0.000000, 0.000000, 181.050003, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	//Objetos HPC - Primer mapeos
	CreateObject(18637, 1193.682983, -1336.747559, 13.398100, 0.000000, 0.000000, 96.000000, 0.0); // 0
	CreateDynamicObject(2773, 1193.780029, -1337.650024, 12.900000, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2773, 1192.790039, -1336.680054, 12.900000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2773, 1194.699951, -1336.699951, 12.900000, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2773, 1193.780029, -1335.739990, 12.900000, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	// Bar Cantera LV
	CreateDynamicObject(1308, 834.46997, 870.59003, 21.12000,   180.00000, 0.00000, 180.00000);
	CreateDynamicObject(1493, 823.70001, 860.72998, 11.23000,   0.00000, 0.00000, 22.15000);
	CreateDynamicObject(2921, 834.53003, 870.59998, 21.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2921, 834.53003, 870.59998, 21.50000,   0.00000, 0.00000, 93.98000);
	CreateDynamicObject(2921, 834.53003, 870.62000, 21.50000,   0.00000, 0.00000, 187.17999);
	CreateDynamicObject(2921, 834.50000, 870.65002, 21.50000,   0.00000, 0.00000, -84.00000);
	CreateDynamicObject(16146, 818.03998, 866.98999, 14.17000,   0.00000, 0.00000, 112.15000);
	CreateDynamicObject(16288, 801.28003, 857.33002, -4.38000,   -18.00000, 18.00000, 131.22000);
	// Ferreteria
	CreateObject(18023,-1073.1200000,350.0799900,1181.5799600,0.0000000,0.0000000,0.0000000);
	CreateDynamicObject(337, -1075.28003, 346.42001, 1179.95996,   4.00000, 90.00000, 76.00000);
	CreateDynamicObject(337, -1077.06006, 345.92999, 1179.95996,   4.00000, 90.00000, 180.00000);
	CreateDynamicObject(337, -1071.16003, 345.91000, 1179.95996,   4.00000, 90.00000, 4.00000);
	CreateDynamicObject(337, -1077.76001, 345.91000, 1180.45996,   4.00000, 90.00000, -11.00000);
	CreateDynamicObject(337, -1078.09998, 345.91000, 1180.45996,   4.00000, 90.00000, 180.00000);
	CreateDynamicObject(365, -1070.50000, 345.73999, 1180.96997,   -4.00000, -4.00000, 18.00000);
	CreateDynamicObject(365, -1070.56995, 345.85999, 1180.96997,   -4.00000, -4.00000, -4.00000);
	CreateDynamicObject(365, -1070.38000, 345.82001, 1180.96997,   -4.00000, -4.00000, 91.00000);
	CreateDynamicObject(366, -1071.44995, 345.78000, 1180.82996,   84.00000, 0.00000, 135.00000);
	CreateDynamicObject(366, -1075.42004, 346.57001, 1180.82996,   84.00000, 0.00000, 33.00000);
	CreateDynamicObject(918, -1075.66003, 343.23001, 1179.89001,   0.00000, 0.00000, -4.00000);
	CreateDynamicObject(918, -1077.71997, 345.88000, 1181.57996,   0.00000, 0.00000, 120.00000);
	CreateDynamicObject(918, -1078.50000, 345.47000, 1179.88000,   0.00000, 0.00000, 11.00000);
	CreateDynamicObject(918, -1075.26001, 347.23001, 1181.57996,   0.00000, 0.00000, 120.00000);
	CreateDynamicObject(920, -1076.46997, 343.38000, 1181.67004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(920, -1079.79004, 341.95001, 1180.59998,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(920, -1079.79004, 341.95001, 1180.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(943, -1066.67004, 351.62000, 1180.29004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1335, -1067.01001, 347.82001, 1180.65002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1347, -1079.78003, 344.95001, 1180.08997,   180.00000, 0.00000, 20.00000);
	CreateDynamicObject(1348, -1066.52002, 341.70001, 1180.22998,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1348, -1079.65002, 347.97000, 1180.22998,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1348, -1079.65002, 351.04999, 1180.22998,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1426, -1069.80005, 340.60001, 1179.62000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1428, -1076.03003, 342.54001, 1181.04004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1428, -1075.68005, 346.72000, 1181.04004,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1428, -1077.34998, 348.79999, 1181.04004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1478, -1078.30005, 345.84000, 1181.13000,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(1481, -1079.43005, 354.38000, 1180.22998,   0.00000, 0.00000, 18.00000);
	CreateDynamicObject(1494, -1078.54004, 354.95001, 1179.45996,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1496, -1075.19995, 339.38000, 1179.44995,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1572, -1069.32996, 347.44000, 1180.09998,   0.00000, 0.00000, 69.00000);
	CreateDynamicObject(1572, -1076.82996, 351.70001, 1180.09998,   0.00000, 0.00000, 69.00000);
	CreateDynamicObject(1650, -1071.25000, 345.95999, 1181.51001,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, -1073.40002, 356.67999, 1179.53003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, -1078.59998, 356.98999, 1179.53003,   0.00000, 0.00000, 89.00000);
	CreateDynamicObject(1714, -1068.73999, 356.84000, 1179.53003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1778, -1078.95996, 358.51001, 1179.53003,   0.00000, 0.00000, 98.00000);
	CreateDynamicObject(1781, -1078.32996, 349.47000, 1181.20996,   0.00000, 0.00000, 18.00000);
	CreateDynamicObject(2063, -1076.39001, 342.66000, 1180.42004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2063, -1071.03003, 345.91000, 1180.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, -1077.91003, 345.91000, 1180.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, -1075.31995, 346.98001, 1180.42004,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2063, -1068.43005, 345.91000, 1180.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, -1071.03003, 349.17001, 1180.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, -1077.91003, 349.17001, 1180.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, -1068.43005, 349.17001, 1180.42004,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2190, -1073.63000, 354.97000, 1180.48999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2190, -1069.67004, 355.01999, 1180.48999,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2314, -1074.91003, 355.20999, 1180.01001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2314, -1074.91003, 355.20999, 1179.53003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2314, -1072.51001, 355.20999, 1180.01001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2314, -1072.51001, 355.20999, 1179.53003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2314, -1070.10999, 355.20999, 1180.01001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2314, -1070.10999, 355.20999, 1179.53003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2314, -1067.70996, 355.20999, 1180.01001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2314, -1067.70996, 355.20999, 1179.53003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2404, -1070.65002, 349.17999, 1179.94995,   -90.00000, 90.00000, 0.00000);
	CreateDynamicObject(2405, -1068.10999, 349.17999, 1180.84998,   -90.00000, 90.00000, 0.00000);
	CreateDynamicObject(2406, -1070.84998, 349.17999, 1180.43005,   -90.00000, 90.00000, 0.00000);
	CreateDynamicObject(2609, -1066.95996, 360.79999, 1180.26001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2690, -1071.68994, 345.97000, 1181.34998,   -90.00000, -90.00000, 0.00000);
	CreateDynamicObject(2700, -1076.02002, 354.57001, 1182.30005,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2748, -1066.75000, 344.56000, 1180.10999,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(3761, -1071.32996, 360.37000, 1180.06995,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(17951, -1076.56995, 339.25000, 1181.47998,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(17951, -1069.75000, 339.25000, 1181.43005,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(17951, -1080.31995, 342.98999, 1181.46997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(17951, -1065.91003, 343.17001, 1181.08997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(17951, -1080.31995, 350.06000, 1181.53003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(17951, -1065.91003, 349.47000, 1181.08997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18634, -1071.77002, 349.10999, 1181.21997,   180.00000, -90.00000, 90.00000);
	CreateDynamicObject(18634, -1068.52002, 355.10999, 1180.56006,   180.00000, -90.00000, 120.00000);
	CreateDynamicObject(18635, -1069.09998, 349.13000, 1181.18994,   90.00000, 90.00000, 0.00000);
	CreateDynamicObject(18635, -1072.47998, 355.14001, 1180.48999,   90.00000, 90.00000, 138.00000);
	CreateDynamicObject(18635, -1071.96997, 355.09000, 1180.48999,   90.00000, 90.00000, 0.00000);
	CreateDynamicObject(18644, -1070.82996, 349.13000, 1181.27002,   82.00000, 0.00000, 33.00000);
	CreateDynamicObject(18644, -1074.21997, 355.07001, 1180.56995,   82.00000, 0.00000, 33.00000);
	CreateDynamicObject(18644, -1072.67004, 355.04001, 1180.56995,   82.00000, 0.00000, -25.00000);
	CreateDynamicObject(19378, -1074.85999, 344.26001, 1179.43994,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19378, -1064.38000, 344.26001, 1179.43994,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19378, -1074.85999, 353.88000, 1179.43994,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19378, -1064.38000, 353.88000, 1179.43994,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19378, -1074.85999, 363.50000, 1179.43994,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19378, -1064.38000, 363.50000, 1179.43994,   0.00000, 90.00000, 0.00000);

	CreateDynamicObject(3684, 805.37000, -3240.43994, 8.28000,   0.00000, 0.00000, -270.00000);
	CreateDynamicObject(3684, 836.37000, -3240.43994, 8.28000,   0.00000, 0.00000, -270.00000);
	CreateDynamicObject(3684, 866.97998, -3240.56006, 8.28000,   0.00000, 0.00000, -270.00000);
	CreateDynamicObject(3337, 826.47797, -2942.98657, 11.09385,   0.00000, 0.00000, 58.71920);
	CreateDynamicObject(966,833.369995,-2954.520020,11.240000 , 0.000000,0.000000,180.000000 );
	CreateDynamicObject(966,833.369995,-2963.800049,10.920000 , 0.000000,0.000000,0.000000 );
	CreateDynamicObject(6295, 908.19000, -3019.65991, 28.53000,   0.00000, 0.00000, 129.69000);
	CreateDynamicObject(3337, 825.34003, -1795.52002, 12.63000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19535, 888.98999, -3180.76001, 4.86000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(9829, 929.62000, -3096.60010, -61.90000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(9829, 843.26001, -3777.42993, -61.90000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(9829, 912.12000, -3687.53003, -61.90000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(9241, 805.94000, -3119.12012, 6.05000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19535, 749.03998, -3478.15991, -2.60000,   -90.00000, 90.00000, -90.00000);
	CreateDynamicObject(8433, 815.82001, -3611.53003, 9.34000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(9829, 929.62000, -3244.25000, -61.90000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(9829, 912.34003, -3534.80005, -61.90000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19535, 748.98999, -3320.76001, 4.86000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19535, 749.03998, -3328.40991, -2.60000,   -90.00000, 90.00000, 90.00000);
	CreateDynamicObject(1297, 839.39001, -1819.65002, 20.88000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19966, 839.83002, -1810.59998, 16.97000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 827.28998, -1869.67004, 23.52000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 839.39001, -1919.68994, 26.18000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3330, 833.53003, -1953.98999, 1.33000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11421, 833.64001, -1962.15002, 16.73000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 827.28998, -1969.67004, 28.42000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3330, 833.53003, -1970.32996, 1.47000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2230, 743.42999, -1669.93994, 3.44000,   90.00000, 0.00000, 3.98000);
	CreateDynamicObject(2230, 742.90997, -1669.98999, 3.54000,   90.00000, 0.00000, 3.98000);
	CreateDynamicObject(2230, 742.75000, -1670.01001, 3.40000,   90.00000, 0.00000, 3.98000);
	CreateDynamicObject(2230, 742.60999, -1670.01001, 3.24000,   90.00000, 0.00000, 3.98000);
	CreateDynamicObject(2230, 742.40002, -1670.03003, 3.00000,   90.00000, 0.00000, 3.98000);
	CreateDynamicObject(2230, 742.25000, -1670.03003, 2.84000,   90.00000, 0.00000, 3.98000);
	CreateDynamicObject(2230, 742.09003, -1670.03003, 2.66000,   90.00000, 0.00000, 3.98000);
	CreateDynamicObject(1297, 839.39001, -2019.68994, 28.45000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 827.28998, -2069.66992, 28.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3330, 833.53003, -2113.86011, 13.60000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 839.39001, -2119.68994, 28.17000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 827.28998, -2169.66992, 28.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 839.39001, -2219.68994, 28.17000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 839.39001, -2219.68994, 28.17000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3330, 833.53003, -2263.86011, 13.60000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3330, 833.53003, -2263.86011, 13.60000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 827.28998, -2269.66992, 28.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 827.28998, -2269.66992, 28.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 839.39001, -2319.68994, 28.17000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 839.39001, -2319.68994, 28.17000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 827.28998, -2369.66992, 28.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 827.28998, -2369.66992, 28.46000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3330, 833.53003, -2413.84009, 13.60000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3330, 833.53003, -2413.84009, 13.60000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 839.39001, -2419.66992, 28.17000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 839.39001, -2419.66992, 28.17000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 827.28998, -2469.64990, 26.53000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 827.28998, -2469.64990, 26.53000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 839.39001, -2519.66992, 24.62000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 839.39001, -2519.66992, 24.62000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3330, 833.53003, -2563.47998, 8.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3330, 833.53003, -2563.47998, 8.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 827.28998, -2569.64990, 23.21000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 827.28998, -2569.64990, 23.21000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 839.39001, -2619.66992, 23.04000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 839.39001, -2619.66992, 23.04000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 827.28998, -2669.64990, 23.17000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 827.28998, -2669.64990, 23.17000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3330, 833.53003, -2713.58008, 8.52000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3330, 833.53003, -2713.58008, 8.52000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 839.39001, -2719.66992, 23.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 839.39001, -2719.66992, 23.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 827.28998, -2769.64990, 21.23000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 827.28998, -2769.64990, 21.23000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 839.39001, -2819.66992, 19.51000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 839.39001, -2819.66992, 19.51000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3330, 833.53003, -2863.33008, 3.26000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3330, 833.53003, -2863.33008, 3.26000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 827.28998, -2869.64990, 17.79000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 827.28998, -2869.64990, 17.79000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 839.39001, -2919.66992, 16.04000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 839.39001, -2919.66992, 16.04000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19966, 826.65002, -2938.68994, 12.02000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19966, 826.65002, -2938.68994, 12.02000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19124, 833.37000, -2956.08008, 11.72000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(967, 833.41998, -2958.32007, 11.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3749, 833.38000, -2959.87988, 17.01000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(967, 833.41998, -2959.86011, 11.00000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19790, 841.65997, -2959.88989, 6.52000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19124, 833.37000, -2956.08008, 11.72000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(967, 833.41998, -2958.32007, 11.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3749, 833.38000, -2959.87988, 17.01000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(967, 833.41998, -2959.86011, 11.00000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19790, 841.65997, -2959.88989, 6.52000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3330, 833.29999, -2959.87988, 0.82000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19790, 825.08002, -2959.88989, 6.52000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19124, 833.37000, -2962.12012, 11.52000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3330, 833.29999, -2959.87988, 0.82000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19790, 825.08002, -2959.88989, 6.52000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19124, 833.37000, -2962.12012, 11.52000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19966, 840.01001, -2976.15991, 10.66000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19966, 840.01001, -2976.15991, 10.66000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(6230, 774.25000, -2992.23999, -7.36000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(3615, 869.03003, -3002.29004, 5.13000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(642, 888.35999, -3000.88989, 4.40000,   0.00000, 15.00000, 54.93000);
	CreateDynamicObject(642, 789.65997, -3002.05005, 4.32000,   0.00000, 15.00000, 0.00000);
	CreateDynamicObject(642, 789.65997, -3002.05005, 4.32000,   0.00000, 15.00000, 0.00000);
	CreateDynamicObject(712, 845.15002, -3010.76001, 13.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(712, 821.69000, -3010.61011, 13.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3615, 775.40997, -3002.80005, 5.19000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(712, 845.15002, -3010.76001, 13.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(712, 821.69000, -3010.61011, 13.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(647, 868.51001, -3029.00000, 6.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 849.51001, -3031.79004, 3.62000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 818.84003, -3031.62012, 3.62000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(712, 871.90997, -3030.86011, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(647, 789.15997, -3028.52002, 6.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 845.21997, -3034.80005, 8.41000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(712, 793.53998, -3030.79004, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(647, 868.51001, -3029.00000, 6.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 818.84003, -3031.62012, 3.62000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(647, 789.15997, -3028.52002, 6.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 845.21997, -3034.80005, 8.41000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(712, 793.53998, -3030.79004, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(1297, 808.92999, -3034.80005, 8.41000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1297, 881.50000, -3034.80005, 8.41000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1297, 808.92999, -3034.80005, 8.41000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1297, 881.50000, -3034.80005, 8.41000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(647, 761.28003, -3028.97998, 6.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 768.92999, -3031.64990, 3.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 772.63000, -3034.80005, 8.41000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(620, 898.57001, -3032.35010, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(647, 761.28003, -3028.97998, 6.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 768.92999, -3031.64990, 3.56000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 772.63000, -3034.80005, 8.41000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(642, 709.73999, -3006.09009, 4.02000,   0.00000, 15.00000, 277.04999);
	CreateDynamicObject(642, 709.73999, -3006.09009, 4.02000,   0.00000, 15.00000, 277.04999);
	CreateDynamicObject(712, 738.53003, -3030.52002, 14.43000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3485, 836.03998, -3067.68994, 12.01000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 895.15002, -3056.32007, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3483, 805.90997, -3067.67993, 11.99000,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(712, 898.84003, -3055.87012, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(3486, 866.37000, -3067.69995, 11.99000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3598, 731.40997, -3046.39990, 7.20000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1297, 895.15002, -3056.32007, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3486, 773.64001, -3065.67993, 11.99000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1297, 742.83002, -3056.32007, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 742.83002, -3056.32007, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(620, 740.78998, -3062.88989, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(3604, 796.38000, -3093.15991, 7.56000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3920, 881.90997, -3090.66992, 5.92000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3920, 881.90997, -3090.66992, 5.92000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(620, 898.67999, -3086.87012, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(8673, 881.42999, -3094.83008, 5.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3483, 773.65002, -3095.96997, 11.99000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1297, 895.15002, -3092.61011, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 898.67999, -3086.87012, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(8673, 881.42999, -3094.83008, 5.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1297, 895.15002, -3092.61011, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3614, 725.46997, -3075.94995, 0.63000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1597, 865.62000, -3102.42993, 7.61000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 866.71997, -3101.72998, -1.91000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3920, 857.75000, -3104.23999, 12.58000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3920, 881.90997, -3098.94995, 5.92000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(6230, 700.27002, -3057.98999, -7.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1597, 865.62000, -3102.42993, 7.61000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 866.71997, -3101.72998, -1.91000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3920, 857.75000, -3104.23999, 12.58000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3920, 881.90997, -3098.94995, 5.92000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(6230, 700.27002, -3057.98999, -7.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(712, 739.51001, -3088.87988, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(2001, 859.28003, -3107.73999, 5.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3607, 845.79999, -3109.68994, 11.05000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1297, 742.83002, -3092.61011, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3471, 880.90002, -3106.32007, 6.27000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1886, 858.98999, -3111.79004, 8.76000,   10.00000, 0.00000, 103.36000);
	CreateDynamicObject(2001, 859.28003, -3107.73999, 5.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 742.83002, -3092.61011, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3471, 880.90002, -3106.32007, 6.27000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1886, 858.98999, -3111.79004, 8.76000,   10.00000, 0.00000, 103.36000);
	CreateDynamicObject(748, 899.65997, -3102.14990, 5.13000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 859.28003, -3113.67993, 5.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3920, 857.75000, -3117.06006, 12.58000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(748, 899.65997, -3102.14990, 5.13000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 859.28003, -3113.67993, 5.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3920, 857.75000, -3117.06006, 12.58000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3765, 734.29999, -3098.48999, 3.09000,   0.00000, 0.00000, 239.87000);
	CreateDynamicObject(1597, 866.08002, -3118.92993, 7.61000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3471, 880.90002, -3115.90991, 6.27000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(620, 866.52002, -3119.31006, -2.13000,   0.00000, 0.00000, 36.21000);
	CreateDynamicObject(1597, 866.08002, -3118.92993, 7.61000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3471, 880.90002, -3115.90991, 6.27000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(620, 866.52002, -3119.31006, -2.13000,   0.00000, 0.00000, 36.21000);
	CreateDynamicObject(712, 898.84003, -3114.98999, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(3920, 881.90997, -3123.27002, 5.92000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(712, 898.84003, -3114.98999, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(3920, 881.90997, -3123.27002, 5.92000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3485, 773.64001, -3126.26001, 11.99000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(8673, 881.42999, -3126.95996, 5.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3462, 875.06000, -3131.96997, 7.58000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3515, 875.04999, -3131.98999, 5.72000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(8673, 881.42999, -3126.95996, 5.36000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3462, 875.06000, -3131.96997, 7.58000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3515, 875.04999, -3131.98999, 5.72000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3920, 881.90997, -3131.07007, 5.92000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1297, 895.15002, -3128.87988, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(647, 737.46002, -3118.51001, 6.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3920, 881.90997, -3131.07007, 5.92000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1297, 895.15002, -3128.87988, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(647, 737.46002, -3118.51001, 6.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 739.53998, -3126.09009, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(1297, 742.83002, -3128.87988, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(620, 739.53998, -3126.09009, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(1297, 742.83002, -3128.87988, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3483, 836.15002, -3154.53003, 11.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(647, 899.34998, -3142.64990, 6.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(647, 899.34998, -3142.64990, 6.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3485, 805.87000, -3154.55005, 11.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3486, 866.32001, -3154.52002, 11.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 898.28998, -3151.41992, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 898.28998, -3151.41992, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(3483, 773.64001, -3156.51001, 11.99000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1297, 895.15002, -3165.16992, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 895.15002, -3165.16992, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(712, 739.09998, -3158.58008, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(1297, 742.83002, -3165.16992, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(712, 739.09998, -3158.58008, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(1297, 742.83002, -3165.16992, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 841.17999, -3186.97998, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1297, 808.65002, -3186.97998, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1297, 841.17999, -3186.97998, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1297, 808.65002, -3186.97998, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1297, 877.46002, -3186.97998, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1297, 877.46002, -3186.97998, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1297, 768.58002, -3186.97998, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1297, 768.58002, -3186.97998, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(712, 898.12000, -3189.23999, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 898.12000, -3189.23999, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(1297, 895.15002, -3196.32007, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 895.15002, -3196.32007, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3485, 836.03998, -3207.46997, 12.01000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3483, 805.90997, -3207.47998, 11.99000,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(3486, 866.37000, -3207.45996, 11.99000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3486, 773.64001, -3205.48999, 11.99000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1297, 742.83002, -3196.32007, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 742.83002, -3196.32007, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(620, 737.35999, -3204.23999, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(3483, 773.65002, -3235.79004, 11.99000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(3608, 728.14001, -3223.37012, -3.58000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1297, 742.83002, -3232.61011, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 742.83002, -3232.61011, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(647, 738.34003, -3238.87012, 6.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(748, 626.73999, -3161.75000, 4.84000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(712, 738.15997, -3245.09009, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(19907, 577.84003, -3113.68994, 4.84000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(6230, 700.27002, -3254.55005, -7.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(6230, 700.27002, -3254.55005, -7.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3485, 773.64001, -3266.08008, 11.99000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(748, 738.45001, -3267.06006, 4.88000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 742.83002, -3268.87988, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(748, 738.45001, -3267.06006, 4.88000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 742.83002, -3268.87988, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3458, 812.44000, -3273.07007, 6.52000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3458, 812.44000, -3273.07007, 6.52000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 739.48999, -3286.04004, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(1297, 895.15002, -3232.61011, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 895.15002, -3232.61011, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3483, 773.64001, -3296.35010, 11.99000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(620, 899.87000, -3235.10010, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 899.87000, -3235.10010, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(3608, 728.78998, -3298.12012, -3.58000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3458, 855.96002, -3273.07007, 6.52000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3485, 805.87000, -3294.38989, 11.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3458, 855.96002, -3273.07007, 6.52000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 742.83002, -3305.16992, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1682, 580.21002, -3205.25000, 15.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 742.83002, -3305.16992, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1682, 580.21002, -3205.25000, 15.03000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(647, 900.53003, -3244.06006, 6.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3483, 836.15002, -3294.37012, 11.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(647, 900.53003, -3244.06006, 6.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19907, 577.84003, -3217.31006, 4.92000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 768.58002, -3327.05005, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1297, 895.15002, -3268.87988, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3486, 866.32001, -3294.35010, 11.99000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 768.58002, -3327.05005, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1297, 895.15002, -3268.87988, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(712, 739.20001, -3331.08008, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(647, 764.97998, -3331.91992, 6.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 804.89001, -3327.05005, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(712, 898.73999, -3272.93994, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(620, 793.83002, -3331.33008, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(647, 764.97998, -3331.91992, 6.11000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 804.89001, -3327.05005, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(712, 898.73999, -3272.93994, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(4832, 629.15002, -3309.82007, 18.55000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1297, 841.17999, -3327.05005, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(712, 841.66998, -3330.29004, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(1297, 841.17999, -3327.05005, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2946, 628.96997, -3322.27002, 4.87000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2946, 628.96997, -3322.27002, 4.87000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3664, 601.56000, -3303.56006, 11.66000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(748, 859.45001, -3331.29004, 4.88000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 895.15002, -3305.16992, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 877.46002, -3327.05005, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1297, 895.15002, -3305.16992, 8.41000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 877.46002, -3327.05005, 8.41000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(620, 900.15997, -3326.83008, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(9229, 865.71002, -3358.08008, -20.07000,   0.00000, 0.00000, 225.59000);
	CreateDynamicObject(620, 900.15997, -3326.83008, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 757.34998, -3479.00000, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 741.59998, -3479.09009, 3.62000,   0.00000, 0.00000, 303.94000);
	CreateDynamicObject(620, 757.34998, -3479.00000, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 741.59998, -3479.09009, 3.62000,   0.00000, 0.00000, 303.94000);
	CreateDynamicObject(620, 797.14001, -3489.76001, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 797.14001, -3489.76001, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(1297, 742.83002, -3501.28003, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 742.83002, -3501.28003, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(620, 834.19000, -3489.37012, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(748, 767.84998, -3506.64990, 4.83000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(712, 813.69000, -3499.46997, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(620, 834.19000, -3489.37012, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(748, 767.84998, -3506.64990, 4.83000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(712, 813.69000, -3499.46997, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(620, 867.53003, -3488.63989, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(712, 758.71002, -3520.30005, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(620, 867.53003, -3488.63989, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(712, 758.71002, -3520.30005, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 855.53003, -3499.07007, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 739.03998, -3521.19995, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 855.53003, -3499.07007, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 739.03998, -3521.19995, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(6230, 700.27002, -3523.51001, -7.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 742.83002, -3537.56006, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 742.83002, -3537.56006, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(620, 738.38000, -3551.95996, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 760.81000, -3553.20996, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 738.38000, -3551.95996, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 760.81000, -3553.20996, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(712, 779.72998, -3554.69995, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 779.72998, -3554.69995, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(1297, 780.07001, -3562.40991, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(620, 777.94000, -3563.35010, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(1297, 780.07001, -3562.40991, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(620, 777.94000, -3563.35010, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(1297, 742.83002, -3573.85010, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 742.83002, -3573.85010, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(712, 760.57001, -3581.77002, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(1297, 780.07001, -3581.60010, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(712, 739.35999, -3583.79004, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 760.57001, -3581.77002, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(1297, 780.07001, -3581.60010, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(712, 739.35999, -3583.79004, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 874.09003, -3546.39990, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 874.09003, -3546.39990, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(620, 777.98999, -3589.90991, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 777.98999, -3589.90991, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(748, 777.73999, -3594.35010, 5.26000,   0.00000, 0.00000, 76.86000);
	CreateDynamicObject(748, 777.73999, -3594.35010, 5.26000,   0.00000, 0.00000, 76.86000);
	CreateDynamicObject(19545, 787.28003, -3601.59009, 4.92000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19545, 787.28003, -3601.59009, 4.92000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1297, 742.83002, -3610.12988, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 742.83002, -3610.12988, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(712, 852.21002, -3587.18994, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 852.21002, -3587.18994, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(620, 777.85999, -3613.11011, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 777.85999, -3613.11011, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(8535, 809.04999, -3611.05005, 11.32000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1297, 780.07001, -3618.27002, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(620, 761.29999, -3621.21997, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 739.13000, -3621.96997, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(1297, 780.07001, -3618.27002, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(620, 761.29999, -3621.21997, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 739.13000, -3621.96997, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 885.72998, -3585.82007, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 885.72998, -3585.82007, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 853.85999, -3614.75000, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(1297, 780.07001, -3640.66992, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(620, 853.85999, -3614.75000, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(1297, 780.07001, -3640.66992, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(712, 759.96997, -3646.25000, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(1297, 742.83002, -3646.42993, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(712, 759.96997, -3646.25000, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(1297, 742.83002, -3646.42993, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(748, 778.17999, -3649.20996, 4.91000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 780.78003, -3649.28003, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(748, 778.17999, -3649.20996, 4.91000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 780.78003, -3649.28003, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(712, 738.51001, -3657.53003, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 738.51001, -3657.53003, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(19545, 787.28003, -3659.01001, 4.92000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19545, 787.28003, -3659.01001, 4.92000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(620, 781.21997, -3669.53003, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 781.21997, -3669.53003, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(1297, 742.83002, -3682.71997, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1297, 742.83002, -3682.71997, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(712, 875.46997, -3648.27002, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 765.77002, -3689.59009, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 875.46997, -3648.27002, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 765.77002, -3689.59009, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(6230, 700.27002, -3683.16992, -7.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(6230, 700.27002, -3683.16992, -7.36000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(748, 764.70001, -3698.72998, 4.84000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(748, 764.70001, -3698.72998, 4.84000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(620, 739.09998, -3704.21997, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 739.09998, -3704.21997, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 885.94000, -3668.87012, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(1297, 742.83002, -3719.00000, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(620, 885.94000, -3668.87012, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(1297, 742.83002, -3719.00000, 8.41000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(620, 762.42999, -3728.19995, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 762.42999, -3728.19995, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(712, 796.78998, -3734.54004, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 796.78998, -3734.54004, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 875.41998, -3704.38989, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 875.41998, -3704.38989, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 844.04999, -3734.57007, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(712, 844.04999, -3734.57007, 14.43000,   0.00000, 0.00000, 45.92000);
	CreateDynamicObject(620, 884.92999, -3735.73999, 3.62000,   0.00000, 0.00000, 321.28000);
	CreateDynamicObject(620, 884.92999, -3735.73999, 3.62000,   0.00000, 0.00000, 321.28000);
	// Estacionamiento
	CreateDynamicObject(7184, 1635.44177, -1833.20691, -40.54200,   0.00000, 0.00000, 90.50000);
	CreateDynamicObject(11327, 1719.15344, -1879.96045, -48.10490,   0.00000, 0.00000, -30.00000);
	CreateDynamicObject(11327, 1719.15344, -1879.96045, -43.91090,   0.00000, 0.00000, -30.00000);
	CreateDynamicObject(10671, 1678.68311, -1824.69714, -49.15850,   0.00000, 180.00000, 1.00000);
	CreateDynamicObject(10671, 1678.68311, -1824.91309, -45.43850,   0.00000, 180.00000, 1.00000);
	// Muelle LS
	CreateDynamicObject(5130, 2908.36011, -1032.56995, 7.57000,   0.00000, 0.00000, 135.08000);
	CreateDynamicObject(5130, 2920.32007, -1032.54004, 7.57000,   0.00000, 0.00000, 315.12000);
	CreateDynamicObject(9829, 2929.05005, -1029.16003, -60.72000,   0.00000, 0.00000, 180.00000);
	// Gasolineras que no explotan
	CreateDynamicObject(3465, 624.11469, 1677.65686, 7.41840,   0.00000, 0.00000, -55.00000);
	CreateDynamicObject(3465, 620.68042, 1682.42505, 7.41840,   0.00000, 0.00000, -55.00000);
	CreateDynamicObject(3465, 617.26184, 1687.40784, 7.41840,   0.00000, 0.00000, -55.00000);
	CreateDynamicObject(3465, 613.98590, 1692.60010, 7.41840,   0.00000, 0.00000, -55.00000);
	CreateDynamicObject(3465, 610.47894, 1697.42969, 7.41840,   0.00000, 0.00000, -55.00000);
	CreateDynamicObject(3465, 607.00958, 1702.02234, 7.41840,   0.00000, 0.00000, -55.00000);
	CreateDynamicObject(3465, 603.81177, 1707.27954, 7.41840,   0.00000, 0.00000, -55.00000);
	CreateDynamicObject(3465, -2410.80469, 970.85162, 45.73840,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, -2410.80469, 976.18750, 45.73840,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, -2410.80469, 981.52338, 45.73840,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, -1327.67065, 2685.78345, 50.70320,   0.00000, 0.00000, 84.00000);
	CreateDynamicObject(3465, -1328.30115, 2680.36523, 50.70320,   0.00000, 0.00000, 84.00000);
	CreateDynamicObject(3465, -1329.24146, 2675.02515, 50.70320,   0.00000, 0.00000, 84.00000);
	CreateDynamicObject(3465, -1329.72229, 2669.42847, 50.70320,   0.00000, 0.00000, 84.00000);
	CreateDynamicObject(3465, -1611.49487, -2720.44849, 49.17770,   0.00000, 0.00000, 53.00000);
	CreateDynamicObject(3465, -1608.10388, -2716.23560, 49.17770,   0.00000, 0.00000, 53.00000);
	CreateDynamicObject(3465, -1604.72058, -2711.54248, 49.17770,   0.00000, 0.00000, 53.00000);
	CreateDynamicObject(3465, -1601.37097, -2707.27783, 49.17770,   0.00000, 0.00000, 53.00000);
	CreateDynamicObject(3465, -2241.81885, -2562.13354, 32.31090,   0.00000, 0.00000, -25.00000);
	CreateDynamicObject(3465, -2246.73853, -2559.76904, 32.31090,   0.00000, 0.00000, -25.00000);
	CreateDynamicObject(3465, -1679.34534, 403.05856, 7.63320,   0.00000, 0.00000, -46.00000);
	CreateDynamicObject(3465, -1675.07605, 407.30511, 7.63320,   0.00000, 0.00000, -46.00000);
	CreateDynamicObject(3465, -1670.02673, 412.44339, 7.63320,   0.00000, 0.00000, -46.00000);
	CreateDynamicObject(3465, -1665.70520, 416.71310, 7.63320,   0.00000, 0.00000, -46.00000);
	CreateDynamicObject(3465, -1685.80835, 409.79269, 7.63320,   0.00000, 0.00000, -46.00000);
	CreateDynamicObject(3465, -1682.22742, 413.10684, 7.63320,   0.00000, 0.00000, -46.00000);
	CreateDynamicObject(3465, -1676.83447, 418.54181, 7.63320,   0.00000, 0.00000, -46.00000);
	CreateDynamicObject(3465, -1672.30542, 423.09863, 7.63320,   0.00000, 0.00000, -46.00000);
	CreateDynamicObject(3465, 1941.88416, -1774.94519, 13.98870,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, 1941.86865, -1778.07007, 13.98870,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, 1941.87537, -1768.07190, 13.98870,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, 1941.87537, -1770.93335, 13.98870,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, -92.25156, -1162.15027, 2.69760,   0.00000, 0.00000, -22.00000);
	CreateDynamicObject(3465, -97.00436, -1173.49390, 2.69760,   0.00000, 0.00000, -22.00000);
	CreateDynamicObject(3465, -85.34810, -1165.04297, 2.60810,   0.00000, 0.00000, -22.00000);
	CreateDynamicObject(3465, -89.94480, -1176.53931, 2.54810,   0.00000, 0.00000, -22.00000);
	CreateDynamicObject(3465, 998.43939, -937.60925, 42.60917,   0.00000, 0.00000, 278.39999);
	CreateDynamicObject(3465, 1002.52905, -936.99786, 42.60917,   0.00000, 0.00000, 278.39999);
	CreateDynamicObject(3465, 1005.40381, -936.60443, 42.60917,   0.00000, 0.00000, 278.39999);
	CreateDynamicObject(3465, 1009.30872, -936.05151, 42.60917,   0.00000, 0.00000, 278.39999);
	CreateDynamicObject(3465, 655.66412, -571.21088, 16.70030,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, 655.66412, -569.60162, 16.70030,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, 655.66412, -560.54688, 16.70030,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, 655.66412, -558.92969, 16.70030,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3465, 1380.63281, 460.27341, 20.62740,   0.00000, 0.00000, 65.40000);
	CreateDynamicObject(3465, 1378.96094, 461.03909, 20.62740,   0.00000, 0.00000, 65.40000);
	CreateDynamicObject(3465, 1383.39844, 459.07031, 20.62740,   0.00000, 0.00000, 65.40000);
	CreateDynamicObject(3465, 1385.07813, 458.29691, 20.62740,   0.00000, 0.00000, 65.40000);
	// Basurero
	CreateDynamicObject(973, -34.32000, -1590.60999, 3.07000,   0.00000, 1.00000, 56.00000);
	CreateDynamicObject(973, -16.78000, -1569.04004, 2.32000,   0.00000, 0.38000, 49.82000);
	CreateDynamicObject(973, -22.82000, -1576.17004, 2.52000,   0.00000, 2.00000, 49.82000);
	CreateDynamicObject(973, -28.83000, -1583.32996, 2.84000,   0.00000, 2.00000, 50.00000);
	CreateDynamicObject(973, -39.77000, -1598.10999, 3.01000,   0.00000, -1.70000, 52.00000);
	CreateDynamicObject(973, -45.98000, -1604.98999, 2.82000,   0.00000, -0.70000, 44.00000);
	CreateDynamicObject(973, -52.64000, -1611.43994, 2.90000,   0.00000, 1.68000, 44.00000);
	CreateDynamicObject(973, -59.42000, -1617.55005, 3.15000,   0.00000, 1.38000, 40.00000);
	CreateDynamicObject(973, -66.82000, -1623.22998, 3.33000,   0.00000, 1.00000, 35.00000);
	CreateDynamicObject(973, -74.78000, -1628.09998, 3.42000,   0.00000, 0.00000, 28.00000);
	CreateDynamicObject(973, -83.02000, -1632.21997, 3.41000,   0.00000, 0.00000, 25.00000);
	CreateDynamicObject(973, -91.70000, -1635.64001, 3.40000,   0.00000, 0.00000, 18.00000);
	CreateDynamicObject(973, -100.50000, -1637.81006, 3.40000,   0.00000, 0.00000, 10.00000);
	CreateDynamicObject(973, -109.79000, -1638.30005, 3.32000,   0.00000, -1.00000, -4.00000);
	CreateDynamicObject(973, -118.77000, -1639.72998, 3.14000,   0.00000, -1.14000, 22.00000);
	CreateDynamicObject(973, -127.28000, -1642.66003, 3.04000,   0.00000, 0.00000, 16.00000);
	CreateDynamicObject(973, -136.28999, -1644.42004, 2.96000,   0.00000, -0.88000, 6.00000);
	CreateDynamicObject(973, -145.50999, -1644.71997, 2.81000,   0.00000, -1.00000, -2.00000);
	CreateDynamicObject(973, -154.53999, -1644.25000, 2.49000,   0.00000, -3.00000, -4.00000);
	CreateDynamicObject(973, -163.69000, -1643.14001, 2.23000,   0.00000, 0.00000, -10.00000);
	CreateDynamicObject(973, -172.87000, -1641.83997, 2.46000,   0.00000, 2.74000, -6.00000);
	CreateDynamicObject(973, -182.05000, -1641.38000, 2.93000,   0.00000, 3.06000, 0.00000);
	CreateDynamicObject(973, -191.03000, -1642.96997, 3.18000,   0.00000, 0.00000, 20.00000);
	CreateDynamicObject(973, -199.32001, -1647.02002, 3.02000,   0.00000, -2.00000, 32.00000);
	CreateDynamicObject(973, -206.89000, -1652.21997, 2.53000,   0.00000, -4.00000, 37.00000);
	CreateDynamicObject(973, -214.27000, -1657.89001, 2.25000,   0.00000, 0.64000, 38.00000);
	CreateDynamicObject(973, -221.00000, -1664.17004, 2.31000,   0.00000, 0.00000, 48.00000);
	CreateDynamicObject(973, -227.08000, -1671.23999, 2.61000,   0.00000, 3.66000, 50.66000);
	CreateDynamicObject(973, -232.25999, -1678.90002, 2.71000,   0.00000, -2.48000, 61.34000);
	CreateDynamicObject(3173, -84.82000, -1546.98999, 1.55000,   0.00000, 0.00000, 315.37000);
	CreateDynamicObject(3256, -99.00000, -1549.29004, 1.59000,   0.00000, 0.00000, 45.01000);
	CreateDynamicObject(3722, -153.73000, -1618.77002, 6.73000,   1.00000, 0.00000, 89.74000);
	CreateDynamicObject(3722, -129.53999, -1491.40002, 6.62000,   0.00000, 0.00000, 317.47000);
	CreateDynamicObject(3722, -107.69000, -1500.95996, 6.62000,   0.00000, 0.00000, 48.75000);
	CreateDynamicObject(18245, -100.24000, -1531.45996, 12.77000,   0.00000, 0.00000, 44.74000);
	CreateDynamicObject(18246, -180.92000, -1564.80005, 7.43000,   0.00000, 0.00000, 228.41000);
	CreateDynamicObject(18247, -147.78999, -1550.91003, 7.65000,   0.00000, 0.00000, 23.00000);
	CreateDynamicObject(18255, -119.80000, -1619.31006, 2.46000,   0.00000, 0.00000, 278.22000);
	CreateDynamicObject(18255, -195.77000, -1596.28003, 3.56000,   0.00000, 0.00000, 208.28999);
	CreateDynamicObject(18255, -187.59000, -1549.28003, 5.00000,   0.00000, 0.00000, 317.79001);
	CreateDynamicObject(18255, -145.59000, -1503.89001, 5.00000,   0.00000, 0.00000, 317.79001);
	CreateDynamicObject(18255, -101.24000, -1501.30005, 2.22000,   0.00000, 0.00000, 229.48000);
	CreateDynamicObject(18364, -198.19000, -1527.04004, 5.21000,   0.00000, 0.00000, 3.08000);
	// Basura Ruta LS 1
	CreateDynamicObject(1440, 990.84741, -1811.63342, 13.73970,   0.00000, 0.00000, -18.00000);
	CreateDynamicObject(1440, 1548.82678, -1879.81689, 13.04970,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 2089.15845, -1908.32239, 13.01890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 2222.99683, -1793.54541, 13.02250,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 2114.73682, -1607.74756, 13.04050,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 1994.07983, -1681.35571, 13.01890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 1764.05286, -1724.79907, 13.01290,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 1735.89990, -1589.89050, 13.01150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 1390.03052, -1581.16235, 13.04290,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 1365.07581, -1155.36572, 23.32600,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 1097.29639, -1133.71887, 23.28210,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 1046.51038, -1304.19653, 13.00090,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 679.16858, -1311.95618, 13.13000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 483.67810, -1277.29492, 15.08710,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 345.50421, -1368.23193, 13.85350,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 197.35500, -1743.29724, 3.97610,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 390.40100, -1779.22290, 5.08000,   0.00000, 0.00000, 0.00000);
	// Basura Ruta LS 2
	CreateDynamicObject(1440, 188.68381, -1395.97620, 46.73960,   0.00000, 0.00000, 48.00000);
	CreateDynamicObject(1440, 353.90302, -1277.78601, 53.34900,   0.00000, 0.00000, 10.00000);
	CreateDynamicObject(1440, 686.07977, -1062.75330, 49.11730,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 871.39447, -868.63373, 76.94580,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 1081.20752, -778.00488, 107.41340,   0.00000, 0.00000, 8.00000);
	CreateDynamicObject(1440, 912.70129, -677.62421, 116.34180,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 808.19220, -788.32782, 68.25930,   14.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 266.58420, -1101.41675, 81.24170,   0.00000, 0.00000, 244.00000);
	CreateDynamicObject(1440, 343.53821, -1193.13696, 75.97880,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 554.65302, -1161.17566, 53.87030,   0.00000, 0.00000, -149.00000);
	CreateDynamicObject(1440, 322.69870, -1189.30542, 75.82280,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 175.10300, -1387.12061, 48.01200,   0.00000, 0.00000, 38.00000);
	CreateDynamicObject(1440, -78.50970, -1592.90540, 2.11320,   0.00000, 0.00000, 84.00000);
	// Basura Ruta LS 3
	CreateDynamicObject(1440, 263.63071, -1438.70276, 13.17330,   0.00000, 0.00000, 48.00000);
	CreateDynamicObject(1440, 721.18237, -1121.81775, 17.56860,   0.00000, 0.00000, 48.00000);
	CreateDynamicObject(1440, 1106.32288, -964.01251, 42.07460,   0.00000, 0.00000, 48.00000);
	CreateDynamicObject(1440, 1254.58521, -1106.22314, 24.82400,   0.00000, 0.00000, 88.00000);
	CreateDynamicObject(1440, 1188.38062, -1499.12134, 13.00090,   0.00000, 0.00000, 102.00000);
	CreateDynamicObject(1440, 1289.61438, -1837.60571, 13.01290,   0.00600, 0.00000, 109.00000);
	CreateDynamicObject(1440, 1045.23132, -1669.80908, 13.00090,   0.00000, 0.00000, 48.00000);
	CreateDynamicObject(1440, 932.43561, -1480.95093, 12.99010,   0.00000, 0.00000, -3.00000);
	CreateDynamicObject(1440, 478.30051, -1497.97485, 19.86620,   0.00000, 0.00000, 91.00000);
	CreateDynamicObject(1440, 655.27759, -1680.05017, 13.97360,   0.00000, 0.00000, 4.00000);
	CreateDynamicObject(1440, 802.75330, -1756.11914, 13.03090,   0.00000, 2.00000, 88.00000);
	CreateDynamicObject(1440, 108.20380, -1525.65234, 6.46600,   0.00000, -7.00000, 8.00000);
	// Basu Ruta SF
	CreateDynamicObject(1440, -346.30, -756.40, 29.59,   0.00, 0.00, 277.68);
	CreateDynamicObject(1440, -427.09, -433.97, 16.63,   0.00, 0.00, 333.35);
	CreateDynamicObject(1440, -916.01, -446.17, 28.50,   0.00, 0.00, 350.21);
	CreateDynamicObject(1440, -1904.68, -567.53, 24.26,   0.00, 0.00, 0.00);
	CreateDynamicObject(1440, -2245.15, -123.60, 34.83,   0.00, 0.00, 268.65);
	CreateDynamicObject(1440, -2246.00, 84.55, 34.74,   0.00, 0.00, 267.35);
	CreateDynamicObject(1440, -2167.08, 201.88, 34.72,   0.00, 0.00, 0.00);
	CreateDynamicObject(1440, -2033.41, 313.70, 34.67,   0.00, 0.00, 0.00);
	CreateDynamicObject(1440, -2013.50, 137.14, 27.09,   0.00, 0.00, 273.33);
	CreateDynamicObject(1440, -1812.96, -123.07, 5.08,   0.00, 0.00, 0.00);
	CreateDynamicObject(1440, -1824.87, -560.26, 15.88,   0.00, 0.00, 86.22);
	CreateDynamicObject(1440, -120.47, -1160.25, 2.04,   0.00, 0.00, 55.58);
	// Puerta Interior 35
	CreateDynamicObject(1498, -2171.10498, 639.93542, 1051.37500,   0.00000, 0.00000, 0.00000);
	// Ropero Interior
	CreateDynamicObject(2025, 257.64261, -38.93000, 1000.98792,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, 255.49550, -39.50740, 1001.92401,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2359, 256.10251, -39.48190, 1001.56708,   0.00000, 0.00000, 178.00000);
	CreateDynamicObject(351, 254.56380, -39.63610, 1001.43201,   -76.00000, 14.00000, -2.00000);
	CreateDynamicObject(353, 254.75520, -39.63850, 1001.89270,   -76.00000, 2.00000, -4.00000);
	CreateDynamicObject(349, 255.74760, -39.57610, 1002.35999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(343, 256.10129, -39.66560, 1002.78052,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(343, 256.04645, -39.60429, 1002.78833,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(355, 254.54449, -39.57610, 1002.32922,   -76.00000, 0.00000, 0.00000);
	CreateDynamicObject(2057, 255.50191, -39.53710, 1002.88989,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2061, 254.76669, -39.44990, 1003.01001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1578, 256.23309, -39.50210, 1001.81268,   0.00000, 0.00000, 0.00000);
	// Puerta Roperos
	CreateDynamicObject(1567, 1098.05005, -810.47998, 106.49000,   0.00000, 0.00000, 2.65000);
	CreateDynamicObject(1567, 150.70000, 1387.53003, 1087.34412,   0.00000, 0.00000, 360.00000);
	CreateDynamicObject(1567, -777.59003, 495.39999, 1367.50000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1567, 1470.80005, 564.15002, 999.95001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1567, 224.30000, 1248.09998, 1081.09998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1567, 232.30000, 1211.09998, 1083.40002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1567, 235.30000, 1031.90002, 1087.30005,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1567, 359.29999, 1418.59998, 1080.30005,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1567, 2575.69995, -1280.00000, 1064.40002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1567, 1271.09998, -823.13000, 1088.90002,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1567, 2315.50000, -1144.80005, 1053.30005,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1567, 234.09999, 1292.00000, 1081.19995,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1567, 413.04410, 2536.01221, 8.99820,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1567, 260.06711, 1292.31714, 1079.21216,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1567, -275.57169, 1446.54016, 1087.85925,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1567, 26.70460, 1414.08679, 1083.34595,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1567, 2270.70801, -1134.29236, 1049.84009,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1567, -2171.07568, 647.27271, 1056.53662,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1567, 309.76761, 1119.28174, 1082.87476,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1567, 2461.26465, -1699.55920, 1012.43323,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1567, 256.37079, 1243.34570, 1083.16345,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1567, 92.03550, 1332.07739, 1087.29541,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1567, -70.81540, 1357.09155, 1079.15247,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1567, 237.87579, 1082.24170, 1083.15466,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1567, 486.51981, 1413.51697, 1083.38245,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1567, 327.44629, 1487.80615, 1083.33765,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1567, 299.36938, 1470.88733, 1079.20544,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1567, 454.83481, 1406.17395, 1083.25122,   0.00000, 0.00000, 0.00000);
	// Mapeo LSPD
	CreateDynamicObject(348, 248.89000, 73.58000, 1002.78998,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(353, 249.39000, 73.19000, 1003.16998,   91.00000, 11.00000, -11.00000);
	CreateDynamicObject(1556, 251.77000, 76.80000, 1002.64001,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1556, 275.76001, 121.34000, 1003.60999,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2358, 248.82001, 73.15000, 1002.79999,   0.00000, 0.00000, 177.00000);
	CreateDynamicObject(2358, 249.58000, 73.14000, 1003.03003,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2358, 249.58000, 73.14000, 1002.79999,   0.00000, 0.00000, 188.00000);
	CreateDynamicObject(2358, 250.69000, 73.31000, 1002.79999,   0.00000, 0.00000, 229.00000);
	CreateDynamicObject(2359, 249.33000, 73.66000, 1002.84998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2634, 248.17999, 75.90000, 1003.81000,   0.00000, 180.00000, 270.00000);
	CreateDynamicObject(19142, 248.62000, 74.58000, 1002.81000,   0.00000, -91.00000, 0.00000);
	CreateDynamicObject(19142, 248.61000, 74.08000, 1002.82001,   76.00000, 0.00000, 353.00000);
	// Comisaria LSPD
	CreateDynamicObject(14782, 225.51601, 126.16480, 1010.21558,   0.00000, 0.00000, 89.00000);
	CreateDynamicObject(2035, 227.89140, 128.01180, 1010.48138,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2044, 226.93710, 128.00420, 1010.50140,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2359, 227.38721, 128.01970, 1011.08411,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2063, 227.58727, 127.98767, 1010.11499,   0.00000, 0.00000, 0.00000);
	// Muelle
	CreateDynamicObject(11495, 2962.97925, -1489.84595, 0.39120,   0.00000, 0.00000, 258.87180);
	CreateDynamicObject(11495, 2984.57788, -1494.15381, 0.39120,   0.00000, 0.00000, 258.87180);
	CreateDynamicObject(12990, 2995.21094, -1480.49316, 0.57305,   0.00000, 0.00000, 171.43089);
	CreateDynamicObject(12990, 2962.60767, -1474.08728, 0.57305,   0.00000, 0.00000, 171.43089);
	CreateDynamicObject(12990, 2978.61401, -1477.79834, 0.57305,   0.00000, 0.00000, 171.43089);
	// Hospital LS
	CreateObject(14597, 1156.699951, -1324.799927, -9.800000, 0.000000, 0.000000, 270.000000, 0.0); // 0
	CreateObject(14597, 1157.199951, -1351.069946, -9.800000, 0.000000, 0.000000, 90.000000, 0.0); // 0
	CreateDynamicObject(1997, 1159.199951, -1330.500000, -11.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1724, 1159.099976, -1327.800049, -11.800000, 0.000000, 0.000000, 270.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2994, 1154.199951, -1327.400024, -11.300000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1161.800049, -1329.900024, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(3440, 1156.099976, -1337.800049, -9.400000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(3440, 1158.599976, -1337.900024, -9.000000, 0.000000, 90.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(3440, 1158.000000, -1337.900024, -9.400000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2596, 1150.300049, -1328.599976, -8.900000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1162.199951, -1334.900024, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1738, 1150.800049, -1328.199951, -11.100000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1523, 1156.199951, -1337.900024, -11.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1162.500000, -1327.099976, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2596, 1164.800049, -1328.900024, -8.700000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1997, 1151.099976, -1334.800049, -11.800000, 0.000000, 0.000000, 179.990005, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1723, 1164.199951, -1329.099976, -11.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1164.900024, -1334.900024, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1997, 1149.099976, -1334.900024, -11.800000, 0.000000, 0.000000, 179.990005, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1808, 1153.800049, -1322.800049, -11.700000, 0.000000, 0.000000, 90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1165.500000, -1327.000000, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1723, 1148.000000, -1329.099976, -11.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2596, 1167.900024, -1328.900024, -8.700000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1997, 1147.000000, -1334.900024, -11.800000, 0.000000, 0.000000, 179.990005, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2596, 1162.099976, -1320.900024, -8.900000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1723, 1162.500000, -1321.300049, -11.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1168.400024, -1334.699951, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2828, 1146.900024, -1324.800049, -10.760000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1723, 1150.800049, -1321.400024, -11.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1150.300049, -1341.199951, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1724, 1154.300049, -1319.800049, -11.800000, 0.000000, 0.000000, 88.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2434, 1147.000000, -1325.000000, -11.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2813, 1146.400024, -1325.099976, -10.700000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1997, 1168.900024, -1329.900024, -11.800000, 0.000000, 0.000000, 343.989990, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2190, 1147.500000, -1323.400024, -10.700000, 0.000000, 0.000000, 270.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1168.500000, -1327.000000, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2596, 1144.199951, -1329.000000, -8.800000, 0.000000, 0.000000, 16.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1724, 1159.000000, -1319.199951, -11.800000, 0.000000, 0.000000, 216.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1164.599976, -1341.300049, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2435, 1147.170044, -1323.869995, -11.800000, 0.000000, 0.000000, 90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1997, 1144.900024, -1334.900024, -11.800000, 0.000000, 0.000000, 180.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2435, 1146.089966, -1325.000000, -11.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2435, 1147.170044, -1322.939941, -11.800000, 0.000000, 0.000000, 90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2190, 1147.500000, -1321.699951, -10.700000, 0.000000, 0.000000, 270.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1147.599976, -1341.000000, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2596, 1166.599976, -1320.900024, -8.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2435, 1145.199951, -1325.000000, -11.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2435, 1147.160034, -1322.010010, -11.800000, 0.000000, 0.000000, 90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2273, 1169.800049, -1324.900024, -9.800000, 0.000000, 0.000000, 272.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2251, 1143.400024, -1327.900024, -10.900000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2284, 1143.599976, -1326.599976, -10.700000, 0.000000, 0.000000, 88.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1167.099976, -1341.199951, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2435, 1147.160034, -1321.280029, -11.800000, 0.000000, 0.000000, 90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2289, 1153.900024, -1316.400024, -9.100000, 0.000000, 0.000000, 90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2739, 1167.699951, -1321.300049, -11.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14494, 1168.500000, -1321.500000, -10.200000, 0.000000, 0.000000, 176.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2742, 1168.199951, -1320.900024, -10.200000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1714, 1145.800049, -1321.500000, -11.800000, 0.000000, 0.000000, 66.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2287, 1143.699951, -1323.800049, -10.600000, 0.000000, 0.000000, 88.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1162.000000, -1345.900024, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1145.099976, -1341.099976, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1723, 1154.500000, -1346.699951, -11.800000, 0.000000, 0.000000, 90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1169.560059, -1341.020020, -11.300000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2738, 1169.199951, -1321.199951, -11.200000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1150.599976, -1346.000000, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2186, 1143.599976, -1322.300049, -11.800000, 0.000000, 0.000000, 90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1164.500000, -1346.099976, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1723, 1159.500000, -1348.099976, -11.800000, 0.000000, 0.000000, 270.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1148.000000, -1346.099976, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2639, 1162.699951, -1348.099976, -11.200000, 0.000000, 0.000000, 180.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1167.199951, -1345.800049, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(630, 1154.599976, -1312.599976, -10.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1150.900024, -1349.199951, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(630, 1159.000000, -1312.400024, -10.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1145.000000, -1346.000000, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1997, 1165.699951, -1348.280029, -11.800000, 0.000000, 0.000000, 91.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1169.900024, -1345.699951, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2637, 1162.709961, -1349.800049, -11.400000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2946, 1158.500000, -1311.630005, -11.800000, 0.000000, 0.000000, 90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2946, 1155.319946, -1311.630005, -11.800000, 0.000000, 0.000000, 270.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1148.000000, -1349.099976, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1997, 1167.199951, -1348.599976, -11.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1886, 1170.329956, -1348.349976, -7.750000, 25.000000, 0.000000, -33.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1997, 1169.270020, -1348.510010, -11.800000, 0.000000, 0.000000, 84.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2603, 1145.199951, -1349.000000, -11.410000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14532, 1162.609985, -1354.619995, -10.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14532, 1150.400024, -1354.400024, -10.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2164, 1170.760010, -1351.560059, -11.800000, 0.000000, 0.000000, -90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14532, 1165.930054, -1354.630005, -10.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2878, 1160.069946, -1356.140015, -10.630000, 0.000000, 0.000000, -90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(14532, 1145.800049, -1354.400024, -10.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1714, 1168.109985, -1354.449951, -11.800000, 0.000000, 0.000000, 145.809998, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1971, 1170.699951, -1353.430054, -9.950000, 0.000000, 0.000000, -90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2066, 1170.810059, -1353.160034, -11.800000, 0.000000, 0.000000, 90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2066, 1170.449951, -1353.739990, -11.800000, 0.000000, 0.000000, -90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1210, 1169.229980, -1355.050049, -11.650000, 0.000000, 0.000000, 180.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1990, 1170.310059, -1354.540039, -11.800000, 0.000000, 0.000000, -90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1723, 1159.500000, -1359.099976, -11.800000, 0.000000, 0.000000, 270.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2635, 1157.099976, -1360.300049, -11.400000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1746, 1155.300049, -1360.900024, -11.800000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1724, 1158.900024, -1362.400024, -11.800000, 0.000000, 0.000000, 216.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1723, 1157.000000, -1363.099976, -11.800000, 0.000000, 0.000000, 180.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1444, 1181.169556, -1318.203613, 13.385829, 0.000000, 0.000000, 90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2774, 1181.010010, -1354.180054, 3.260000, 180.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(948, 1173.339966, -1354.729980, 13.200000, 0.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19003, 1172.060059, -1360.530029, 13.210000, 0.000000, 180.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1523, 1181.800049, -1359.430054, 13.200000, 0.000000, 0.000000, 268.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2356, 1173.599976, -1366.040039, 13.230000, 0.000000, 0.000000, 328.279999, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2000, 1173.270020, -1366.969971, 13.210000, 0.000000, 0.000000, 180.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2007, 1174.020020, -1366.959961, 13.210000, 0.000000, 0.000000, 180.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1523, 1181.800049, -1362.469971, 13.200000, 0.000000, 0.000000, 90.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2774, 1181.010010, -1367.660034, 3.260000, 180.000000, 0.000000, 0.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2002, 1179.930054, -1367.000000, 13.190000, 0.000000, 0.000000, 180.000000, -1, 6, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	// Vallas /arrestar
	CreateDynamicObject(994, 1556.47, -1691.42, 5.00,   0.00, 0.00, -90.00);
	CreateDynamicObject(994, 1564.66, -1691.42, 5.00,   0.00, 0.00, -90.00);
	//Tienda DP
	tmpobjid = CreateDynamicObject(19388, 1207.434692, -1561.095092, 14.216884, 0.000000, 0.000000, 48.799991, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(1502, 1206.824340, -1560.599487, 12.446872, 0.000000, 0.000000, -41.799976, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18996, "mattextures", "policeshieldgls", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1210.196044, -1562.128662, 11.536881, 0.000000, 0.000000, 89.999992, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1213.387573, -1562.128662, 11.536881, 0.000000, 0.000000, 89.999992, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1216.587768, -1562.128662, 11.536881, 0.000000, 0.000000, 89.999992, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1212.934814, -1562.127441, 13.469095, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1219.776855, -1562.128662, 11.536881, 0.000000, 0.000000, 89.999992, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1217.255126, -1562.127441, 13.469095, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1219.776855, -1562.128662, 11.536881, 0.000000, 0.000000, 89.999992, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1221.794433, -1562.127441, 13.469095, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19375, 1217.039916, -1557.226440, 12.470505, 0.000000, -90.000053, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19375, 1217.039916, -1557.336547, 15.930516, 0.000000, -90.000053, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19375, 1217.039916, -1550.176391, 12.480505, -0.000000, -90.000053, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19375, 1217.039916, -1550.187622, 15.940508, -0.000000, -90.000053, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1206.267700, -1558.506103, 11.536881, 0.000000, 0.000000, -179.999938, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1206.264282, -1555.647705, 13.469095, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1206.267700, -1555.304321, 11.536881, 0.000000, 0.000000, -179.999938, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1206.267700, -1552.104125, 11.536881, 0.000000, 0.000000, -179.999938, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1206.267700, -1548.894409, 11.536881, 0.000000, 0.000000, -179.999938, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1206.264282, -1550.777587, 13.469095, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1206.257690, -1547.062377, 11.536881, 0.000000, 0.000000, -179.999938, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1206.264282, -1545.877197, 13.469095, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19375, 1211.459350, -1550.196899, 15.910508, -0.000000, -90.000053, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19375, 1211.559570, -1550.187744, 12.470500, -0.000000, -90.000053, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19375, 1211.459350, -1557.327026, 15.960509, -0.000000, -90.000053, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19375, 1211.449340, -1557.377075, 12.490506, -0.000000, -90.000053, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1208.345947, -1545.476562, 11.536881, 0.000000, 0.000000, 89.999992, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1210.414306, -1545.476806, 13.469095, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1212.476440, -1545.476562, 11.536881, 0.000000, 0.000000, 89.999992, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1214.615722, -1545.466796, 13.469095, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1216.687744, -1545.476562, 11.536881, 0.000000, 0.000000, 89.999992, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1218.297363, -1545.466796, 13.469095, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1220.246459, -1545.476562, 11.536881, 0.000000, 0.000000, 89.999992, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1221.787475, -1545.466796, 13.469095, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1222.207763, -1547.573974, 11.536881, 0.000000, 0.000000, -179.999938, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1222.197875, -1550.636718, 13.469095, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1222.207763, -1550.774658, 11.536881, 0.000000, 0.000000, -179.999938, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1222.207763, -1553.974731, 11.536881, 0.000000, 0.000000, -179.999938, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1222.207763, -1557.184936, 11.536881, 0.000000, 0.000000, -179.999938, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(19388, 1222.217773, -1560.014282, 11.536881, 0.000000, 0.000000, -179.999938, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3603, "bevmans01_la", "aamanbev8x", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1222.227905, -1554.786132, 13.469095, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1222.227905, -1558.456909, 13.469095, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19329, 1207.357055, -1561.138793, 15.376876, 0.000000, 0.000000, -41.199970, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "None", 10, "Ariel", 20, 0, 0x00000000, 0x00000001, 0);
	tmpobjid = CreateDynamicObject(19329, 1207.525512, -1561.326171, 15.236873, 0.000000, 0.000000, -41.199970, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "{FF0000}Tienda RZ", 40, "Fixedsys", 20, 0, 0x00000000, 0x00000000, 0);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	tmpobjid = CreateDynamicObject(1649, 1210.766845, -1562.132690, 14.296881, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1215.107421, -1562.132690, 14.296881, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1219.478393, -1562.132690, 14.296881, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1210.766845, -1562.132690, 14.296881, 0.000000, 0.000000, 179.799774, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1215.136596, -1562.147705, 14.296881, 0.000000, 0.000000, 179.799774, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1219.206054, -1562.161865, 14.296881, 0.000000, 0.000000, 179.799774, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1206.237548, -1557.930664, 14.286882, 0.000000, 0.000000, -90.000007, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1206.237548, -1553.020019, 14.286882, 0.000000, 0.000000, -90.000007, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1206.237548, -1548.149780, 14.286882, 0.000000, 0.000000, -90.000007, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1206.307617, -1557.930541, 14.286882, 0.000000, 0.000000, 90.300048, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1206.284790, -1553.359863, 14.286882, 0.000000, 0.000000, 90.300048, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1206.259277, -1548.429199, 14.286882, 0.000000, 0.000000, 90.300048, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1208.644897, -1545.442016, 14.296881, 0.000000, 0.000000, -179.900238, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1212.684570, -1545.434326, 14.296881, 0.000000, 0.000000, -179.900238, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1216.513427, -1545.427490, 14.296881, 0.000000, 0.000000, -179.900238, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1220.014770, -1545.422485, 14.296881, 0.000000, 0.000000, -179.900238, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1222.197021, -1548.055053, 14.286882, 0.000000, 0.000000, 90.300048, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1222.221923, -1552.845825, 14.286882, 0.000000, 0.000000, 89.700057, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1222.202026, -1556.545166, 14.286882, 0.000000, 0.000000, 89.700057, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1222.184204, -1560.216308, 14.286882, 0.000000, 0.000000, 89.700057, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1208.644897, -1545.522094, 14.296881, 0.000000, 0.000000, 0.099769, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1212.136230, -1545.516967, 14.296881, 0.000000, 0.000000, 0.099769, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1216.545898, -1545.508666, 14.296881, 0.000000, 0.000000, 0.099769, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1220.015869, -1545.503051, 14.296881, 0.000000, 0.000000, 0.099769, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1222.197021, -1548.055053, 14.286882, 0.000000, 0.000000, -89.999961, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1222.197021, -1552.814453, 14.286882, 0.000000, 0.000000, -89.999961, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1222.197021, -1556.515014, 14.286882, 0.000000, 0.000000, -89.999961, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1222.197021, -1560.395996, 14.286882, 0.000000, 0.000000, -89.999961, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 1210.739868, -1562.680419, 13.196882, 0.000000, 0.000000, -90.000030, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 1215.060302, -1562.680419, 13.196882, 0.000000, 0.000000, -90.000030, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 1219.530761, -1562.680419, 13.196882, 0.000000, 0.000000, -90.000030, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 1205.717773, -1557.994140, 13.216876, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 1205.717773, -1553.293945, 13.216876, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 1205.717773, -1548.374267, 13.216876, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(631, 1206.446777, -1560.861083, 13.396877, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(631, 1207.807128, -1562.191650, 13.396877, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2074, 1206.826171, -1561.763183, 15.636878, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3802, 1217.270019, -1563.248901, 14.929096, 0.000000, 0.000000, -87.700004, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3802, 1205.135253, -1550.760742, 14.946884, 0.000000, 0.000000, -178.499862, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(870, 1211.416992, -1542.841064, 12.826868, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(870, 1211.416992, -1526.068969, 12.826868, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(870, 1211.416992, -1529.729125, 12.826868, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(870, 1211.416992, -1539.490234, 12.826868, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 1208.978515, -1543.293701, 13.006877, 0.000000, 0.000000, -89.699996, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 1208.956787, -1539.123413, 13.006877, 0.000000, 0.000000, -89.699996, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 1208.935791, -1535.002929, 13.006877, 0.000000, 0.000000, -89.699996, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 1208.913818, -1530.842651, 13.006877, 0.000000, 0.000000, -89.699996, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 1208.903808, -1528.762207, 13.006877, 0.000000, 0.000000, -89.699996, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 1208.881713, -1524.612670, 13.006877, 0.000000, 0.000000, -89.699996, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3462, 1211.700317, -1534.402587, 13.966866, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(870, 1211.416992, -1536.459472, 12.826868, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(870, 1211.416992, -1532.619262, 12.826868, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 1214.999755, -1543.262207, 13.006877, 0.000000, 0.000000, -89.999992, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 1214.999755, -1539.132324, 13.006877, 0.000000, 0.000000, -89.999992, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 1214.999755, -1535.011718, 13.006877, 0.000000, 0.000000, -89.999992, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 1214.999755, -1530.911499, 13.006877, 0.000000, 0.000000, -89.999992, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 1214.999755, -1526.782470, 13.006877, 0.000000, 0.000000, -89.999992, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 1214.999755, -1524.702636, 13.006877, 0.000000, 0.000000, -89.999992, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19144, 1210.060424, -1534.385375, 12.816874, 45.900016, 0.000000, -88.500022, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1280, 1208.563720, -1529.516235, 12.916872, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1280, 1208.563720, -1539.567016, 12.916872, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1280, 1215.333129, -1539.625366, 12.876875, 0.000000, 0.000000, -179.099929, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1280, 1215.315429, -1529.584960, 12.876875, 0.000000, 0.000000, -179.099929, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 1212.020996, -1522.657104, 13.006877, 0.000000, 0.000000, 0.600000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1231, 1208.321044, -1523.259277, 13.646873, 0.000000, 0.000000, -90.100028, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1231, 1208.284545, -1544.410156, 13.646873, 0.000000, 0.000000, -90.100028, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2205, 1219.511840, -1549.230224, 12.566442, 0.000000, 0.000000, 137.600082, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1715, 1220.369506, -1547.218383, 12.522895, 0.000000, 0.000000, -41.800003, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1514, 1219.557373, -1549.274658, 13.586442, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2412, 1207.351074, -1559.952270, 12.576440, 0.000000, 0.000000, -39.399997, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2412, 1209.042846, -1561.342407, 12.576440, 0.000000, 0.000000, -39.399997, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2491, 1220.157348, -1549.930419, 12.536437, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2493, 1219.915405, -1550.415893, 13.476442, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2493, 1219.650024, -1550.130615, 13.476442, 0.000000, 0.000000, -89.599998, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2194, 1218.252685, -1548.347900, 13.756449, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(633, 1218.007324, -1546.757324, 13.476445, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(633, 1221.117431, -1550.647094, 13.476445, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19787, 1221.458251, -1546.036376, 14.446445, 0.000000, 0.000000, -43.199993, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19324, 1205.407226, -1555.631713, 13.156874, 0.000000, 0.000000, -89.800048, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2624, 1209.084838, -1549.054687, 14.146451, 0.000000, 0.000000, 91.900024, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2387, 1211.933349, -1546.387939, 12.566438, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2375, 1213.552490, -1546.082275, 12.566439, 0.000000, 0.000000, 0.299999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2698, 1207.364746, -1552.827514, 13.466442, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2460, 1221.589477, -1560.625976, 13.896449, 0.000000, 0.000000, -136.800155, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2368, 1221.528564, -1560.162475, 12.556445, 0.000000, 0.000000, -137.699935, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2586, 1221.703979, -1556.638183, 12.986441, 0.000000, 0.000000, -89.199996, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2577, 1215.064697, -1561.375610, 13.306447, 0.000000, 0.000000, -91.099990, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2964, 1217.662597, -1557.668945, 12.576446, 0.000000, 0.000000, -45.700000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2581, 1210.597778, -1561.733154, 13.626447, 0.000000, 0.000000, 178.100021, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1808, 1207.086547, -1555.621948, 12.576442, 0.000000, 0.000000, 89.900016, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1962, 1221.727050, -1554.801147, 13.176446, 0.000000, 0.000000, 90.399894, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1962, 1221.727050, -1554.801147, 14.206450, 0.000000, 0.000000, 90.399894, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1962, 1221.727050, -1554.801147, 15.246456, 0.000000, 0.000000, 90.399894, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2279, 1221.246582, -1558.456787, 14.366443, 0.000000, 0.000000, -89.799926, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2277, 1217.256469, -1561.135375, 14.156442, 0.000000, 0.000000, -178.600143, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2275, 1212.900146, -1561.137939, 14.094984, 0.000000, -0.499999, -179.700012, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2269, 1207.245605, -1555.637695, 14.586447, 0.000000, 0.000000, 90.599998, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1734, 1212.901489, -1554.931518, 16.106441, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(362, 1221.294921, -1560.703369, 14.446441, 0.000000, 0.000000, -134.400054, -1, -1, -1, 300.00, 300.00); 
	//Taller Tunning
	tmpobjid = CreateDynamicObject(7908, 2424.356445, -2122.289794, 21.310659, 0.000000, 0.000000, 269.860076, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "None", 10, "Ariel", 20, 0, 0x00000001, 0x00000001, 0);
	tmpobjid = CreateDynamicObject(7908, 2424.304199, -2123.831298, 20.330640, 0.000000, 0.000000, 269.860076, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "{FF0000}Tunning RZ", 40, "Fixedsys", 20, 0, 0x00000000, 0x00000000, 0);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	tmpobjid = CreateDynamicObject(1412, 2540.947021, -2115.024414, 13.773559, 0.000000, 0.000000, 89.909957, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1412, 2540.955810, -2120.272216, 13.773559, 0.000000, 0.000000, 89.909957, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3749, 2425.913574, -2089.475097, 18.130760, 0.000000, 0.000000, 90.174949, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(10281, 2421.556396, -2089.579589, 20.117040, 0.000000, 0.000000, 270.821136, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1294, 2422.772949, -2114.177490, 21.765020, 0.000000, 0.000000, 28.452159, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1294, 2422.850830, -2130.444335, 21.765020, 0.000000, 0.000000, -36.691719, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19905, 2446.852050, -2074.335693, 12.404540, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19905, 2483.479248, -2074.358642, 12.412360, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19905, 2520.577148, -2074.211425, 12.392259, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19905, 2512.935302, -2118.712646, 12.398262, 0.000000, 0.000000, 232.879821, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19905, 2442.994873, -2117.546386, 12.452210, 0.000000, 0.000000, 123.279533, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19905, 2477.598632, -2136.874755, 12.412360, 0.000000, 0.000000, 179.900070, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(18765, 2529.793212, -2131.293945, 10.395030, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3928, 2530.003662, -2131.324707, 12.897139, 0.000000, 0.000000, -89.760032, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3666, 2534.615478, -2126.467285, 12.992259, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3666, 2524.970947, -2126.479003, 12.992259, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3666, 2524.959960, -2136.122070, 12.992259, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3666, 2534.678222, -2136.142089, 12.992259, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1468, 2533.000488, -2121.634765, 13.676289, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1468, 2538.227050, -2121.630126, 13.676289, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1468, 2530.324462, -2119.040527, 13.676289, 0.000000, 0.000000, 269.727020, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1468, 2530.410400, -2113.867675, 13.676289, 0.000000, 0.000000, 269.727020, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1468, 2530.436279, -2108.677734, 13.676289, 0.000000, 0.000000, 269.727020, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1468, 2530.408691, -2103.552978, 13.676289, 0.000000, 0.000000, 269.727020, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(10281, 2477.593994, -2127.960693, 17.373069, 0.000000, 0.000000, 179.748489, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(10281, 2483.696533, -2083.291015, 17.373069, 0.000000, 0.000000, 0.039889, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1290, 2438.781005, -2096.211669, 17.161729, 0.000000, 0.000000, 296.058502, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1290, 2518.764892, -2097.885986, 17.161729, 0.000000, 0.000000, 243.665939, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1290, 2496.706054, -2130.328613, 18.352430, 0.000000, 0.000000, 219.514648, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1290, 2458.811523, -2129.634033, 18.352430, 0.000000, 0.000000, 142.004257, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 2517.618164, -2098.031250, 13.263819, 0.000000, 0.000000, 358.303100, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 2517.690917, -2095.830810, 13.263819, 0.000000, 0.000000, 358.303100, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 2439.555419, -2097.267089, 13.263819, 0.000000, 0.000000, 3.915790, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3660, 2477.445556, -2119.085449, 14.551630, 0.000000, 0.000000, 88.803726, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3660, 2477.747558, -2104.284423, 14.551630, 0.000000, 0.000000, 88.803726, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 2439.466064, -2095.817382, 13.263819, 0.000000, 0.000000, 3.915790, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19148, 2506.332763, -2113.917968, 16.628049, 0.000000, 0.000000, 57.180011, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19148, 2449.634765, -2112.822998, 16.625619, 0.000000, 0.000000, -55.620010, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1257, 2420.172119, -2074.169433, 13.560480, 0.000000, 0.000000, -0.720000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1568, 2421.231445, -2081.941162, 12.460769, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2433.440917, -2077.451171, 10.744543, 0.000000, 0.000000, 1.100000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2436.281982, -2072.795898, 12.574540, 0.000000, 0.000000, -132.599975, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2433.269775, -2067.447509, 12.604540, 0.000000, 0.000000, -90.100028, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19898, 2438.437744, -2073.119384, 12.624540, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19898, 2435.306884, -2079.270507, 12.624540, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19898, 2439.056152, -2079.270507, 12.624540, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19815, 2429.448730, -2070.295898, 14.026415, 0.000000, 0.000000, 90.100051, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19917, 2429.862060, -2079.403564, 12.606876, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1327, 2430.878173, -2067.980224, 12.617803, 0.000000, 90.899955, 3.699999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1327, 2430.449462, -2068.009765, 13.254637, 0.000000, 90.899955, 3.699999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2442.560546, -2077.277343, 10.744543, 0.000000, 0.000000, 1.100000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2454.445556, -2072.576660, 12.574540, 0.000000, 0.000000, -132.599975, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2442.310546, -2067.462646, 12.604540, 0.000000, 0.000000, -90.100028, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1327, 2439.774169, -2068.226562, 12.608619, 0.000000, 90.899955, 3.699999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19898, 2447.199707, -2073.119384, 12.624540, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19917, 2439.664794, -2075.542236, 12.606876, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2451.589843, -2077.103759, 10.744543, 0.000000, 0.000000, 1.100000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2451.342041, -2067.476806, 12.604540, 0.000000, 0.000000, -90.100028, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1327, 2453.811279, -2067.998535, 12.548393, 0.000000, 90.899955, 3.699999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19898, 2448.889892, -2078.981689, 12.624540, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2445.262939, -2072.808349, 12.574540, 0.000000, 0.000000, -132.599975, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2460.187744, -2076.938720, 10.744543, 0.000000, 0.000000, 1.100000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2459.993652, -2067.491943, 12.604540, 0.000000, 0.000000, -90.100028, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2462.764160, -2072.971435, 12.574540, 0.000000, 0.000000, -132.599975, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1327, 2462.406738, -2067.875244, 12.563612, 0.000000, 90.899955, 3.699999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19898, 2462.780273, -2078.981689, 12.624540, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2470.220947, -2077.290527, 10.744543, 0.000000, 0.000000, 0.400000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2478.762207, -2077.233154, 10.744543, 0.000000, 0.000000, 0.400000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2488.080810, -2077.167236, 10.744543, 0.000000, 0.000000, 0.400000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2497.010498, -2077.103759, 10.744543, 0.000000, 0.000000, 0.400000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2507.442138, -2077.029296, 10.744543, 0.000000, 0.000000, 0.400000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2516.212646, -2076.968750, 10.744543, 0.000000, 0.000000, 0.400000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2525.052734, -2076.907470, 10.744543, 0.000000, 0.000000, 0.400000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2533.963378, -2076.845458, 10.744543, 0.000000, 0.000000, 0.400000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2469.913085, -2067.509521, 12.604540, 0.000000, 0.000000, -90.100028, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2478.613769, -2067.524169, 12.604540, 0.000000, 0.000000, -90.100028, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2488.055419, -2067.538818, 12.604540, 0.000000, 0.000000, -90.100028, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2496.886962, -2067.553710, 12.604540, 0.000000, 0.000000, -90.100028, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2506.957275, -2067.571044, 12.604540, 0.000000, 0.000000, -90.100028, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2516.148681, -2067.584960, 12.604540, 0.000000, 0.000000, -90.100028, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2524.900390, -2067.598632, 12.604540, 0.000000, 0.000000, -90.100028, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2533.829833, -2067.614746, 12.604540, 0.000000, 0.000000, -90.100028, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1290, 2478.253417, -2094.177734, 17.161729, 0.000000, 0.000000, -0.141508, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2473.017089, -2072.904296, 12.624538, 0.000000, 0.000000, -132.599975, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2481.487304, -2073.417236, 12.624538, 0.000000, 0.000000, -132.599975, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2490.920654, -2073.397949, 12.624538, 0.000000, 0.000000, -132.599975, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2499.684326, -2072.968261, 12.624538, 0.000000, 0.000000, -132.599975, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2510.210937, -2072.690429, 12.624538, 0.000000, 0.000000, -132.599975, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2519.199218, -2072.547363, 12.624538, 0.000000, 0.000000, -132.599975, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2527.903564, -2072.873535, 12.624538, 0.000000, 0.000000, -132.599975, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2536.763427, -2072.858154, 12.624538, 0.000000, 0.000000, -132.599975, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2464.261474, -2137.943359, 10.744543, 0.000000, 0.000000, 1.100000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2472.868652, -2137.780517, 10.744543, 0.000000, 0.000000, 1.100000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2482.127197, -2137.603271, 10.744543, 0.000000, 0.000000, 1.100000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2490.876220, -2137.434570, 10.744543, 0.000000, 0.000000, 1.100000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2449.004882, -2129.572265, 10.744543, 0.000000, 0.000000, -56.100017, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2444.112792, -2122.292480, 10.744543, 0.000000, 0.000000, -56.100017, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2439.094726, -2114.821777, 10.744543, 0.000000, 0.000000, -56.100017, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2433.962890, -2107.185058, 10.744543, 0.000000, 0.000000, -56.100017, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2505.855224, -2129.787353, 10.744543, 0.000000, 0.000000, 55.800037, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2510.988769, -2122.659912, 10.744543, 0.000000, 0.000000, 54.900043, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2516.486083, -2115.657470, 10.744543, 0.000000, 0.000000, 54.900043, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2521.552490, -2108.447509, 10.744543, 0.000000, 0.000000, 54.900043, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2492.340820, -2143.794921, 12.604540, 0.000000, 0.000000, 90.099945, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2482.319091, -2143.771972, 12.604540, 0.000000, 0.000000, 90.099945, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2472.998535, -2143.748291, 12.604540, 0.000000, 0.000000, 90.099945, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2464.448486, -2143.753906, 12.604540, 0.000000, 0.000000, 90.099945, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2444.775146, -2132.673583, 12.604540, 0.000000, 0.000000, 33.599945, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2439.816650, -2125.212158, 12.604540, 0.000000, 0.000000, 33.599945, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2434.895507, -2117.783447, 12.604540, 0.000000, 0.000000, 33.599945, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2429.803222, -2109.979003, 12.604540, 0.000000, 0.000000, 33.599945, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2510.629638, -2133.131103, 12.604540, 0.000000, 0.000000, 142.899978, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2515.913085, -2126.144775, 12.604540, 0.000000, 0.000000, 142.899978, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2521.275390, -2119.054687, 12.604540, 0.000000, 0.000000, 142.899978, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2526.633544, -2111.971923, 12.604540, 0.000000, 0.000000, 142.899978, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2514.757812, -2117.883056, 12.624538, 0.000000, 0.000000, 145.899856, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2519.890625, -2110.303222, 12.624538, 0.000000, 0.000000, 145.899856, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2509.781250, -2125.233642, 12.624538, 0.000000, 0.000000, 145.899856, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2504.746337, -2132.456298, 12.624538, 0.000000, 0.000000, 145.899856, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2488.243652, -2137.472412, 12.624538, 0.000000, 0.000000, 90.499900, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2479.384033, -2137.549316, 12.624538, 0.000000, 0.000000, 90.499900, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2470.121582, -2137.629150, 12.624538, 0.000000, 0.000000, 90.499900, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2461.310546, -2137.706542, 12.624538, 0.000000, 0.000000, 90.499900, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2447.853759, -2126.914550, 12.624538, 0.000000, 0.000000, 33.099891, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2443.101562, -2119.625732, 12.624538, 0.000000, 0.000000, 33.099891, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2438.099121, -2111.951660, 12.624538, 0.000000, 0.000000, 33.099891, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2432.921630, -2104.009521, 12.624538, 0.000000, 0.000000, 33.099891, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19817, 2535.753173, -2113.483398, 10.744543, 0.000000, 0.000000, -1.099957, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19903, 2530.862792, -2118.837402, 12.624538, 0.000000, 0.000000, -1.000141, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19899, 2539.438964, -2120.520263, 12.604540, 0.000000, 0.000000, 118.400169, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1327, 2536.443603, -2120.342529, 12.526321, 0.000000, 90.899955, 3.699999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1327, 2534.154052, -2120.289306, 12.562133, 0.000000, 90.899955, 3.699999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1327, 2531.852294, -2120.337646, 12.598260, 0.000000, 90.899955, 3.699999, -1, -1, -1, 300.00, 300.00); 
	//Base SAEM
	CreateObject(8168, -381.72092, 2708.36792, 63.74419,   -0.30000, -2.52000, 330.64987);
	CreateObject(3749, -394.69479, 2708.74341, 67.45882,   -0.42000, 1.56000, 50.50031);
	CreateObject(8210, -383.31305, 2677.32642, 65.36738,   0.00000, 0.00000, 304.42111);
	CreateObject(8210, -345.66885, 2637.63208, 65.36738,   0.00000, 0.00000, 322.79449);
	CreateObject(8210, -295.92035, 2620.43457, 65.36738,   0.00000, 0.00000, 359.44495);
	CreateObject(8210, -173.08723, 2622.65454, 65.36738,   0.00000, 0.00000, 0.88082);
	CreateObject(8210, -142.36365, 2672.32153, 64.54767,   0.48000, 2.76000, 91.00385);
	CreateObject(8210, -143.24620, 2728.05518, 63.30171,   -0.42000, -0.12000, 91.00385);
	CreateObject(8210, -163.43634, 2774.88501, 63.30171,   -0.42000, -0.12000, 136.06381);
	CreateObject(8210, -210.92607, 2796.86694, 63.41100,   -0.42000, -0.12000, 174.08998);
	CreateObject(8210, -262.57770, 2785.80811, 63.54523,   -0.42000, -0.12000, 209.46840);
	CreateObject(8210, -308.79947, 2755.13940, 63.54523,   -0.42000, -0.12000, 217.81708);
	CreateObject(8210, -354.54153, 2723.64307, 63.74523,   -0.42000, -0.12000, 211.20625);
	CreateObject(3749, -53.60677, 2637.60327, 68.29681,   -0.42000, -0.36000, 91.63379);
	CreateObject(8168, -146.23073, 2644.43066, 64.72365,   1.56000, -1.56000, 16.56172);
	CreateObject(3279, -148.15041, 2651.52490, 63.04570,   0.00000, 0.00000, 180.41382);
	CreateObject(3279, -209.35797, 2617.48901, 61.72645,   0.00000, 0.00000, 180.41382);
	CreateObject(3279, -363.84122, 2711.22119, 61.91347,   0.00000, 0.00000, 303.47156);
	CreateObject(3279, -263.07602, 2619.24341, 61.72645,   0.00000, 0.00000, 180.41382);
	CreateObject(9241, -161.17532, 2676.96460, 62.48956,   0.00000, 0.00000, 0.00000);
	CreateObject(9241, -161.32828, 2721.40479, 62.48956,   0.00000, 0.00000, 0.00000);
	CreateObject(3268, -207.93336, 2669.99512, 61.57781,   0.00000, 0.00000, 179.87328);
	CreateObject(3268, -223.33051, 2776.90137, 60.35965,   0.00000, 0.00000, 91.29057);
	CreateObject(3279, -170.13437, 2772.46509, 60.61655,   0.00000, 0.00000, 222.07892);
	CreateObject(11454, -285.35751, 2660.38794, 61.71885,   0.00000, 0.00000, 179.77383);
	CreateObject(3268, -285.32962, 2729.23853, 60.81324,   0.00000, 0.00000, 129.16841);
	CreateObject(16774, -226.50311, 2726.44263, 63.08926,   0.00000, 0.00000, -180.12013);
	CreateObject(3277, -295.30792, 2606.32349, 62.53634,   0.00000, 0.00000, 0.00000);
	CreateObject(16093, -204.02065, 2716.29810, 65.32734,   0.00000, 0.00000, 359.44763);
	CreateObject(19905, -231.93111, 2668.99805, 61.39420,   0.00000, 0.00000, 270.36771);
	CreateObject(3884, -295.20688, 2606.30615, 62.58118,   0.00000, 0.00000, -135.06000);
	CreateObject(8168, -229.64702, 2618.99463, 63.58593,   1.56000, -1.56000, 107.12704);
	CreateObject(966, -224.31323, 2618.61768, 61.73069,   -1.74000, 0.18001, 180.25867);
	CreateObject(968, -224.44469, 2618.57935, 62.40192,   0.00000, 0.00000, 358.39096);
	CreateObject(3066, -251.48683, 2618.53003, 62.72531,   0.00000, 0.00000, 92.58002);
	CreateObject(3565, -239.70779, 2618.88135, 63.16806,   0.00000, 0.00000, 0.00000);
	CreateObject(9241, -331.41638, 2674.05444, 63.23033,   0.00000, 0.00000, 0.00000);
	CreateObject(19447, -244.34457, 2720.45435, 63.01612,   0.00000, 0.00000, 0.00000);
	CreateObject(19447, -244.33530, 2730.07837, 63.01612,   0.00000, 0.00000, 0.00000);
	CreateObject(13011, -209.65437, 2710.97754, 62.12539,   0.00000, 0.00000, 359.29089);
	CreateObject(13011, -198.20633, 2720.43799, 62.15252,   0.00000, 0.00000, 179.26483);
	CreateObject(7090, -51.31374, 2637.86475, 70.18731,   0.00000, 0.00000, 0.00000);
	CreateObject(7091, -396.36945, 2710.53271, 69.48369,   0.00000, 0.00000, 141.49883);
	CreateObject(3268, -281.42731, 2680.49170, 61.17400,   0.00000, 0.00000, 270.00000);

	//Interior SAEM
	tmpobjid = CreateDynamicObject(19446, 1420.440063, -1603.380615, 513.276489, 0.000000, 0.000000, 89.899932, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1427.157348, -1603.394897, 513.276489, 0.000000, 0.000000, 89.899932, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1436.776977, -1603.412109, 513.276489, 0.000000, 0.000000, 89.899932, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1433.584716, -1598.533081, 513.276489, 0.000000, 0.000000, 179.699966, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1433.635009, -1588.913208, 513.276489, 0.000000, 0.000000, 179.699966, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1436.808593, -1584.340209, 513.276489, 0.000000, 0.000000, 89.899932, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1427.189208, -1584.321533, 513.276489, 0.000000, 0.000000, 89.899932, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1420.751953, -1584.307373, 513.276489, 0.000000, 0.000000, 89.899932, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1407.929077, -1584.287353, 513.276489, 0.000000, 0.000000, 89.899932, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1407.896606, -1603.362182, 513.276489, 0.000000, 0.000000, 89.899932, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1398.266723, -1603.355102, 513.276489, 0.000000, 0.000000, -89.899971, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1398.309204, -1584.269042, 513.276489, 0.000000, 0.000000, 89.899932, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1402.344238, -1588.811767, 513.276489, 0.000000, 0.000000, 179.699966, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1402.295288, -1598.442382, 513.276489, 0.000000, 0.000000, 179.699966, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1421.595581, -1600.802612, 511.569244, -89.599990, 0.799998, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1421.630981, -1586.820922, 511.666381, -89.599990, 0.799998, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1421.638916, -1598.791992, 512.575744, 0.000003, 0.799998, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1422.549316, -1600.784912, 511.569335, -89.599990, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1422.531005, -1586.855712, 511.666229, -89.599990, -0.200000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1421.661010, -1595.799438, 514.605041, -89.599990, -0.200000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1421.598876, -1588.860717, 512.576232, 0.000003, 0.799998, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1421.645019, -1591.228881, 514.636901, -89.599990, -0.200000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19329, 1422.204711, -1593.414550, 514.208496, 0.000000, 0.000000, 87.800056, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "{FF0000}SAEM", 20, "Fixedsys", 20, 0, 0x00000001, 0x00000000, 0);
	tmpobjid = CreateDynamicObject(18762, 1420.689453, -1586.858032, 511.666076, -89.599990, 0.799998, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1420.596435, -1600.787475, 511.569305, -89.599990, 0.799998, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(2631, 1433.908691, -1594.225219, 511.598358, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1426, "break_scaffold", "CJ_BLUE_WOOD", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1411.052978, -1600.810302, 512.058593, -90.299980, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1411.052978, -1595.858642, 512.032226, -90.299980, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1411.052978, -1590.886718, 512.005554, -90.299980, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1411.052978, -1585.934814, 511.979858, -90.299980, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1411.048583, -1584.869750, 512.723815, 0.000003, 0.799998, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1411.048583, -1602.820556, 512.723815, 0.000003, 0.799998, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1411.053100, -1600.807373, 514.859619, -89.899993, 0.000000, 0.599999, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1411.002319, -1595.878540, 514.867614, -89.899993, 0.000000, 0.599999, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1410.951293, -1591.029174, 514.876037, -89.899993, 0.000000, 0.599999, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1410.901855, -1586.239624, 514.884460, -89.899993, 0.000000, 0.599999, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1411.048583, -1597.229370, 512.723815, 0.000003, 0.799998, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 1411.048583, -1591.619140, 512.723815, 0.000003, 0.799998, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19396, 1414.335815, -1584.292724, 513.281311, 0.000000, 0.000000, -90.299934, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(1502, 1413.603759, -1584.318481, 511.527160, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18996, "mattextures", "policeshieldgls", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1412.653442, -1579.404174, 513.276489, 0.000000, 0.000000, 179.699966, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1417.548706, -1574.701538, 513.276489, 0.000000, 0.000000, 89.899932, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1421.013427, -1579.447021, 513.276489, 0.000000, 0.000000, 179.699966, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19396, 1414.235595, -1603.373168, 513.281311, 0.000000, 0.000000, -90.099937, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(1502, 1413.493652, -1603.399291, 511.527160, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18996, "mattextures", "policeshieldgls", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1409.273925, -1608.236816, 513.276489, 0.000000, 0.000000, 179.699966, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1419.603271, -1608.291259, 513.276489, 0.000000, 0.000000, 179.699966, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1414.691162, -1613.006713, 513.276489, 0.000000, 0.000000, 89.899932, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19446, 1405.070556, -1612.989379, 513.276489, 0.000000, 0.000000, 89.899932, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19329, 1414.688720, -1584.383300, 514.208496, 0.000000, 0.000000, -0.399938, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "{FF0000}Vestuario", 40, "Fixedsys", 20, 0, 0x00000001, 0x00000000, 0);
	tmpobjid = CreateDynamicObject(19329, 1413.946533, -1603.278686, 514.208496, 0.000000, 0.000000, -0.399938, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "{FF0000}Reuniones", 40, "Fixedsys", 20, 0, 0x00000001, 0x00000000, 0);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	tmpobjid = CreateDynamicObject(19379, 1415.820190, -1579.454467, 511.504516, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19379, 1428.452636, -1589.042114, 511.526763, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19379, 1428.452636, -1598.663208, 511.526763, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19379, 1417.960815, -1598.663208, 511.508270, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19379, 1417.960815, -1589.033813, 511.508270, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19379, 1407.467529, -1598.663208, 511.489959, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19379, 1407.467529, -1589.033813, 511.480163, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19379, 1428.447143, -1598.663208, 514.956848, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19379, 1428.447143, -1589.042114, 514.957275, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19379, 1417.954956, -1589.033813, 514.938354, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19379, 1417.955688, -1598.663208, 514.938964, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19379, 1407.461547, -1598.663208, 514.929870, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19379, 1407.462158, -1589.033813, 514.930786, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1569, 1433.497314, -1592.762695, 511.619812, 0.000000, 0.000000, -90.199943, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1569, 1433.494140, -1595.742797, 511.619812, 0.000000, 0.000000, 90.100013, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19603, 1421.822265, -1600.934936, 512.837402, -93.700057, 89.700065, -1.299998, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19603, 1421.401611, -1600.947998, 512.838745, -93.700057, 89.700065, -1.299998, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1421.236938, -1601.215087, 513.301147, 0.000000, 0.000000, -88.800041, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1422.032348, -1586.286254, 513.301147, 0.000000, 0.000000, 90.100028, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19603, 1421.932250, -1586.402343, 513.950622, -93.700057, 89.700065, -1.299998, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19603, 1421.471801, -1586.395751, 513.950622, -93.700057, 89.700065, -1.299998, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1649, 1421.251586, -1586.298828, 513.301147, 0.000000, 0.000000, -91.499946, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1723, 1432.168212, -1602.712402, 511.612670, 0.000000, 0.000000, -179.599838, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1723, 1426.380004, -1602.688842, 511.612670, 0.000000, 0.000000, 179.500091, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1723, 1430.359741, -1585.010498, 511.594268, 0.000000, 0.000000, -0.699998, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1723, 1424.499023, -1584.938964, 511.594268, 0.000000, 0.000000, -0.699998, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2315, 1427.535766, -1602.912109, 511.614501, 0.000000, 0.000000, -1.100000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2315, 1427.680053, -1584.968627, 511.614501, 0.000000, 0.000000, -0.299998, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 1422.512573, -1601.267822, 512.389099, 0.000000, 0.000000, -0.300000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 1422.588623, -1586.486572, 512.479187, 0.000000, 0.000000, -0.300000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 1432.998168, -1599.223022, 512.274230, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 1432.998168, -1589.320312, 512.274230, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 1420.641845, -1601.259033, 512.389099, 0.000000, 0.000000, -0.300000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 1420.757080, -1586.478393, 512.479187, 0.000000, 0.000000, -0.300000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(950, 1432.875122, -1592.575683, 512.155456, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(950, 1432.875122, -1596.036376, 512.155456, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1231, 1422.670410, -1588.676025, 509.764221, 0.000000, 0.000000, 88.699966, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1231, 1422.434692, -1599.083618, 509.704162, 0.000000, 0.000000, 88.699966, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1231, 1420.584472, -1599.041137, 509.704162, 0.000000, 0.000000, 88.699966, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1231, 1420.691162, -1588.631225, 509.764221, 0.000000, 0.000000, 88.699966, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19379, 1415.814453, -1579.454467, 514.924804, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 1413.656127, -1591.713500, 512.040222, 0.000000, 0.000000, -0.599999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 1413.627929, -1597.213745, 512.040222, 0.000000, 0.000000, -0.599999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19994, 1417.584228, -1602.893066, 511.573333, 0.000000, 0.000000, -179.699920, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19994, 1416.384399, -1602.897949, 511.573333, 0.000000, 0.000000, -179.699920, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19994, 1416.878417, -1585.003784, 511.592590, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19994, 1418.239990, -1585.003784, 511.592590, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1671, 1408.733276, -1594.201660, 512.003601, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1671, 1408.733276, -1588.499633, 512.003601, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1671, 1408.733276, -1599.949340, 511.983642, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2605, 1403.708618, -1593.450927, 511.913635, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2605, 1403.708618, -1596.740722, 511.913635, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2605, 1403.708618, -1600.680786, 511.913635, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2172, 1403.239501, -1588.267089, 511.473754, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19379, 1414.410888, -1608.263183, 511.502136, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19379, 1414.405273, -1608.263183, 514.932312, 0.000000, -90.100028, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(11729, 1413.161987, -1575.073120, 511.528717, 0.000000, 0.000000, -1.099999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(11729, 1413.962158, -1575.088745, 511.528717, 0.000000, 0.000000, -1.099999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(11729, 1414.812011, -1575.104736, 511.528717, 0.000000, 0.000000, -1.099999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(11729, 1415.611450, -1575.120239, 511.528717, 0.000000, 0.000000, -1.099999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(11729, 1416.401733, -1575.135498, 511.528717, 0.000000, 0.000000, -1.099999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(11729, 1417.262207, -1575.153198, 511.528717, 0.000000, 0.000000, -1.099999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(11730, 1418.076904, -1575.134887, 511.521575, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3397, 1420.398559, -1579.799072, 511.550903, 0.000000, 0.000000, 0.100007, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(11729, 1418.961547, -1575.185424, 511.528717, 0.000000, 0.000000, -1.099999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(11729, 1419.851562, -1575.203002, 511.528717, 0.000000, 0.000000, -1.099999, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2606, 1416.556518, -1574.848632, 514.041198, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2737, 1420.868530, -1579.924804, 513.707641, 0.000000, 0.000000, -90.799995, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2509, 1420.907958, -1582.841308, 513.273559, 0.000000, 0.000000, -90.200065, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2509, 1420.929809, -1576.671508, 513.273559, 0.000000, 0.000000, -90.200065, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2509, 1412.760253, -1576.637084, 513.273559, 0.000000, 0.000000, 89.599914, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3391, 1413.266235, -1579.541381, 511.545227, 0.000000, 0.000000, 179.200012, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2509, 1412.718139, -1582.637084, 513.273559, 0.000000, 0.000000, 89.599914, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3386, 1418.005737, -1583.774902, 511.526672, 0.000000, 0.000000, -92.599990, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(353, 1420.855346, -1576.189331, 513.677246, 0.000000, -0.499999, -84.999977, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(351, 1420.863647, -1576.558593, 513.439697, 0.000000, 0.000000, -83.799987, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(348, 1420.836669, -1576.893310, 513.104370, 0.000000, 0.000000, -82.799980, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(355, 1420.941528, -1576.914428, 512.642395, 0.000000, 0.000000, 96.000068, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(373, 1420.755249, -1582.995483, 513.800231, -26.700000, -52.699993, 0.800002, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(373, 1420.696899, -1583.011962, 513.168518, -26.700000, -52.699993, 0.800002, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(11738, 1412.740478, -1582.663330, 513.761718, 0.000000, 0.000000, -90.400024, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(11738, 1412.740478, -1582.663330, 513.271728, 0.000000, 0.000000, -90.400024, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(11738, 1412.740478, -1582.663330, 512.771484, 0.000000, 0.000000, -90.400024, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1252, 1412.740112, -1576.597290, 513.753601, 0.000000, 0.000000, -89.899955, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1252, 1412.740112, -1576.597290, 513.003356, 0.000000, 0.000000, -89.899955, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2737, 1412.780029, -1579.493652, 513.707641, 0.000000, 0.000000, 89.900001, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19994, 1417.190307, -1607.698974, 511.573547, 0.000000, 0.000000, 0.800046, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19994, 1415.849975, -1607.717285, 511.573547, 0.000000, 0.000000, 0.800046, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19994, 1414.599731, -1607.734252, 511.573547, 0.000000, 0.000000, 0.800046, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19994, 1413.179565, -1607.753906, 511.573547, 0.000000, 0.000000, 0.800046, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19994, 1411.919433, -1607.770996, 511.573547, 0.000000, 0.000000, 0.800046, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19994, 1409.883056, -1611.466430, 511.573547, 0.000000, 0.000000, 90.700050, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19994, 1409.863891, -1609.885986, 511.573547, 0.000000, 0.000000, 90.700050, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19994, 1409.876953, -1608.465454, 511.573547, 0.000000, 0.000000, 90.700050, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19994, 1419.070800, -1608.718505, 511.573547, 0.000000, 0.000000, -89.399894, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19994, 1419.085693, -1610.148315, 511.573547, 0.000000, 0.000000, -89.399894, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19994, 1419.100341, -1611.547973, 511.573547, 0.000000, 0.000000, -89.399894, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2737, 1416.060180, -1612.862304, 513.277526, 0.000000, 0.000000, -179.800003, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2737, 1412.240112, -1612.875732, 513.277526, 0.000000, 0.000000, -179.800003, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 1417.165039, -1603.840576, 512.274230, 0.000000, 0.000000, 90.200004, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 1411.364868, -1603.860839, 512.274230, 0.000000, 0.000000, 90.200004, -1, -1, -1, 300.00, 300.00);
	//Objects////////////////////////////////////////////////////////////////////////////////////////////////////////
	tmpobjid = CreateObject(19377,1637.733,-2268.443,12.454,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_church_grass_alt", 0);
	tmpobjid = CreateObject(19377,1637.689,-2287.600,12.467,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1637.712,-2278.003,12.473,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1637.715,-2297.204,12.487,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1637.718,-2306.798,12.506,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_church_grass_alt", 0);
	tmpobjid = CreateObject(19377,1627.321,-2287.650,12.454,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1617.004,-2268.375,12.454,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1627.363,-2278.023,12.454,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1627.321,-2297.273,12.473,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1627.316,-2306.785,12.513,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1627.365,-2268.417,12.454,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1616.890,-2297.254,12.473,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1616.974,-2278.000,12.454,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1616.922,-2287.623,12.454,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1616.857,-2306.842,12.494,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1606.687,-2268.489,12.454,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1606.392,-2297.281,12.473,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1606.592,-2278.110,12.454,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1606.552,-2287.708,12.473,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1606.376,-2306.896,12.473,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1596.094,-2278.118,12.494,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1596.219,-2268.503,12.473,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_church_grass_alt", 0);
	tmpobjid = CreateObject(19377,1596.239,-2306.782,12.494,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1596.050,-2287.746,12.473,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	tmpobjid = CreateObject(19377,1596.145,-2297.311,12.494,0.000,90.000,0.000,300.000);
	SetObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0);
	//Mecanico objetos de la mesa
	CreateObject(1963, 95.95030, -161.89549, 1.96270,   0.00000, 0.00000, 0.00000);
	CreateObject(18644, 96.66400, -161.82210, 2.38520,   30.00000, 90.00000, 98.00000);
	CreateObject(1654, 95.00700, -162.08881, 2.45400,   236.00000, 84.00000, 55.00000);
	CreateObject(326, 95.57390, -162.04060, 2.45410,   62.00000, 91.00000, 18.00000);
	CreateObject(335, 95.68090, -161.78600, 2.38800,   84.00000, 76.00000, 11.00000);
	CreateObject(19602, 96.74560, -161.52180, 2.43430,   0.00000, 0.00000, 0.00000);
	CreateObject(355, 95.72180, -162.12340, 2.42010,   87.94300, 11.71530, -0.05550);
	CreateObject(1426, 118.10980, -148.59380, 0.64840,   3.14160, 0.00000, 1.57080);
	CreateObject(1426, 112.10980, -148.59380, 0.64840,   3.14160, 0.00000, 1.57080);
	CreateObject(1426, 107.60980, -148.59380, 0.64840,   3.14160, 0.00000, 1.57080);
	CreateObject(1449, 112.36720, -149.78909, 1.06250,   3.14160, 0.00000, 1.57080);
	CreateObject(1449, 117.86720, -149.78909, 1.06250,   2.48760, 0.98100, 1.57080);
	CreateObject(1685, 115.07110, -148.35870, 1.32660,   0.00000, 0.00000, 0.00000);
	CreateObject(3594, 117.76680, -153.57539, 1.13590,   0.00000, 0.00000, 222.00000);
	CreateObject(3594, 104.14760, -152.39191, 1.81160,   0.00000, 0.00000, -215.00000);
	CreateObject(1438, 110.47530, -152.34160, 0.54690,   356.85840, 0.00000, -3.11540);
	CreateObject(3632, 108.68740, -151.68700, 1.33030,   0.00000, 0.00000, 0.00000);
	CreateObject(3632, 112.15330, -150.78191, 1.01890,   0.00000, 0.00000, 0.00000);
	CreateObject(3632, 115.15850, -150.28481, 1.01750,   0.00000, 0.00000, 0.00000);
	CreateObject(3632, 100.14030, -148.46310, 2.12370,   0.00000, 0.00000, 0.00000);
	CreateObject(3632, 101.02830, -148.46310, 2.12370,   0.00000, 0.00000, 0.00000);
	CreateObject(3632, 102.02730, -148.46310, 2.12370,   0.00000, 0.00000, 0.00000);
	CreateObject(3632, 102.91530, -148.46310, 2.12370,   0.00000, 0.00000, 0.00000);
	CreateObject(3632, 103.80330, -148.46310, 2.12370,   0.00000, 0.00000, 0.00000);
	CreateObject(3632, 104.69130, -148.46310, 2.12370,   0.00000, 0.00000, 0.00000);
	//Interior Mercado Negro
	tmpobjid = CreateDynamicObject(19379, 1312.512573, 11668.870117, 293.124908, 0.000000, 90.199974, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19379, 1323.002685, 11668.870117, 293.088287, 0.000000, 90.199974, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19379, 1323.002685, 11678.503906, 293.088287, 0.000000, 90.199974, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19379, 1312.512573, 11678.494140, 293.124969, 0.000000, 90.199974, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19445, 1312.130493, 11664.156250, 294.913940, 0.000000, 0.000000, -89.900016, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19445, 1321.750000, 11664.168945, 294.913940, 0.000000, 0.000000, -89.900016, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19445, 1331.351318, 11664.171875, 294.913940, 0.000000, 0.000000, -89.900016, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19445, 1312.099243, 11683.205078, 294.913940, 0.000000, 0.000000, -89.900016, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19445, 1321.690063, 11683.222656, 294.913940, 0.000000, 0.000000, -89.900016, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19445, 1331.299072, 11683.248046, 294.913940, 0.000000, 0.000000, -89.900016, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19445, 1328.142333, 11678.391601, 294.913940, 0.000000, 0.000000, 0.199984, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19445, 1328.176757, 11668.787109, 294.913940, 0.000000, 0.000000, 0.199984, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19445, 1307.452880, 11672.230468, 294.913940, 0.000000, 0.000000, 0.199984, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19384, 1307.471923, 11665.830078, 294.916381, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19445, 1307.419433, 11681.853515, 294.913940, 0.000000, 0.000000, 0.199984, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19379, 1312.525390, 11678.494140, 296.534606, 0.000000, 90.199974, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19379, 1323.024414, 11678.494140, 296.497894, 0.000000, 90.199974, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19379, 1323.024414, 11668.864257, 296.497894, 0.000000, 90.199974, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19379, 1312.534301, 11668.864257, 296.534790, 0.000000, 90.199974, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14581, "ab_mafiasuitea", "cof_wood2", 0x00000000);
	tmpobjid = CreateDynamicObject(19353, 1309.021728, 11667.486328, 294.916534, 0.000000, 0.000000, -90.299980, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19353, 1312.231567, 11667.466796, 294.916534, 0.000000, 0.000000, -90.299980, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19353, 1315.432128, 11667.452148, 294.916534, 0.000000, 0.000000, -90.299980, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19445, 1317.822021, 11678.361328, 294.913940, 0.000000, 0.000000, 0.199984, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19353, 1317.826782, 11671.963867, 294.916534, 0.000000, 0.000000, -0.299967, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19353, 1317.809570, 11668.961914, 294.916534, 0.000000, 0.000000, -0.299967, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(19353, 1316.242919, 11667.452148, 294.916534, 0.000000, 0.000000, -90.299980, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14789, "ab_sfgymmain", "ab_wood02", 0x00000000);
	tmpobjid = CreateDynamicObject(2631, 1306.385742, 11665.830078, 293.206298, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(2050, 1310.589355, 11667.346679, 294.998382, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18062, "ab_sfammuitems01", "ammu_clothes", 0x00000000);
	tmpobjid = CreateDynamicObject(2049, 1312.072509, 11664.303710, 295.045043, 0.000000, 0.000000, -178.099990, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18062, "ab_sfammuitems01", "ammu_ammo", 0x00000000);
	tmpobjid = CreateDynamicObject(2619, 1315.871215, 11664.260742, 295.257141, 0.000000, 0.000000, -90.000068, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18062, "ab_sfammuitems01", "ammu_gunboard2", 0x00000000);
	tmpobjid = CreateDynamicObject(2460, 1318.758789, 11679.629882, 293.156097, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammu_gunboard2", 0x00000000);
	tmpobjid = CreateDynamicObject(2460, 1325.819335, 11679.629882, 293.156097, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammo_gunboard", 0x00000000);
	tmpobjid = CreateDynamicObject(2385, 1319.159179, 11683.076171, 294.535400, 0.000000, 0.000000, -0.100021, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18062, "ab_sfammuitems01", "ammu_gunboard3", 0x00000000);
	tmpobjid = CreateDynamicObject(2385, 1325.609619, 11683.072265, 294.535400, 0.000000, 0.000000, -0.100021, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18062, "ab_sfammuitems01", "ammu_gunboard2", 0x00000000);
	tmpobjid = CreateDynamicObject(2467, 1318.081298, 11668.486328, 293.177307, 0.000000, 0.000000, 90.099967, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammu_gunboard4", 0x00000000);
	tmpobjid = CreateDynamicObject(2467, 1318.078125, 11669.927734, 293.177307, 0.000000, 0.000000, 90.099967, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammu_gunboard4", 0x00000000);
	tmpobjid = CreateDynamicObject(2467, 1318.075317, 11671.373046, 293.177307, 0.000000, 0.000000, 90.099967, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammu_gunboard4", 0x00000000);
	tmpobjid = CreateDynamicObject(2467, 1318.091918, 11672.812500, 293.177307, 0.000000, 0.000000, 89.499977, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammu_gunboard4", 0x00000000);
	tmpobjid = CreateDynamicObject(2467, 1318.104370, 11674.265625, 293.177307, 0.000000, 0.000000, 89.499977, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammu_gunboard4", 0x00000000);
	tmpobjid = CreateDynamicObject(2467, 1318.116577, 11675.708007, 293.177307, 0.000000, 0.000000, 89.499977, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammu_gunboard4", 0x00000000);
	tmpobjid = CreateDynamicObject(2467, 1318.129150, 11677.152343, 293.177307, 0.000000, 0.000000, 89.499977, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammu_gunboard4", 0x00000000);
	tmpobjid = CreateDynamicObject(2467, 1327.931640, 11668.918945, 293.177307, 0.000000, 0.000000, -89.800094, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammu_gunboard3", 0x00000000);
	tmpobjid = CreateDynamicObject(2467, 1327.926025, 11670.377929, 293.177307, 0.000000, 0.000000, -89.800094, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammu_gunboard3", 0x00000000);
	tmpobjid = CreateDynamicObject(2467, 1327.920898, 11671.831054, 293.177307, 0.000000, 0.000000, -89.800094, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammu_gunboard3", 0x00000000);
	tmpobjid = CreateDynamicObject(2467, 1327.916137, 11673.259765, 293.177307, 0.000000, 0.000000, -89.800094, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammu_gunboard3", 0x00000000);
	tmpobjid = CreateDynamicObject(2467, 1327.911499, 11674.646484, 293.177307, 0.000000, 0.000000, -89.800094, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammu_gunboard3", 0x00000000);
	tmpobjid = CreateDynamicObject(2467, 1327.906250, 11676.099609, 293.177307, 0.000000, 0.000000, -89.800094, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammu_gunboard3", 0x00000000);
	tmpobjid = CreateDynamicObject(2467, 1327.900878, 11677.552734, 293.177307, 0.000000, 0.000000, -89.800094, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "ammu_gunboard3", 0x00000000);
	tmpobjid = CreateDynamicObject(19787, 1328.143676, 11672.625000, 295.775878, 0.000000, 0.000000, -90.400016, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "gun_guns3a", 0x00000000);
	tmpobjid = CreateDynamicObject(19787, 1317.834716, 11672.709960, 295.775878, 0.000000, 0.000000, 89.799957, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18062, "ab_sfammuitems01", "gun_guns4a", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 18062, "ab_sfammuitems01", "gun_guns3a", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	tmpobjid = CreateDynamicObject(1497, 1307.458740, 11666.602539, 293.156921, 0.000000, 0.000000, -89.900047, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1808, 1312.639648, 11667.183593, 293.212158, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2961, 1317.878662, 11667.495117, 294.675903, 0.000000, 0.000000, -88.399993, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2056, 1315.468505, 11667.325195, 295.107360, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2414, 1321.485473, 11679.549804, 293.143371, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2414, 1323.486083, 11679.549804, 293.143371, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2614, 1323.010864, 11683.060546, 295.113647, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1586, 1322.612304, 11664.302734, 294.132232, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2369, 1324.172241, 11679.715820, 294.140380, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1886, 1318.309936, 11682.518554, 296.537292, 15.399999, -0.400000, 33.600009, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1663, 1322.963378, 11681.476562, 293.603942, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2194, 1324.721801, 11679.408203, 294.419433, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2194, 1321.330932, 11679.408203, 294.419433, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1893, 1322.576049, 11679.480468, 296.700714, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(18848, 1327.183471, 11665.968750, 292.640869, 0.000000, 0.000000, 41.299964, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1893, 1322.576049, 11672.652343, 296.700714, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1893, 1322.576049, 11667.316406, 296.700714, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2606, 1327.919799, 11670.094726, 295.730682, 0.000000, 0.000000, -90.299987, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2606, 1327.945922, 11675.071289, 295.730682, 0.000000, 0.000000, -90.299987, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2606, 1318.116455, 11675.125000, 295.730682, 0.000000, 0.000000, 90.200119, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2606, 1318.132934, 11670.128906, 295.730682, 0.000000, 0.000000, 90.200119, -1, -1, -1, 300.00, 300.00); 
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	tmpobjid = CreateObject(6969,1617.253,-2286.709,13.666,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(6969,1617.024,-2287.263,13.866,0.000,0.000,179.434,300.000);
	tmpobjid = CreateObject(19377,1642.385,-2274.074,12.434,0.000,90.000,0.000,300.000);
	tmpobjid = CreateObject(3743,1656.400,-2275.737,8.222,0.000,0.000,269.976,300.000);
	tmpobjid = CreateObject(3743,1656.188,-2272.006,8.475,0.000,0.000,271.036,300.000);
	tmpobjid = CreateObject(19377,1644.739,-2273.875,9.991,0.000,90.000,0.000,300.000);
	tmpobjid = CreateObject(19377,1642.990,-2274.056,12.220,0.000,90.000,0.000,300.000);
	tmpobjid = CreateObject(19377,1643.396,-2274.065,12.022,0.000,90.000,0.000,300.000);
	tmpobjid = CreateObject(19377,1643.918,-2274.086,11.819,0.000,90.000,0.000,300.000);
	tmpobjid = CreateObject(19377,1644.324,-2274.093,11.619,0.000,90.000,0.000,300.000);
	tmpobjid = CreateObject(19377,1644.852,-2278.793,6.764,0.000,179.000,89.926,300.000);
	tmpobjid = CreateObject(19377,1644.831,-2269.193,6.764,0.000,179.000,89.926,300.000);
	tmpobjid = CreateObject(19377,1649.251,-2273.948,4.434,0.000,179.000,180.516,300.000);
	tmpobjid = CreateObject(19377,1649.251,-2273.948,-5.926,0.000,179.000,180.516,300.000);
	tmpobjid = CreateObject(19377,1644.852,-2278.793,-1.042,0.000,179.000,89.926,300.000);
	tmpobjid = CreateObject(19377,1644.831,-2269.193,-3.698,0.000,179.000,89.926,300.000);
	tmpobjid = CreateObject(3660,1600.890,-2273.048,14.434,0.000,0.000,35.807,300.000);
	tmpobjid = CreateObject(3660,1634.605,-2301.144,14.434,0.000,0.000,39.548,300.000);
	tmpobjid = CreateObject(3660,1636.087,-2276.471,14.434,0.000,0.000,128.421,300.000);
	tmpobjid = CreateObject(1597,1641.836,-2289.934,15.125,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(3660,1619.738,-2267.575,14.340,0.000,0.000,359.808,300.000);
	tmpobjid = CreateObject(3660,1592.178,-2288.323,14.729,0.000,0.000,89.682,300.000);
	tmpobjid = CreateObject(3660,1616.672,-2307.934,14.729,0.000,0.000,359.726,300.000);
	tmpobjid = CreateObject(3515,1623.333,-2280.496,12.112,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(3515,1614.819,-2299.166,12.112,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(3515,1614.034,-2276.896,12.112,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(3515,1628.258,-2288.586,12.112,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(3515,1624.685,-2296.568,12.112,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(19124,1617.868,-2299.030,12.954,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(19124,1616.892,-2277.438,12.954,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(19124,1620.217,-2278.819,12.954,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(19124,1625.485,-2283.066,12.954,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(19124,1626.839,-2285.474,12.954,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(19124,1626.339,-2294.114,12.954,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(19124,1622.163,-2298.552,12.954,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(19943,1618.619,-2278.100,12.520,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(19943,1627.151,-2292.625,12.520,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(19943,1626.066,-2284.325,12.520,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(19943,1620.219,-2298.918,12.520,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(19124,1627.563,-2291.077,12.954,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1603.318,-2269.971,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1601.050,-2268.100,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1598.509,-2265.669,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1593.671,-2267.217,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1625.365,-2266.031,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1593.947,-2272.833,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1593.222,-2267.730,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1592.510,-2276.852,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1614.107,-2265.771,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1618.657,-2265.135,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1596.583,-2309.843,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1640.728,-2265.701,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1633.947,-2265.864,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1640.487,-2269.762,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1638.937,-2275.000,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1614.411,-2309.773,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1632.806,-2307.238,12.203,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1602.405,-2309.634,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1594.791,-2268.660,13.071,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1593.693,-2275.823,13.071,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1593.887,-2273.777,13.071,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1592.921,-2276.503,13.071,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1593.276,-2272.770,13.071,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1596.348,-2273.107,13.071,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1595.188,-2270.812,13.071,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1598.629,-2271.812,13.071,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1593.319,-2270.193,13.071,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1594.791,-2268.660,13.071,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1617.814,-2265.690,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1598.083,-2268.905,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1596.896,-2266.742,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1593.427,-2268.065,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1593.546,-2265.845,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1596.462,-2265.600,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1602.420,-2269.030,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1602.441,-2266.228,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1597.074,-2264.569,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1599.725,-2266.729,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1599.942,-2264.856,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1593.907,-2265.206,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1604.862,-2264.800,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1608.067,-2264.585,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1609.762,-2267.019,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1612.026,-2264.842,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1610.411,-2264.741,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1614.428,-2264.989,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1616.583,-2263.748,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1618.597,-2264.272,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1633.167,-2264.922,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1630.244,-2264.470,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1630.745,-2265.116,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1627.296,-2265.228,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1623.717,-2265.575,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1620.350,-2265.579,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1625.688,-2265.132,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1641.499,-2265.044,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1623.171,-2264.573,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1621.490,-2265.458,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1638.620,-2274.364,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1637.120,-2273.100,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1638.505,-2271.086,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1640.762,-2272.989,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1640.817,-2275.836,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1642.078,-2278.533,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1639.202,-2276.405,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1642.360,-2280.904,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1636.821,-2270.199,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1641.587,-2271.063,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1639.115,-2268.632,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1639.766,-2266.645,12.899,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1640.782,-2271.082,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1638.225,-2267.472,13.055,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1637.607,-2265.014,13.055,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1634.782,-2265.439,13.055,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1635.803,-2268.172,13.055,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1636.650,-2302.233,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1641.364,-2267.919,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1641.732,-2269.647,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1634.469,-2270.561,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1632.423,-2268.468,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1631.155,-2266.275,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1632.756,-2267.049,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1637.827,-2302.959,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1637.719,-2305.257,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1640.776,-2304.125,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1640.118,-2300.462,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1639.806,-2302.272,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1642.010,-2298.458,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1641.037,-2300.779,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1640.973,-2306.291,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1640.713,-2308.718,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1638.543,-2307.475,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1637.755,-2308.783,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1635.406,-2307.030,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1635.620,-2304.763,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1608.522,-2309.816,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1631.959,-2305.812,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1634.097,-2308.572,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1630.744,-2307.996,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1632.076,-2309.363,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1635.288,-2309.325,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1628.509,-2308.879,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1624.342,-2308.927,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1619.746,-2308.979,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1616.134,-2309.020,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1612.793,-2308.810,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(869,1609.062,-2308.625,13.083,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1641.411,-2300.662,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(772,1635.250,-2305.259,12.276,0.000,0.000,0.000,300.000);
	tmpobjid = CreateObject(8132,1596.676,-2305.156,15.061,0.000,0.000,247.025,300.000);
	tmpobjid = CreateObject(19430,1596.997,-2305.270,14.192,90.000,14.000,40.000,300.000);
	tmpobjid = CreateObject(19430,1597.836,-2305.855,15.230,90.000,14.000,40.000,300.000);
	tmpobjid = CreateObject(19430,1597.823,-2305.870,14.192,90.000,14.000,40.000,300.000);
	tmpobjid = CreateObject(19430,1597.010,-2305.255,15.226,90.000,14.000,40.000,300.000);
	//Exterior Mercado Negro
	tmpobjid = CreateDynamicObject(16769, 2119.825439, -1911.977172, 12.545289, 0.000000, 0.000000, 179.799819, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1497, 2121.333251, -1904.522705, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3267, 2108.985351, -1918.045043, 12.026871, 0.000000, 0.000000, -119.399986, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1231, 2128.368652, -1904.072387, 15.172818, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1231, 2111.318847, -1904.072387, 15.172818, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 2125.643798, -1904.009155, 13.216876, 0.000000, 0.000000, -90.299942, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(638, 2118.473144, -1903.972412, 13.216876, 0.000000, 0.000000, -90.299942, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(18667, 2125.635009, -1904.385009, 14.696873, 0.000000, 0.000000, -89.799942, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19425, 2121.789550, -1896.919311, 12.372084, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19425, 2111.920166, -1891.959350, 12.372084, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19425, 2131.279785, -1904.730102, 12.372084, 0.000000, 0.000000, 179.799957, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(16770, 2120.005126, -1928.916503, 13.886874, 0.000000, 0.000000, 90.399940, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1459, 2104.724853, -1904.782104, 12.881941, 0.000000, 0.000000, 0.200000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 2109.322021, -1904.459594, 12.977614, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 2100.121337, -1904.459594, 12.977614, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 2135.982910, -1904.459594, 12.977609, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 2140.084716, -1904.459594, 12.977609, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 2133.901611, -1906.512329, 12.977609, 0.000000, 0.000000, -89.999992, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 2133.901611, -1910.623168, 12.977609, 0.000000, 0.000000, -89.999992, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 2133.901611, -1914.762573, 12.977609, 0.000000, 0.000000, -89.999992, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(970, 2133.901611, -1918.874023, 12.977609, 0.000000, 0.000000, -89.999992, -1, -1, -1, 300.00, 300.00); 
	return 0;
}
