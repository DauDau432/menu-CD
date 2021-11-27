#!/usr/bin/bash
menu()
{
	echo " "
	echo " ============================================== "
	echo " =================== ĐẬU ĐẬU ================== "
	echo " .•♫•♬•.•♫•♬•  MENU CÀI ĐẶT VPS  •♫•♬•.•♫•♬•. "
	echo " ============================================== "
	echo "  (1). Menu X-ui "
	echo "  (2). Menu Speedtest "
	echo "  (3). Menu tăng tốc VPS "
	echo "  (4). Đổi mật khẩu VPS "
	echo "  (5). Cập nhật VPS "
	echo "  (0). Đóng menu "
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
        echo "  Page: https://www.facebook.com/groups/vpsanhem "
        echo "  Zalo: 0983538806 "
        echo " ------------------------------------------------------- "
        exit 
               
	else
        clear
        echo " "
        echo " === Số Bạn Chọn Không Có Trong Bảng Điều Khiển === "
        echo " "
        echo " ============ Chọn sai ời, chọn lại đi ============ "
        menu
	fi
}

menu_x-ui()
{
	echo " "
	echo " ============================================== "
	echo " =================== ĐẬU ĐẬU ================== "
	echo " ===.•♫•♬•.•♫•♬•  MENU X_UI  •♫•♬•.•♫•♬•.=== "
	echo " ============================================== "
	echo "  (1). Menu quản lý X-UI (nhiều chức năng hơn) "
	echo "  (2). Cài đặt X-UI và mở Port cần thiết "
	echo "  (3). Gỡ cài đặt X_UI "
	echo "  (4). Cập nhật X_UI "
	echo "  (5). Dừng bảng điều khiển "
	echo "  (6). Khởi động bảng điều khiển "
	echo "  (7). Khởi động lại bảng điều khiển "
	echo "  (0). Quay lại "
	echo " ============================================== "
	echo -n "  Lựa chọn của bạn là:  "
	read so
	
	if [ $so -eq 1 ]
	then
        clear
	echo " "
        echo "  ★★★ Tập Lệnh Quản Lý Bảng Điều Khiển ★★★ "
	echo " "
	x-ui
	clear
	menu_x-ui

	elif [ $so -eq 2 ]
	then
        clear
	bash <(curl -Ls https://raw.githubusercontent.com/DauDau432/CD-x-ui/main/CD%20x-ui)
        menu_x-ui
        
	elif [ $so -eq 3 ]
	then
        clear
        echo " "
        echo "  ★★★ Bấm Y Để Gỡ Cài Đặt X_UI ★★★ "
	echo " "
        x-ui uninstall
        ufw deny 54321
	clear
        menu_x-ui
        
	elif [ $so -eq 4 ]
	then
	echo " ---------------------------------------------- "
	echo "  Bấm Y để đồng ý "
	echo " ---------------------------------------------- "
        x-ui update
        clear
        echo " "
        echo "  ★★★ Đã Cập Nhật X_UI ★★★ "
        menu_x-ui
        
	elif [ $so -eq 5 ]
	then
        x-ui stop 
        clear
        echo " "
        echo "  ★★★ Đã Dừng Bảng Điều Khiển ★★★ "
        menu_x-ui  
        
	elif [ $so -eq 6 ]
	then
        x-ui start  
        clear
        echo " "
        echo "  ★★★ Đã Khởi Động Bảng Điều Khiển ★★★ "
        menu_x-ui   

	elif [ $so -eq 7 ]
	then
        x-ui restart 
        clear
        echo " "
        echo "  ★★★ Đã Khởi Động Lại Bảng Điều Khiển ★★★ "
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
        echo " ============ Chọn sai ời, chọn lại đi ============ "
        menu_x-ui
	fi
}

menu_speedtest()
{
	echo " "
	echo " ============================================== "
	echo " =================== ĐẬU ĐẬU ================== "
	echo "  .•♫•♬•.•♫•♬•  MENU SPEEDTEST  •♫•♬•.•♫•♬•. "
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
        clear
        echo " "
        echo "  ★★★ Bấm Y Để Gỡ Cài Đặt Speedtest ★★★ "
	echo " "
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
        echo " ============ Chọn sai ời, chọn lại đi ============ "
        menu_speedtest
	fi
}
menu
