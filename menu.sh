#!/usr/bin/bash
menu(){
	echo " "
	echo " ============================================== "
	echo " =================== ĐẬU ĐẬU ================== "
	echo " .•♫•♬•.•♫•♬•  MENU CÀI ĐẶT VPS  •♫•♬•.•♫•♬•. "
	echo " ============================================== "
	echo " (1). Menu X-ui "
	echo " (2). Cài đặt SpeedTest VPS "
	echo " (3). Cài đặt tăng tốc VPS "
	echo " (4). Đổi mật khẩu VPS "
	echo " (5). Cập nhật VPS "
	echo " (0). Đóng menu "
	echo " ============================================== "
	echo -n " Lựa chọn của bạn là:  "
	read so

	if [ $so -eq 1 ]
	then
        clear
        menu_x-ui
        
	elif [ $so -eq 2 ]
	then
        clear
        echo " "
        echo " ★★★ Bấm Y Để Đồng Ý Với Giấy Phép Nếu Bạn Cài Lần Đầu ★★★ "
        bash <(curl -Ls https://raw.githubusercontent.com/DauDau432/CD-speedtest/main/speedtest)
        menu
        
	elif [ $so -eq 3 ]
	then
        clear
        echo " "
        echo " ★★★ Triển Khai Tăng Tốc Cho Bạn ★★★ "
        wget -N --no-check-certificate "https://github.000060000.xyz/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
        menu
        
	elif [ $so -eq 4 ]
	then
        clear
        echo " "
        echo " ★ Mời Bạn Nhập Mật Khẩu Mới Và Xác Nhận Lại Mật Khẩu ★ "
        echo " "
        echo " = Mật Khẩu Bảo Mật Nên Không Nhìn Được Đâu, Nhập Đi = "
        echo " ------------------------------- "
        lsb\_release -a
        echo " ------------------------------- "
        echo " Bắt Đầu Nhập... "
        passwd
        echo " ------------------------------- "
        menu
        
    elif [ $so -eq 5 ]
	then
        clear
        apt_get update -y
        clear
        echo " "
        echo " Đã Cập Nhật VPS "
        menu
        
	elif [ $so -eq 0 ]
	then
        clear
        echo " "
        echo " ===== Ơ Kìa Sao Lại Đóng Menu ===== "
        echo " "
        echo " Nếu Muốn Gọi Menu Hãy Nhập Lệnh:  bash menu.sh  "
        echo " ------------------------------------------------------- "
        echo " YTB: https://www.youtube.com/channel/UCly-jPYF0jWZS12IdyVZqsg/featured "
        echo " FB: https://www.facebook.com/daudau.432/ "
        echo " Page: https://www.facebook.com/groups/vpsanhem "
        echo " Zalo: 0983538806 "
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
menu_x-ui(){
	echo " "
	echo " ============================================== "
	echo " =================== ĐẬU ĐẬU ================== "
	echo " ===.•♫•♬•.•♫•♬•  MENU X_UI  •♫•♬•.•♫•♬•.=== "
	echo " ============================================== "
	echo " (1). Cài đặt X-UI và mở Port cần thiết "
	echo " (2). Gỡ cài đặt X_UI "
	echo " (3). Cập nhật X_UI "
	echo " (4). Dừng bảng điều khiển "
	echo " (5). Khởi động bảng điều khiển "
	echo " (6). Khởi động lại bảng điều khiển "
	echo " (0). Quay lại "
	echo " ============================================== "
	echo -n " Lựa chọn của bạn là:  "
	read so

	if [ $so -eq 1 ]
	then
        clear
        x-ui install
        ufw allow 54321
        ufw allow 443
        ufw allow 80
        ufw allow 80/tcp
        clear
        echo " "
        echo " ★★★ Đã Cài Đặt X_UI ★★★ "
        menu_x-ui
        
	elif [ $so -eq 2 ]
	then
        
        clear
        echo " "
        echo " ★★★ Bấm Y Để Gỡ Cài Đặt X_UI Nếu Nó Hỏi ★★★ "
        x-ui uninstall
        ufw deny 54321
        menu_x-ui
        
	elif [ $so -eq 3 ]
	then
        x-ui update
        clear
        echo " "
        echo " ★★★ Đã Cập Nhật X_UI ★★★ "
        menu_x-ui
        
	elif [ $so -eq 4 ]
	then
        x-ui stop 
        clear
        echo " "
        echo " ★★★ Đã Dừng Bảng Điều Khiển ★★★ "
        menu_x-ui  
        
	elif [ $so -eq 5 ]
	then
        x-ui start  
        clear
        echo " "
        echo " ★★★ Đã Khởi Động Bảng Điều Khiển ★★★ "
        menu_x-ui   

	elif [ $so -eq 6 ]
	then
        x-ui restart 
        clear
        echo " "
        echo " ★★★ Đã Khởi Động Lại Bảng Điều Khiển ★★★ "
        menu_x-ui   
        
	elif [ $so -eq 0 ]
	then
        clear
        menu
        
        exit        
	else
        clear
        echo " "
        echo " === Số Bạn Chọn Không Có Trong Bảng Điều Khiển === "
        echo " "
        echo " ============ Chọn sai ời, chọn lại đi ============ "
        menu_x-ui
	fi

}
menu
