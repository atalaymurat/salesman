module SalesHelper
  def payment_hash
       
      { "Nakit Ödeme" =>  "Nakit ödeme olarak fiyatlandırılmıştır. - Cash payment before shipment" , 
        "%20 siparişte" => "%20 siparişte, %80 bakiyesi makina fabrikadan sevkiyata hazır olduğunda - T/T 20% advance payment with order, 80% on advice goods ready for delivery",
        "%30 siparişte" => "%30 siparişte, %70 bakiyesi makina fabrikadan sevkiyata hazır olduğunda - T/T 30% advance payment with order, 70% on advice goods ready for delivery",
      "Karşılıklı Görüşme" => "Karşılıklı görüşmeler neticesinde belirlenecektir - Will be clearify after negotiations",
        "Ön Ödeme %100" => "%100 siparişte nakden - T/T 100% advance payment with order",
        "Vadeli" => "Belirlenen vadelerde ödenecektir",
      
      }
       
  end
  def delivery_condition_hash
    {
      "Ex-Works Varol" => "İstanbul-Türkiye Satıcı Depolarından teslim - EXW Istanbul/TURKEY incoterms 2010",
      "Ex-Works Homag" => "Homag Almanya fabrikadan teslim edilecektir- EXW EX-WORKS incoterms 2010",
      "CIF-ISTANBUL" => "CIF-ISTANBUL Gümrüklerinden alıcıya devir edilecektir - CIF-ISTANBUL incoterms 2010",
      "CIF-ANKARA" => "CIF-ANKARA Gümrüklerinden alıcıya devir edilecektir - CIF-ANKARA incoterms 2010",
      "DAP ALICI FABRIKA" => "Alıcı adresine araç üzerinde teslim edilecektir - DAP buyer location"
    }
  end
end
