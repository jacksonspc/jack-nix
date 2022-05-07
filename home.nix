{ config, pkgs, lib, ... }:

let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
  jack-info = import ./jack-info.nix {inherit pkgs;};
  nvim-settings = import ./conf/nvim.nix pkgs;
  

in
{
  imports = [
    (import "${home-manager}/nixos")
  ];

  home-manager.users.jack = {
	programs.neovim = nvim-settings;	
  	programs.alacritty = {
		enable = true;
  		settings = {
	   		font.normal.family = "Cascadia Mono";
	   	};
	};
	programs.git = {
		enable = true;
		userName = "Jack";
		userEmail = "jack@sparkpc.email";

	};
	};
}
