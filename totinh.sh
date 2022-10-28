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
	echo -e " ${green}=${plain}.•♫•♬•.•♫•♬• kiểm tra tình yêu •♫•♬•.•♫•♬•.${green}=${plain}"
	echo -e " ${green}========================================a======${plain}"
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
        bash <(curl -Ls https://raw.githubusercontent.com/DauDau432/menu-CD/main/menu-script)
        clear
        echo " "
        echo "  ★★★ Đã Cập Nhật Menu ★★★ "
        menu
	
	elif [ $so -eq 4 ]
	then
        clear
	      menu_thongbao
        
	elif [ $so -eq 0 ]
	then
        clear
        echo " "
        echo " =========== Ơ Kìa Sao Lại Đóng Menu =========== "
        echo " "
        echo "  Nếu Muốn Gọi Menu Hãy Nhập Lệnh:  bash menu.sh  "
        echo " ------------------------------------------------------- "
        echo "  YTB: https://www.youtube.com/channel/UCly-jPYF0jWZS12IdyVZqsg/featured "
        echo "  FB: https://www.facebook.com/daudau.432/ "
	      echo "  Github: https://github.com/DauDau432 "
        echo "  Zalo: 0983538806 "
        echo " ------------------------------------------------------- "
        exit 
               
	else
        clear
        echo " "
        echo " === Số Bạn Chọn Không Có Trong Bảng Điều Khiển === "
        echo " "
        echo " ============ Ối dồi ôi. chọn lại đi ============ "
        menu
	fi
}

menu_1()
{
	echo " "
	echo " ==============================================="
	echo " =================== ĐẬU ĐẬU ===========[4.3.2]"
	echo " =.•♫•♬•.•♫•♬•Duy có 💝 Thảo không•♫•♬•.•♫•♬•.="
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
        echo "  Đưa tay đây nào"
        echo "  💝💝💝💝💝💝💝"
        echo "  Mãi bên nhau bạn nhớ"
        menu

	elif [ $so -eq 2 ]
	then
        clear
        echo ""
        echo "  Câu trả lời này không tồn tại trong từ điển của Duy"
        echo "  Xin bạn hãy trả lời lại :)))"
        menu
        
	elif [ $so -eq 3 ]
	then 
        echo " ---------------------------------------------- "
        echo "  Tại sao lại không muốn trả lời ;o "
        echo "  Ra ngoài trả lời lại"
        echo " ---------------------------------------------- "
        menu
	
	elif [ $so -eq 0 ]
	then
        clear
        menu
              
	else
        clear
        echo " "
        echo " === Số Bạn Chọn Không Có Trong Bảng Điều Khiển === "
        echo " "
        echo " ============ Ối dồi ôi. chọn lại đi ============ "
        menu
	fi
}

menu_2()
{
	echo " "
	echo " =============================================="
	echo " =================== ĐẬU ĐẬU ==========[4.3.2]"
	echo " = .•♫•♬•.•♫•♬•  MENU SPEEDTEST  •♫•♬•.•♫•♬•. ="
	echo " =============================================="
	echo " = (1). Cài đặt Speedtest                     ="
	echo " = (2). Gỡ cài đặt Speedtest                  ="
	echo " = (0). Quay lại                              ="
	echo " =============================================="
	echo -n "  Lựa chọn của bạn là: "
	read so

	if [ $so -eq 1 ]
	then
        clear
	apt install speedtest-cli
	clear
	echo " "
	echo "  ★★★ Mạng Chậm Như Rùa Cũng Test :)) ★★★ "
	echo " "
	speedtest-cli --simple --bytes
	DATE=`date`
	echo " ---------------------------------------------- "
        echo "  Date is $DATE "
        menu_speedtest
        
	elif [ $so -eq 2 ]
	then
	echo " ---------------------------------------------- "
	echo "  Bấm Y để đồng ý "
	echo " ---------------------------------------------- "
        apt remove speedtest-cli
        clear
        menu_speedtest
	
	elif [ $so -eq 0 ]
	then
        clear
        menu
              
	else
        clear
        echo " "
        echo " === Số Bạn Chọn Không Có Trong Bảng Điều Khiển === "
        echo " "
        echo " ============ Chọn sai ời. chọn lại đi ============ "
        menu_speedtest
	fi
}

menu_thongbao()
{        
        clear
        echo " "
	echo "  ★★★★★★★★★★★★ Thông Báo ★★★★★★★★★★★★ "
	DATE=`date`
	echo " "
        echo "  Date is $DATE "
        echo " ------------------------------------------------------------------------ "
	echo "  Hiện tại không có thông báo nào mới "
	echo "  nếu có góp ý nào hoặc phát hiện lỗi vui lòng liên hệ với mình để mình khắc phục sớm"
	echo "  zalo: 0983538806"
        echo " ------------------------------------------------------------------------ "
	echo "  Bấm phím Enter để quay lại... "
	read so
	if [ $so=true ]
	then 
	clear 
        menu
	fi 
}	
menu
