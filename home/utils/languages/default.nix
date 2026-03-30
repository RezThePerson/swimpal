
{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nodejs
    bun
    python3
    javaPackages.compiler.temurin-bin.jdk-25
    go

    gcc
    nixd
    nil
  ];
}
