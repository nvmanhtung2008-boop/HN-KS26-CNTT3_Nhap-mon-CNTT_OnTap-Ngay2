# BÀI LÀM – ÔN TẬP NGÀY 2

- **Họ tên:** Nguyễn Văn Mạnh Tùng
- **Lớp:** CNTT3
- **Link repository:**
- **Hệ điều hành (Windows/macOS):** Windows

## Bài 1. Lọc log thủ công

### Lệnh đã chạy

```PowerShell
Get-Content ".\logs\access.log" | Select-String "error" >>".\logs\error_report.txt"

```

### 2 dòng lỗi đầu tiên trong error_report.txt

```PowerShell
2025-10-18 08:17:59 [ERROR] Khong tim thay trang /lich-thi (404)
2025-10-18 08:25:55 [ERROR] Het thoi gian cho (timeout)
```

## Bài 2. Đếm bằng pipeline

### Lệnh

```PowerShell
(Get-Content ".\logs\access.log" | Select-String "warning").count
(Get-Content ".\logs\payment.log" | Select-String "error").count
```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
WARNING trong access.log: 4
ERROR trong payment.log: 3
```

## Bài 3. Chạy script auto_warning (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```PowerShell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass 
y
.\auto_warning.ps1
```

### Nội dung file logs/warning_report.txt

```PowerShell
=== CANH BAO THANH TOAN ===
2025-10-18 09:19:13 [WARNING] Cong thanh toan phan hoi cham
2025-10-18 09:28:16 [WARNING] Nhieu lan nhap sai ma OTP
2025-10-18 09:43:01 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:46:22 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:49:43 [WARNING] So du vi gan bang hoc phi
```

## Bài 4. Báo cáo tổng hợp

### Các lệnh đã chạy

```PowerShell
(Get-Content ".\logs\access.log" | Select-String "error").count >> ".\logs\tong_hop_ngay_2.txt"
(Get-Content ".\logs\payment.log" | Select-String "warning").count >> ".\logs\tong_hop_ngay_2.txt"
```

### Nội dung file logs/tong_hop_ngay2.txt

```text
=== TONG HOP ACCESS LOG ===
6
5
```

## Bài 5. Câu hỏi ngắn

- **a)** 
	- Lệnh `...>`là ghi đè, sẽ xóa hết dữ liệu trước đó.
	- Lệnh `...>>` là ghi nối, sẽ ghi tiếp vào dữ liệu trước đó.
- **b)** Nếu sử dụng `>` thay cho `>>` thì sẽ bị mất đi dòng `=== TONG HOP ACCESS LOG ===`
- **c)** Vì đường dẫn tương đối sẽ  sử dụng trên thư mục đang đứng hiện tại sẽ phù hợp với việc chia sẻ với nhiều người. Khác với đường dẫn tuyệt đối khi chỉ tối ưu cho duy nhất một máy.

## Tự chấm (điền sau khi có đáp án)

- **Điểm tự chấm:** ..../100
- **Lỗi mình đã mắc và cách sửa:**
