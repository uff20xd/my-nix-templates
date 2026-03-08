{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    templates.rust = {
      path = ./rust-native;
      description = "A simple rust dev_shell and pkgng flake.";
      welcomeText = ''
        None
      '';
    };
    templates.general = {
      path = ./general;
      description = "A simple no dependency shell for packaging your programs.";
      welcomeText = ''
        None
      '';
    };
    templates.default = self.templates.general;
  };
}
