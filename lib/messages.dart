import 'package:flutter/material.dart';
import 'package:preply_clone/widgets/profile_avatar_button.dart';

class Messages extends StatefulWidget {
  final VoidCallback openDrawer;
  const Messages({Key? key,required this.openDrawer}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Column(
        children: [
           Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Messages',
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      ProfileAvatarButton(
                        onTap: widget.openDrawer,  // Drawer'ı açmak için fonksiyon
                      ),  // Senin avatar widgetın
                    ],
                  ),
                ),
              ),
           Padding(
           padding: const EdgeInsets.symmetric(horizontal: 16,),
           child: TextField(
           decoration: InputDecoration(
           hintText: 'Search',
           prefixIcon: Icon(Icons.search),
           filled: true,
           fillColor: Colors.white,
           contentPadding: EdgeInsets.symmetric(vertical: 10),
           border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
           borderSide: BorderSide(color: Colors.grey.shade300,),
      ),
    ),
  ),
),
         TabBar(
          isScrollable: true,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black87,
          indicatorColor: const Color.fromRGBO(194, 95, 134, 1),
          tabs: [
              Tab(text: 'All'),
              Tab(text: 'Archived'),]),
           Expanded(
            child: TabBarView(
              children: [
                Center(child: Text('Student messages')),
                Center(child: Text('Archived messages')),
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}