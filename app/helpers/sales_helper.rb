module SalesHelper
  def payment_hash
       
      { "Nakit Ödeme" =>  "Nakit ödeme olarak fiyatlandırılmıştır. - Cash payment before shipment" , 
        "%20 siparişte" => "%20 siparişte, %80 bakiyesi makina sevkiyata hazır olduğunda - T/T 20% advance payment with order, 80% on advice goods ready for delivery",
      "Karşılıklı Görüşme" => "Karşılıklı görüşmeler neticesinde belirlenecektir - Will be clearify after negotiations",
        "Yüklemeden Önce" => "%20 siparişte, %80 bakiyesi makina sevkiyata hazır olduğunda - 20% advance payment with order, 80% on advice goods ready for delivery",
        "Vadeli" => "Belirlenen vadelerde ödenecektir",
      
      }
       
  end
  def delivery_condition_hash
    {
      "Ex-Works" => "İstanbul-Türkiye Depodan teslim - EXW Istanbul/TURKEY incoterms 2010",
      "CIF-ISTANBUL" => "CIF-ISTANBUL Gümrüklerinden alıcıya devir edilecektir - CIF-ISTANBUL"
    }
  end
end
