#!/bin/sh

echo -n"숫자 A를 입력하세요"
read VAR1
echo -n"숫자 B를 입력하세요"
read VAR2

# if [ $VAR1 -eq $VAR2 ]; then # [ -eq ] : 값이 같으면 참
#     echo "숫자 A와 B는 같습니다."
#     elif [ $VAR1 -ge $VAR2 ]; then  # [ -ge ] : 값1  >= 값2
#     echo "숫자 A는 B보다 크거나 같습니다."
#     elif [ $VAR1 -le $VAR2 ]; then  # [ -le ] : 값1 <= 값2
#     echo "숫자 A는 B보다 작거나 같습니다."
# fi

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

