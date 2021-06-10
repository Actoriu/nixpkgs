{ ... }:

{
  programs = {
    fzf = {
      enable = true;
      defaultCommand = "rg --files --no-ignore --hidden --follow -g '!{.git,target,node_modules,*.swp,dist,*.coffee}/*' 2> /dev/null";
    };
  };
}
