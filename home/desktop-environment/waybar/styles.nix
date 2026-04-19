{
  programs.waybar = {
    style = ''
      * {
        font-family: "JetBrains Mono Nerd Font";
        color: @text;
      }

      window#waybar {
        background-color: alpha(@base, 0.75);
      }

      #workspaces {
        background-color: alpha(@surface0, 0.75);
        border-radius: 20px;
        margin: 5px;
      }

      #workspaces button {
        border-radius: 0px;
        padding: 5px 8px;
        box-shadow: none;
        text-shadow: none;
        border: none;
      }

      #workspaces button:first-child {
        border-radius: 20px 20px 0px 0px;
      }

      #workspaces button:last-child {
        border-radius: 0px 0px 20px 20px;
      }

      #workspaces button:hover {
        transition: none;
        background: alpha(@surface1, 0.75);
      }

      #workspaces button.active {
        background-color: alpha(@mauve, 0.75);
      }

      #clock, #info {
        background-color: alpha(@surface0, 0.75);
        border-radius: 20px;
        margin: 5px;
        padding: 10px 0px;
      }

      #battery {
        padding: 0px 10px 5px 10px;
      }

      window#waybar.battery-warning {
        background-color: shade(@yellow, 1);
      }

      window#waybar.battery-critical {
        background-color: shade(@red, 1);
      }
    '';
  };
}
