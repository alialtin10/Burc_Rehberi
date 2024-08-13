import 'package:flutter/material.dart';
import 'model/burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;

  const BurcDetay({required Burc this.secilenBurc ,  super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(background: Image.asset("/home/agv/Desktop/Burc_Rehberi/images/"+secilenBurc.burcBuyukResim,fit: BoxFit.cover,),
            centerTitle: true,
            title: Text(secilenBurc.burcAdi + " burcu ve özellikleri",style: Theme.of(context).textTheme.headlineSmall, ),
            ),
            backgroundColor: Colors.pink,
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(child: Text(secilenBurc.burcDetayi,style: Theme.of(context).textTheme.bodyMedium,),)),
          )
        ],
      ),
    );
  }
}