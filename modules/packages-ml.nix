# Packages - LLMs, etc.
{
  config,
  pkgs,
  unstablePkgs,
  ...
}: {
  environment.systemPackages = with unstablePkgs; [
    (llama-cpp.override
      {vulkanSupport = true;})

    (whisper-cpp-vulkan.override
      {vulkanSupport = false;})
  ];
}
