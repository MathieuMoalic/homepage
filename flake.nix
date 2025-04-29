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
        runHook preInstall
        mkdir -p $out/build
        cp -r build/* $out/build/
        runHook postInstall
      '';
    };

    serveScript = pkgs.writeShellScriptBin "serve-homepage" ''
      defaultPort=8080
      PORT="''${1:-$defaultPort}"

      echo "Serving static content from ${buildFrontend}/build on port $PORT"

      exec ${pkgs.static-web-server}/bin/static-web-server \
        --port "$PORT" \
        --root ${buildFrontend}/build
    '';
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
  };
}
