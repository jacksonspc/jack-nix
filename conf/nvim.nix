# Neovim Config
pkgs:
{
	enable = true;
	coc.enable = true;
	withNodeJs = true;
	withPython3 = true;
	plugins = with pkgs.vimPlugins; [
		onedark-vim
		vim-nix
	];
	extraConfig = ''
	colorscheme onedark
	'';
}

			


