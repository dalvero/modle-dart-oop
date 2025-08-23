import '../parents/book.dart';
import '../childs/novel.dart';
import '../childs/comic.dart';
import '../repository/repo_author.dart';
import '../repository/repo_publisher.dart';

class RepoBook {
  final List<Book> listBook;

  RepoBook() : listBook = _setAllBook();

  static List<Book> _setAllBook(){
    RepoAuthor repoAuthor = RepoAuthor();
    RepoPublisher repoPublisher = RepoPublisher();

    return[
      // BOOK
      Book("Book-001", "Memahami Hamka", repoAuthor.findAuthorByFullName("Haidar Musyafa"), repoPublisher.findPublisherByFullName("Mizan"), price: 0),
      Book("Book-002", "Head First Java", repoAuthor.findAuthorByFullName("Bert Bates"), repoPublisher.findPublisherByFullName("O Reilly Media"), price: 0),
      Book("Book-003", "Java For Dummies", repoAuthor.findAuthorByFullName("Barry Burd"), repoPublisher.findPublisherByFullName("O Reilly Media"), price: 0),
      Book("Book-004", "Flutter For Dummies", repoAuthor.findAuthorByFullName("Barry Burd"), repoPublisher.findPublisherByFullName("O Reilly Media"), price: 0),
      Book("Book-005", "The Subtle Art of Not Giving", repoAuthor.findAuthorByFullName("Mark Manson"), repoPublisher.findPublisherByFullName("Harper One"), price: 0),
      Book("Book-006", "Will", repoAuthor.findAuthorByFullName("Mark Manson"), repoPublisher.findPublisherByFullName("Harper One"), price: 0),
      Book("Book-007", "Sejarah Indonesia", repoAuthor.findAuthorByFullName("Andi Susanto"), repoPublisher.findPublisherByFullName("Gramedia Pustaka Utama"), price: 0),
      Book("Book-008", "Teknologi Baru", repoAuthor.findAuthorByFullName("Adi Sutanto"), repoPublisher.findPublisherByFullName("Elex Media Komputindo"), price: 0),

      // NOVEL
      Novel("Novel-001", "HP & The Philoshoper'Stone", repoAuthor.findAuthorByFullName("J.K Rowling"), repoPublisher.findPublisherByFullName("Bloomsbury"), "Fantasy"),
      Novel("Novel-002", "HP & The Chamber of Secrets", repoAuthor.findAuthorByFullName("J.K Rowling"), repoPublisher.findPublisherByFullName("Bloomsbury"), "Fantasy"),
      Novel("Novel-003", "HP & The Prisoner of Azkaban", repoAuthor.findAuthorByFullName("J.K Rowling"), repoPublisher.findPublisherByFullName("Bloomsbury"), "Fantasy"),
      Novel("Novel-004", "Ayah Aku Berbeda", repoAuthor.findAuthorByFullName("Tere Liye"), repoPublisher.findPublisherByFullName("Gramedia"), "Drama"),
      Novel("Novel-005", "Madre", repoAuthor.findAuthorByFullName("Dee Lestari"), repoPublisher.findPublisherByFullName("Gramedia"), "Drama"),
      Novel("Novel-006", "Lagu Untuk Renjana", repoAuthor.findAuthorByFullName("Faisal Syahreza"), repoPublisher.findPublisherByFullName("Mizan"), "Drama"),
      Novel("Novel-007", "Semoga Lekas Lega", repoAuthor.findAuthorByFullName("Faisal Syahreza"), repoPublisher.findPublisherByFullName("Mizan"), "Drama"),
      Novel("Novel-008", "The Abbey Mystery", repoAuthor.findAuthorByFullName("Julia Golding"), repoPublisher.findPublisherByFullName("Lion Hudson"), "Fiction"),

      // COMIC
      Comic("Comic-001", "Uzumaki Naruto", repoAuthor.findAuthorByFullName("Masashi Kisimoto"), repoPublisher.findPublisherByFullName("Shueisha"), true, 0),
      Comic("Comic-002", "The Worst Client", repoAuthor.findAuthorByFullName("Masashi Kisimoto"), repoPublisher.findPublisherByFullName("Shueisha"), true, 0),
      Comic("Comic-003", "For The Sake of Dreams!", repoAuthor.findAuthorByFullName("Masashi Kisimoto"), repoPublisher.findPublisherByFullName("Shueisha"), true, 0),
      Comic("Comic-004", "HxH : The Day of Departure", repoAuthor.findAuthorByFullName("Yoshihiro Togashi"), repoPublisher.findPublisherByFullName("Shueisha"), true, 0),
      Comic("Comic-005", "HxH : A Struggle in the Mist", repoAuthor.findAuthorByFullName("Yoshihiro Togashi"), repoPublisher.findPublisherByFullName("Shueisha"), true, 0),
      Comic("Comic-006", "One Piece", repoAuthor.findAuthorByFullName("Eiichiro Oda"), repoPublisher.findPublisherByFullName("Gramedia"), true, 0),
      Comic("Comic-007", "Petualangan Indonesia", repoAuthor.findAuthorByFullName("Rizki Anwar"), repoPublisher.findPublisherByFullName("Gramedia Pustaka Utama"), false, 0),
      Comic("Comic-008", "Petualangan di Jakarta", repoAuthor.findAuthorByFullName("Yusuh Fadli"), repoPublisher.findPublisherByFullName("Elex Media Komputindo"), false, 0),
    ];
  }
}