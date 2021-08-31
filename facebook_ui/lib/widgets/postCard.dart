import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/sections/headerButtonsection.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/blueTick.dart';
import 'package:facebook_ui/widgets/headerButton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  const PostCard(
      {Key? key,
      required this.avatar,
      required this.name,
      required this.publishedAt, 
      required this.postTitle, 
      required this.postImage, 
      this.showBlueTick =false, 
      required this.likeCount, 
      required this.commentCount, 
      required this.shareCount, 
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(thickness: 1,color: Colors.grey[700]),
          HeaderButtonSection(
              buttonOne: headerButton(
                  buttonText: "Like",
                  buttonIcon: Icons.thumb_up_alt_outlined,
                  buttonAction: () {},
                  buttonColor: Colors.grey),
              buttonTwo: headerButton(
                  buttonText: "Comment",
                  buttonIcon: Icons.message_outlined,
                  buttonAction: () {},
                  buttonColor: Colors.grey),
              buttonThree: headerButton(
                  buttonText: "Share",
                  buttonIcon: Icons.share_outlined,
                  buttonAction: () {},
                  buttonColor: Colors.grey),
              
            ),
        ],
      ),
    );
  }
  Widget footerSection(){
    return Container(
      padding: EdgeInsets.only(left: 10,right:10,),
      height:50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(width: 15,height:15,
                decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle),
                child: Icon(Icons.thumb_up,color: Colors.white, size: 10,),
                ),
                SizedBox(width: 5,),
                displayText(label: likeCount)
              ],
            ),
          ),

          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(width:5),
                displayText(label: "Comments"),
                SizedBox(width: 10,),
                displayText(label: shareCount),
                SizedBox(width: 5,),
                displayText(label: "Shares"),
                SizedBox(width:5),
                Avatar(displayImage: mohanlal, displayStatus: false, width: 25,height: 25,),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down,color: Colors.grey[700],))
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget displayText({required String label}){
    return Text(label,style: TextStyle(color: Colors.grey[700]),);
  }

  Widget imageSection(){
    return Container(
      padding: EdgeInsets.only(top: 5,bottom:5,),
      child: Image.asset(postImage)
    );
  }
  Widget titleSection(){
    // ignore: unnecessary_null_comparison
    return postTitle !=null && postTitle !="" ? Container(
      padding: EdgeInsets.only(bottom: 5,left:10,right: 10,),
      // ignore: unnecessary_null_comparison
      child: Text(postTitle ==null ? "":postTitle,
      style: TextStyle(color: Colors.black,fontSize: 16,),),
    ): SizedBox();
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar, displayStatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick(): SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          // ignore: unnecessary_null_comparison
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.public, color: Colors.grey[700], size: 15)
        ],
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            color: Colors.grey[700],
          )),
    );
  }
}
