#!/bin/bash

read -p "Укажите путь к директории: " DELDIR

if [ -e $DELDIR ]
        then
                echo 'Директория обнаружена'
                cd $DELDIR
                echo 'Производится удаление'
                rm -v *.bak *.tmp *.backup
                echo 'Удаление прошло успешно!'
        else
                echo 'Указанная директория не найдена'
                exit 2
fi