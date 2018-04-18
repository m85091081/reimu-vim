function GetPkg() {
    curl -fLo ~/.vim/reimu-vim/$1 https://raw.githubusercontent.com/m85091081/reimu-vim/master/$1
}

function GetPlugin() {
    GetPkg PlugList/$1;
    GetPkg PlugConfig/$1;
}

function PlugManager(){
    echo "Install plugin manager ..."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    curl -fLo ~/.vim/reimu-vim/BaseConfig/PlugManager.vim --create-dirs \
        https://raw.githubusercontent.com/m85091081/reimu-vim/master/BaseConfig/PlugManager.vim
    mkdir ~/.vim/reimu-vim/PlugList
    mkdir ~/.vim/reimu-vim/PlugConfig
    GetPkg Nocompatible.vim;
    curl -fLo ~/.vimrc \
        https://raw.githubusercontent.com/m85091081/reimu-vim/master/vimrc
}

endBool=false

while [[ "$endBool" == "false" ]]; do
    echo "==Reimu Customer VI Improve Installer=="
    echo "==Please choose what do you want"
    echo "1.Automatic Install. "
    # echo "2.Manual Install. "
    echo "0.End Installer."
    echo "==Reimu Customer VI Improve Installer=="
    read -p "Type : " type
    if [[ "$type" =~ ^[0-2]+$ ]]; then
        if [[ "$type" == 1 ]]; then
            PlugManager;
            GetPkg BaseConfig/CondingEnv.vim ;
            GetPkg BaseConfig/CondingUI.vim;
            GetPkg BaseConfig/Options/relative.vim;
            echo "source ~/.vim/reimu-vim/BaseConfig/Options/relative.vim" >> ~/.vim/reimu-vim/BaseConfig/CodingUI.vim
            GetPkg BaseConfig/CodingIndent.vim;
            GetPkg BaseConfig/AutoRestore.vim;
            GetPlugin Airline.vim;
            GetPlugin Ale.vim;
            GetPlugin Color.vim;
            GetPlugin DelimitMate.vim;
            GetPlugin NerdTree.vim;
            GetPlugin Ultisnips.vim;
            GetPlugin GoSupport.vim;
            GetPlugin JinjaSupport.vim;
            GetPlugin NodeJSSupport.vim;
            GetPlugin YCM.vim;
            vim +PlugInstall +qall
        elif [[ "$type" == 2 ]]; then
            clear
            echo "==Reimu Customer VI Improve Installer=="
            echo "Step1 : Vim Code Base Enviroment Install."
        elif [[ "$type" == 0 ]]; then
            exit
        fi
    fi
done

