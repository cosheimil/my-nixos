{ pkgs, ... }: {
 boot = {
   loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
   };
  kernelPackages = pkgs.linuxPackages_zen;
  kernelParams = [ 
     "quiet" 
     "video=DP-0:2560x1440@165"
   ];
   initrd.kernelModules = [ "amdgpu" ];
 };  
  services.xserver.videoDrivers = [ "amdgpu" ];
  hardware.amdgpu.initrd.enable = true;
}
