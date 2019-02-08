/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7897CBD1
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_room"
if(room == rm_room)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 34712855
	/// @DnDParent : 7897CBD1
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 579E35E7
		/// @DnDParent : 34712855
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "b6d92598-c476-450f-a72c-c91a0af470ba"
		room_goto(rm_win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 3FF8CF7B
	/// @DnDParent : 7897CBD1
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 688C631A
		/// @DnDParent : 3FF8CF7B
		/// @DnDArgument : "room" "rm_end"
		/// @DnDSaveInfo : "room" "870a6f1e-0d47-49d6-b809-e319a8a70fc8"
		room_goto(rm_end);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 7B0E65AF
		/// @DnDParent : 3FF8CF7B
		/// @DnDArgument : "soundid" "death"
		/// @DnDSaveInfo : "soundid" "a9e25b68-de43-49a6-b1e7-ed92235a12b0"
		audio_play_sound(death, 0, 0);
	}
}