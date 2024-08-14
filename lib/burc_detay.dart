import 'package:flutter/material.dart';
import 'model/burc.dart';
import 'package:palette_generator/palette_generator.dart';


class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;

  const BurcDetay({required Burc this.secilenBurc ,Key? key}):super(key: key);


  @override
  _BurcDetayState createState() => _BurcDetayState();

}
class _BurcDetayState extends  State<BurcDetay> {

  Color appbarRengi = Colors.pink; 
  late PaletteGenerator _generator;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_)=>appbarRengiBul());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(background: Image.asset("/home/agv/Desktop/Burc_Rehberi/images/"+widget.secilenBurc.burcBuyukResim,fit: BoxFit.cover,),
            centerTitle: true,
            title: Text(widget.secilenBurc.burcAdi + " burcu ve özellikleri",style: Theme.of(context).textTheme.headlineSmall, ),
            ),
            backgroundColor: appbarRengi,
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(child: Text(widget.secilenBurc.burcDetayi,style: Theme.of(context).textTheme.bodyMedium,),)),
          )
        ],
      ),
    );
  }

void appbarRengiBul() async {
  _generator = await PaletteGenerator.fromImageProvider(AssetImage('/home/agv/Desktop/Burc_Rehberi/images/'+widget.secilenBurc.burcBuyukResim));
  appbarRengi=_generator.dominantColor!.color;
  setState(() {
    
  });
}


}

