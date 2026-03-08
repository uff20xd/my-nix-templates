{
  description = "A very basic flake";

  inputs = {};

  outputs = { self }: {
    templates.rust = {
      path = ./rust-native;
      description = "A simple rust dev_shell and pkgng flake.";
    };
    templates.general = {
      path = ./general;
      description = "A simple no dependency flake for packaging your programs.";
    };
    templates.default = self.templates.general;
  };
}
