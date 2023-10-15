import 'package:ecitymart_app/const/consts.dart';
import 'package:ecitymart_app/const/lists.dart';
import 'package:ecitymart_app/views/category_screen/category_Details.dart';
import 'package:ecitymart_app/widgets/bg_widget.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: categories.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 200),
             itemBuilder: (context, index){
              return Column(
                children: [
                  Image.asset(categoriesImages[index],
                  height: 120,
                  width: 200,
                  fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make()
                ],
              ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make().onTap(() {
                Get.to(()=> CategoryDetails(title: categoriesList[index]));
              });
             }),
        ),
      )
    );
  }
}