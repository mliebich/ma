/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 27887630
/// @DnDArgument : "expr" "room"
var l27887630_0 = room;
switch(l27887630_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 30C58A8D
	/// @DnDParent : 27887630
	/// @DnDArgument : "const" "rm_room"
	case rm_room:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 2A07F97E
		/// @DnDParent : 30C58A8D
		/// @DnDArgument : "x" "10"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(10, 0, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 404884EF
		/// @DnDParent : 30C58A8D
		/// @DnDArgument : "x" "10"
		/// @DnDArgument : "y" "20"
		/// @DnDArgument : "sprite" "spr_live"
		/// @DnDSaveInfo : "sprite" "48111ece-fe7c-482b-86a5-4a1a5332b1f1"
		var l404884EF_0 = sprite_get_width(spr_live);
		var l404884EF_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l404884EF_2 = __dnd_lives; l404884EF_2 > 0; --l404884EF_2) {
			draw_sprite(spr_live, 0, 10 + l404884EF_1, 20);
			l404884EF_1 += l404884EF_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5057B949
	/// @DnDParent : 27887630
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 7F0006C6
		/// @DnDParent : 5057B949
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 38935834
		/// @DnDParent : 5057B949
		/// @DnDArgument : "color" "$FF00A1FF"
		draw_set_colour($FF00A1FF & $ffffff);
		var l38935834_0=($FF00A1FF >> 24);
		draw_set_alpha(l38935834_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 6C87D2BB
		/// @DnDParent : 5057B949
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""SPACE ROCKS""
		draw_text_transformed(250, 100, string("SPACE ROCKS") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6DCE7694
		/// @DnDParent : 5057B949
		draw_set_colour($FFFFFFFF & $ffffff);
		var l6DCE7694_0=($FFFFFFFF >> 24);
		draw_set_alpha(l6DCE7694_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 44055AA7
		/// @DnDParent : 5057B949
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""Score 1000 points to win ""
		draw_text(250, 250, string("Score 1000 points to win ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 0174B871
		/// @DnDParent : 5057B949
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" ""Move with UP/LEFT/RIGHT""
		draw_text_transformed(250, 300, string("Move with UP/LEFT/RIGHT") + "", 1, 1, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 3A8443F1
		/// @DnDParent : 5057B949
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "caption" ""Press SPACE to shoot ""
		draw_text_transformed(250, 0, string("Press SPACE to shoot ") + "", 1, 1, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 0A3CE3BC
		/// @DnDParent : 5057B949
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" ""Press ENTER to start ""
		draw_text_transformed(250, 350, string("Press ENTER to start ") + "", 1, 1, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 780DA2B3
		/// @DnDParent : 5057B949
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5A1C7245
	/// @DnDParent : 27887630
	/// @DnDArgument : "const" "rm_end"
	case rm_end:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6009019E
		/// @DnDParent : 5A1C7245
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4D4B93F9
		/// @DnDParent : 5A1C7245
		/// @DnDArgument : "color" "$FF0000CE"
		draw_set_colour($FF0000CE & $ffffff);
		var l4D4B93F9_0=($FF0000CE >> 24);
		draw_set_alpha(l4D4B93F9_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 66368728
		/// @DnDParent : 5A1C7245
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOSE""
		draw_text_transformed(250, 100, string("YOU LOSE") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 33B266B6
		/// @DnDParent : 5A1C7245
		draw_set_colour($FFFFFFFF & $ffffff);
		var l33B266B6_0=($FFFFFFFF >> 24);
		draw_set_alpha(l33B266B6_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 103F9DCE
		/// @DnDParent : 5A1C7245
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 200, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 45221CB6
		/// @DnDParent : 5A1C7245
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""Press ENTER to restart""
		draw_text_transformed(250, 250, string("Press ENTER to restart") + "", 1, 1, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 119055E3
		/// @DnDParent : 5A1C7245
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5DDB8A18
	/// @DnDParent : 27887630
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 5A5CC115
		/// @DnDParent : 5DDB8A18
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 29488357
		/// @DnDParent : 5DDB8A18
		/// @DnDArgument : "color" "$FF137F23"
		draw_set_colour($FF137F23 & $ffffff);
		var l29488357_0=($FF137F23 >> 24);
		draw_set_alpha(l29488357_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 231BCCAD
		/// @DnDParent : 5DDB8A18
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WIN""
		draw_text_transformed(250, 100, string("YOU WIN") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 55D2F45E
		/// @DnDParent : 5DDB8A18
		draw_set_colour($FFFFFFFF & $ffffff);
		var l55D2F45E_0=($FFFFFFFF >> 24);
		draw_set_alpha(l55D2F45E_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 1A2AAF49
		/// @DnDParent : 5DDB8A18
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 200, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1FDE3367
		/// @DnDParent : 5DDB8A18
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""Press ENTER to restart""
		draw_text_transformed(250, 250, string("Press ENTER to restart") + "", 1, 1, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 369887CB
		/// @DnDParent : 5DDB8A18
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}