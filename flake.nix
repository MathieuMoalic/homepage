{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = {nixpkgs, ...}: {
    devShells.x86_64-linux.default = (import nixpkgs {system = "x86_64-linux";}).mkShell {
      buildInputs = with nixpkgs.legacyPackages.x86_64-linux; [
        nodejs_23
        zola
        bun
      ];
    };
  };
}
