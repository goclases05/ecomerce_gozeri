import 'package:badges/badges.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var primary=const Color.fromARGB(255, 3, 164, 185);
    var secondary=const Color.fromARGB(255, 3, 164, 185);
    final size = MediaQuery.of(context).size;

    List<String>portada=[
      'https://cdn.pacifiko.com/image/catalog/BANNER-APPLE-OFERTAS.jpg',
      'https://www.easypromosapp.com/blog/wp-content/uploads/xxss_sorteos_para_tu_tienda_de_ropa.png',
      'https://cdn.lifestylealcuadrado.com/wp-content/uploads/2020/09/como-crear-una-oferta-irresistible-768x401.jpg'
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: primary),
        backgroundColor: Colors.white,
        title: Image.asset('assets/logo-green.png',width: 100,),
        elevation: 0,
        actions: [
          const SizedBox(width: 10,),
          IconButton(onPressed: (){}, 
          icon: Badge(
                  badgeContent: const Text(
                    '9',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Icon(Icons.favorite_border,size: 30,color: primary,),
                  badgeColor: Colors.orange.shade900,
                  //position: BadgePosition.topEnd(),
                  animationType: BadgeAnimationType.scale,
                  //animationDuration: Duration(milliseconds: 250),
                )//Badge(child: Icon(Icons.shopping_cart_outlined,size: 35,color: primary,)) 
          ),
          const SizedBox(width: 10,),
          IconButton(onPressed: (){}, 
          icon: Badge(
                  badgeContent: const Text(
                    '9',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Icon(Icons.bar_chart,size: 30,color: primary,),
                  badgeColor: Colors.orange.shade900,
                  //position: BadgePosition.topEnd(),
                  animationType: BadgeAnimationType.scale,
                  //animationDuration: Duration(milliseconds: 250),
                )//Badge(child: Icon(Icons.shopping_cart_outlined,size: 35,color: primary,)) 
          ),
          const SizedBox(width: 10,),
          IconButton(onPressed: (){}, 
          icon: Badge(
                  badgeContent: const Text(
                    '9',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Icon(Icons.shopping_cart_outlined,size: 30,color: primary,),
                  badgeColor: Colors.orange.shade900,
                  //position: BadgePosition.topEnd(),
                  animationType: BadgeAnimationType.scale,
                  //animationDuration: Duration(milliseconds: 250),
                )//Badge(child: Icon(Icons.shopping_cart_outlined,size: 35,color: primary,)) 
          ),
          const SizedBox(width: 10,),
          
        ],
      ),
      drawer: Drawer(),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height * 0.2,
              //color: Colors.red,
              child: Swiper(
                autoplay: true,
                itemCount: portada.length,
                viewportFraction: 0.8,
                scale: 0.9,
                itemWidth: size.width * 0.8,
                itemHeight: size.height * 0.2,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 2, vertical: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: FadeInImage(
                          placeholder: const AssetImage('assets/loading.gif'),
                          image: NetworkImage(portada[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              )
            ),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.2,
              child: Swiper(
                //autoplay: true,
                itemCount: portada.length,
                viewportFraction: 0.2,
                scale: 0.9,
                itemWidth: size.width * 0.2,
                //itemHeight: size.height * 0.01,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => {},
                    child: Card(
                      color: Colors.red,
                      child: Column(
                        children: [
                          Container(
                            color:Colors.green,
                            height: size.height*0.13,
                          )
                        ],
                      ),
                    )
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}