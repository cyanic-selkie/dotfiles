set -x MOZ_ENABLE_WAYLAND 1
set -x _JAVA_AWT_WM_NONREPARENTING 1

starship init fish | source

function __fish_command_not_found_handler --on-event fish_command_not_found
    echo "fish: Unknown command: '$argv'"
end
