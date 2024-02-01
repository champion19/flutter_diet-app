import 'package:flutter/material.dart';
import 'package:flutter_diet/i18n/generated/i18n/translations.g.dart/strings.g.dart';
import 'package:flutter_diet/project/routes/routes.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text(
                'Category Section',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 20), // Espacio entre el texto y la lista
            _buildListItems(),
          ],
        ),
      ),
    );
  }

  Widget _buildListItems() {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        ListTile(
          title: Text('Pancake de moras'),
        ),
        ListTile(
          title: Text('Pancake de miel'),
        ),
        ListTile(
          title: Text('Snacks de naranja'),
        ),
        ListTile(
          title: Text('Pancakes'),
        ),
        ListTile(
          title: Text('Pie'),
        ),
        ListTile(
          title: Text('Salmon nigiri'),
        ),
      ],
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: Text(
        texts.title,
        style: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => context.go(Routes.home),
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset(
            'assets/icons/Arrow - Left 2.svg',
            height: 20,
            width: 20,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            decoration: BoxDecoration(
                color: const Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
            child: SvgPicture.asset(
              'assets/icons/dots.svg',
              height: 5,
              width: 5,
            ),
          ),
        ),
      ],
    );
  }
}
