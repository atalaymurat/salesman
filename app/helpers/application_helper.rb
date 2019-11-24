module ApplicationHelper
  def flasherize(key)
    case key.to_sym
    when :error
      "alert-danger"
    when :success
      "alert-success"
    when :notice
      "alert-info"
    else
      "alert-warning"
    end
  end

  def number_to_euro(amount)
    number_to_currency(amount, unit: "EUR", separator: ",", delimiter:".", format: "%n %u")
  end
  def number_to_tl(amount)
    number_to_currency(amount, unit: "TL", separator: ",", delimiter:".", format: "%n %u")
  end
  def number_to_usd(amount)
    number_to_currency(amount, unit: "USD", separator: ",", delimiter:".", format: "%n %u")
  end
  def set_currency(price, cur)
    if cur == "EUR"
      number_to_euro(price)
    elsif cur == "USD"
      number_to_usd(price)
    elsif cur == "TL"
      number_to_tl(price)
    end
  end
end
