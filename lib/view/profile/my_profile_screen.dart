import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiktok/extansion/mediaquery_extension.dart';
import 'package:tiktok/theme/theme.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
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

  final List discoveryData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Saqib Ali',
          style:
              GoogleFonts.nunitoSans(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: context.screenHeight * .02),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/dummyProfile.jpeg'),
            ),
            SizedBox(height: context.screenHeight * .01),
            Text(
              'Saqib Ali',
              style: GoogleFonts.nunitoSans(
                  fontSize: 18, fontWeight: FontWeight.bold),
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
                          fontSize: 18, fontWeight: FontWeight.bold),
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
                          fontSize: 18, fontWeight: FontWeight.bold),
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
                          fontSize: 18, fontWeight: FontWeight.bold),
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: kTikTokGrey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  minimumSize: const Size(double.infinity, 40),
                ),
                child: Text(
                  'Edit profile',
                  style: GoogleFonts.nunitoSans(color: kTikTokBlack),
                ),
              ),
            ),
            SizedBox(height: context.screenHeight * .01),
            Text(
              'ہر کسی کے بس میں تھوڑی ہوتا ہے 💕 \n کسی ایک کےلیے وفادار رہنا ❤💕',
              style: GoogleFonts.notoNastaliqUrdu(fontSize: 12),
            ),
            SizedBox(height: context.screenHeight * .01),
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.grid_on)),
                      Tab(icon: Icon(Icons.favorite)),
                      Tab(icon: Icon(Icons.lock)),
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
                        const Center(child: Text('Private videos')),
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
