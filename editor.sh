
#!/bin/sh


	inputStr=$(zenity --entry --title="İndirilmek istenen dosyanın linkini veya konumunu giriniz." --text="Link:" --width=500 --height=100)
	zenity --info --title="My Title" --text="Linkiniz: $inputStr" --width=200 --height=100
	inputStr2=$(zenity --entry --title="Kullanmak istediğiniz Parametreyi giriniz.." --text="Default(d),i,c,r,O:" --width=500 --height=100)
	zenity --info --title="My Title" --text="Parametreniz: $inputStr2" --width=200 --height=100
	
	

case $? in
    0)
    
	if [ $inputStr2 = 'd' ]
 	then
 		(

echo "10" ; sleep 1
echo "Dosya indiriliyor" ; sleep 1
wget $inputStr
) |
(zenity --progress \
  --title="Wget Arayüzü" \
  --text="Sistem dosyaları indirirken lütfen bekleyiniz..." \
  --percentage=0
  --width=200 --height=100)

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="İndirilirken hata olustu."
fi

		
		
	elif [ $inputStr2 = 'i' ]
	then
		(

echo "10" ; sleep 1
echo "Dosya indiriliyor" ; sleep 1
wget -i $inputStr
) |
(zenity --progress \
  --title="Wget Arayüzü" \
  --text="Sistem dosyaları indirirken lütfen bekleyiniz..." \
  --percentage=0
  --width=200 --height=100)

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="İndirilirken hata olustu."
fi
		
		
	elif [ $inputStr2 = 'c' ]
	then
	(

echo "10" ; sleep 1
echo "Dosya indiriliyor" ; sleep 1
wget -c $inputStr
) |
(zenity --progress \
  --title="Wget Arayüzü" \
  --text="Sistem dosyaları indirirken lütfen bekleyiniz..." \
  --percentage=0
  --width=200 --height=100)

if [ "$?" = -1 ] ; then
        zenity --error \
         --text="İndirilirken hata olustu."
fi
		
		
	elif [ $inputStr2 = 'r' ]
	then
	(

echo "10" ; sleep 1
echo "Dosya indiriliyor" ; sleep 1
wget -r $inputStr
) |
(zenity --progress \
  --title="Wget Arayüzü" \
  --text="Sistem dosyaları indirirken lütfen bekleyiniz..." \
  --percentage=0
  --width=200 --height=100)

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="İndirilirken hata olustu."
fi
		
		
	elif [ $inputStr2 = 'O' ]
	then
	(

echo "10" ; sleep 1
echo "Dosya indiriliyor" ; sleep 1
inputStr3=$(zenity --entry --title="Dosyayı hangi isimle kaydetmek istersiniz" --text="İsim:" --width=400 --height=100)
		wget -O $inputStr3 $inputStr
) |
(zenity --progress \
  --title="Wget Arayüzü" \
  --text="Sistem dosyaları indirirken lütfen bekleyiniz..." \
  --percentage=0
  --width=200 --height=100)

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="İndirilirken hata olustu."
fi
		
		
	else
		zenity --info --title="Error" --text="Parametre alma aşamasında hata Olustu:" --width=200 --height=100	
	fi
	
        
       ;;
    1)

        echo "İşlem iptal edildi.";;
    -1)
        echo "An unexpected error has occurred.";;
esac


  


