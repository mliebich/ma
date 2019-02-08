/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 1CEEC5FE
/// @DnDArgument : "expr" "room"
var l1CEEC5FE_0 = room;
switch(l1CEEC5FE_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 475C5D9B
	/// @DnDParent : 1CEEC5FE
	/// @DnDArgument : "const" "rm_end"
	case rm_end:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 75FD810C
		/// @DnDParent : 475C5D9B
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7264B542
	/// @DnDParent : 1CEEC5FE
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 13F1EA6A
		/// @DnDParent : 7264B542
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2C25A5E8
	/// @DnDParent : 1CEEC5FE
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 2A2484FD
		/// @DnDParent : 2C25A5E8
		/// @DnDArgument : "room" "rm_room"
		/// @DnDSaveInfo : "room" "18f26b22-b9e5-411f-866a-1f49f77e437f"
		room_goto(rm_room);
		break;
}