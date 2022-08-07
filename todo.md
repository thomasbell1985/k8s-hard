1. Figure out how to dynamically load the users zsh file into the container base on environment variables
    * Currently we are using a hard link to the .zshrc file, which may be fine, but it would be better if we could parameterize it.
    * Perhaps we could plug into the devcontainer api to copy over those files.
1. What if I want to install other plugins, could we do that by hooking into the devcontainer apigs
1. Document setup and installation steps in the readme