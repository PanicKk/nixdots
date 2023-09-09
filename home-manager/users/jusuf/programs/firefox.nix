{ pkgs, ...}:

{
  programs.firefox = {
    enable = true;
    profiles = {
      Gjirafa.bookmarks = [
        {
          name = "ChatGPT";
          url = "https://chat.openai.com/";
        }
        {
          name = "G-Mail";
          url = "https://mail.google.com/mail/u/0/";
        }
        {
          name = "Azure DevOps";
          url = "https://dev.azure.com/gjirafadev/";
        }
        {
          name = "Captain Dev";
          url = "https://console-captain.gjirafa.dev/a7d4fde3-1587-4bc9-9974-08d950d60e60/live-encoder";
        }
        {
          name = "Captain Prod";
          url = "https://console.captain.gjirafa.tech/6d5bd980-6f79-4d93-8e2e-08d9a06ad9ac/live-encoder";
        }
        {
          name = "ELK";
          url = "https://elk.gjirafa.tech/app/discover";
        }
      ];
      Gjirafa.id = 0;
    };
  };
}
