class Order{
  final id;
  final name;
  final phone;
  final location;
  final email;
  // ignore: non_constant_identifier_names
  final order_id;
  final payment_method;
  final total_price;
  final items;
  Order({this.id, this.name, this.phone, this.location, this.order_id, this.payment_method, this.total_price, this.items, this.email,th});
}


List<Order> orders = [
  Order(id: 1,email: "onjombafelix1@gmail.com", name: "Felix Onjomba", phone : "0717713943", location:"1km", order_id:"MS-TRRTYIG54", payment_method:"MPESA", total_price:200, items:"Nyanya"),
  Order(id: 1,email: "onjombafelix1@gmail.com", name: "Jackson Muthomi", phone : "0717713943", location:"1km", order_id:"MS-TRRTYIG54", payment_method:"MPESA", total_price:200, items:"Nyanya"),
  Order(id: 1,email: "onjombafelix1@gmail.com", name: "Mical Juma", phone : "0717713943", location:"1km", order_id:"MS-TRRTYIG54", payment_method:"MPESA", total_price:200, items:"Nyanya"),
  Order(id: 1,email: "onjombafelix1@gmail.com", name: "Mercy Kamene", phone : "0717713943", location:"1km", order_id:"MS-TRRTYIG54", payment_method:"MPESA", total_price:200, items:"Nyanya"),
  Order(id: 1,email: "onjombafelix1@gmail.com", name: "Victor Matongo", phone : "0717713943", location:"1km", order_id:"MS-TRRTYIG54", payment_method:"MPESA", total_price:200, items:"Nyanya"),
  Order(id: 1,email: "onjombafelix1@gmail.com", name: "Susan Wangare", phone : "0717713943", location:"1km", order_id:"MS-TRRTYIG54", payment_method:"MPESA", total_price:200, items:"Nyanya"),
  Order(id: 1,email: "onjombafelix1@gmail.com", name: "Charity Wachira", phone : "0717713943", location:"1km", order_id:"MS-TRRTYIG54", payment_method:"MPESA", total_price:200, items:"Nyanya"),
  Order(id: 1,email: "onjombafelix1@gmail.com", name: "Muchira Junior", phone : "0717713943", location:"1km", order_id:"MS-TRRTYIG54", payment_method:"MPESA", total_price:200, items:"Nyanya"),
];