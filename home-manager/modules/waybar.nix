{ lib, config, pkgs, ... }:

{
    programs.waybar = {
        enable = true;
        settings = {
            mainBar = {
                layer = "top";
                position = "left";
                height = 10;
                spacing = 5;
                margin-left = 20;
                margin-right = 0;

                modules-left = [
                "hyprland/workspaces"
                ];

                modules-center = [
                    "clock#1"
                    "clock#2"
                    ];

                    "modules-right" = [
                    "pulseaudio"
                    "memory"
                    "cpu"
                    "battery"
                    "disk"
                    "tray"
                ];

                "hyprland/workspaces" = {
                    disable-scroll = true;
                    format = "{name}";
                };

                "clock#1" = {
                    format = "{:%H:%M}";
                    tooltip = false;
                };

                "clock#2" = {
                    format = "{:%a | %m-%d}";
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
        * {
            border: none;
            border-radius:0;
        }

        window#waybar {
            border: 2px solid @base04; 
            background: alpha(@base00, 0.7);
            border-radius: 10px;
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
            border-radius: 10px; 
        }

        #clock {
            border-radius: 10px;
            
        }
        
        #workspaces {
            border-radius: 10px;
        }

        #pulseaudio {
            border-radius: 10px;
            color: @base0D;
        }
        #memory {
            border-radius: 10px;
            color: @base0C;
        }
        #cpu {
            border-radius: 10px;
            color: @base0F;
        }
        #battery {
            border-radius: 10px;
            color: @base0B;
        }
        #disk {
            border-radius: 10px;
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
