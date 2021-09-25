import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'veggie.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  // int _counter = 0;
  //
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }
  //
  // void _decrementCounter() {
  //   setState(() {
  //     _counter--;
  //   });
  // }

  bool Egg = false;

  Widget EggCheckbox() =>
      Checkbox(
        value: Egg,
        onChanged: (value) {
          setState(() {
            this.Egg = value!;
          });
        },
      );
  bool Shrimp = false;

  Widget ShrimpCheckbox() =>
      Checkbox(
        value: Shrimp,
        onChanged: (value) {
          setState(() {
            this.Shrimp = value!;
          });
        },
      );
  bool Flour = false;

  Widget FlourCheckbox() =>
      Checkbox(
        value: Flour,
        onChanged: (value) {
          setState(() {
            this.Flour = value!;
          });
        },
      );
  bool Buckwheat = false;

  Widget BuckwheatCheckbox() =>
      Checkbox(
        value: Buckwheat,
        onChanged: (value) {
          setState(() {
            this.Buckwheat = value!;
          });
        },
      );
  bool Soybean = false;

  Widget SoybeanCheckbox() =>
      Checkbox(
        value: Soybean,
        onChanged: (value) {
          setState(() {
            this.Soybean = value!;
          });
        },
      );
  bool Peanut = false;

  Widget PeanutCheckbox() =>
      Checkbox(
        value: Peanut,
        onChanged: (value) {
          setState(() {
            this.Peanut = value!;
          });
        },
      );
  bool Fish = false;

  Widget FishCheckbox() =>
      Checkbox(
        value: Fish,
        onChanged: (value) {
          setState(() {
            this.Fish = value!;
          });
        },
      );
  bool Pork = false;

  Widget PorkCheckbox() =>
      Checkbox(
        value: Pork,
        onChanged: (value) {
          setState(() {
            this.Pork = value!;
          });
        },
      );
  bool Peach = false;

  Widget PeachCheckbox() =>
      Checkbox(
        value: Peach,
        onChanged: (value) {
          setState(() {
            this.Peach = value!;
          });
        },
      );
  bool Tomato = false;

  Widget TomatoCheckbox() =>
      Checkbox(
        value: Tomato,
        onChanged: (value) {
          setState(() {
            this.Tomato = value!;
          });
        },
      );
  bool Walnut = false;

  Widget WalnutCheckbox() =>
      Checkbox(
        value: Walnut,
        onChanged: (value) {
          setState(() {
            this.Walnut = value!;
          });
        },
      );
  bool Pinenuts = false;

  Widget PinenutsCheckbox() =>
      Checkbox(
        value: Pinenuts,
        onChanged: (value) {
          setState(() {
            this.Pinenuts = value!;
          });
        },
      );
  bool Chicken = false;

  Widget ChickenCheckbox() =>
      Checkbox(
        value: Chicken,
        onChanged: (value) {
          setState(() {
            this.Chicken = value!;
          });
        },
      );
  bool Beef = false;

  Widget BeefCheckbox() =>
      Checkbox(
        value: Beef,
        onChanged: (value) {
          setState(() {
            this.Beef = value!;
          });
        },
      );
  bool Squid = false;

  Widget SquidCheckbox() =>
      Checkbox(
        value: Squid,
        onChanged: (value) {
          setState(() {
            this.Squid = value!;
          });
        },
      );
  bool Shellfish = false;

  Widget ShellfishCheckbox() =>
      Checkbox(
        value: Shellfish,
        onChanged: (value) {
          setState(() {
            this.Shellfish = value!;
          });
        },
      );
  bool Mussel = false;

  Widget MusselCheckbox() =>
      Checkbox(
        value: Mussel,
        onChanged: (value) {
          setState(() {
            this.Mussel = value!;
          });
        },
      );
  bool Abalone = false;

  Widget AbaloneCheckbox() =>
      Checkbox(
        value: Abalone,
        onChanged: (value) {
          setState(() {
            this.Abalone = value!;
          });
        },
      );
  bool Milk = false;

  Widget MilkCheckbox() =>
      Checkbox(
        value: Milk,
        onChanged: (value) {
          setState(() {
            this.Milk = value!;
          });
        },
      );
  bool Oyster = false;

  Widget OysterCheckbox() =>
      Checkbox(
        value: Oyster,
        onChanged: (value) {
          setState(() {
            this.Oyster = value!;
          });
        },
      );
  bool Acidic = false;

  Widget AcidicCheckbox() =>
      Checkbox(
        value: Acidic,
        onChanged: (value) {
          setState(() {
            this.Acidic = value!;
          });
        },
      );
  bool Crab = false;

  Widget CrabCheckbox() =>
      Checkbox(
        value: Crab,
        onChanged: (value) {
          setState(() {
            this.Crab = value!;
          });
        },
      );
  bool Almond = false;

  Widget AlmondCheckbox() =>
      Checkbox(
        value: Almond,
        onChanged: (value) {
          setState(() {
            this.Almond = value!;
          });
        },
      );
  bool Pineapple = false;

  Widget PineappleCheckbox() =>
      Checkbox(
        value: Pineapple,
        onChanged: (value) {
          setState(() {
            this.Pineapple = value!;
          });
        },
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('개별 알러지'),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent[400],
          elevation: 0.0,
        ),
        body: _buildListView()
    );
  }
  String eggUrl = 'https://cdn.britannica.com/94/151894-050-F72A5317/Brown-eggs.jpg';
  String shrimpUrl = 'https://www.seekpng.com/png/full/37-378933_shrimp-transparent-image-shrimp-png.png';
  String flourUrl = 'https://www.seekpng.com/png/full/111-1116992_flour-png.png';
  String buckwheatUrl = 'https://img.lovepik.com/element/40069/4575.png_860.png';
  String soybeanUrl = 'https://w7.pngwing.com/pngs/333/779/png-transparent-soybean-edamame-vegetarian-cuisine-peanut-olives-food-olive-peanut.png';
  String peanutUrl = 'https://e7.pngegg.com/pngimages/615/320/png-clipart-peanut-peanut.png';
  String fishUrl = 'https://cdn.crowdpic.net/list-thumb/thumb_l_D8052B20E4F5CCE9C480CB9CDA19E16B.png';
  String porkUrl = 'https://meattam.com/web/product/tiny/20200604/8081740976679ce5c4c7e6f21eaa4c18.png';
  String peachUrl = 'https://w7.pngwing.com/pngs/642/518/png-transparent-peach-peach-food-orange-sticker.png';
  String tomatoUrl = 'https://img.lovepik.com/element/40066/5547.png_860.png';
  String walnutUrl = 'https://w7.pngwing.com/pngs/294/956/png-transparent-ukraine-english-walnut-nuts-pistachios-food-nuts-juglans.png';
  String chickenUrl = 'https://e7.pngegg.com/pngimages/389/76/png-clipart-chicken-chicken-meat.png';
  String beefUrl = 'https://w7.pngwing.com/pngs/484/541/png-transparent-angus-cattle-beef-meat-steak-eating-meat-food-beef-roast-beef.png';
  String squidUrl = 'https://t1.daumcdn.net/cfile/blog/997401505AFBAF701D';
  String shellfishUrl = 'https://w7.pngwing.com/pngs/708/494/png-transparent-clam-mussel-great-wall-seafood-la-shellfish-seashell-food-animals-cooking.png';
  String musselUrl = 'https://w7.pngwing.com/pngs/228/285/png-transparent-oyster-dish-blue-mussel-bivalvia-bony-fishes-clam-oyster-rainbow-seafood-hd-clips-food-steak-ocean.png';
  String oysterUrl = 'https://png.pngtree.com/element_our/20200609/ourmid/pngtree-oysters-image_2223985.jpg';
  String acidUrl = 'https://lh3.googleusercontent.com/proxy/i0AQtmeKo_9iBmhg39SoH8x87_owMZCMTnwIipbyDAIedgPK9YXVuxnMY0bQwhKZblAxo-V7HJRWAwW7kSqkvRGcnytzc5N5OjYtdef5pwdurC3065KVFjZSAS6dk8PFbuODKXSIzOFHLrNnF6_H9cEHciEpbS0KNLYE5k3yEu8HOCBiGnQZf5QXlQuTXPMxk1imlMlfSAJRdcDUKHKDc_yTJ2lGCKizpIgFjzjF3OGF7XLPUMMAC5d269T1a_Uh-M8XqYlFYrdt0aeZhJXLjX9493pK7uoKem1Qp2i9XGf7YTERDAeg0VUHTHnyTqrl3WGyB4dysuiYsR8NDQQ';
  String milkUrl = 'https://e7.pngegg.com/pngimages/479/505/png-clipart-milk-milk.png';
  String crabUrl = 'https://e7.pngegg.com/pngimages/36/636/png-clipart-crab-crab.png';
  String almondUrl = 'https://w7.pngwing.com/pngs/991/678/png-transparent-almond-nut-almond-icon-cartoon-almond-cartoon-character-painted-hand.png';
  String pineappleUrl = 'https://e1.pngegg.com/pngimages/488/210/png-clipart-pineapple-fruit.png';
  String pinenutUrl = 'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F24093B35584F8AAC25';
  String abaloneUrl = 'https://cdn.crowdpic.net/list-thumb/thumb_l_FC3670BD0FBBFEAD2B75143611DF2F12.jpg';


  ListView _buildListView() {
    return ListView.builder(itemCount:  1,
      itemBuilder: (context, index) {
        return Card(
            child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    title: Text("계란" ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(eggUrl),
                    ),
                    trailing: EggCheckbox(),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text("새우" ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(shrimpUrl),
                    ),
                    trailing: ShrimpCheckbox(),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text("밀" ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(flourUrl),
                    ),
                    trailing: FlourCheckbox(),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text("메밀" ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(buckwheatUrl),
                    ),
                    trailing: BuckwheatCheckbox(),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text("대두" ),
                    leading: CircleAvatar(backgroundImage: NetworkImage(soybeanUrl),
                    ),
                    trailing: SoybeanCheckbox(),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text("땅콩"),
                    leading: CircleAvatar(backgroundImage: NetworkImage(peanutUrl),
                    ),
                    trailing: PeanutCheckbox(),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text("생선" ),
                    leading: CircleAvatar(backgroundImage: NetworkImage(fishUrl),
                    ),
                    trailing: FishCheckbox(),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text("돼지고기"),
                    leading: CircleAvatar(backgroundImage: NetworkImage(porkUrl),
                    ),
                    trailing: PorkCheckbox(),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text("복숭아" ),
                    leading: CircleAvatar(backgroundImage: NetworkImage(peachUrl),
                    ),
                    trailing: PeachCheckbox(),
                  ),ListTile(
                    onTap: () {},
                    title: Text("토마토" ),
                    leading: CircleAvatar(backgroundImage: NetworkImage(tomatoUrl),
                    ),
                    trailing: TomatoCheckbox(),
                  ),ListTile(
                    onTap: () {},
                    title: Text("호두" ),
                    leading: CircleAvatar(backgroundImage: NetworkImage(walnutUrl),
                    ),
                    trailing: WalnutCheckbox(),
                  ),ListTile(
                    onTap: () {},
                    title: Text("잣" ),
                    leading: CircleAvatar(backgroundImage: NetworkImage(pinenutUrl),
                    ),
                    trailing: PinenutsCheckbox(),
                  ),ListTile(
                    onTap: () {},
                    title: Text("닭고기" ),
                    leading: CircleAvatar(backgroundImage: NetworkImage(chickenUrl),
                    ),
                    trailing: ChickenCheckbox(),
                  ),ListTile(
                    onTap: () {},
                    title: Text("소고기" ),
                    leading: CircleAvatar(backgroundImage: NetworkImage(beefUrl),
                    ),
                    trailing: BeefCheckbox(),
                  ),ListTile(
                    onTap: () {},
                    title: Text("오징어" ),
                    leading: CircleAvatar(backgroundImage: NetworkImage(squidUrl),
                    ),
                    trailing: SquidCheckbox(),
                  ),ListTile(
                    onTap: () {},
                    title: Text("조개류" ),
                    leading: CircleAvatar(backgroundImage: NetworkImage(shellfishUrl),
                    ),
                    trailing: ShellfishCheckbox(),
                  ),ListTile(
                    onTap: () {},
                    title: Text("홍합" ),
                    subtitle: Text(""),
                    leading: CircleAvatar(backgroundImage: NetworkImage(musselUrl),
                    ),
                    trailing: MusselCheckbox(),
                  ),ListTile(
                    onTap: () {},
                    title: Text("전복" ),
                    subtitle: Text(""),
                    leading: CircleAvatar(backgroundImage: NetworkImage(abaloneUrl),
                    ),
                    trailing: AbaloneCheckbox(),
                  ),ListTile(
                    onTap: () {},
                    title: Text("굴" ),
                    subtitle: Text(""),
                    leading: CircleAvatar(backgroundImage: NetworkImage(oysterUrl),
                    ),
                    trailing: OysterCheckbox(),
                  ),ListTile(
                    onTap: () {},
                    title: Text("아황산" ),
                    subtitle: Text(""),
                    leading: CircleAvatar(backgroundImage: NetworkImage(acidUrl),
                    ),
                    trailing: AcidicCheckbox(),
                  ),ListTile(
                    onTap: () {},
                    title: Text("우유" ),
                    subtitle: Text(""),
                    leading: CircleAvatar(backgroundImage: NetworkImage(milkUrl),
                    ),
                    trailing: MilkCheckbox(),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text("게" ),
                    subtitle: Text(""),
                    leading: CircleAvatar(backgroundImage: NetworkImage(crabUrl),
                    ),
                    trailing: CrabCheckbox(),
                  ), ListTile(
                    onTap: () {},
                    title: Text("아몬드" ),
                    subtitle: Text(""),
                    leading: CircleAvatar(backgroundImage: NetworkImage(almondUrl),
                    ),
                    trailing: AlmondCheckbox(),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text("파인애플" ),
                    subtitle: Text(""),
                    leading: CircleAvatar(backgroundImage: NetworkImage(pineappleUrl),
                    ),
                    trailing: PineappleCheckbox(),
                  ),
                  ElevatedButton(child: Text("다음"),
                    onPressed:
                        () {
                      //TODO veggie페이지로 이동하기
                      MaterialPageRoute route= MaterialPageRoute(builder: (context)=> VeggiePage());
                      Navigator.push(context, route);},),]
            )
        );
      },);
  }
}



