{ ... }: {
  programs.git = {
    enable = true;
    userName = "Cosheimil";
    userEmail = "a.varvus@ya.ru";

    lfs.enable = true;
    # aliases.enable = true;

    signing = {
      key = "0xC62806FDD71BC926";
      signByDefault = true;
    };

    extraConfig = { init = { defaultBranch = "main"; }; };
  };
}
