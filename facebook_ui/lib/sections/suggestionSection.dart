import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ListTile(
            leading: Text(
              "People You May Know",
              style: TextStyle(fontSize: 16),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey[700],
                )),
          ),
          Container(
            height: 340,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  addFriend: () {
                    print("add friend");
                  },
                  mutualFriend: '2 Mutual Friend',
                  avatar: mallu,
                  name: 'Shakir Subhan',
                  removeFriend: () {
                    print("remove friennd");
                  },
                ),
                SuggestionCard(
                  addFriend: () {
                    print("add friend");
                  },
                  mutualFriend: '4 Mutual Friend',
                  avatar: sujith,
                  name: 'Sujith Bakthan',
                  removeFriend: () {
                    print("remove friennd");
                  },
                ),
                SuggestionCard(
                  addFriend: () {
                    print("add friend");
                  },
                  mutualFriend: '3 Mutual Friend',
                  avatar: fishing,
                  name: 'Fishing Freeks',
                  removeFriend: () {
                    print("remove friennd");
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
