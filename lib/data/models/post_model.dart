class BlogResponse {
  final List<Blog> blogs;

  BlogResponse({required this.blogs});

  factory BlogResponse.fromJson(Map<String, dynamic> json) {
    var blogList = json['blogs'] as List;
    List<Blog> blogItems = blogList.map((i) => Blog.fromJson(i)).toList();

    return BlogResponse(blogs: blogItems);
  }
}

class Blog {
  final String id;
  final String title;
  final String content;
  final String thumbnail;
  final Author author;
  final List<Category> categories;
  final int numberOfLikes;
  final int numberOfBookmarks;

  Blog({
    required this.id,
    required this.title,
    required this.content,
    required this.thumbnail,
    required this.author,
    required this.categories,
    required this.numberOfLikes,
    required this.numberOfBookmarks,
  });

  factory Blog.fromJson(Map<String, dynamic> json) {
    var categoryList = json['categories'] as List;
    List<Category> categories = categoryList.map((i) => Category.fromJson(i)).toList();

    return Blog(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      thumbnail: json['thumbnail'],
      author: Author.fromJson(json['author']),
      categories: categories,
      numberOfLikes: json['number_of_likes'],
      numberOfBookmarks: json['number_of_bookmarks'],
    );
  }
}

class Author {
  final String id;
  final String username;
  final String email;
  final String profileUrl;
  final String bio;

  Author({
    required this.id,
    required this.username,
    required this.email,
    required this.profileUrl,
    required this.bio,
  });

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      profileUrl: json['profileUrl'],
      bio: json['bio'],
    );
  }
}

class Category {
  final String id;
  final String name;

  Category({required this.id, required this.name});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
    );
  }
}
