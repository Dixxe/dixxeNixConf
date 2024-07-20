{
  description = "Vivobook dixxe's config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    envycontrol.url = "github:bayasdev/envycontrol";

     home-manager = {
       url = "github:nix-community/home-manager";
       inputs.nixpkgs.follows = "nixpkgs";
     };
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.default = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        ./hosts/default/configuration.nix
        inputs.home-manager.nixosModules.default
        ./modules/nixos/fonts.nix
        ./modules/nixos/desktop-enviroments/cinnamon.nix
        ./modules/nixos/pipewire.nix
        
      ];
      
    };
    nixosConfigurations.dixxe-laptop = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        ./hosts/dixxe-laptop/configuration.nix
        inputs.home-manager.nixosModules.default
        ./modules/nixos/gaming-tweaks.nix
        ./modules/nixos/hardware/nvidia.nix
        ./modules/nixos/hardware/battery-threshold.nix
        ./modules/nixos/fonts.nix
        ./modules/nixos/pipewire.nix
        
      ];
      
    };
  };
}
