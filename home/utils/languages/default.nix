
{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nodejs
    bun
    python3
    javaPackages.compiler.temurin-bin.jdk-21
    go

    gcc
    nixd
    nil
  ];
}
