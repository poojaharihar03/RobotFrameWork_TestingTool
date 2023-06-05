class ShippingCalculator:
    def __init__(self):
        self.user_type = None

    def set_user_type(self, user_type):
        self.user_type = user_type

    def calculate_shipping_cost(self, total_order_cost, shipping_option):
        if self.user_type == "Valid":
            if total_order_cost < 50:
                if shipping_option == "Standard":
                    return 10
                elif shipping_option == "Express":
                    return 20
            elif 50 <= total_order_cost <= 100:
                if shipping_option == "Standard":
                    return 5
                elif shipping_option == "Express":
                    return 15
            elif total_order_cost > 100:
                if shipping_option == "Standard":
                    return 0
                elif shipping_option == "Express":
                    return 10
        else:
            return "Error: Invalid User"
