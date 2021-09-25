import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calorie.dart';

class VeggiePage extends StatefulWidget {
  const VeggiePage({Key? key}) : super(key: key);

  @override
  _VeggiePageState createState() => _VeggiePageState();
}

class _VeggiePageState extends State<VeggiePage> {


  bool Pollo = false;

  Widget PolloCheckbox() =>
      Checkbox(
        value: Pollo,
        onChanged: (value) {
          setState(() {
            this.Pollo = value!;
          });
        },
      );
  bool Pesco = false;

  Widget PescoCheckbox() =>
      Checkbox(
        value: Pesco,
        onChanged: (value) {
          setState(() {
            this.Pesco = value!;
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
          title: Text('채식 여부'),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent[400],
          elevation: 0.0,
        ),
        body: _buildListView()
    );
  }
  String pescoUrl = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEK4SVcGH07D7OpUsTWXPXrY4xdX8phy-PEmziB-TXjWS3vUfdt5SP2wUzL4z8pUPlP-E&usqp=CAU';
  String polloUrl = 'https://image.shutterstock.com/image-vector/vector-no-fish-sign-illustration-260nw-1681123285.jpg';
  String lactoovoUrl = 'https://static.thenounproject.com/png/383968-200.png';
  String ovoUrl = 'https://image.shutterstock.com/image-vector/no-pack-milk-vector-not-260nw-1520938067.jpg';
  String lactoUrl = 'https://image.shutterstock.com/image-vector/no-egg-icon-free-vector-260nw-792375652.jpg';
  String strictveggieUrl = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRblctGQ_vN_x6_bonvcK433jAlfxjgXuCqdQ&usqp=CAU';
  String veganUrl = 'https://cdn3.vectorstock.com/i/1000x1000/71/17/vegan-icon-image-vector-26677117.jpg';
  String rawfooderUrl = 'https://image.shutterstock.com/image-vector/no-wheat-sign-gluten-free-260nw-610636184.jpg';
  String fruiterianUrl = 'https://thumbs.dreamstime.com/z/no-lettuce-symbol-contamination-hazard-icon-unsafe-food-to-eat-no-lettuce-symbol-white-background-133605199.jpg';


  ListView _buildListView() {
    return ListView.builder(itemCount:  1,
      itemBuilder: (context, index) {
        return Card(
            child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  title: Text("폴로 베지테리언" ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(polloUrl),
                  ),
                  trailing: PolloCheckbox(),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("페스코 베지테리언" ),
                  leading: CircleAvatar(backgroundImage: NetworkImage(pescoUrl)),
                  trailing: PescoCheckbox(),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("락토 오보 베지테리언" ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(lactoovoUrl),
                  ),
                  trailing: FlourCheckbox(),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("오보 베지테리언" ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(ovoUrl),
                  ),
                  trailing: BuckwheatCheckbox(),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("락토 베지테리언" ),
                  leading: CircleAvatar(backgroundImage: NetworkImage(lactoUrl),
                  ),
                  trailing: SoybeanCheckbox(),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("스트릭트 베지테리언"),
                  leading: CircleAvatar(backgroundImage: NetworkImage(strictveggieUrl),
                  ),
                  trailing: PeanutCheckbox(),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("비건" ),
                  leading: CircleAvatar(backgroundImage: NetworkImage(veganUrl),
                  ),
                  trailing: FishCheckbox(),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("로 푸더"),
                  leading: CircleAvatar(backgroundImage: NetworkImage(rawfooderUrl),
                  ),
                  trailing: PorkCheckbox(),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("프루테리언" ),
                  leading: CircleAvatar(backgroundImage: NetworkImage(fruiterianUrl),
                  ),
                  trailing: PeachCheckbox(),
                ),
                ElevatedButton(child: Text("다음"),
                  onPressed:
                      () {
                    //TODO calorie페이지로 이동하기
                    MaterialPageRoute route= MaterialPageRoute(builder: (context)=> CaloriePage());
                    Navigator.push(context, route);},), ],
            )
        );
      },);

  }
}



