#!/bin/sh

SETSIZE=10

EXMB=$(expr $SETSIZE\*\(1024\*1024\)) # 점검용량 MB단위로 설정
 
for name in $(cut -d: -f1,3 /etc/passwd | awk -F: '$2 > 499 {print $1}') # /etc/passwd 에서 UID 1000 이상인 계정을 구분한다.
do
    echo " ■ 사용자 $name의 $SETSIZE MB 초과 파일 목록 / 용량"
    find /home -user $name -type f -ls | awk "\$7 > $EXMB" | awk '{print "  ▶ 경로: " $11, "/ 용량:" $7}'

echo ""
done

exit 0;