import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiktok/extansion/mediaquery_extension.dart';
import 'package:tiktok/theme/theme.dart';

class UserProfileScreen extends StatefulWidget {
  final String userName;
  final String userImage;
  const UserProfileScreen(
      {super.key, required this.userImage, required this.userName});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final List dataList = [
    {
      'image': 'assets/images/thumbnailOne.jpeg',
    },
    {
      'image': 'assets/images/thumbnailTwo.jpeg',
    },
    {
      'image': 'assets/images/thumbnailThree.webp',
    },
    {
      'image': 'assets/images/thumbnailFour.jpeg',
    },
    {
      'image': 'assets/images/thumbnailFive.jpeg',
    },
    {
      'image': 'assets/images/thumbnailSix.jpeg',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTikTokWhite,
      appBar: AppBar(
        backgroundColor: kTikTokWhite,
        iconTheme: IconThemeData(color: kTikTokBlack),
        actions: [
          Icon(
            Icons.notifications_none,
            color: kTikTokBlack,
          ),
          IconButton(
            icon: Icon(
              Icons.share,
              color: kTikTokBlack,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: context.screenHeight * .02),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(widget.userImage),
            ),
            SizedBox(height: context.screenHeight * .01),
            Text(
              widget.userName,
              style: GoogleFonts.nunitoSans(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kTikTokBlack),
            ),
            Text(
              '@saqib_ali23',
              style: GoogleFonts.nunitoSans(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: kTikTokGrey),
            ),
            SizedBox(height: context.screenHeight * .01),
            Row(
              spacing: context.screenWidth * .06,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      '100',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kTikTokBlack),
                    ),
                    Text(
                      'Following',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 14, color: kTikTokGrey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '1.2M',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kTikTokBlack),
                    ),
                    Text(
                      'Followers',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 14, color: kTikTokGrey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '25.4M',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kTikTokBlack),
                    ),
                    Text(
                      'Likes',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 14, color: kTikTokGrey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: context.screenHeight * .02),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: context.screenWidth * .2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: context.screenHeight * .06,
                    width: context.screenWidth * .24,
                    decoration: BoxDecoration(
                        color: kTikTokRed,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                      'Follow',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 14, color: kTikTokWhite),
                    )),
                  ),
                  Container(
                    height: context.screenHeight * .06,
                    width: context.screenWidth * .24,
                    decoration: BoxDecoration(
                        color: kTikTokGrey.withValues(alpha: .4),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                      'Message',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 14, color: kTikTokBlack),
                    )),
                  ),
                  Container(
                    height: context.screenHeight * .06,
                    width: context.screenWidth * .11,
                    decoration: BoxDecoration(
                        color: kTikTokGrey.withValues(alpha: .4),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Icon(
                      Icons.arrow_drop_down_outlined,
                      color: kTikTokBlack,
                    )),
                  )
                ],
              ),
            ),
            SizedBox(height: context.screenHeight * .01),
            Text(
              'ہر کسی کے بس میں تھوڑی ہوتا ہے 💕 \n کسی ایک کےلیے وفادار رہنا ❤💕',
              style: GoogleFonts.notoNastaliqUrdu(
                  fontSize: 12, color: kTikTokBlack),
            ),
            SizedBox(height: context.screenHeight * .01),
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.grid_on)),
                      Tab(icon: Icon(Icons.repeat)),
                    ],
                    indicatorColor: kTikTokBlack,
                    labelColor: kTikTokBlack,
                    dividerHeight: .4,
                    dividerColor: kTikTokGrey,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: kTikTokGrey,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: TabBarView(
                      children: [
                        GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(8),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2,
                          ),
                          itemCount: dataList.length,
                          itemBuilder: (context, index) {
                            return Stack(
                              children: [
                                Image.asset(
                                    height: double.infinity,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    dataList[index]['image']),
                                Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: kTikTokWhite,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        const Center(child: Text('Liked videos')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
