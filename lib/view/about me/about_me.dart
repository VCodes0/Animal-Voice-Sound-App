// import 'package:flutter/material.dart';

// class AboutMePage extends StatelessWidget {
//   const AboutMePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       appBar: AppBar(
//         title: const Text('Developer Info'),
//         centerTitle: true,
//         elevation: 0,
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black87,
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(16),
//         children: [
//           Container(
//             padding: const EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.shade300,
//                   blurRadius: 12,
//                   offset: const Offset(0, 6),
//                 ),
//               ],
//             ),
//             child: Column(
//               children: [
//                 const CircleAvatar(
//                   radius: 40,
//                   backgroundImage: AssetImage('assets/logo.png'),
//                 ),
//                 const SizedBox(height: 12),
//                 const Text(
//                   'Mr. Vishnu Prajapati',
//                   style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget sectionContent(List<String> lines) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: lines.map((line) => Text("• $line")).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('About App & Developer'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Developer Info Card
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/logo.png'),
                ),
                SizedBox(height: 12),
                Text(
                  'Vishnu Prajapati',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 4),
                Text(
                  'Github - VCodes0 Pofile',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // App Info Card
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '🐾 Animal Voice & Ringtones App',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'A cross-platform app that plays animal sounds with engaging visuals. Great for fun, education, and setting ringtones!',
                ),

                sectionTitle('📦 Features'),
                sectionContent([
                  '🎙️ Animal Sound Playback – Dog, Cat, Lion, Cow, and more.',
                  '🖱️ Interactive UI – Tap animal images to play sounds.',
                  '🔊 Set as Ringtone (Android only).',
                  '🧠 Educational – Kids can learn animal names and sounds.',
                  '📱 Cross-Platform – Android, iOS & Web support.',
                ]),

                sectionTitle('🛠️ Tech Stack'),
                sectionContent([
                  'Flutter (Dart)',
                  'audioplayers – for playing audio',
                  'permission_handler – for runtime permissions',
                  'flutter_svg or lottie – for animations',
                ]),

                sectionTitle('🚀 Getting Started'),
                sectionContent([
                  'Install Flutter SDK',
                  'Use Android Studio or VS Code',
                  'Set up an emulator or device',
                ]),
                const SizedBox(height: 8),

                sectionTitle('💡 How It Works'),
                const Text(
                  'Uses local audio assets played via audioplayers. UI buttons trigger playback. Native code is used to set ringtones.',
                ),

                sectionTitle('📬 Feedback & Contributions'),
                const Text(
                  'Found a bug? Have an idea? Open an issue or contribute via GitHub pull request.',
                ),

                const SizedBox(height: 16),
                const Text(
                  '🎶 Enjoy exploring the wild side of audio with Flutter!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
