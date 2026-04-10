{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  name = "darwin-dotfiles";

  packages = with pkgs; [
    nixfmt
    nixd
    nil
    statix
    deadnix
  ];

  shellHook = ''
    _b=$'\033[1m'
    _d=$'\033[2m'
    _r=$'\033[0m'
    echo ""
    echo "$_b""darwin-dotfiles$_r dev shell$_r"
    echo ""
    echo "  $_d""format$_r      nixfmt -- format .nix files"
    echo "  $_d""LSP$_r         nixd, nil -- pick one in the editor"
    echo "  $_d""lint$_r        statix -- nix lint"
    echo "  $_d""dead code$_r   deadnix -- unused let bindings"
    echo ""
  '';
}
