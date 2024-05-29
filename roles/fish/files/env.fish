function setup_misc
    set -U fish_greeting
end

function setup_tide
    tide configure \
        --auto \
        --style=Classic \
        --prompt_colors='True color' \
        --classic_prompt_color=Light \
        --show_time='24-hour format' \
        --classic_prompt_separators=Angled \
        --powerline_prompt_heads=Sharp \
        --powerline_prompt_tails=Flat \
        --powerline_prompt_style='Two lines, character' \
        --prompt_connection=Solid \
        --powerline_right_prompt_frame=No \
        --prompt_connection_andor_frame_color=Dark \
        --prompt_spacing=Sparse \
        --icons='Few icons' \
        --transient=Yes
end

function main
    setup_misc
    setup_tide
end

main
