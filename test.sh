#!/bin/bash

# Var=`ls *`
# for Prt in `echo $Var`
# do 
#     echo $Prt
#     cat $Prt
# done

# Var=0

# while (($Var <= 10))
# do 
#     echo $Var
#     Var=$(expr $Var + 1)
# done
#     echo "END"

# echo "지금 Shell Script 실습중입니까?(Y/N)"
# read qna

# while [[ "$qna" != [Yy] ]]
# do 
#     echo "다시한번 생각해 보세요 Shell Script 실습중입니까?(Y/N)"
#     read qna
# done
#     echo "열심히 하세요"

# until who | grep "root"
# do
#     sleep 1
# done
#     echo "root $(date)에 로그인 되었습니다."
#     echo "root $(date)에 로그인 되었습니다." >> ./root.log


# while [ 1 ]
# do 
#     echo "현재 사용중인 shell은? (입력 예:sh)"
#     read a 

#     if [ "$a" != "sh" ]
#         then
#             continue
#         else
#             break
#     fi
# done


# for Var in sh bash csh tcsh ksh 
# do 
#     echo $Var
    
#     while [ 1 ]
#         do 
#             echo -n "위의 단어와 똑같이 입력해 주세요: "
#             read a

#             if [ $Var == $a ]
#             then
#                 continue 2
#             fi
#         done
#     done

# echo -n "숫자를 입력하세요(1~3): "
# read num

# case $num in
#     1)
#     echo "$num is one"
#     ;;
#     2)
#     echo "$num is two"
#     ;;
#     3)
#     echo "$num is three"
#     ;;        
#     *)
#     echo "1~3의 숫자가 아닌 숫자 또는 문자를 입력하셨군요."
# esac

file_cmp() {
    if [ $VAR1 -eq $VAR2 ]
    then echo "숫자 A와 B는 같습니다."

    elif [ $VAR1 -ge $VAR2 ]
    then echo "숫자 A는 B 보다 크거나 같습니다."

    elif [ $VAR1 -le $VAR2 ]
    then echo "숫자 A는 B 보다 작거나 같습니다."
fi
}

echo -n "숫자 A를 입력하세요: "
read VAR1

echo -n "숫자 B를 입력하세요: "
read VAR2

file_cmp


if [ $VAR1 -eq $VAR2 ]; then
    echo "숫자 A와 B는 같습니다."
    else
        if [ $VAR1 -ge $VAR2 ]; then
            echo "숫자 A는 B보다 크거나 같습니다."
            else
                if [ $VAR1 -le $VAR2 ]; then
                    echo "숫자 A는 B보다 작거나 같습니다."
                fi
        fi
fi