CONFIG_LOCATION=$HOME/.dotfiles/zsh/zshrc_config

case "$(uname -s)" in
    Linux)
        source $CONFIG_LOCATION/arch.zsh
        
        ;;
    Darwin*)
        source $CONFIG_LOCATION/mac.zsh

        ;;
    *)
        echo "Unknown OS"
        ;;
esac

source $CONFIG_LOCATION/common.zsh
