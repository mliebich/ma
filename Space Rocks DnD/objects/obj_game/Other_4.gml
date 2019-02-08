/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C03BD4D
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_room"
if(room == rm_room)
{
	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 3C11A7DF
	/// @DnDParent : 4C03BD4D
	/// @DnDArgument : "times" "6"
	repeat(6)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 2AEE0CF2
		/// @DnDInput : 2
		/// @DnDParent : 3C11A7DF
		/// @DnDArgument : "var" "choice_x"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice_x = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F78226A
		/// @DnDParent : 3C11A7DF
		/// @DnDArgument : "var" "choice_x"
		if(choice_x == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 45C78256
			/// @DnDParent : 1F78226A
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width*0.3"
			var xx = floor(random_range(0, room_width*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5E40A0E8
		/// @DnDParent : 3C11A7DF
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 57D9DF2D
			/// @DnDParent : 5E40A0E8
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_width * 0.7"
			/// @DnDArgument : "max" "room_width"
			var xx = floor(random_range(room_width * 0.7, room_width + 1));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 3E62B603
		/// @DnDInput : 2
		/// @DnDParent : 3C11A7DF
		/// @DnDArgument : "var" "choice_y"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice_y = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0E10CE88
		/// @DnDParent : 3C11A7DF
		/// @DnDArgument : "var" "choice_y"
		if(choice_y == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 6ED0E2CB
			/// @DnDParent : 0E10CE88
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height*0.3"
			var yy = floor(random_range(0, room_height*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 70238F05
		/// @DnDParent : 3C11A7DF
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 0C6EDE9B
			/// @DnDParent : 70238F05
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_height* 0.7"
			/// @DnDArgument : "max" "room_height"
			var yy = floor(random_range(room_height* 0.7, room_height + 1));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 075D6DB4
		/// @DnDParent : 3C11A7DF
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "658b9c61-5da9-46fe-bb68-a9413c69d26e"
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3F6AD4FD
	/// @DnDParent : 4C03BD4D
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);
}