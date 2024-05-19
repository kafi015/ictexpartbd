import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text('Notification',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFFFFF),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff012970),
        actions: [
          IconButton(onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              size: 30,
              color: Color(0xffFFFFFF),
            ),
          ),
        ],
      ),

      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          const ListTile(
            tileColor: Colors.white,
            title: Text('Today',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo
              ),
            ),
          ),
          const Divider(thickness: 1,),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.notifications, size: 30, color: Colors.black,),
            title: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Ikbal Ahmed',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo
                    ),
                  ),
                  TextSpan(
                    text: ' posted new blog',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Assalamu alaikum!! Number system converting tricks ',
                  style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                Text('2 min ago',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black
                  ),
                ),
              ],
            ),
          ),
          const Divider(thickness: 1,),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.notifications, size: 30, color: Colors.black,),
            title: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Ikbal Ahmed',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo
                    ),
                  ),
                  TextSpan(
                    text: ' posted new blog',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Assalamu alaikum!! Number system converting tricks ',
                  style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                Text('2 min ago',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black
                  ),
                ),
              ],
            ),
          ),
          const Divider(thickness: 1,),
          const ListTile(
            tileColor: Colors.white,
            title: Text('This Week',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo
              ),
            ),
          ),
          const Divider(thickness: 1,),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.notifications, size: 30, color: Colors.black,),
            title: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Ikbal Ahmed',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo
                    ),
                  ),
                  TextSpan(
                    text: ' posted new blog',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
            ),

            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Assalamu alaikum!! Number system converting tricks ',
                  style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                Text('2 min ago',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black
                  ),
                ),
              ],
            ),
          ),
          const Divider(thickness: 1,),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.notifications, size: 30, color: Colors.black,),
            title: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Ikbal Ahmed',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo
                    ),
                  ),
                  TextSpan(
                    text: ' posted new blog',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Assalamu alaikum!! Number system converting tricks ',
                  style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                Text('2 min ago',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black
                  ),
                ),
              ],
            ),
          ),
          const Divider(thickness: 1,),
        ],
      ),

      // body: Center(
      //   child: Text('Right now, There are no notification for you!',style: TextStyle(fontWeight: FontWeight.w500,)),
      // ),

    );
  }
}
