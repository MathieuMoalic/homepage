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
    };

    service = {
      config,
      lib,
      utils,
      ...
    }:
      with lib; let
        cfg = config.services.homepage;
      in {
        options.services.homepage = {
          enable = mkEnableOption "Enable homepage web server for matmoa.eu";

          port = mkOption {
            type = types.port;
            default = 8083;
            description = "Port to serve the homepage on.";
          };

          host = mkOption {
            type = types.str;
            default = "0.0.0.0";
            description = "Host to serve the homepage on.";
          };

          user = mkOption {
            type = types.str;
            default = "homepage";
            description = "User account under which Sonaar runs.";
          };

          group = mkOption {
            type = types.str;
            default = "homepage";
            description = "Group under which Sonaar runs.";
          };
        };

        config = mkIf cfg.enable {
          systemd.services.homepage = {
            description = "Static homepage web server for matmoa.eu";
            wantedBy = ["multi-user.target"];
            after = ["network.target"];

            serviceConfig = {
              Type = "simple";
              User = cfg.user;
              Group = cfg.group;
              ExecStart = utils.escapeSystemdExecArgs [
                (getExe pkgs.static-web-server)
                "--port"
                (toString cfg.port)
                "--host"
                cfg.host
                "--root"
                "${buildFrontend}/lib/node_modules/homepage/build"
              ];
              Restart = "on-failure";

              # These are the security settings for the service
              ReadOnlyPaths = ["${buildFrontend}/lib/node_modules/homepage/build"];
              CapabilityBoundingSet = "";
              RestrictAddressFamilies = "AF_UNIX AF_INET AF_INET6"; # Allows Unix sockets and IPv4/IPv6
              SystemCallFilter = "~@clock @cpu-emulation @keyring @module @obsolete @raw-io @reboot @swap @resources @privileged @mount @debug";
              NoNewPrivileges = "yes";
              ProtectClock = "yes";
              ProtectKernelLogs = "yes";
              ProtectControlGroups = "yes";
              ProtectKernelModules = "yes";
              SystemCallArchitectures = "native";
              RestrictNamespaces = "yes";
              RestrictSUIDSGID = "yes";
              ProtectHostname = "yes";
              ProtectKernelTunables = "yes";
              RestrictRealtime = "yes";
              ProtectProc = "invisible";
              PrivateUsers = "yes";
              LockPersonality = "yes";
              MemoryDenyWriteExecute = "yes";
              UMask = "0077";
              RemoveIPC = "yes";
              LimitCORE = "0";
              ProtectHome = "yes";
              PrivateTmp = "yes";
              ProtectSystem = "strict";
              ProcSubset = "pid";
              SocketBindAllow = ["tcp:${toString cfg.port}"];
              SocketBindDeny = "any";
              IPAddressDeny = ["any"];

              LimitNOFILE = 1024;
              LimitNPROC = 64;
              MemoryMax = "100M";
            };
          };

          users.users.${cfg.user} = {
            isSystemUser = true;
            group = cfg.group;
          };

          users.groups.${cfg.group} = {};
        };
      };
  in {
    packages.${system}.default = buildFrontend;

    devShells.${system}.default = pkgs.mkShell {
      buildInputs = with pkgs; [
        nodejs_23
      ];
    };
    nixosModules.homepage-service = service;
  };
}
