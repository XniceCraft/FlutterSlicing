import 'package:belajar_widget/pages/create.dart';
import 'package:flutter/material.dart';
import 'detail.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> films = [
    {
      'title': 'Suzume No Tojimari',
      'description':
          'On her way to school one day, Suzume Iwato stumbles upon Souta Munakata, a young man searching for abandoned areas. The high school girl directs Souta to a nearby ruin, but out of pure curiosity, she herself decides to head to the same destination. Once there, Suzume discovers an isolated door with a dreamlike universe lying beyond it—a place that she can see and feel, but not enter. A strange stone rests on the ground nearby, but it turns into a cat-like creature and scurries away when Suzume lifts it. Suddenly afraid, she heads back toward her school, not realizing that her act of leaving the door open will have consequences. With the "keystone" released, the evil within the other universe can now freely escape and wreak havoc throughout Japan. Intending to correct her dangerous mistake, Suzume joins Souta—whose true goal is to prevent evil from festering—in finding and locking all open doors before the country is destroyed.',
      'image': 'assets/image/Suzume.jpg'
    },
    {
      'title': 'Kimi No Nawa',
      'description':
          "Mitsuha Miyamizu, a high school girl, yearns to live the life of a boy in the bustling city of Tokyo—a dream that stands in stark contrast to her present life in the countryside. Meanwhile in the city, Taki Tachibana lives a busy life as a high school student while juggling his part-time job and hopes for a future in architecture. One day, Mitsuha awakens in a room that is not her own and suddenly finds herself living the dream life in Tokyo—but in Taki's body! Elsewhere, Taki finds himself living Mitsuha's life in the humble countryside. In pursuit of an answer to this strange phenomenon, they begin to search for one another.Kimi no Na wa. revolves around Mitsuha and Taki's actions, which begin to have a dramatic impact on each other's lives, weaving them into a fabric held together by fate and circumstance.",
      'image': 'assets/image/Your Name.png'
    },
    {
      'title': 'Tenki No Ko',
      'description':
          'Tokyo is currently experiencing rain showers that seem to disrupt the usual pace of everyone living there to no end. Amidst this seemingly eternal downpour arrives the runaway high school student Hodaka Morishima, who struggles to financially support himself—ending up with a job at a small-time publisher. At the same time, the orphaned Hina Amano also strives to find work to sustain herself and her younger brother. Both fates intertwine when Hodaka attempts to rescue Hina from shady men, deciding to run away together. Subsequently, Hodaka discovers that Hina has a strange yet astounding power: the ability to call out the sun whenever she prays for it. With Tokyo\'s unusual weather in mind, Hodaka sees the potential of this ability. He suggests that Hina should become a "sunshine girl"—someone who will clear the sky for people when they need it the most.Things begin looking up for them at first. However, it is common knowledge that power always comes with a hefty price...',
      'image': 'assets/image/Weathering with You.jpg'
    },
    {
      'title': '5 cm per second',
      'description':
          'What happens when two people love each other but just aren\'t meant to be together? Takaki Toono and Akari Shinohara are childhood friends, but circumstances beyond their control tear them apart. They promise to stay in contact, and although the progression of time widens the distance between them, the chain of memories remains ever-present. Byousoku 5 Centimeter is a romantic drama that focuses on the mundane and harsh reality of long-distance relationships. Stuck in the past and unable to make any new memories, Takaki and Akari cling to the hope of seeing each other again. They live their everyday lives half-heartedly, both hurting themselves and the people around them.',
      'image': 'assets/image/5 Centimeters Per Second.jpg'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'StreamVerse',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          backgroundColor: const Color.fromARGB(255, 17, 17, 17)),
      backgroundColor: const Color.fromARGB(255, 14, 14, 14),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 14, 14, 14),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: Text(
                'StreamVerse',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.white),
              title: const Text('Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  )),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 3 / 4),
        itemCount: films.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: films[index]['title']!,
                    description: films[index]['description']!,
                    image: films[index]['image']!,
                  ),
                ),
              );
            },
            child: Card(
              color: const Color.fromARGB(255, 43, 43, 43),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(10),
                    ),
                    child: AspectRatio(
                      aspectRatio: 4 / 3, // Enforces 4:3 aspect ratio
                      child: Image.asset(
                        films[index]['image']!,
                        fit: BoxFit.cover, // Ensures the image covers the area
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 12, top: 12, bottom: 2, right: 12),
                    child: Text(
                      films[index]['title']!,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      films[index]['description']!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreatePage()),
          );
        },
        backgroundColor: Colors.grey,
        child: const Icon(Icons.add), // Plus icon
      ),
    );
  }
}
