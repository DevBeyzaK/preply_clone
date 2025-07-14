import 'package:flutter/material.dart';
import 'package:preply_clone/bottomsheets/info.dart';
import 'package:preply_clone/bottomsheets/schedulebutton.dart';
import 'package:preply_clone/models/takvimkisi.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final List<Takvimkisi> kisiler = Takvimkisi.createPersonList();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            floating: true,
            snap: true,
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 0, 
            leading: SizedBox.shrink(),
            title: Text("July 2025",style: TextStyle(fontFamily: "Inter"),),
            actions: [
              IconButton(onPressed: (){
                showModalBottomSheet(context: context, builder: (context) => Info());
      
              }, icon: Icon(Icons.info_outline, color: Colors.black)),
            ],
            ),
            SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) {
        final kisi = kisiler[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 45,
                child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                kisiler[index].weekDay,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                kisiler[index].day,
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                          ),
                        ],
                      ),
              ),
        SizedBox(width: 12), // Sol ve kart arası boşluk
              Expanded(
                child: Card(
                  color: Colors.white,
                  elevation: 0.5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        // Dikey renkli çubuk
                        Container(
                          width: 4,
                          height: 40,
                          decoration: BoxDecoration(
                            color: kisi.barColor,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        SizedBox(width: 16),
                        // Orta alan: İsim + saat (messageContent olarak kullanıyorsun)
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(kisi.name,
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w500)),
                              SizedBox(height: 6),
                              Text(
                                kisi.time,
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        // Sağdaki resim
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            kisi.imgUrl,
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        );
        
      },
      childCount: kisiler.length,
        ),
      ),
      
        ],
      ),
      Positioned(
        bottom: 20,
        left: 0,
        right: 0,
        child: Center(
          child: SizedBox(
            width: 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(255, 121, 172, 1),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),
              side: BorderSide(
                color: Colors.black,
                width: 2,
              )),
              ),
              onPressed: (){
                showModalBottomSheet(context: context, builder: (context){
                   return Schedulebutton();
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Schedule",style: TextStyle(fontFamily: "Inter",color: Colors.black),),
                  SizedBox(width: 10,),
                  Icon(Icons.add, color: Colors.black, size: 20,),
                ],
              )),
          ),
        ))
      ],
    );
    
  }
}