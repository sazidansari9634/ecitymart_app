import 'package:ecitymart_app/const/consts.dart';
import 'package:ecitymart_app/const/lists.dart';
import 'package:ecitymart_app/views/profile_Screen/components/details_card.dart';
import 'package:ecitymart_app/widgets/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  //edit profile section
                 const Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.edit, color: whiteColor,)).onTap(() {
                      
                    }),
                  //user details section
                  Row(
                    children: [
                      Image.asset(imgProfile2, width: 100,fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make(),
                      10.widthBox,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Dummy User".text.fontFamily(semibold).white.make(),
                            "customer@gmail.com".text.white.make()
                          ],
                        )
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: whiteColor
                            )
                          ),
                          onPressed: (){}, child: logout.text.fontFamily(semibold).white.make() )
                    ],
                  ),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      detailsCard(count: "00", title: "in your cart", width: context.screenWidth / 3.4),
                      detailsCard(count: "32", title: "in your wishlist", width: context.screenWidth / 3.4),
                      detailsCard(count: "67", title: "in your orders", width: context.screenWidth / 3.4),

                    ],
                  ),
                  // buttons sections
                  40.heightBox,
                  ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index){
                      return ListTile(
                        leading: Image.asset(profileButtonsIcon[index], width: 25,color: redColor,),
                        title: profileButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                      );
                    },
                     separatorBuilder:(context, index) {
                       return const Divider(
                        color: lightGrey,
                       );
                     }, 
                     itemCount: profileButtonsList.length).box.white.roundedSM.shadowSm.padding(const EdgeInsets.symmetric(horizontal: 16)).make()
                ],
              ),
            )
            ),
        )
    );
  }
}