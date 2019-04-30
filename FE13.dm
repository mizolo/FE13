world
	fps = 20		// 30 frames per second
	icon_size = 32	// 32x32 icon size by default

	view = 16		// show up to 12 tiles from the center


mob
// variables needed to define each character's stats
	var/Max_HP
	var/Str
	var/Mag
	var/Skill
	var/Spd
	var/Lck
	var/Def
	var/Res
	var/Mov
	var/Con
	var/Wt

	Ike
		// Ike's Stats
		Max_HP = 19
		Str = 5
		Mag = 1
		Skill = 6
		Spd = 7
		Lck = 6
		Def = 5
		Res = 0
		Mov = 6
		Con = 9
		Wt = 9

	Soren
		// Soren's Stats
		Max_HP = 18
		Str = 0
		Mag = 6
		Skill = 8
		Spd = 8
		Lck = 5
		Def = 2
		Res = 7
		Mov = 5
		Con = 6
		Wt = 6

	Rhys
		//Rhys' Stats
		Max_HP = 22
		Str = 0
		Mag = 10
		Skill = 8
		Spd = 5
		Lck = 8
		Def = 0
		Res = 15
		Mov = 5
		Con = 8
		Wt = 8


	Player_Custom
		// Player Customized character /EXPERIMENTAL, DO NOT IMPLEMENT UNTIL RELEASE/
		Max_HP = 0
		Str = 0
		Mag = 0
		Skill = 0
		Spd = 0
		Lck = 0
		Def = 0
		Res = 0
		Mov = 0
		Con = 0
		Wt = 0

	step_size = 8


// Objects & Weapons
obj
	Weapons	// all of the weapons
		var/Mt
		var/Hit
		var/Crit
		var/Wt
		var/Rng

		var/Heal

		Swords	// Swords
			Slim
				Mt = 3
				Hit = 100
				Crit = 5
				Wt = 5
				Rng = 1
			Iron
				Mt = 5
				Hit = 90
				Crit = 0
				Wt = 7
				Rng = 1
			Steel
				Mt = 8
				Hit = 75
				Crit = 0
				Wt = 12
				Rng = 1
			Ragnell
				Mt = 18
				Hit = 80
				Crit = 5
				Wt = 20
				Rng = 1&2

		Axes	// Axes
			Hand
				Mt = 7
				Hit = 55
				Crit = 0
				Wt = 3
				Rng = 1&2
			Iron
				Mt = 8
				Hit = 70
				Crit = 0
				Wt = 10
				Rng = 1
			Steel
				Mt = 11
				Hit = 65
				Crit = 0
				Wt = 15
				Rng = 1

		Spears	// Spears
			Slim
				Mt = 4
				Hit = 85
				Crit = 5
				Wt = 6
				Rng = 1
			Iron
				Mt = 7
				Hit = 80
				Crit = 0
				Wt = 8
				Rng = 1
			Steel
				Mt = 10
				Hit = 70
				Crit = 0
				Wt = 13
				Rng = 1

		Bows	//Bows
			Iron
				Mt = 6
				Hit = 85
				Crit = 0
				Wt = 5
				Rng = 2
			Steel
				Mt = 9
				Hit = 70
				Crit = 0
				Wt = 9
				Rng = 2

		Magic	// Magic Tomes
			Fire
				Fire
					Mt = 3
					Hit = 95
					Crit = 0
					Wt = 3
					Rng = 1&2
				El_Fire
					Mt = 5
					Hit = 85
					Crit = 0
					Wt = 5
					Rng = 1&2
			Wind
				Wind
					Mt = 2
					Hit = 100
					Crit = 0
					Wt = 1
					Rng = 1&2
				El_Wind
					Mt = 4
					Hit = 90
					Crit = 0
					Wt = 2
					Rng = 1&2
			Thunder
				Thunder
					Mt = 4
					Hit = 85
					Crit = 5
					Wt = 3
					Rng = 1&2
				El_Thunder
					Mt = 7
					Hit = 75
					Crit = 10
					Wt = 6
					Rng = 1&2
			Light
				Light
					Mt = 2
					Hit = 80
					Crit = 0
					Wt = 4
					Rng = 1&2
				Shine
					Mt = 4
					Hit = 75
					Crit = 0
					Wt = 6
					Rng = 1&2
		Staffs
			Heal
				Wt = 2
				Hit = 100
				Heal = 10
			Mend
				Wt = 4
				Hit = 100
				Heal = 20




area/Terrain	// Base Turf/Terrain textures. Note that the '_t' means the base terrain, since bushes and forts may be drawn underneath.
	Grass_t
	Dirt_t
	Cobblestone_t
	density = 0

turf/No_Movement	// Turf/Terrain that you can't move on or over
	Tree
	Boulder
	Fortress_Wall
	density = 1

turf/Open_Terrain	// Turf/Terrain that has no defensive value. Note that the '_d' means defense terrain for defense calculations.	Grass_d
	Dirt_d
	Cobblestone_d

	density = 0
	var Terrain_Defense = 0

turf/Defendable_Terrain	// Turf/Terrain that has a defensive value
	Bush
		var Terrain_Defense = 2
	Fort
		var Terrain_Defense = 4

	density = 0