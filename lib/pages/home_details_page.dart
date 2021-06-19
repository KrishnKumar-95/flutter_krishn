import 'package:flutter/material.dart';
import 'package:flutter_krishn/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl3.red800.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            context.theme.buttonColor),
                        shape: MaterialStateProperty.all(
                            // this is for rounded button shape
                            StadiumBorder())),
                    child: "Add to cart".text.make())
                .wh(120, 50)
          ],
        ).p8(),
      ),
      // this makes widgets in fixed area
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // for animation
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl2
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.desc.text.textStyle(context.captionStyle).lg.make(),
                    10.heightBox,
                    '''शतनाम प्रवक्ष्यामि श्रृणुष्व कमलानने।
यस्य प्रसादमात्रेण दुर्गा प्रीता भवेत् सती॥1॥
ॐ सती साध्वी भवप्रीता भवानी भवमोचनी।
आर्या दुर्गा जया चाद्या त्रिनेत्रा शूलधारिणी॥2॥
पिनाकधारिणी चित्रा चण्डघण्टा महातपाः।
मनो बुद्धिरहंकारा चित्तरूपा चिता चितिः॥3॥
सर्वमन्त्रमयी सत्ता सत्यानन्दस्वरूपिणी।
अनन्ता भाविनी भाव्या भव्याभव्या सदागतिः॥4॥
शाम्भवी देवमाता च चिन्ता रत्‍‌नप्रिया सदा।
सर्वविद्या दक्षकन्या दक्षयज्ञविनाशिनी॥5॥
'''
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                  ],
                ).py32().p12(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
