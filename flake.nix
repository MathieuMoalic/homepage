{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {nixpkgs, ...}: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};

    buildFrontend = pkgs.buildNpmPackage {
      pname = "homepage";
      version = "1.0.9";
      src = ./.;
      npmDepsHash = "sha256-7w/lpJO+W92l/YYMzAA0tqPHfGAF53jBA4XW2AaFXCo=";

      installPhase = ''
        mkdir -p $out/build
        cp -r build/* $out/build/
      '';
    };

    serveScript = pkgs.writeShellScriptBin "serve-homepage" ''
      exec ${pkgs.static-web-server}/bin/static-web-server \
        --port ''${1} \
        --root ${buildFrontend}/build
    '';

    service = {
      config,
      lib,
      ...
    }: {
      options.services.homepage = {
        enable = lib.mkEnableOption "Enable homepage web server for matmoa.eu";
        port = lib.mkOption {
          type = lib.types.port;
          default = 8083;
          description = "Port to serve the homepage on.";
        };
      };

      config = lib.mkIf config.services.homepage.enable {
        systemd.services.homepage = {
          description = "Static homepage web server for matmoa.eu";
          wantedBy = ["multi-user.target"];
          after = ["network.target"];

          serviceConfig = {
            ExecStart = "${serveScript}/bin/serve-homepage ${toString config.services.homepage.port}";
            Restart = "always";
          };
        };
      };
    };
  in {
    apps.${system}.default = {
      type = "app";
      program = "${serveScript}/bin/serve-homepage";
    };

    packages.${system}.default = buildFrontend;

    devShells.${system}.default = pkgs.mkShell {
      buildInputs = with pkgs; [
        nodejs_23
      ];
    };
    nixosModules.homepage-service = service;
  };
}
