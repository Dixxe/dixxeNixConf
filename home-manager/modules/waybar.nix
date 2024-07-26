{ lib, config, pkgs, ... }:

{
    programs.waybar = {
        enable = true;
        settings = {
            mainBar = {
                layer = "top";
                position = "top";

                modules-left = [
                "custom/left-arrow-dark"
                "hyprland/workspaces"
                "custom/right-arrow-dark"
                ];

                modules-center = [
                    "custom/left-arrow-dark"
                    "clock#1"
                    "custom/right-arrow-dark"
                    "custom/left-arrow-dark"
                    "clock#2"
                    "custom/right-arrow-dark"
                    "custom/left-arrow-dark"
                    "clock#3"
                    "custom/right-arrow-dark"
                    ];

                    "modules-right" = [
                    "custom/left-arrow-dark"
                    "pulseaudio"
                    "custom/right-arrow-dark"
                    "custom/left-arrow-dark"
                    "memory"
                    "custom/right-arrow-dark"
                    "custom/left-arrow-dark"
                    "cpu"
                    "custom/right-arrow-dark"
                    "custom/left-arrow-dark"
                    "battery"
                    "custom/right-arrow-dark"
                    "custom/left-arrow-dark"
                    "disk"
                    "custom/right-arrow-dark"
                    "custom/left-arrow-dark"
                    "tray"
                    "custom/right-arrow-dark"
                ];

                "custom/left-arrow-dark" = {
                    format = "";
                    tooltip = false;
                };

                "custom/left-arrow-light" = {
                    format = "";
                    tooltip = false;
                };

                "custom/right-arrow-dark" = {
                    format = "";
                    tooltip = false;
                };

                "custom/right-arrow-light" = {
                    format = "";
                    tooltip = false;
                };

                "hyprland/workspaces" = {
                    disable-scroll = true;
                    format = "{name}";
                };

                "clock#1" = {
                    format = "{:%a}";
                    tooltip = false;
                };

                "clock#2" = {
                    format = "{:%H:%M}";
                    tooltip = false;
                };

                "clock#3" = {
                    format = "{:%m-%d}";
                    tooltip = false;
                };

                "pulseaudio" = {
                format = "{icon} {volume:2}%";
                format-bluetooth = "{icon}  {volume}%";
                format-muted = "MUTE";
                format-icons = {
                    headphones = "";
                    default = [
                    ""
                    ""
                    ];
                };
                scroll-step = 5;
                on-click = "pamixer -t";
                on-click-right = "pavucontrol";
                };

                "memory" = {
                interval = 5;
                format = "Mem {}%";
                };

                "cpu" = {
                interval = 5;
                format = "CPU {usage:2}%";
                };

                "battery" = {
                states = {
                    good = 95;
                    warning = 30;
                    critical = 15;
                };
                format = "{icon} {capacity}%";
                format-icons = [
                    ""
                    ""
                    ""
                    ""
                    ""
                ];
                };

                "disk" = {
                interval = 5;
                format = "Disk {percentage_used:2}%";
                path = "/";
                };

                "tray" = {
                icon-size = 20;
                };
            };
            
        };
        style = ''

        #custom-right-arrow-dark,
        #custom-left-arrow-dark {
            color: @base00;
        }
        #custom-right-arrow-light,
        #custom-left-arrow-light {
            color: @base00;
            background: @base00;
        }

        #workspaces,
        #clock.1,
        #clock.2,
        #clock.3,
        #pulseaudio,
        #memory,
        #cpu,
        #battery,
        #disk,
        #tray {
            background: @base00;
        }

        #workspaces button {
            padding: 0 2px;
            color: @base04;
        }
        #workspaces button.focused {
            color: @base07;
        }
        #workspaces button:hover {
            box-shadow: inherit;
            text-shadow: inherit;
        }
        #workspaces button:hover {
            background: @base00;
            border: @base04;
            padding: 0 3px;
        }

        #pulseaudio {
            color: @base0D;
        }
        #memory {
            color: @base0C;
        }
        #cpu {
            color: @base0F;
        }
        #battery {
            color: @base0B;
        }
        #disk {
            color: @base09;
        }

        #clock,
        #pulseaudio,
        #memory,
        #cpu,
        #battery,
        #disk {
            padding: 0 10px;
        }
        '';
    };
}
