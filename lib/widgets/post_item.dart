import 'package:flutter/material.dart';
import 'package:instagram/state/model/storymodel.dart';

class PostItem extends StatelessWidget {
  final Person storymodel;
  const PostItem({
    required this.storymodel,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.only(left: 15, bottom: 5, top: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 3),
                  child: CircleAvatar(radius: 18,
                      backgroundImage: NetworkImage("")),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          storymodel.id.toString(),
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 3, left: 2),
                            child: Text(
                              'Konum',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ))
                      ],
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      print('seçenekler');
                    },
                    icon: Icon(color: Colors.white, Icons.more_vert))
              ],
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: Image.network(
                  ''),
            )
          ],
        ),
        Container(
          color: Colors.black,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    print('beğeni');
                  },
                  icon: Icon(
                      size: 27,
                      color: Colors.white,
                      Icons.heart_broken_outlined)),
              IconButton(
                  onPressed: () {
                    print('mesajlar');
                  },
                  icon: Icon(color: Colors.white, Icons.messenger_rounded)),
              IconButton(
                  onPressed: () {
                    print('ilet');
                  },
                  icon: Icon(color: Colors.white, Icons.add_alert)),
              Padding(
                padding: EdgeInsets.only(left: 200),
                child: IconButton(
                    onPressed: () {
                      print('kaydet');
                    },
                    icon: Icon(color: Colors.white, Icons.save)),
              )
            ],
          ),
        ),
        Column(
          children: [
            Container(color: Colors.black,
              child: Padding(padding: EdgeInsets.only(top:5 ,bottom:5 ,left: 10),
                child: Row(children: [
                  Text(
                    '123',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500,fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text('Beğenme',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500,fontSize: 16)),
                  )
                ]),
              ),
            ),
            Container(color: Colors.black,child: Row(
              children:[ Padding(padding: EdgeInsets.only(top:3 ,bottom:3 ,left: 10),
                child: Row(children: [
                  Text(
                    'Kullanıcı',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500,fontSize: 16),
                  ),
                  Text('Öylesine bir açıklama',
                      style: TextStyle(
                          color: Colors.white,fontSize: 16))
                ]),
              ),]
            )),
            Container(color: Colors.black,
              child: Padding(padding: EdgeInsets.only(top:3 ,bottom:3 ,left: 10),
                child: Row(children: [
                  Text(
                    'kullaniciadi',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500,fontSize: 16),
                  ),
                  Text('Beğenme',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500,fontSize: 16))
                ]),
              ),
            )
          ],
        )
      ],
    );
  }
}
