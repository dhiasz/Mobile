import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/materimodulscreens/storage/bookmark_storage.dart';

class BookmarkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Destinasi yang Ditandai"),
      ),
      body: BookmarkStorage.getBookmarks().isEmpty
          ? Center(
              child: Text(
                "Belum ada destinasi yang ditandai.",
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: BookmarkStorage.getBookmarks().length,
              itemBuilder: (context, index) {
                final bookmark = BookmarkStorage.getBookmarks().elementAt(index);
                return ListTile(
                  title: Text(bookmark['name'] ?? 'Unknown'),
                  leading: bookmark['imagePath'] != null
                      ? Image.asset(
                          bookmark['imagePath']!,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        )
                      : Icon(Icons.bookmark),
                );
              },
            ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:wisata_mobile_5/materimodulscreens/storage/bookmark_storage.dart';

// class BookmarkPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Destinasi yang Diberi Bookmark"),
//       ),
//       body: BookmarkStorage.bookmarks.isEmpty
//           ? Center(
//               child: Text(
//                 "Belum ada destinasi yang dibookmark.",
//                 style: TextStyle(fontSize: 18),
//               ),
//             )
//           : ListView.builder(
//               itemCount: BookmarkStorage.bookmarks.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(BookmarkStorage.bookmarks.elementAt(index)),
//                   leading: Image.asset(
//                     BookmarkStorage.bookmarks.elementAt(index),
//                     width: 50,
//                     height: 50,
//                     fit: BoxFit.cover,
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }
