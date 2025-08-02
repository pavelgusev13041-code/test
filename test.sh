#!bin/bash
payza=60
#провека запуска процесса
RABOTA=0
if pgrep -x test; then
    RABOTA=1
fi
#запись в лог файл 
while true; do
if [ $RABOTA -eq 1 ]; then
    echo "[$(data +'%H:%M:%S')] процесс запущен" >> /var/log/monitoring.log
    curl -Xk https://test.com/monitoring/test/api
else
    echo "[$(data +'%H:%M:%S')] процесс остановлен" >>  /var/log/monitoring.log
sleep=$payza
fi
done
