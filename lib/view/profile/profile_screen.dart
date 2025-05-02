import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiktok/constants/app_images.dart';
import 'package:tiktok/extansion/mediaquery_extension.dart';
import 'package:tiktok/theme/theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List dataList = [
    {'image': AppImages.thumbnailOne},
    {'image': AppImages.thumbnailThree},
    {'image': AppImages.thumbnailTwo},
    {'image': AppImages.thumbnailFour},
    {'image': AppImages.thumbnailFive},
    {'image': AppImages.thumbnailSix},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saqib Ali'),
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
              backgroundImage:
                  NetworkImage('https://randomuser.me/api/portraits/men/1.jpg'),
            ),
            SizedBox(height: context.screenHeight * .01),
            const Text(
              'Saqib Ali',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: context.screenHeight * .01),
            Row(
              spacing: context.screenWidth * .06,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Text(
                      '100',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      '1.2M',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      '25.4M',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Likes',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
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
                  side: const BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  minimumSize: const Size(double.infinity, 40),
                ),
                child: Text(
                  'Edit profile',
                  style: TextStyle(color: kTikTokBlack),
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
