/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 21D6C840
/// @DnDApplyTo : ac3eedb2-c6da-49e5-b1b3-2927026988a2
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 3D1B71F4
	/// @DnDParent : 21D6C840
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3F4FD1EF
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 06E75376
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 15498690
	/// @DnDParent : 06E75376
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31DB6325
	/// @DnDParent : 06E75376
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroidlarge"
	if(sprite_index == spr_asteroidlarge)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 08875791
		/// @DnDParent : 31DB6325
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 17964B1F
			/// @DnDParent : 08875791
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "asteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "658b9c61-5da9-46fe-bb68-a9413c69d26e"
			var asteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 04A3DB5B
			/// @DnDParent : 08875791
			/// @DnDArgument : "expr" "spr_asteroidmedium"
			/// @DnDArgument : "var" "asteroid.sprite_index"
			asteroid.sprite_index = spr_asteroidmedium;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 000AFF1F
	/// @DnDParent : 06E75376
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroidmedium"
	if(sprite_index == spr_asteroidmedium)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 29A905B9
		/// @DnDParent : 000AFF1F
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 26BAE7FF
			/// @DnDParent : 29A905B9
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "asteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "658b9c61-5da9-46fe-bb68-a9413c69d26e"
			var asteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 14A7F8F6
			/// @DnDParent : 29A905B9
			/// @DnDArgument : "expr" "spr_asteroidsmall"
			/// @DnDArgument : "var" "asteroid.sprite_index"
			asteroid.sprite_index = spr_asteroidsmall;
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 12297E83
	/// @DnDParent : 06E75376
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 19E46AF4
		/// @DnDParent : 12297E83
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "2bb7f51e-a553-4450-9159-9d11aa28653d"
		instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
	}
}