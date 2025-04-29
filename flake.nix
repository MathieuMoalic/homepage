{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {nixpkgs, ...}: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    buildFrontend = pkgs.buildNpmPackage {
      src = ./.;
      npmDepsHash = "sha256-7w/lpJO+W92l/YYMzAA0tqPHfGAF53jBA4XW2AaFXCo=";
      version = "1.0.8";
      pname = "homepage";
    };
  in {
    apps.${system}.default = {
      type = "app";
      program = "${pkgs.writeShellScriptBin "serve-static-site" ''
        exec ${pkgs.static-web-server}/bin/static-web-server \
          -p 8081 \
          -d ${buildFrontend}/lib/node_modules/homepage/build
      ''}/bin/serve-static-site";
    };

    devShells.${system}.default = pkgs.mkShell {
      buildInputs = with pkgs; [
        nodejs_23
      ];
    };
  };
}
