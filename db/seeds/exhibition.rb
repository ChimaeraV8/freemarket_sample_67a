def create_product(name, price, brand_name,size_id,category_id)
  product = Exhibition.create(name: name, explanation: "商品の説明", price: price, brand_name: brand_name, shipping_method_id: 1, shipping_date_id: 1,  size_id: size_id, condition_id: 1, prefecture_id: 1, category_id: category_id, user_id: 1,sales_status:0)
end


name = "レディース1"     ;price = 3700;brand_name = "シャネル";size_id = 2 ;category_id = 3 ;create_product(name, price, brand_name, size_id,category_id)
name = "レディース2"     ;price = 3500;brand_name = "シャネル";size_id = 3 ;category_id = 4 ;create_product(name, price, brand_name, size_id,category_id)
name = "レディース3"     ;price = 3000;brand_name = "シャネル";size_id = 4 ;category_id = 5 ;create_product(name, price, brand_name, size_id,category_id)
name = "レディース4"     ;price = 3700;brand_name = "シャネル";size_id = 5 ;category_id = 6 ;create_product(name, price, brand_name, size_id,category_id)
name = "レディース5"     ;price = 3600;brand_name = "シャネル";size_id = 13 ;category_id = 68  ;create_product(name, price, brand_name, size_id,category_id)
name = "レディース6"     ;price = 3200;brand_name = "シャネル";size_id = 1;category_id = 96 ;create_product(name, price, brand_name, size_id,category_id)
name = "レディース7"     ;price = 3500;brand_name = "ナイキ";size_id = 13 ;category_id = 71 ;create_product(name, price, brand_name, size_id,category_id)
name = "レディース8"     ;price = 3000;brand_name = "ナイキ";size_id = 13 ;category_id = 71 ;create_product(name, price, brand_name, size_id,category_id)
name = "レディース9"     ;price = 3300;brand_name = "ナイキ";size_id = 14;category_id = 71 ;create_product(name, price, brand_name, size_id,category_id)
name = "メンズ1"        ;price =25000 ;brand_name = "ナイキ";size_id = 4;category_id = 202;create_product(name, price, brand_name, size_id,category_id)
name = "メンズ2"        ;price =3200 ;brand_name = "ナイキ";size_id = 5;category_id = 202;create_product(name, price, brand_name, size_id,category_id)
name = "メンズ3"        ;price =3100 ;brand_name = "ナイキ";size_id = 6;category_id = 202;create_product(name, price, brand_name, size_id,category_id)
name = "ベビーキッズ1"   ;price =2000 ;brand_name = "ナイキ";size_id = 2;category_id =213 ;create_product(name, price, brand_name, size_id,category_id)
name = "ベビーキッズ2"   ;price =1200 ;brand_name = "ナイキ";size_id = 2;category_id =213 ;create_product(name, price, brand_name, size_id,category_id)
name = "ベビーキッズ3"   ;price =1500 ;brand_name = "ナイキ";size_id = 2;category_id =217 ;create_product(name, price, brand_name, size_id,category_id)
name = "スマートフォン1"        ;price =9000 ;brand_name = "アップル";size_id =1 ;category_id =281 ;create_product(name, price, brand_name, size_id,category_id)
name = "スマートフォン2"        ;price =8000 ;brand_name = "アップル";size_id =1 ;category_id =281 ;create_product(name, price, brand_name, size_id,category_id)
name = "スマートフォン3"         ;price =10000 ;brand_name = "アップル";size_id =1 ;category_id =281 ;create_product(name, price, brand_name, size_id,category_id)