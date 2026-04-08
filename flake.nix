{
  description = "My dotfiles";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    darwin = {
      url = "github:nix-darwin/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-homebrew.url = "github:zhaofengli/nix-homebrew";

    steam-platform-stats = {
      url = "github:blackfan321/steam-platform-stats";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      darwin,
      nixpkgs,
      home-manager,
      nix-homebrew,
      steam-platform-stats,
      ...
    }@inputs:
    let
      primaryUser = "blackfan321";
    in
    {
      darwinConfigurations."macbook-air-m1" = darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        modules = [
          ./darwin
          ./hosts/macbook-air-m1/configuration.nix
        ];
        specialArgs = { inherit inputs self primaryUser; };
      };

    };
}
