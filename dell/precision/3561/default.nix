{lib, ...}: {
  imports = [
    ../../../common/cpu/intel
    ../../../common/gpu/nvidia/prime.nix
    ../../../common/pc/laptop
    ../../../common/pc/laptop/ssd
  ];

  hardware.nvidia.modesetting.enable = lib.mkDefault true;
  hardware.opengl.driSupport32Bit = lib.mkDefault true;
  hardware.opengl.enable = lib.mkDefault true;

  hardware.nvidia.prime = {
    intelBusId = lib.mkDefault "PCI:0:2:0";
    nvidiaBusId = lib.mkDefault "PCI:1:0:0";
  };
}
