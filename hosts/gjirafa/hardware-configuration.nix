{
  boot = {
    initrd = {
      availableKernelPackages = [ "nvme" "xhci_pci" "ahci" "usbhid" "usb_storage" "sd_mod" ];
      kernelModules = [];
    };
    kernelModules = [ "kvm-amd" ];
    extraModulePackages = [];
  };

  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/7aeadd8f-d5e7-46e2-a7a6-5a4c1719b319";
      fsType = "ext4";
    };

    "/boot" = {
      device = "/dev/disk/by-uuid/B6CE-3B3E";
      fsType = "vfat";
    };
  };

  swapDevices = [
    { 
      device = "/dev/disk/by-uuid/581b8959-df99-442a-a434-058b62ea52e9"; 
    }
  ];
}
