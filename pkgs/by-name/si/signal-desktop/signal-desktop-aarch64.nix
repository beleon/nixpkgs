{ callPackage }:
callPackage ./generic.nix { } rec {
  pname = "signal-desktop";
  version = "7.44.0-2";

  dir = "Signal";
  libdir = "usr/lib64/${pname}";
  bindir = "usr/bin";
  extractPkg = ''
    mkdir -p $out
    bsdtar -xf $downloadedFile -C "$out"
  '';

  url = "https://download.copr.fedorainfracloud.org/results/useidel/signal-desktop/fedora-42-aarch64/08710716-signal-desktop/signal-desktop-7.44.0-2.fc42.aarch64.rpm";
  hash = "sha256-+vETg+hKpwxsN+LiFa9YSLwqa+VWqaReNtSTw/GVpn0=";
}
