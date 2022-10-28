#!/usr/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

menu()
{
	echo " "                                  
	echo -e " ${green}==============================================${plain}"
	echo -e " ${green}===================${plain} ĐẬU ĐẬU ${green}===========[${plain}4.3.2${green}]${plain}"
	echo -e " ${green}=${plain} .•♫•♬•.•♫•♬• kiểm tra tình yêu •♫•♬•.•♫•♬•.${green}=${plain}"
	echo -e " ${green}==============================================${plain}"
	echo -e " ${green}=${plain} (1). Kiểm tra Duy yêu Thảo không           ${green}=${plain}"
	echo -e " ${green}=${plain} (2). Kiểm tra Thảo yêu Duy không           ${green}=${plain}"
	echo -e " ${green}=${plain} (3). Cập nhật Menu                         ${green}=${plain}"
	echo -e " ${green}=${plain} (4). Lời chúc từ Đậu Đậu                   ${green}=${plain}"
	echo -e " ${green}=${plain} (0). Đóng menu                             ${green}=${plain}"
	echo -e " ${green}==============================================${plain}"
	echo -n "  Lựa chọn của bạn là: "
	read so

	if [ $so -eq 1 ]
	then
        clear
        menu_1
        
	elif [ $so -eq 2 ]
	then
        clear
        menu_2
        
	elif [ $so -eq 3 ]
	then
        clear
	rm -rf totinh.sh
        wget https://raw.githubusercontent.com/DauDau432/menu-CD/main/totinh.sh
	clear
        bash totinh.sh
	
	elif [ $so -eq 4 ]
	then
        clear
	menu_thongbao
        
	elif [ $so -eq 0 ]
	then
        clear
        echo " "
        echo " =========== Muốn Đóng Menu Chứ Gì =========== "
        echo " "
        echo "  Đíu Cho Đóng Đó Làm Gì Nhau :v "
	menu
               
	else
        clear
        echo " "
        echo " === Số Bạn Chọn Không Có Trong Bảng Điều Khiển === "
        echo " "
        echo " ============= Ối dồi ôi. chọn lại đi ============= "
        menu
	fi
}

menu_1()
{
	echo " "
	echo " ==============================================="
	echo " =================== ĐẬU ĐẬU ============[4.3.2]"
	echo " =.•♫•♬•.•♫•♬• Duy có 💝 Thảo không •♫•♬•.•♫•♬•.="
	echo " ==============================================="
	echo " = (1). Iu chớt đi được                        ="
	echo " = (2). Đéo                                    ="
	echo " = (3). Không muốn trả lời                     ="
	echo " = (0). Quay lại                               ="
	echo " ==============================================="
	echo -n "  Lựa chọn của bạn là: "
	read so
	
	if [ $so -eq 1 ]
	then
        clear
	echo ""
        echo " ---------------------------------------------------- "
	echo "  Hỏi CC biết rồi còn hỏi nữa"
	echo "  Chọn Câu hỏi nào khó hơn đi"
        echo " ---------------------------------------------------- "
	menu_1

	elif [ $so -eq 2 ]
	then
        clear
        echo " ----------------------------------------------------- "
        echo "  Câu trả lời này không tồn tại trong từ điển của Duy "
        echo "  Xin bạn hãy trả lời lại :)))"
        echo " ----------------------------------------------------- "
        menu_1
        
	elif [ $so -eq 3 ]
	then 
	clear
	echo ""
        echo " ---------------------------------------------------- "	
	echo "  Đã không muón trả lời r còn bấm vào làm gì"
        echo " ---------------------------------------------------- "
	menu_1
	
	elif [ $so -eq 0 ]
	then
        clear
        menu
              
	else
        clear
        echo " "
        echo " === Số Bạn Chọn Không Có Trong Bảng Điều Khiển === "
        echo " "
        echo " ============= Ối dồi ôi. chọn lại đi ============= "
        menu_1
	fi
}

menu_2()
{
	echo " "
	echo " ==============================================="
	echo " =================== ĐẬU ĐẬU ============[4.3.2]"
	echo " =.•♫•♬•.•♫•♬• Thảo có 💝 Duy không •♫•♬•.•♫•♬•.="
	echo " ==============================================="
	echo " = (1). Iu chớt đi được                        ="
	echo " = (2). Đéo                                    ="
	echo " = (3). Không muốn trả lời                     ="
	echo " = (0). Quay lại                               ="
	echo " ==============================================="
	echo -n "  Lựa chọn của bạn là: "
	read so
	
	if [ $so -eq 1 ]
	then
        clear
	menu_yeu

	elif [ $so -eq 2 ]
	then
        clear
        echo " ---------------------------------------------------- "
        echo "  Chọn sai rồi trả lời lại đi :)))"
        echo " ---------------------------------------------------- "
        menu_2
        
	elif [ $so -eq 3 ]
	then 
	clear
	menu_ktl
	
	elif [ $so -eq 0 ]
	then
        clear
        menu
              
	else
        clear
        echo " "
        echo " === Số Bạn Chọn Không Có Trong Bảng Điều Khiển === "
        echo " "
        echo " ============= Ối dồi ôi. chọn lại đi ============= "
        menu_2
	fi
}

menu_thongbao()
{        
        clear
        echo " "
	echo "         ★★★★★★★★★★★★ I LOVE YOU ★★★★★★★★★★★★ "
        echo " ------------------------------------------------------------------------ "
	echo " 💖 ❤ 🧡 🤍 💔 💛 💝 💚 💓 💜 🤎 Đậu chức 2 bạn trăm năm hạnh phúc 💖 ❤ 🧡 🤍 💔 💛 💝 💚 💓 💜 🤎 "
        echo " ------------------------------------------------------------------------ "
	echo "  Bấm phím Enter để quay lại... "
	read so
	if [ $so=true ]
	then 
	clear 
        menu
	fi
}

menu_yeu()
{
        clear
        echo ""
        echo " ---------------------------------------------------- "
        echo "  Đưa tay đây nào"
        echo "  💝 💝 💝 💝 💝 💝 💝"
        echo "  Mãi bên nhau bạn nhớ"
        echo " ---------------------------------------------------- "
	echo "  Bấm phím Enter để quay lại    "
	read so
	if [ $so=true ]
	then 
	clear
	menu_2
	fi
}

menu_ktl()
{
        echo " ---------------------------------------------------- "
        echo "  Tại sao lại không muốn trả lời "
        echo "  Ra ngoài trả lời lại"
        echo " ---------------------------------------------------- "
	echo "  Bấm phím Enter để quay lại "
	read so
	if [ $so=true ]
	then 
	clear
	menu_2
	fi
}

menu
