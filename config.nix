with import <nixpkgs> {};

{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {
    all = with pkgs; buildEnv {
      name = "all";
      paths = [
        # elm
        firefox
        #gdal  #  <- buld broke :( may
        vlc
        graphics
        net
        office
        web
        util
      ];
    };
    graphics = with pkgs; buildEnv {
      name = "graphics";
      paths = [
        evince
        gimp
        inkscape
        scrot
      ];
    };
    net = with pkgs; buildEnv {
      name = "net";
      paths = [
        traceroute
      ];
    };
    office = with pkgs; buildEnv {
      name = "office";
      paths = [
        gnumeric
      ];
    };
    web = with pkgs; buildEnv {
      name = "web";
      paths = [
        chromium
        git
        jq
        libsass
        nodejs
        sqlite
        sublime3
      ];
    };
    util = with pkgs; buildEnv {
      name = "util";
      paths = [
        acpi
        alsaUtils
        arandr
        bashCompletion
        dmenu
        keepassx
        pavucontrol
        redshift
        terminator
        tmux
        tree
        unzip
        zip
      ];
    };
  };
}
