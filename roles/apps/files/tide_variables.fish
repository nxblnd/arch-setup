#!/usr/bin/env fish

##########  Prompt  ###########
set --universal tide_prompt_add_newline_before          true
set --universal tide_prompt_color_frame_and_connection  585858
set --universal tide_prompt_color_separator_same_color  949494
set --universal tide_prompt_icon_connection             ' '
set --universal tide_prompt_pad_items                   true

set --universal tide_left_prompt_frame_enabled          false
set --universal tide_right_prompt_frame_enabled         false

# tide_character_color $_tide_color_green
# tide_character_color_failure FF0000
# tide_character_icon ❯
# tide_character_vi_icon_default ❮
# tide_character_vi_icon_replace ▶
# tide_character_vi_icon_visual V

# ###########  Items  ###########
set --universal tide_left_prompt_items   pwd git newline character
set --universal tide_right_prompt_items  status cmd_duration context jobs node virtual_env time

# # pwd
# set --universal tide_pwd_bg_color               444444
# set --universal tide_pwd_color_anchors          $_tide_color_light_blue
# set --universal tide_pwd_color_dirs             $_tide_color_dark_blue
# set --universal tide_pwd_color_truncated_dirs   8787AF
# set --universal tide_pwd_icon                   
# set --universal tide_pwd_icon_home              
# set --universal tide_pwd_icon_unwritable        
# set --universal tide_pwd_markers                .bzr .citc .git .hg .node-version .python-version .ruby-version .shorten_folder_marker .svn .terraform Cargo.toml composer.json CVS go.mod package.json

# # Command duration
# tide_cmd_duration_bg_color 444444
# tide_cmd_duration_color 87875F
# tide_cmd_duration_decimals 0
# tide_cmd_duration_icon
# tide_cmd_duration_threshold 3000

# # AWS
# tide_aws_bg_color 444444
# tide_aws_color FF9900
# tide_aws_icon 

# # Ruby
# tide_chruby_bg_color 444444
# tide_chruby_color B31209
# tide_chruby_icon 