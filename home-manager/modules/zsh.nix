{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    antidote = {
      enable = true;
      plugins = [
        "ael-code/zsh-colored-man-pages"
        "KKRainbow/zsh-command-note.plugin"
        "urbainvaes/fzf-marks"
        "MichaelAquilina/zsh-auto-notify"
      ];
    };

    history.size = 10000;

    initContent = ''
      PROMPT='%F{green}%n@%m%f %F{blue}%~%f > '
      export GROFF_NO_SGR=1
    '';

    loginExtra = ''
      command -v defaultbrowser >/dev/null 2>&1 && defaultbrowser firefox >/dev/null 2>&1 || true
    '';
  };
}
