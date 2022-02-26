#!/usr/bin/bash
menu()
{
        HOME="v4.3.2"  #Version
	echo " "                                  
	echo " ================================================"
	echo " =================== ĐẬU ĐẬU ==========["$HOME"] "
	echo " =.•♫•♬•.•♫•♬•  MENU CÀI ĐẶT VPS  •♫•♬•.•♫•♬•.="
	echo " ================================================"
	echo " = (1). Menu X-ui                               ="
	echo " = (2). Menu Speedtest                          ="
	echo " = (3). Menu tăng tốc VPS                       ="
	echo " = (4). Đổi mật khẩu VPS                        ="
	echo " = (5). Cập nhật VPS                            ="
	echo " = (6). Cập nhật Menu                           ="
	echo " = (7). Thông Báo mới                           ="
	echo " = (0). Đóng menu                               ="
	echo " ============================================== "
	echo -n "  Lựa chọn của bạn là:  "
	read so

	if [ $so -eq 1 ]
	then
        clear
        menu_x-ui
        
	elif [ $so -eq 2 ]
	then
        clear
        menu_speedtest
        
	elif [ $so -eq 3 ]
	then
        clear
        echo " "
        echo "  ★★★ Triển Khai Tăng Tốc Cho Bạn ★★★ "
	echo " "
        wget -N --no-check-certificate "https://github.000060000.xyz/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
	clear
        menu
        
	elif [ $so -eq 4 ]
	then
        clear
        echo " "
        echo "  ★ Mời Bạn Nhập Mật Khẩu Mới Và Xác Nhận Lại Mật Khẩu ★ "
        echo "  == Mật Khẩu Bảo Mật Nên Không Nhìn Được Đâu. Nhập Đi == "
        echo " -------------------------------------- "
        lsb\_release -a
	DATE=`date`
	echo " -------------------------------------- "
        echo "  Date is $DATE "
        echo " -------------------------------------- "
        echo "  Bắt Đầu Nhập... "
        passwd
        menu
        
        elif [ $so -eq 5 ]
	then
        clear
        apt-get update -y
        clear
        echo " "
        echo "  ★★★ Đã Cập Nhật VPS ★★★ "
        menu
	
	elif [ $so -eq 6 ]
	then
        clear
        bash <(curl -Ls https://raw.githubusercontent.com/DauDau432/menu-CD/main/menu-script)
        clear
        echo " "
        echo "  ★★★ Đã Cập Nhật Menu ★★★ "
        menu
	
	elif [ $so -eq 7 ]
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
        echo " ============ Chọn sai ời. chọn lại đi ============ "
        menu
	fi
}

menu_x-ui()
{
	echo " "
	echo " ============================================== "
	echo " =================== ĐẬU ĐẬU ==========["$HOME"] "
	echo " =    .•♫•♬•.•♫•♬•  MENU X-UI  •♫•♬•.•♫•♬•. "
	echo " ============================================== "
	echo " = (1). Menu quản lý X-UI (nhiều chức năng hơn) "
	echo " = (2). Cài đặt X-UI và mở Port cần thiết "
	echo " = (3). Gỡ cài đặt bảng điều khiển "
	echo " = (4). Cập nhật X-UI "
	echo " = (5). Dừng bảng điều khiển "
	echo " = (6). Khởi động bảng điều khiển "
	echo " = (7). Khởi động lại bảng điều khiển "
	echo " = (8). Gỡ cài đặt X-UI "
	echo " = (0). Quay lại "
	echo " ============================================== "
	echo -n "  Lựa chọn của bạn là:  "
	read so
	
	if [ $so -eq 1 ]
	then
        clear
	x-ui
	clear
	menu_x-ui

	elif [ $so -eq 2 ]
	then
        clear
	ufw allow 54321
        ufw allow 443
        ufw allow 80
        ufw allow 80/tcp 
	bash <(curl -Ls https://raw.githubusercontent.com/DauDau432/VH_x-ui/main/install.sh)
	clear
	echo " "
	echo "  x-ui v0.3.2 Quá trình cài đặt hoàn tất và bảng điều khiển đã bắt đầu "
        echo "  Nếu đó là cài đặt mới, cổng web mặc định là 54321 "
	echo "  Tên người dùng và mật khẩu đều theo mặc định admin "
        echo "  Hãy đảm bảo rằng cổng này không bị các chương trình khác chiếm giữ "
	echo "  Và chắc rằng 54321 Cổng đã được phát hành "
        menu_x-ui
        
	elif [ $so -eq 3 ]
	then 
	echo " ---------------------------------------------- "
	echo "  Bấm Y để đồng ý "
	echo " ---------------------------------------------- "
        x-ui uninstall
        menu_x-ui
        
	elif [ $so -eq 4 ]
	then
	echo " ---------------------------------------------- "
	echo "  Bấm Y để đồng ý "
	echo " ---------------------------------------------- "
        x-ui update
        menu_x-ui
        
	elif [ $so -eq 5 ]
	then
        x-ui stop 
        menu_x-ui  
        
	elif [ $so -eq 6 ]
	then
        x-ui start  
        menu_x-ui   

	elif [ $so -eq 7 ]
	then
        x-ui restart 
        menu_x-ui   
        
	elif [ $so -eq 8 ]
	then
        rm /usr/bin/x-ui
        menu_x-ui 
	
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
        menu_x-ui
	fi
}

menu_speedtest()
{
	echo " "
	echo " ============================================== "
	echo " =================== ĐẬU ĐẬU ==========["$HOME"]"
	echo "   .•♫•♬•.•♫•♬•  MENU SPEEDTEST  •♫•♬•.•♫•♬•. "
	echo " ============================================== "
	echo "  (1). Cài đặt Speedtest "
	echo "  (2). Gỡ cài đặt Speedtest "
	echo "  (0). Quay lại "
	echo " ============================================== "
	echo -n "  Lựa chọn của bạn là:  "
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
