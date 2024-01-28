library prisma.namespace.model; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:orm/orm.dart' as _i2;

import 'model.dart' as _i1;
import 'prisma.dart' as _i3;

typedef ProfData = (Profile, (int, int));

class Follow {
  const Follow({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
    this.following,
    this.followed,
  });

  factory Follow.fromJson(Map json) => Follow(
        id: json['id'],
        followingId: json['followingId'],
        followedId: json['followedId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        following: json['following'] is Map
            ? _i1.Profile.fromJson(json['following'])
            : null,
        followed: json['followed'] is Map
            ? _i1.Profile.fromJson(json['followed'])
            : null,
      );

  final String? id;

  final String? followingId;

  final String? followedId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.Profile? following;

  final _i1.Profile? followed;
}

enum MealType implements _i2.PrismaEnum {
  breakfast._('BREAKFAST'),
  lunch._('LUNCH'),
  dinner._('DINNER');

  const MealType._(this.name);

  @override
  final String name;
}

class Restaurant {
  const Restaurant({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
    this.posts,
    this.$count,
  });

  factory Restaurant.fromJson(Map json) => Restaurant(
        id: json['id'],
        name: json['name'],
        yelpId: json['yelpId'],
        latitude: json['latitude'],
        longitude: json['longitude'],
        posts: (json['posts'] as Iterable?)
            ?.map((json) => _i1.Post.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.RestaurantCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? name;

  final String? yelpId;

  final String? latitude;

  final String? longitude;

  final Iterable<_i1.Post>? posts;

  final _i3.RestaurantCountOutputType? $count;
}

class Member {
  const Member({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
    this.profile,
    this.group,
  });

  factory Member.fromJson(Map json) => Member(
        id: json['id'],
        profileId: json['profileId'],
        groupId: json['groupId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        profile: json['profile'] is Map
            ? _i1.Profile.fromJson(json['profile'])
            : null,
        group: json['group'] is Map ? _i1.Group.fromJson(json['group']) : null,
      );

  final String? id;

  final String? profileId;

  final String? groupId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.Profile? profile;

  final _i1.Group? group;
}

class Group {
  const Group({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.members,
    this.posts,
    this.$count,
  });

  factory Group.fromJson(Map json) => Group(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        members: (json['members'] as Iterable?)
            ?.map((json) => _i1.Member.fromJson(json)),
        posts: (json['posts'] as Iterable?)
            ?.map((json) => _i1.Post.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.GroupCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? name;

  final String? description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i1.Member>? members;

  final Iterable<_i1.Post>? posts;

  final _i3.GroupCountOutputType? $count;
}

class CommentLike {
  const CommentLike({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.comment,
    this.profile,
  });

  factory CommentLike.fromJson(Map json) => CommentLike(
        id: json['id'],
        commentId: json['commentId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        comment: json['comment'] is Map
            ? _i1.Comment.fromJson(json['comment'])
            : null,
        profile: json['profile'] is Map
            ? _i1.Profile.fromJson(json['profile'])
            : null,
      );

  final String? id;

  final String? commentId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.Comment? comment;

  final _i1.Profile? profile;
}

class Comment {
  const Comment({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
    this.parent,
    this.post,
    this.profile,
    this.$count,
  });

  factory Comment.fromJson(Map json) => Comment(
        id: json['id'],
        message: json['message'],
        parentId: json['parentId'],
        postId: json['postId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        replies: (json['replies'] as Iterable?)
            ?.map((json) => _i1.Comment.fromJson(json)),
        likes: (json['likes'] as Iterable?)
            ?.map((json) => _i1.CommentLike.fromJson(json)),
        parent:
            json['parent'] is Map ? _i1.Comment.fromJson(json['parent']) : null,
        post: json['post'] is Map ? _i1.Post.fromJson(json['post']) : null,
        profile: json['profile'] is Map
            ? _i1.Profile.fromJson(json['profile'])
            : null,
        $count: json['_count'] is Map
            ? _i3.CommentCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? message;

  final String? parentId;

  final String? postId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i1.Comment>? replies;

  final Iterable<_i1.CommentLike>? likes;

  final _i1.Comment? parent;

  final _i1.Post? post;

  final _i1.Profile? profile;

  final _i3.CommentCountOutputType? $count;
}

class PostLike {
  const PostLike({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.post,
    this.profile,
  });

  factory PostLike.fromJson(Map json) => PostLike(
        id: json['id'],
        postId: json['postId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        post: json['post'] is Map ? _i1.Post.fromJson(json['post']) : null,
        profile: json['profile'] is Map
            ? _i1.Profile.fromJson(json['profile'])
            : null,
      );

  final String? id;

  final String? postId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.Post? post;

  final _i1.Profile? profile;
}

class PostTag {
  const PostTag({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.post,
    this.profile,
  });

  factory PostTag.fromJson(Map json) => PostTag(
        id: json['id'],
        postId: json['postId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        post: json['post'] is Map ? _i1.Post.fromJson(json['post']) : null,
        profile: json['profile'] is Map
            ? _i1.Profile.fromJson(json['profile'])
            : null,
      );

  final String? id;

  final String? postId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.Post? post;

  final _i1.Profile? profile;
}

class PostImage {
  const PostImage({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.post,
  });

  factory PostImage.fromJson(Map json) => PostImage(
        id: json['id'],
        postId: json['postId'],
        imageUrl: json['imageUrl'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        post: json['post'] is Map ? _i1.Post.fromJson(json['post']) : null,
      );

  final String? id;

  final String? postId;

  final String? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.Post? post;
}

class Post {
  const Post({
    this.id,
    this.individual,
    this.meal,
    this.restaurantId,
    this.groupId,
    this.profileId,
    this.review,
    this.rating,
    this.createdAt,
    this.updatedAt,
    this.restaurant,
    this.group,
    this.profile,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
    this.$count,
  });

  factory Post.fromJson(Map json) => Post(
        id: json['id'],
        individual: json['individual'],
        meal: json['meal'] != null
            ? _i1.MealType.values.firstWhere((e) => e.name == json['meal'])
            : null,
        restaurantId: json['restaurantId'],
        groupId: json['groupId'],
        profileId: json['profileId'],
        review: json['review'],
        rating: json['rating'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        restaurant: json['restaurant'] is Map
            ? _i1.Restaurant.fromJson(json['restaurant'])
            : null,
        group: json['group'] is Map ? _i1.Group.fromJson(json['group']) : null,
        profile: json['profile'] is Map
            ? _i1.Profile.fromJson(json['profile'])
            : null,
        comments: (json['comments'] as Iterable?)
            ?.map((json) => _i1.Comment.fromJson(json)),
        likes: (json['likes'] as Iterable?)
            ?.map((json) => _i1.PostLike.fromJson(json)),
        postTags: (json['postTags'] as Iterable?)
            ?.map((json) => _i1.PostTag.fromJson(json)),
        postImages: (json['postImages'] as Iterable?)
            ?.map((json) => _i1.PostImage.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.PostCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final bool? individual;

  final _i1.MealType? meal;

  final String? restaurantId;

  final String? groupId;

  final String? profileId;

  final String? review;

  final int? rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.Restaurant? restaurant;

  final _i1.Group? group;

  final _i1.Profile? profile;

  final Iterable<_i1.Comment>? comments;

  final Iterable<_i1.PostLike>? likes;

  final Iterable<_i1.PostTag>? postTags;

  final Iterable<_i1.PostImage>? postImages;

  final _i3.PostCountOutputType? $count;
}

class Profile {
  const Profile({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.bio,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
    this.$count,
  });

  factory Profile.fromJson(Map json) => Profile(
        id: json['id'],
        email: json['email'],
        username: json['username'],
        imageUrl: json['imageUrl'],
        public: json['public'],
        bio: json['bio'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        followsFollowing: (json['followsFollowing'] as Iterable?)
            ?.map((json) => _i1.Follow.fromJson(json)),
        followsFollowed: (json['followsFollowed'] as Iterable?)
            ?.map((json) => _i1.Follow.fromJson(json)),
        posts: (json['posts'] as Iterable?)
            ?.map((json) => _i1.Post.fromJson(json)),
        postTags: (json['postTags'] as Iterable?)
            ?.map((json) => _i1.PostTag.fromJson(json)),
        members: (json['members'] as Iterable?)
            ?.map((json) => _i1.Member.fromJson(json)),
        comments: (json['comments'] as Iterable?)
            ?.map((json) => _i1.Comment.fromJson(json)),
        postLikes: (json['postLikes'] as Iterable?)
            ?.map((json) => _i1.PostLike.fromJson(json)),
        commentLikes: (json['commentLikes'] as Iterable?)
            ?.map((json) => _i1.CommentLike.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.ProfileCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? email;

  final String? username;

  final String? imageUrl;

  final bool? public;

  final String? bio;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i1.Follow>? followsFollowing;

  final Iterable<_i1.Follow>? followsFollowed;

  final Iterable<_i1.Post>? posts;

  final Iterable<_i1.PostTag>? postTags;

  final Iterable<_i1.Member>? members;

  final Iterable<_i1.Comment>? comments;

  final Iterable<_i1.PostLike>? postLikes;

  final Iterable<_i1.CommentLike>? commentLikes;

  final _i3.ProfileCountOutputType? $count;
}
