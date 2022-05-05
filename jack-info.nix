{pkgs, ...}:

{
	dotfiles = pkgs.fetchFromGitHub{owner = "jacksonspc"; repo = "dotfiles"; rev="ed8474e0529abaaf19a99b487917f54f6e8bc956"; sha256 = "0q2yr9c3zgykig0k04dkxv16jxfgw98842jnlaf9yqk7km473vww";};
	wallpaper = builtins.fetchurl{url = "https://w.wallhaven.cc/full/48/wallhaven-48g8rj.jpg"; sha256 = "656c41a2dc9aa45525dca008ea58c553a035411ea2bdc1b43d1a4c41b5db4fbf";};
}
