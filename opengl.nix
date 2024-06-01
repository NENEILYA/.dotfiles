{ config, pkgs, lib, ... }:
with lib;
{
  hardware = {
    opengl = {
      enable = true;
      driSupport = lib.mkDefault true;
      driSupport32Bit = lib.mkDefault true;
      extraPackages = with pkgs; [
        intel-media-driver
	libvdpau-va-gl
	nvidia-vaapi-driver
        vaapiIntel
        vaapiVdpau
        vulkan-validation-layers
      ];
    };
  };
}
