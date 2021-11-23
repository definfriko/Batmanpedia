import 'package:flutter/material.dart';
import 'home.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 80,
            ),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'res/definsso.jpg',
                    width: 179,
                    height: 240,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      const Card(
                        child: ListTile(
                          title: Text('Nama'),
                          subtitle: Text('Defin Friko Fahdani'),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://previews.123rf.com/images/oliviart/oliviart2004/oliviart200400861/148386278-people-icon-isolated-on-white-background-person-icon-user-vector-icon.jpg'),
                          ),
                        ),
                      ),
                      const Card(
                        child: ListTile(
                          title: Text('Tempat Tanggal Lahir'),
                          subtitle: Text('Purbalingga, 22 April 2001'),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://thumbs.dreamstime.com/b/calendar-icon-isolated-white-background-calender-symbol-vector-deadline-date-time-185768391.jpg'),
                          ),
                        ),
                      ),
                      const Card(
                        child: ListTile(
                          title: Text('NIM'),
                          subtitle: Text('21120119130054'),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTapbQaqWMPBUTbs3CDSCLRzmv-JHQo9SDRKg&usqp=CAU'),
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Jurusan'),
                          subtitle: Text('Teknik Komputer'),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://thumbs.dreamstime.com/b/major-icon-man-166917107.jpg'),
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Hobi'),
                          subtitle: Text('Rebahan dan Gaming'),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://www.mcicon.com/wp-content/uploads/2020/12/Holidays_Game_1-copy-11.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
