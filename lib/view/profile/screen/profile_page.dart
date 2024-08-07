import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.nunito(
            fontSize: 32,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 36.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.all(5.0.sp),
                    child: Center(
                      child: CircleAvatar(
                        radius: 40.sp,
                        backgroundImage:
                            const AssetImage('assets/images/hottie.jpg'),
                      ),
                    ),
                  ),
                  const Text(
                    'Madhav Rand',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Text('Delhi NCR'),
                  SizedBox(height: 4.h),
                ],
              ),
            ),
            Divider(
              color: Colors.red.shade100,
              thickness: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10.0.sp),
                child: Text(
                  'About',
                  style: GoogleFonts.nunito(
                    fontSize: 24,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Full Name'),
              subtitle: Text('Madhav Rand'),
            ),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('madhav6969@gmail.com'),
            ),
            const ListTile(
              leading: Icon(Icons.people),
              title: Text('Following'),
              subtitle: Text('21 Friends'),
            ),
            const ListTile(
              leading: Icon(Icons.people),
              title: Text('Follower'),
              subtitle: Text('11 Friends'),
            ),
            const ListTile(
              leading: Icon(Icons.link),
              title: Text('Social URL'),
              subtitle: Text('Facebook.com/Madhav_Rand'),
            ),
          ],
        ),
      ),
    );
  }
}
