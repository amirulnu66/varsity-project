INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `mobile`, `details`, `status`) VALUES ('TXMHT4XP426QDRXC1OCP', 'TEst', 'asdf', '234234', '', 1);
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('65732368', 'TXMHT4XP426QDRXC1OCP', '20', 'napextra-100mg');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('65732368', 'Napa', '324234', '23', 'Box', 'a', '', 0, '213', 'napextra-100mg', 'sdf', 'http://localhost/pharmacy-v6/my-assets/image/product.png', 1);
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('16577234', 'TXMHT4XP426QDRXC1OCP', '23', '234');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('16577234', 'Napa  Extra', 'Metronidazol', '12', '', 'A-self', '', 0, '23', '234', 'sdf', 'http://localhost/pharmacy-v6/my-assets/image/product.png', 1);
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('BW2LKY74NJNXU2G', 'asd', 1);
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('17396328', 'TXMHT4XP426QDRXC1OCP', '23', '23');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('17396328', 'sdf', '234', '2', 'Mg', 'a', 'BW2LKY74NJNXU2G', 0, '23', '23', 'sdf', 'http://localhost/pharmacy-v6/my-assets/image/product/6ba163e293a80b7b2104cdf8afd9f9ba.png', 1);
INSERT INTO `product_purchase` (`purchase_id`, `chalan_no`, `supplier_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`) VALUES ('20180405062251', '2334', 'TXMHT4XP426QDRXC1OCP', '667.00', NULL, '2018-04-05', '', 1);
INSERT INTO `supplier_ledger` (`transaction_id`, `chalan_no`, `supplier_id`, `amount`, `date`, `description`, `status`) VALUES ('20180405062251', '2334', 'TXMHT4XP426QDRXC1OCP', '667.00', '2018-04-05', '', 1);
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `discount`, `batch_id`, `expeire_date`, `status`) VALUES ('DXbnrLSYqPCB9JX', '20180405062251', '17396328', '29', '23', '667.00', NULL, '2323', '2018-04-14', 1);
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `customer_mobile`, `customer_email`, `status`) VALUES ('EGGP2JJL8B7AWD5', 'asdf', 'sdf', '', '', 2);
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`) VALUES ('5KSNX68B45', 'EGGP2JJL8B7AWD5', 'NA', NULL, 0, 'Previous adjustment with software', 'NA', 'NA', '2018-04-05', 1);
UPDATE `customer_information` SET `status` = '1'
WHERE `customer_id` = 'EGGP2JJL8B7AWD5';
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `receipt_no`, `date`, `amount`, `payment_type`, `description`, `status`) VALUES ('O1UFXZXAHMHSYQS', 'EGGP2JJL8B7AWD5', 'PGGIVRBPRH', '2018-04-05', '420.00', 1, 'ITP', 1);
INSERT INTO `transection` (`transaction_id`, `relation_id`, `transection_type`, `date_of_transection`, `transection_category`, `amount`, `transection_mood`, `description`) VALUES ('O1UFXZXAHMHSYQS', 'EGGP2JJL8B7AWD5', 2, '2018-04-05', 2, '420.00', 1, 'ITP');
INSERT INTO `invoice` (`invoice_id`, `customer_id`, `date`, `total_amount`, `total_tax`, `invoice`, `invoice_details`, `total_discount`, `status`) VALUES ('8115784319', 'EGGP2JJL8B7AWD5', '2018-04-05', '420.00', '0.00', 1000, '', '40.00', 1);
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `date`, `amount`, `status`) VALUES ('O1UFXZXAHMHSYQS', 'EGGP2JJL8B7AWD5', '8115784319', '2018-04-05', '420.00', 1);
INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `quantity`, `rate`, `discount`, `tax`, `paid_amount`, `due_amount`, `supplier_rate`, `total_price`, `status`) VALUES ('357127427324161', '8115784319', '17396328', '2323', '20', '23', '2', '0.00', '420.00', '0.00', '23', '460', 1);
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `customer_mobile`, `customer_email`, `status`) VALUES ('Y3TZTY6FB9XLJH9', 'asdf', 'asdf', '', '', 2);
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`) VALUES ('PHKQHFYH69', 'Y3TZTY6FB9XLJH9', 'NA', NULL, 0, 'Previous adjustment with software', 'NA', 'NA', '2018-04-05', 1);
UPDATE `customer_information` SET `status` = '1'
WHERE `customer_id` = 'Y3TZTY6FB9XLJH9';
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `receipt_no`, `date`, `amount`, `payment_type`, `description`, `status`) VALUES ('34P6WFEPAVXOOHK', 'Y3TZTY6FB9XLJH9', 'P3GA8NKCHP', '2018-03-01', '69.00', 1, 'ITP', 1);
INSERT INTO `transection` (`transaction_id`, `relation_id`, `transection_type`, `date_of_transection`, `transection_category`, `amount`, `transection_mood`, `description`) VALUES ('34P6WFEPAVXOOHK', 'Y3TZTY6FB9XLJH9', 2, '2018-03-01', 2, '69.00', 1, 'ITP');
INSERT INTO `invoice` (`invoice_id`, `customer_id`, `date`, `total_amount`, `total_tax`, `invoice`, `invoice_details`, `total_discount`, `status`) VALUES ('8256346185', 'Y3TZTY6FB9XLJH9', '2018-03-01', '69.00', '0.00', 1001, '', '0.00', 1);
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `date`, `amount`, `status`) VALUES ('34P6WFEPAVXOOHK', 'Y3TZTY6FB9XLJH9', '8256346185', '2018-03-01', '69.00', 1);
INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `quantity`, `rate`, `discount`, `tax`, `paid_amount`, `due_amount`, `supplier_rate`, `total_price`, `status`) VALUES ('967243413673836', '8256346185', '17396328', '2323', '3', '23', '', '0.00', '69.00', '0.00', '23', '69', 1);
UPDATE `web_setting` SET `logo` = 'http://localhost/varsity-project/my-assets/image/logo/fb84f03bd7e74ff690b142c6af040f94.png', `invoice_logo` = 'http://localhost/varsity-project/my-assets/image/logo/8cf714963943f34c0f8611e506621020.png', `favicon` = 'http://localhost/varsity-project/my-assets/image/logo/a2c92d474bdaa2795e895ebf98f12ce1.png', `currency` = '৳', `currency_position` = '0', `footer_text` = 'Copyright Â© 2016-2017 bdtask. All rights reserved.', `language` = 'english', `rtr` = '0', `captcha` = '1', `site_key` = '', `secret_key` = '', `discount_type` = '2'
WHERE `setting_id` = 1;
UPDATE `users` SET `first_name` = 'Admin', `last_name` = 'Admin', `status` = '1'
WHERE `user_id` = '11';
UPDATE `user_login` SET `username` = 'user@gmail.com', `password` = '41d99b369894eb1ec3f461135132d8bb'
WHERE `user_id` = '11';
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('LMNYYO8BQOOGJ5G', 'Capsule', 1);
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('OQ7UVCWGRPYVUMD', 'Tablet', 1);
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('BKI6OVBSYQXWEJZ', 'Syrup', 1);
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('S9HMQV9G43YUI3J', 'Injection', 1);
INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `mobile`, `details`, `status`) VALUES ('1YFJNTI4TXFZWZ1CM7XZ', 'Ronju', 'Badda nikunja-2, Dhaka', '01687803582', '', 1);
INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `mobile`, `details`, `status`) VALUES ('AHD6K19XKJ6Q6FGM7D9X', 'Md Jafor ', 'Mirpur-2, Dhaka', '01687803582', '', 1);
INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `mobile`, `details`, `status`) VALUES ('45GAAM1KMXD74OWINHUW', 'Rakib', 'Gulshan-1, Dhaka', '01687803582', '', 1);
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('89874746', 'AHD6K19XKJ6Q6FGM7D9X', '450', 'sdfsdfsd');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('89874746', 'Seclo', 'Omeprazole', '5', 'Box', '1', 'LMNYYO8BQOOGJ5G', 0, '5', 'sdfsdfsd', 'gastrology', 'http://localhost/varsity-project/my-assets/image/product.png', 1);
DELETE FROM `supplier_product`
WHERE `product_id` = '89874746';
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`) VALUES ('89874746', 'AHD6K19XKJ6Q6FGM7D9X', '450');
UPDATE `product_information` SET `product_name` = 'Seclo', `generic_name` = 'Omeprazole', `box_size` = '5', `unit` = 'Box', `product_location` = '1', `category_id` = 'LMNYYO8BQOOGJ5G', `price` = '5', `product_model` = 'Square', `product_details` = 'gastrology', `tax` = 0, `image` = 'http://localhost/varsity-project/my-assets/image/product.png'
WHERE `product_id` = '89874746';
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('23837596', 'AHD6K19XKJ6Q6FGM7D9X', '200', 'Square');
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('22828537', 'AHD6K19XKJ6Q6FGM7D9X', 'dfgd', 'Square');
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('76288995', '1YFJNTI4TXFZWZ1CM7XZ', '450', 'sdfsdfsd');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('76288995', 'Seclo', 'Omeprazole', '5', 'Box', '2', 'LMNYYO8BQOOGJ5G', 0, '45', 'sdfsdfsd', '', 'http://localhost/varsity-project/my-assets/image/product.png', 1);
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('95268656', '1YFJNTI4TXFZWZ1CM7XZ', '1000', 'janssen');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('95268656', 'Napa', 'Paracitamol', '10', 'Box', '3', 'OQ7UVCWGRPYVUMD', 0, '1', 'janssen', '', 'http://localhost/varsity-project/my-assets/image/product.png', 1);
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('17895325', '45GAAM1KMXD74OWINHUW', '100', 'janssen');
DELETE FROM `product_information`
WHERE `product_id` = '';
DELETE FROM `supplier_product`
WHERE `product_id` = '';
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('93359689', '45GAAM1KMXD74OWINHUW', '21', '');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('93359689', 'fsdfsa', '', '5', 'pc', 'fsadfsa', 'LMNYYO8BQOOGJ5G', 0, '21', '', '', 'http://localhost/varsity-project/my-assets/image/product.png', 1);
DELETE FROM `product_information`
WHERE `product_id` = '93359689';
DELETE FROM `supplier_product`
WHERE `product_id` = '93359689';
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('22611776', 'AHD6K19XKJ6Q6FGM7D9X', 'dfgdg', '');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('22611776', 'dfgd', 'dfgdfg', 'dfgd', 'm', 'dfgdf', 'LMNYYO8BQOOGJ5G', 0, '63', '', '', 'http://localhost/varsity-project/my-assets/image/product.png', 1);
DELETE FROM `product_information`
WHERE `product_id` = '22611776';
DELETE FROM `supplier_product`
WHERE `product_id` = '22611776';
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('76435965', '45GAAM1KMXD74OWINHUW', '500', '');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('76435965', 'moxacil', 'Amoxicillin', '10', 'pc', '4', 'LMNYYO8BQOOGJ5G', 0, '10', '', 'amoxicillin square pharma', 'http://localhost/varsity-project/my-assets/image/product.png', 1);
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('11889876', '45GAAM1KMXD74OWINHUW', '100', '');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('11889876', 'zerin plus', 'Paracitamol', '100', 'pc', '1', 'OQ7UVCWGRPYVUMD', 0, '2.5', '', '', 'http://localhost/varsity-project/my-assets/image/product.png', 1);
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('87129436', '45GAAM1KMXD74OWINHUW', '100', 'Zerin');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('87129436', 'zerin plus', 'Paracitamol', '10', 'pc', '2', 'OQ7UVCWGRPYVUMD', 0, '2.5', 'Zerin', '', 'http://localhost/varsity-project/my-assets/image/product.png', 1);
UPDATE `web_setting` SET `logo` = 'http://localhost/varsity-project/my-assets/image/logo/630faae05f84281e6f184ed1ed6d1cf7.png', `invoice_logo` = 'http://localhost/varsity-project/my-assets/image/logo/4e011de652a597d73abb2bb3c9ea7407.png', `favicon` = 'http://localhost/varsity-project/my-assets/image/logo/3f2fe14324153c68e0fba0403dabbe04.png', `currency` = '৳', `currency_position` = '0', `footer_text` = 'Copyright Â© 2018-EUB. All rights reserved.', `language` = 'english', `rtr` = '0', `captcha` = '1', `site_key` = '', `secret_key` = '', `discount_type` = '2'
WHERE `setting_id` = 1;
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `customer_mobile`, `customer_email`, `status`) VALUES ('MJC4TMA4W4GFLEB', 'Marajul Islam', 'Badda, dhaka', '017644611', 'marajul@gmail.com', 2);
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`) VALUES ('7FYZ1QR8HV', 'MJC4TMA4W4GFLEB', 'NA', NULL, '', 'Previous adjustment with software', 'NA', 'NA', '2018-12-05', 1);
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `customer_mobile`, `customer_email`, `status`) VALUES ('6VP2OW9S5QA6BQP', 'Jakir', 'Mirupr-2', '017546211', 'jakir@gmail.com', 2);
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`) VALUES ('LWPG88GRPC', '6VP2OW9S5QA6BQP', 'NA', NULL, '', 'Previous adjustment with software', 'NA', 'NA', '2018-12-05', 1);
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `customer_mobile`, `customer_email`, `status`) VALUES ('XJWDSNL52HLZ3WR', 'Mamon', 'gaptoli', '01750451211', 'mamon@gmail.com', 2);
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`) VALUES ('K29T2CHJSS', 'XJWDSNL52HLZ3WR', 'NA', NULL, '', 'Previous adjustment with software', 'NA', 'NA', '2018-12-05', 1);
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `customer_mobile`, `customer_email`, `status`) VALUES ('PSXXVYXJI65X6IR', 'Sazzad hossen', 'mirpur-1', '01750451211', 'sazzad@gmail.com', 2);
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`) VALUES ('QU7O79ABY8', 'PSXXVYXJI65X6IR', 'NA', NULL, '', 'Previous adjustment with software', 'NA', 'NA', '2018-12-05', 1);
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('VB5GLHH96JVK1EO', 'Capsule', 1);
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('TSH7PA9XB5K53D3', 'Tablet', 1);
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('FISC9796XGAML5W', 'Syrup', 1);
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('9D5N3ZZWWVV7YY8', 'Injection', 1);
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('SPYDGQRRCSNFUCJ', 'Drop', 1);
INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `mobile`, `details`, `status`) VALUES ('2VLC65KNF7KQG5SPKF68', 'Tonmoy', 'Dahanmondi', '01750451211', 'all medicine suppliy this Supplier', 1);
INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `mobile`, `details`, `status`) VALUES ('55HJOOIJFESOUTDFTCHC', 'Rakib', 'gulsan-2', '01750451212', 'Supplier are is good man', 1);
INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `mobile`, `details`, `status`) VALUES ('BCVGRYB23JZDRHN1VH6Q', 'Hasan', 'Mirput-2,dhaka', '01750451213', 'Hasan is a good supplier in include square', 1);
INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `mobile`, `details`, `status`) VALUES ('85N91JRSYG339SVXKW6Q', 'Arafat', 'Mirpur-2,dhaka', '01750451215', 'sdaf safsdf sdf sadf', 1);
UPDATE `supplier_information` SET `supplier_name` = 'Arafat', `address` = 'Mirpur-1,dhaka bangladesh', `mobile` = '01750451215', `details` = 'this man a good supplier in include square'
WHERE `supplier_id` = '85N91JRSYG339SVXKW6Q';
UPDATE `company_information` SET `company_id` = 'NOILG8EGCRXXBWUEUQBM', `company_name` = 'EUB Shop', `email` = 'gaptoli@gmail.com', `address` = 'Gaptoli,Dhaka', `mobile` = '1922296392', `website` = 'http://www.eub.com', `status` = 1
WHERE `company_id` = 'NOILG8EGCRXXBWUEUQBM';
UPDATE `company_information` SET `company_id` = 'NOILG8EGCRXXBWUEUQBM', `company_name` = 'EUB Shop', `email` = 'gaptoli@gmail.com', `address` = 'Gaptoli,Dhaka', `mobile` = '01740634611', `website` = 'http://www.eub.com', `status` = 1
WHERE `company_id` = 'NOILG8EGCRXXBWUEUQBM';
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('38143554', 'BCVGRYB23JZDRHN1VH6Q', '1000', 'zerin plus');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('38143554', 'zerin plus', 'Paracitamol', '5', 'pc', '1', 'TSH7PA9XB5K53D3', 0, '2.5', 'zerin plus', 'Paracitamol jor in medicine', 'http://localhost/varsity-project/my-assets/image/product.png', 1);
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('93274276', '2VLC65KNF7KQG5SPKF68', '.80', 'napa-1001');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('93274276', 'Napa', 'Paracitamol', '10', 'pc', '2', 'TSH7PA9XB5K53D3', 0, '1', 'napa-1001', '', 'http://localhost/varsity-project/my-assets/image/product.png', 1);
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('93114821', '2VLC65KNF7KQG5SPKF68', '1.50', 'alatrol-102');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('93114821', 'Alatrol', 'Cetirizine', '3', 'pc', '2', 'TSH7PA9XB5K53D3', 0, '2', 'alatrol-102', '', 'http://localhost/varsity-project/my-assets/image/product.png', 1);
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('86627861', '2VLC65KNF7KQG5SPKF68', '1.50', 'cinaraon-103');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('86627861', 'Cinaron', 'Cetirizine', '1', 'pc', '1', 'TSH7PA9XB5K53D3', 0, '2', 'cinaraon-103', '', 'http://localhost/varsity-project/my-assets/image/product.png', 1);
DELETE FROM `supplier_product`
WHERE `product_id` = '38143554';
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`) VALUES ('38143554', 'BCVGRYB23JZDRHN1VH6Q', '2');
UPDATE `product_information` SET `product_name` = 'zerin plus', `generic_name` = 'Paracitamol', `box_size` = '5', `unit` = 'pc', `product_location` = '1', `category_id` = 'TSH7PA9XB5K53D3', `price` = '2.5', `product_model` = 'zerin plus', `product_details` = 'Paracitamol jor in medicine', `tax` = 0, `image` = 'http://localhost/varsity-project/my-assets/image/product.png'
WHERE `product_id` = '38143554';
INSERT INTO `product_purchase` (`purchase_id`, `chalan_no`, `supplier_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`) VALUES ('20181205210553', 'cse18201', '2VLC65KNF7KQG5SPKF68', '1400.00', NULL, '2018-12-05', '', 1);
INSERT INTO `supplier_ledger` (`transaction_id`, `chalan_no`, `supplier_id`, `amount`, `date`, `description`, `status`) VALUES ('20181205210553', 'cse18201', '2VLC65KNF7KQG5SPKF68', '1400.00', '2018-12-05', '', 1);
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `discount`, `batch_id`, `expeire_date`, `status`) VALUES ('T6XrY17LD4XKjcB', '20181205210553', '86627861', '300', '1.5', '450.00', NULL, '18201', '2019-12-15', 1);
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `discount`, `batch_id`, `expeire_date`, `status`) VALUES ('qQ44i3KLZDAAhxs', '20181205210553', '93114821', '100', '1.5', '150.00', NULL, '18202', '2019-12-15', 1);
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `discount`, `batch_id`, `expeire_date`, `status`) VALUES ('NfycU3txfW1w0o4', '20181205210553', '93274276', '1000', '0.8', '800.00', NULL, '18203', '2019-12-15', 1);
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('67784237', 'BCVGRYB23JZDRHN1VH6Q', '2', 'Square');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('67784237', 'Napa Extra (Parasitamol)', 'Paracitamol', '5', 'pc', '2', 'VB5GLHH96JVK1EO', 0, '2.5', 'Square', 'ddd', 'http://localhost/varsity-project/my-assets/image/product.png', 1);
INSERT INTO `supplier_product` (`product_id`, `supplier_id`, `supplier_price`, `products_model`) VALUES ('29824655', 'BCVGRYB23JZDRHN1VH6Q', '2', 'dfasdf');
INSERT INTO `product_information` (`product_id`, `product_name`, `generic_name`, `box_size`, `unit`, `product_location`, `category_id`, `tax`, `price`, `product_model`, `product_details`, `image`, `status`) VALUES ('29824655', 'Jerin 500  (Parasitamol)', 'Paracitamol', '5', 'pc', '1', 'VB5GLHH96JVK1EO', 0, 'ddd', 'dfasdf', '', 'http://localhost/varsity-project/my-assets/image/product.png', 1);
UPDATE `users` SET `first_name` = 'Mr', `last_name` = 'Admin', `status` = '1'
WHERE `user_id` = '1';
UPDATE `user_login` SET `username` = 'admin@gmail.com', `password` = '41d99b369894eb1ec3f461135132d8bb'
WHERE `user_id` = '1';
