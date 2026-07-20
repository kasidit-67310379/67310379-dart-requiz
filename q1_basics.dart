const vatRate = 0.07;
double calcTotal({required int price, required int qty, double discount = 0}) {
  return (price * qty - discount) * (1 + vatRate);
}

void main() {
  final String shopName = "Dart Cafe";
  print("ร้าน: $shopName");
  print("อัตราภาษี (vatRate): $vatRate");
  print("---");

  List<String> categories = ["เครื่องดื่ม", "ของคาว", "ของหวาน"];
  Map<String, int> menu = {"ลาเต้": 40, "ไก่ย่าง": 30, "เค้ก": 60, "ไอติม": 55};

  print("หมวดเมนู: $categories");
  print("จำนวนเมนูทั้งหมด: ${menu.length}");
  print("ราคาลาเต้: ${menu["ลาเต้"]} บาท");
  print("---");

  print("เมนูราคา 50 บาทขึ้นไป:");
  for (var num in menu.entries) {
    if (num.value >= 50) {
      print("${num.key} : ${num.value}");
    }
  }
  print("---");

  double totalWithoutDiscount = calcTotal(price: 55, qty: 2);
  double totalWithDiscount = calcTotal(price: 55, qty: 2, discount: 10);

  print("ยอดสุทธิ (ไม่มีส่วนลด): $totalWithoutDiscount บาท");
  print("ยอดสุทธิ (ส่วนลด 10 บาท): ${totalWithDiscount} บาท");
  print("---");

  String? coupon;
  print("ความยาวคูปอง: ${coupon?.length ?? 0}");
  coupon ??= "NO-COUPON";
  print("คูปองหลังกำหนดค่า: $coupon");
}
