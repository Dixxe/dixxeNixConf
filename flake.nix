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
        ./modules/nixos/cinnamon.nix
        ./modules/nixos/gaming.nix
        ./modules/nixos/pipewire.nix
        
      ];

      # You can check out all available modules in folder.
      
    };
  };
}
