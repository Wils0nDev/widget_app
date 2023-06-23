import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/menu/menu_items.dart';
//import 'package:widgets_app/presentation/screens/screens.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {

  final List<MenuItem> appMenuItem = appMenuItems;

  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:const BouncingScrollPhysics(
        decelerationRate: ScrollDecelerationRate.normal,
        parent: AlwaysScrollableScrollPhysics()

      ),
      itemCount: appMenuItem.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItem[index];
        return _CustomListTitle(menuItem: menuItem);
      },
      );
  }
}

class _CustomListTitle extends StatelessWidget {

  final MenuItem menuItem;
  const _CustomListTitle({ required this.menuItem,  });
  
  @override
  Widget build(BuildContext context) {

      final colors = Theme.of(context).colorScheme;

    return ListTile(
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      leading: Icon(menuItem.icon,color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded,color: colors.primary,),
      onTap: () {
        //aqui navegamos a otras pantallas
      //   Navigator.of(context).push(
      //   MaterialPageRoute(
      //     builder: (context) => const ButtonsScreen(),
      //   ),
      // );
      //Navigator.pushNamed(context, menuItem.link);
      context.push(menuItem.link);
      //context.pushNamed(CardsScreen.name);

      },
    );
  }
}