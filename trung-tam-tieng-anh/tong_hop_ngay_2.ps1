# Tác giả: Nguyễn Văn Mạnh Tùng
# Ngày tạo: 21/10/21026


Write-Host "Dang loc"
"=== TONG HOP ACCESS LOG ===" >> ".\logs\tong_hop_ngay_2.txt"
(Get-Content ".\logs\access.log" | Select-String "error").count >> ".\logs\tong_hop_ngay_2.txt"
(Get-Content ".\logs\payment.log" | Select-String "warning").count >> ".\logs\tong_hop_ngay_2.txt"

write-Host "Da hoan thanh!"