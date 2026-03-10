
{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nodejs
    python3
    javaPackages.compiler.temurin-bin.jdk-21
    go

    gcc
    nixd
    nil
  ];
}
