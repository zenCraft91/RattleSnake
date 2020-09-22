#!/bin/bash
    #--------------------------------------------------------------------------#
    #                __    __  .__                               __            #
    # ____ _______ _/  |__/  |_|  |   ____   ______ ____ _____  |  | __ ____   #
    # \_  __ \__  \\   __\   __\  | _/ __ \ /  ___//    \\__  \ |  |/ // __ \  #
    #  |  | \// __ \|  |  |  | |  |_\  ___/ \___ \|   |  \/ __ \|    <\  ___/  #
    #  |__|  (______/__|  |__| |____/\_____>______>___|__(______/__|_ \\_____> #
    #                                                                          #
    #                                                                          #
    #==========================================================================#
    #   viper.sh                                                               #
    #   VIPER to accommodate dictionnary                                       #
    #   Author: Monarc(Marc Segur)                                             #
    #   Contact: pc-mac@mail.com                                               # 
    #   Date: 15 september 2020                                                #
    #   Version: 0.8.0                                                         #
    #   Licence:  GPL3                                                         #
    #   Copyright: Monarc(c)2020                                               #
    #__________________________________________________________________________#


longueurMaxDate=$1
possibilities=0
declare -a dates1
declare -a dates

trenteun(){
    mois="$1"
    if [[ "$mois" == "01" ]] || [[ "$mois" == "03" ]]
        then
            result=1
    fi
    if [[ "$mois" == "05" ]] || [[ "$mois" == "07" ]]
        then
            result=1
    fi
    if [[ "$mois" == "08" ]] || [[ "$mois" == "10" ]]
        then
            result=1
    fi
    if [[ "$mois" == "10" ]] 
        then
            result=1
    fi
    if [[ "$mois" == "12" ]] 
        then
            result=1
    fi
    if [[ $result -eq 1 ]] 
        then
            true
        else
            false
    fi
}


isleap() { date -d $1-02-29 &>/dev/null && true || false; }

indexA=0
dat8()
{

    for y in {1950..1952}
    do
    for m in {01..12}
    do
    if $( trenteun $m )
    then
        for d in {01..31}
        do
        dates1["$indexA"]="$d$m$y"
        indexA=$(($indexA + 1))
        done
    fi
    if $( isleap $y ) 
    then
        if [[ $m == 02 ]]
        then
            for d in {01..29}
            do
            dates1["$indexA"]="$d$m$y"
            indexA=$(($indexA + 1))
            done
        else
        for d in {01..30}
        do
        dates1["$indexA"]="$d$m$y"
        indexA=$(($indexA + 1))
        done
        fi
    else
        if [[ $m == 02 ]]  
        then
            for d in {01..28}
            do
            dates1["$indexA"]="$d$m$y"
            indexA=$(($indexA + 1))
            done
        else
        for d in {01..30}
        do
        dates1["$indexA"]="$d$m$y"
        indexA=$(($indexA + 1))
        done
        fi
    fi
    done
    done
}
dat7()
{

    for y in {1950..1952}
    do
    for m in {01..12}
    do
    if $( trenteun $m )
    then
        for d in {01..31}
        do
        dates1["$indexA"]="${d:1}$m$y"
        indexA=$(($indexA + 1))
        dates1["$indexA"]="$d${m:1}$y"
        indexA=$(($indexA + 1))
        done
    fi
    if $( isleap $y ) 
    then
        if [[ $m == 02 ]]
        then
            for d in {01..29}
            do
            dates1["$indexA"]="${d:1}$m$y"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="$d${m:1}$y"
            indexA=$(($indexA + 1))
            done
        else
        for d in {01..30}
        do
            dates1["$indexA"]="${d:1}$m$y"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="$d${m:1}$y"
            indexA=$(($indexA + 1))
        done
        fi
    else
        if [[ $m == 02 ]]  
        then
            for d in {01..28}
            do
            dates1["$indexA"]="${d:1}$m$y"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="$d${m:1}$y"
            indexA=$(($indexA + 1))
            done
        else
        for d in {01..30}
        do
            dates1["$indexA"]="${d:1}$m$y"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="$d${m:1}$y"
            indexA=$(($indexA + 1))
        done
        fi
    fi
    done
    done
}
dat6()
{

    for y in {1950..1952}
    do
    for m in {01..12}
    do
    if $( trenteun $m )
    then
        for d in {01..31}
        do
        dates1["$indexA"]="${d}$m${y:2}"
        indexA=$(($indexA + 1))
        dates1["$indexA"]="${d:1}${m:1}$y"
        indexA=$(($indexA + 1))
        done
    fi
    if $( isleap $y ) 
    then
        if [[ $m == 02 ]]
        then
            for d in {01..29}
            do
            dates1["$indexA"]="${d}$m${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m:1}$y"
            indexA=$(($indexA + 1))
            done
        else
        for d in {01..30}
        do
            dates1["$indexA"]="${d}$m${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m:1}$y"
            indexA=$(($indexA + 1))
        done
        fi
    else
        if [[ $m == 02 ]]  
        then
            for d in {01..28}
            do
            dates1["$indexA"]="${d}$m${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m:1}$y"
            indexA=$(($indexA + 1))
            done
        else
        for d in {01..30}
        do
            dates1["$indexA"]="${d}$m${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m:1}$y"
            indexA=$(($indexA + 1))
        done
        fi
    fi
    done
    done
}
dat5()
{

    for y in {1950..1952}
    do
    for m in {01..12}
    do
    if $( trenteun $m )
    then
        for d in {01..31}
        do
        dates1["$indexA"]="${d}${m:1}${y:2}"
        indexA=$(($indexA + 1))
        dates1["$indexA"]="${m:1}$y"
        indexA=$(($indexA + 1))
        dates1["$indexA"]="${d:1}${m}${y:2}"
        indexA=$(($indexA + 1))
        dates1["$indexA"]="${m:1}${y}"
        indexA=$(($indexA + 1))
        done
    fi
    if $( isleap $y ) 
    then
        if [[ $m == 02 ]]
        then
            for d in {01..29}
            do
            dates1["$indexA"]="${d}${m:1}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${m:1}$y"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${m:1}${y}"
            indexA=$(($indexA + 1))
            done
        else
        for d in {01..30}
        do
            dates1["$indexA"]="${d}${m:1}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${m:1}$y"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${m:1}${y}"
            indexA=$(($indexA + 1))
        done
        fi
    else
        if [[ $m == 02 ]]  
        then
            for d in {01..28}
            do
            dates1["$indexA"]="${d}${m:1}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${m:1}$y"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${m:1}${y}"
            indexA=$(($indexA + 1))
            done
        else
        for d in {01..30}
        do
            dates1["$indexA"]="${d}${m:1}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${m:1}$y"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${m:1}${y}"
            indexA=$(($indexA + 1))
        done
        fi
    fi
    done
    done
}

dat4()
{

    for y in {1950..1952}
    do
    for m in {01..12}
    do
    if $( trenteun $m )
    then
        for d in {01..31}
        do
        dates1["$indexA"]="${d:1}${m:1}${y:2}"
        indexA=$(($indexA + 1))
        dates1["$indexA"]="$y"
        indexA=$(($indexA + 1))
        dates1["$indexA"]="${d:1}${m:1}${y:2}"
        indexA=$(($indexA + 1))
        dates1["$indexA"]="${d}${m}"
        indexA=$(($indexA + 1))
        done
    fi
    if $( isleap $y ) 
    then
        if [[ $m == 02 ]]
        then
            for d in {01..29}
            do
            dates1["$indexA"]="${d:1}${m:1}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="$y"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m:1}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d}${m}"
            indexA=$(($indexA + 1))
            done
        else
        for d in {01..30}
        do
            dates1["$indexA"]="${d:1}${m:1}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="$y"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m:1}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d}${m}"
            indexA=$(($indexA + 1))
        done
        fi
    else
        if [[ $m == 02 ]]  
        then
            for d in {01..28}
            do
            dates1["$indexA"]="${d:1}${m:1}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="$y"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m:1}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d}${m}"
            indexA=$(($indexA + 1))
            done
        else
        for d in {01..30}
        do
            dates1["$indexA"]="${d:1}${m:1}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="$y"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m:1}${y:2}"
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d}${m}"
            indexA=$(($indexA + 1))
        done
        fi
    fi
    done
    done
}
dat3()
{

    for y in {1950..1952}
    do
    for m in {01..12}
    do
    if $( trenteun $m )
    then
        for d in {01..31}
        do
        dates1["$indexA"]="${m:1}${y:2}"
        indexA=$(($indexA + 1))
        indexA=$(($indexA + 1))
        dates1["$indexA"]="${d:1}${m}"
        indexA=$(($indexA + 1))
        done
    fi
    if $( isleap $y ) 
    then
        if [[ $m == 02 ]]
        then
            for d in {01..29}
            do
            dates1["$indexA"]="${m:1}${y:2}"
            indexA=$(($indexA + 1))
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m}"
            indexA=$(($indexA + 1))
            done
        else
        for d in {01..30}
        do
            dates1["$indexA"]="${m:1}${y:2}"
            indexA=$(($indexA + 1))
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m}"
            indexA=$(($indexA + 1))
        done
        fi
    else
        if [[ $m == 02 ]]  
        then
            for d in {01..28}
            do
            dates1["$indexA"]="${m:1}${y:2}"
            indexA=$(($indexA + 1))
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m}"
            indexA=$(($indexA + 1))
            done
        else
        for d in {01..30}
        do
            dates1["$indexA"]="${m:1}${y:2}"
            indexA=$(($indexA + 1))
            indexA=$(($indexA + 1))
            dates1["$indexA"]="${d:1}${m}"
            indexA=$(($indexA + 1))
        done
        fi
    fi
    done
    done
}
# if isleap 1981
# then
#     echo "oui marc is leap"
#   else 
#     echo "non pas leap year"
# fi
data=$1
lgdt=${#data}
if [[ $lgdt > 1 ]]
then
    for ((i=0;i<$lgdt+1;i++))
    do
        if [[ ${data:$i} == 3* ]]
        then
            dat3
            # echo "oui 3"
        fi
        if [[ ${data:$i} == 4* ]]
        then
            dat4
            # echo "oui 4"
        fi
        if [[ ${data:$i} == 5* ]]
        then
            dat5
            # echo "oui 5"
        fi
        if [[ ${data:$i} == 6* ]]
        then
            dat6
        fi
        if [[ ${data:$i} == 7* ]]
        then
            dat7
        fi
        if [[ ${data:$i} == 8* ]]
        then
            dat8
        fi
    done
else
    if [[ ${data} == 3 ]]
        then
            dat3
            # echo "oui 3"
        fi
        if [[ ${data} == 4 ]]
        then
            dat4
            # echo "oui 4"
        fi
        if [[ ${data} == 5 ]]
        then
            dat5
            # echo "oui 5"
        fi
        if [[ ${data} == 6 ]]
        then
            dat6
        fi
        if [[ ${data} == 7 ]]
        then
            dat7
        fi
        if [[ ${data} == 8 ]]
        then
            dat8
        fi
fi


# function year completes
# dat3;dat5;dat4;dat6;dat7;dat8
dates=( `for i in ${dates1[@]}; do echo $i; done | sort -u` )
# poss=0
unset dates1


# for h in ${dates[@]}
#     do
#         echo $h
#         poss=$(($poss+1))
#     done
# echo "Enfin finit nombre de possibilités en all chiffres: $possibilities"
# echo "possibilités une fois triées: $poss"




order=$4
case=$3
dict=$2
# echo " $dict est le dico $case est la casse et $order est l'ordre, hello monarc!"

doWord(){
    file="$dict"
    [ ${2} ] && cas=$2 || cas=4
    [ ${3} ] && ord=$3 || ord="all"
    echo $ord
    while IFS= read -r line
    do
        length=${#line}
        majInit=`echo ${line:0:1} |tr '[:lower:]' '[:upper:]'`
        maj=`echo ${line} |tr '[:lower:]' '[:upper:]'`
        if  [ $cas -eq 1 ] 
        then
          echo "$line"
        fi
        if  [ $cas -eq 2 ] 
        then
          echo "$majInit${line:1:length}" # MAJ-word
        fi
        if  [ $cas -eq 3 ] 
        then
          echo "${maj}"
        fi
        if  [ $cas -eq 4 ] 
        then
          echo "$line"
          echo "$majInit${line:1:length}" # MAJ-word
          echo "${maj}"
        fi
        for k in ${dates[@]}
        do
            echo "$k"
        if [[ $cas -eq 1 && $ord == "all" ]]
        then
            echo "${line}${k}"
            echo "${k}${line}"
          
        fi
        if [[ $cas -eq 1 && $ord == "normal" ]]
        then
            echo "${line}${k}"
        fi
        if [[ $cas -eq 1 && $ord == "reverse" ]]
        then
            echo "${k}${line}"
        fi
        if  [[ $cas -eq 2 && $ord == "all" ]]
        then
            echo "${majInit}${line:1:length}${k}" # MAJ-word-number
            echo "${k}${majInit}${line:1:length}" # number-MAJ-word
        fi
        if  [[ $cas -eq 2 && $ord == "normal" ]] 
        then
            echo "${majInit}${line:1:length}${k}" # MAJ-word-number
        fi
        if  [[ $cas -eq 2 && $ord == "reverse" ]]
        then
            echo "${k}${majInit}${line:1:length}" # number-MAJ-word
        fi
        if  [[ $cas -eq 3 && $ord == "all" ]] 
        then
            echo "${maj}"
            echo "${maj}${k}"
            echo "${k}${maj}"
        fi
        if  [[ $cas -eq 3 && $ord == "normal" ]] 
        then
            echo "${maj}${k}"
        fi
        if  [[ $cas -eq 3 && $ord == "reverse" ]] 
        then
            echo "${k}${maj}"
        fi
        if  [[ $cas -eq 4 && $ord == "all" ]] 
        then
            echo "${maj}${k}"
            echo "${k}${maj}"
            echo "${majInit}${line:1:length}${k}" # MAJ-word-number
            echo "${k}${majInit}${line:1:length}" # number-MAJ-word
            echo "${line}${k}"
            echo "${k}${line}"
        fi
        if  [[ $cas -eq 4 && $ord == "normal" ]] 
        then
            echo "${maj}${k}"
            echo "${majInit}${line:1:length}${k}" # MAJ-word-number
            echo "${line}${k}"
        fi
        if  [[ $cas -eq 4 && $ord == "reverse" ]] 
        then
            echo "${k}${maj}"
            echo "${k}${majInit}${line:1:length}" # number-MAJ-word
            echo "${k}${line}"
        fi
        
      done
    done < "$file" 
}

doWord "$dict" "$case" "$order"


