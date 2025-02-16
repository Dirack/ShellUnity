# Biblioteca de funções matemáticas em shell script

# Verificar se os parâmetros foram passados a função
check_param(){
    if [ -z "$1" -o -z "$2" ]
    then
        echo "Error: Missing parameters"
        exit 1
    fi
}

# Funções matemáticas

soma(){
    check_param "$1" "$2"
    RES=$(echo "$1+$2" | bc -l)
    echo "$RES"
}

mult(){
    check_param "$1" "$2"
    RES=$(echo "$1*$2" | bc -l)
    echo "$RES"
}

div(){
    check_param "$1" "$2"
    RES=$(echo "$1/$2" | bc -l)
    echo "$RES"
}

sub(){
    check_param "$1" "$2"
    RES=$(echo "$1-$2" | bc -l)
    echo "$RES"
}