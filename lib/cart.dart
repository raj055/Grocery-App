import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
class Cart extends StatefulWidget {
  const Cart({key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  Razorpay razorpay;
  TextEditingController textEditingController = new TextEditingController();
  @override
  void initState() {
    super.initState();

    razorpay = new Razorpay();

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    razorpay.clear();
  }

  void openCheckout(){
    var options = {
      "key" : "rzp_test_pEnJkFvlF73Yib",
      "amount" : num.parse(textEditingController.text)*100,
      "name" : "sample",
      "description" : "Grocery App",
      "prefill" : {
        "Contact" : "0123456789",
        "Email" : "xyz@gmail.com",
      },
      "external" : {
        "wallets" : ["paytm"]
      }
    };

    try{
      razorpay.open(options);
    }catch(e){
      print(e.toString());
    }

  }

  void handlerPaymentSuccess(){
    print("Payment Success");
  }

  void handlerErrorFailure(){
    print("Payment Error");
  }

  void handlerExternalWallet(){
    print("External Error");
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pay"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 250, 30, 10),
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                  hintText: "Amount to Pay"
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20,),
            RaisedButton(
              onPressed: () {
                openCheckout();
              },
              color: Colors.blue,
              child: Text("Pay", style: TextStyle(
                  color: Colors.white
              ),),
            )
          ],
        ),
      ),
    );
  }
}
