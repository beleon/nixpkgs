{ callPackage }:
callPackage ./generic.nix { } rec {
  pname = "signal-desktop";
  version = "7.44.0";

  libdir = "opt/Signal";
  bindir = libdir;
  extractPkg = "dpkg-deb -x $downloadedFile $out";

  url = "https://updates.signal.org/desktop/apt/pool/s/signal-desktop/signal-desktop_${version}_amd64.deb";
  hash = "sha256-x7JK2HiaEXplBqJnrbgq7XkrdVGt+gGu4tlv6lNZ1Ok=";
}
