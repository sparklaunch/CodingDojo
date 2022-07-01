import Foundation

enum CouponError: Error {
    case invalidCoupon(String)
}

func subtotal(_ price: Int, with coupon: String) throws -> Int {
    let dropped = String(coupon.dropFirst(4))
    guard let couponAmount = Int(dropped) else {
        throw CouponError.invalidCoupon("Invalid coupon!!")
    }

    return max(price - couponAmount, 0)
}

do {
    try subtotal(27000, with: "Cash3000")
} catch {
    print(error)
}
