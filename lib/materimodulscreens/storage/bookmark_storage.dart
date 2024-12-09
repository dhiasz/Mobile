class BookmarkStorage {
  // Menggunakan Set untuk menyimpan objek dengan informasi nama dan jalur gambar
  static final Set<Map<String, String>> bookmarks = {};

  // Menambahkan destinasi dengan informasi nama dan jalur gambar
  static void addBookmark(String name, String imagePath) {
    bookmarks.add({
      'name': name,
      'imagePath': imagePath,
    });
  }

  // Menghapus destinasi dari daftar bookmark
  static void removeBookmark(String name) {
    bookmarks.removeWhere((item) => item['name'] == name);
  }

  // Mengembalikan semua destinasi yang dibookmark
  static Set<Map<String, String>> getBookmarks() {
    return bookmarks;
  }
}


// class BookmarkStorage {
//   static final Set<String> bookmarks = {};

//   static void addBookmark(String destination) {
//     bookmarks.add(destination);
//   }

//   static void removeBookmark(String destination) {
//     bookmarks.remove(destination);
//   }
// }
