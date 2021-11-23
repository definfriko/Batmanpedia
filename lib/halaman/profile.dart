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
                          title: Text('Tempat Tanggal Lahir'),
                          subtitle: Text('Purbalingga, 22 April 2021'),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/a/ab/Episode_1_Screenshot_3.png/revision/latest/top-crop/width/360/height/450?cb=20180514055609'),
                          ),
                        ),
                      ),
                      const Card(
                        child: ListTile(
                          title: Text('NIM'),
                          subtitle: Text('21120119130054'),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/a/ab/Episode_1_Screenshot_3.png/revision/latest/top-crop/width/360/height/450?cb=20180514055609'),
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Jurusan'),
                          subtitle: Text('Teknik Komputer'),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/a/ab/Episode_1_Screenshot_3.png/revision/latest/top-crop/width/360/height/450?cb=20180514055609'),
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Hobi'),
                          subtitle: Text('Rebahan dan Gaming'),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/a/ab/Episode_1_Screenshot_3.png/revision/latest/top-crop/width/360/height/450?cb=20180514055609'),
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
