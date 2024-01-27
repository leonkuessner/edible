// ignore_for_file: non_constant_identifier_names

library prisma.namespace.prisma; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i3;
import 'prisma.dart' as _i2;

class RestaurantCountOutputType {
  const RestaurantCountOutputType({this.posts});

  factory RestaurantCountOutputType.fromJson(Map json) =>
      RestaurantCountOutputType(posts: json['posts']);

  final int? posts;
}

class GroupCountOutputType {
  const GroupCountOutputType({
    this.members,
    this.posts,
  });

  factory GroupCountOutputType.fromJson(Map json) => GroupCountOutputType(
        members: json['members'],
        posts: json['posts'],
      );

  final int? members;

  final int? posts;
}

class CommentCountOutputType {
  const CommentCountOutputType({
    this.replies,
    this.likes,
  });

  factory CommentCountOutputType.fromJson(Map json) => CommentCountOutputType(
        replies: json['replies'],
        likes: json['likes'],
      );

  final int? replies;

  final int? likes;
}

class PostCountOutputType {
  const PostCountOutputType({
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  factory PostCountOutputType.fromJson(Map json) => PostCountOutputType(
        comments: json['comments'],
        likes: json['likes'],
        postTags: json['postTags'],
        postImages: json['postImages'],
      );

  final int? comments;

  final int? likes;

  final int? postTags;

  final int? postImages;
}

class ProfileCountOutputType {
  const ProfileCountOutputType({
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  factory ProfileCountOutputType.fromJson(Map json) => ProfileCountOutputType(
        followsFollowing: json['followsFollowing'],
        followsFollowed: json['followsFollowed'],
        posts: json['posts'],
        postTags: json['postTags'],
        members: json['members'],
        comments: json['comments'],
        postLikes: json['postLikes'],
        commentLikes: json['commentLikes'],
      );

  final int? followsFollowing;

  final int? followsFollowed;

  final int? posts;

  final int? postTags;

  final int? members;

  final int? comments;

  final int? postLikes;

  final int? commentLikes;
}

enum QueryMode implements _i1.PrismaEnum {
  $default._('default'),
  insensitive._('insensitive');

  const QueryMode._(this.name);

  @override
  final String name;
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedStringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedBoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolFilter({
    this.equals,
    this.not,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
      };
}

class BoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFilter({
    this.equals,
    this.not,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
      };
}

class NestedDateTimeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DateTimeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class ProfileRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.ProfileWhereInput? $is;

  final _i2.ProfileWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class FollowWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
    this.following,
    this.followed,
  });

  final _i1.PrismaUnion<_i2.FollowWhereInput, Iterable<_i2.FollowWhereInput>>?
      AND;

  final Iterable<_i2.FollowWhereInput>? OR;

  final _i1.PrismaUnion<_i2.FollowWhereInput, Iterable<_i2.FollowWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? followingId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? followedId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.ProfileRelationFilter, _i2.ProfileWhereInput>?
      following;

  final _i1.PrismaUnion<_i2.ProfileRelationFilter, _i2.ProfileWhereInput>?
      followed;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'following': following,
        'followed': followed,
      };
}

class FollowListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.FollowWhereInput? every;

  final _i2.FollowWhereInput? some;

  final _i2.FollowWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class NestedEnumMealTypeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumMealTypeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1.PrismaUnion<_i3.MealType, _i1.Reference<_i3.MealType>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.MealType>,
      _i1.Reference<Iterable<_i3.MealType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.MealType>,
      _i1.Reference<Iterable<_i3.MealType>>>? notIn;

  final _i1.PrismaUnion<_i3.MealType, _i2.NestedEnumMealTypeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class EnumMealTypeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumMealTypeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1.PrismaUnion<_i3.MealType, _i1.Reference<_i3.MealType>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.MealType>,
      _i1.Reference<Iterable<_i3.MealType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.MealType>,
      _i1.Reference<Iterable<_i3.MealType>>>? notIn;

  final _i1.PrismaUnion<_i3.MealType, _i2.NestedEnumMealTypeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class IntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class RestaurantWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
    this.posts,
  });

  final _i1.PrismaUnion<_i2.RestaurantWhereInput,
      Iterable<_i2.RestaurantWhereInput>>? AND;

  final Iterable<_i2.RestaurantWhereInput>? OR;

  final _i1.PrismaUnion<_i2.RestaurantWhereInput,
      Iterable<_i2.RestaurantWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? yelpId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? latitude;

  final _i1.PrismaUnion<_i2.StringFilter, String>? longitude;

  final _i2.PostListRelationFilter? posts;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
        'posts': posts,
      };
}

class RestaurantRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.RestaurantWhereInput? $is;

  final _i2.RestaurantWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class GroupRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.GroupWhereInput? $is;

  final _i2.GroupWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class MemberWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
    this.profile,
    this.group,
  });

  final _i1.PrismaUnion<_i2.MemberWhereInput, Iterable<_i2.MemberWhereInput>>?
      AND;

  final Iterable<_i2.MemberWhereInput>? OR;

  final _i1.PrismaUnion<_i2.MemberWhereInput, Iterable<_i2.MemberWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? groupId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.ProfileRelationFilter, _i2.ProfileWhereInput>?
      profile;

  final _i1.PrismaUnion<_i2.GroupRelationFilter, _i2.GroupWhereInput>? group;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'profile': profile,
        'group': group,
      };
}

class MemberListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.MemberWhereInput? every;

  final _i2.MemberWhereInput? some;

  final _i2.MemberWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class GroupWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.members,
    this.posts,
  });

  final _i1.PrismaUnion<_i2.GroupWhereInput, Iterable<_i2.GroupWhereInput>>?
      AND;

  final Iterable<_i2.GroupWhereInput>? OR;

  final _i1.PrismaUnion<_i2.GroupWhereInput, Iterable<_i2.GroupWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.MemberListRelationFilter? members;

  final _i2.PostListRelationFilter? posts;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'members': members,
        'posts': posts,
      };
}

class GroupNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.GroupWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.GroupWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class ProfileNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.ProfileWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.ProfileWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class CommentRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.CommentWhereInput? $is;

  final _i2.CommentWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class CommentLikeWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.comment,
    this.profile,
  });

  final _i1.PrismaUnion<_i2.CommentLikeWhereInput,
      Iterable<_i2.CommentLikeWhereInput>>? AND;

  final Iterable<_i2.CommentLikeWhereInput>? OR;

  final _i1.PrismaUnion<_i2.CommentLikeWhereInput,
      Iterable<_i2.CommentLikeWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? commentId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.CommentRelationFilter, _i2.CommentWhereInput>?
      comment;

  final _i1.PrismaUnion<_i2.ProfileRelationFilter, _i2.ProfileWhereInput>?
      profile;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comment': comment,
        'profile': profile,
      };
}

class CommentLikeListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.CommentLikeWhereInput? every;

  final _i2.CommentLikeWhereInput? some;

  final _i2.CommentLikeWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class CommentNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.CommentWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.CommentWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class PostRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.PostWhereInput? $is;

  final _i2.PostWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class CommentWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentWhereInput({
    this.AND,
    this.OR,
    this.NOT,
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
  });

  final _i1.PrismaUnion<_i2.CommentWhereInput, Iterable<_i2.CommentWhereInput>>?
      AND;

  final Iterable<_i2.CommentWhereInput>? OR;

  final _i1.PrismaUnion<_i2.CommentWhereInput, Iterable<_i2.CommentWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? message;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? parentId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.CommentListRelationFilter? replies;

  final _i2.CommentLikeListRelationFilter? likes;

  final _i1.PrismaUnion<_i2.CommentNullableRelationFilter,
      _i1.PrismaUnion<_i2.CommentWhereInput, _i1.PrismaNull>>? parent;

  final _i1.PrismaUnion<_i2.PostRelationFilter, _i2.PostWhereInput>? post;

  final _i1.PrismaUnion<_i2.ProfileRelationFilter, _i2.ProfileWhereInput>?
      profile;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
        'parent': parent,
        'post': post,
        'profile': profile,
      };
}

class CommentListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.CommentWhereInput? every;

  final _i2.CommentWhereInput? some;

  final _i2.CommentWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class PostLikeWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.post,
    this.profile,
  });

  final _i1
      .PrismaUnion<_i2.PostLikeWhereInput, Iterable<_i2.PostLikeWhereInput>>?
      AND;

  final Iterable<_i2.PostLikeWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.PostLikeWhereInput, Iterable<_i2.PostLikeWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.PostRelationFilter, _i2.PostWhereInput>? post;

  final _i1.PrismaUnion<_i2.ProfileRelationFilter, _i2.ProfileWhereInput>?
      profile;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
        'profile': profile,
      };
}

class PostLikeListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.PostLikeWhereInput? every;

  final _i2.PostLikeWhereInput? some;

  final _i2.PostLikeWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class PostTagWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.post,
    this.profile,
  });

  final _i1.PrismaUnion<_i2.PostTagWhereInput, Iterable<_i2.PostTagWhereInput>>?
      AND;

  final Iterable<_i2.PostTagWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PostTagWhereInput, Iterable<_i2.PostTagWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.PostRelationFilter, _i2.PostWhereInput>? post;

  final _i1.PrismaUnion<_i2.ProfileRelationFilter, _i2.ProfileWhereInput>?
      profile;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
        'profile': profile,
      };
}

class PostTagListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.PostTagWhereInput? every;

  final _i2.PostTagWhereInput? some;

  final _i2.PostTagWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class PostImageWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.post,
  });

  final _i1
      .PrismaUnion<_i2.PostImageWhereInput, Iterable<_i2.PostImageWhereInput>>?
      AND;

  final Iterable<_i2.PostImageWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.PostImageWhereInput, Iterable<_i2.PostImageWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? imageUrl;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.PostRelationFilter, _i2.PostWhereInput>? post;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
      };
}

class PostImageListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.PostImageWhereInput? every;

  final _i2.PostImageWhereInput? some;

  final _i2.PostImageWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class PostWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostWhereInput({
    this.AND,
    this.OR,
    this.NOT,
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
  });

  final _i1.PrismaUnion<_i2.PostWhereInput, Iterable<_i2.PostWhereInput>>? AND;

  final Iterable<_i2.PostWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PostWhereInput, Iterable<_i2.PostWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? individual;

  final _i1.PrismaUnion<_i2.EnumMealTypeFilter, _i3.MealType>? meal;

  final _i1.PrismaUnion<_i2.StringFilter, String>? restaurantId;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? groupId;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? profileId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? review;

  final _i1.PrismaUnion<_i2.IntFilter, int>? rating;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.RestaurantRelationFilter, _i2.RestaurantWhereInput>?
      restaurant;

  final _i1.PrismaUnion<_i2.GroupNullableRelationFilter,
      _i1.PrismaUnion<_i2.GroupWhereInput, _i1.PrismaNull>>? group;

  final _i1.PrismaUnion<_i2.ProfileNullableRelationFilter,
      _i1.PrismaUnion<_i2.ProfileWhereInput, _i1.PrismaNull>>? profile;

  final _i2.CommentListRelationFilter? comments;

  final _i2.PostLikeListRelationFilter? likes;

  final _i2.PostTagListRelationFilter? postTags;

  final _i2.PostImageListRelationFilter? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'profile': profile,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.PostWhereInput? every;

  final _i2.PostWhereInput? some;

  final _i2.PostWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class ProfileWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
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
  });

  final _i1.PrismaUnion<_i2.ProfileWhereInput, Iterable<_i2.ProfileWhereInput>>?
      AND;

  final Iterable<_i2.ProfileWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProfileWhereInput, Iterable<_i2.ProfileWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringFilter, String>? username;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? public;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.FollowListRelationFilter? followsFollowing;

  final _i2.FollowListRelationFilter? followsFollowed;

  final _i2.PostListRelationFilter? posts;

  final _i2.PostTagListRelationFilter? postTags;

  final _i2.MemberListRelationFilter? members;

  final _i2.CommentListRelationFilter? comments;

  final _i2.PostLikeListRelationFilter? postLikes;

  final _i2.CommentLikeListRelationFilter? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileWhereUniqueInput({
    this.id,
    this.email,
    this.username,
    this.AND,
    this.OR,
    this.NOT,
    this.imageUrl,
    this.public,
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
  });

  final String? id;

  final String? email;

  final String? username;

  final _i1.PrismaUnion<_i2.ProfileWhereInput, Iterable<_i2.ProfileWhereInput>>?
      AND;

  final Iterable<_i2.ProfileWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProfileWhereInput, Iterable<_i2.ProfileWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? public;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.FollowListRelationFilter? followsFollowing;

  final _i2.FollowListRelationFilter? followsFollowed;

  final _i2.PostListRelationFilter? posts;

  final _i2.PostTagListRelationFilter? postTags;

  final _i2.MemberListRelationFilter? members;

  final _i2.CommentListRelationFilter? comments;

  final _i2.PostLikeListRelationFilter? postLikes;

  final _i2.CommentLikeListRelationFilter? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class FollowFollowingArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowFollowingArgs({
    this.select,
    this.include,
  });

  final _i2.ProfileSelect? select;

  final _i2.ProfileInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class FollowFollowedArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowFollowedArgs({
    this.select,
    this.include,
  });

  final _i2.ProfileSelect? select;

  final _i2.ProfileInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class FollowInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowInclude({
    this.following,
    this.followed,
  });

  final _i1.PrismaUnion<bool, _i2.FollowFollowingArgs>? following;

  final _i1.PrismaUnion<bool, _i2.FollowFollowedArgs>? followed;

  @override
  Map<String, dynamic> toJson() => {
        'following': following,
        'followed': followed,
      };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

enum NullsOrder implements _i1.PrismaEnum {
  first._('first'),
  last._('last');

  const NullsOrder._(this.name);

  @override
  final String name;
}

class SortOrderInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  final _i2.SortOrder sort;

  final _i2.NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => {
        'sort': sort,
        'nulls': nulls,
      };
}

class FollowOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class PostOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class PostTagOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class MemberOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class CommentOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class PostLikeOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class CommentLikeOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class ProfileOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileOrderByWithRelationInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
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
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? username;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? imageUrl;

  final _i2.SortOrder? public;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.FollowOrderByRelationAggregateInput? followsFollowing;

  final _i2.FollowOrderByRelationAggregateInput? followsFollowed;

  final _i2.PostOrderByRelationAggregateInput? posts;

  final _i2.PostTagOrderByRelationAggregateInput? postTags;

  final _i2.MemberOrderByRelationAggregateInput? members;

  final _i2.CommentOrderByRelationAggregateInput? comments;

  final _i2.PostLikeOrderByRelationAggregateInput? postLikes;

  final _i2.CommentLikeOrderByRelationAggregateInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class FollowOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowOrderByWithRelationInput({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
    this.following,
    this.followed,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? followingId;

  final _i2.SortOrder? followedId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.ProfileOrderByWithRelationInput? following;

  final _i2.ProfileOrderByWithRelationInput? followed;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'following': following,
        'followed': followed,
      };
}

class FollowWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
    this.following,
    this.followed,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.FollowWhereInput, Iterable<_i2.FollowWhereInput>>?
      AND;

  final Iterable<_i2.FollowWhereInput>? OR;

  final _i1.PrismaUnion<_i2.FollowWhereInput, Iterable<_i2.FollowWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? followingId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? followedId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.ProfileRelationFilter, _i2.ProfileWhereInput>?
      following;

  final _i1.PrismaUnion<_i2.ProfileRelationFilter, _i2.ProfileWhereInput>?
      followed;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'following': following,
        'followed': followed,
      };
}

enum FollowScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Follow'),
  followingId<String>('followingId', 'Follow'),
  followedId<String>('followedId', 'Follow'),
  createdAt<DateTime>('createdAt', 'Follow'),
  updatedAt<DateTime>('updatedAt', 'Follow');

  const FollowScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class ProfileFollowsFollowingArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileFollowsFollowingArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.FollowWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.FollowOrderByWithRelationInput>,
      _i2.FollowOrderByWithRelationInput>? orderBy;

  final _i2.FollowWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.FollowScalar, Iterable<_i2.FollowScalar>>? distinct;

  final _i2.FollowSelect? select;

  final _i2.FollowInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ProfileFollowsFollowedArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileFollowsFollowedArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.FollowWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.FollowOrderByWithRelationInput>,
      _i2.FollowOrderByWithRelationInput>? orderBy;

  final _i2.FollowWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.FollowScalar, Iterable<_i2.FollowScalar>>? distinct;

  final _i2.FollowSelect? select;

  final _i2.FollowInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class RestaurantOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantOrderByWithRelationInput({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
    this.posts,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? yelpId;

  final _i2.SortOrder? latitude;

  final _i2.SortOrder? longitude;

  final _i2.PostOrderByRelationAggregateInput? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
        'posts': posts,
      };
}

class GroupOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupOrderByWithRelationInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.members,
    this.posts,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.MemberOrderByRelationAggregateInput? members;

  final _i2.PostOrderByRelationAggregateInput? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'members': members,
        'posts': posts,
      };
}

class PostImageOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class PostOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostOrderByWithRelationInput({
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
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? individual;

  final _i2.SortOrder? meal;

  final _i2.SortOrder? restaurantId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? groupId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? profileId;

  final _i2.SortOrder? review;

  final _i2.SortOrder? rating;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.RestaurantOrderByWithRelationInput? restaurant;

  final _i2.GroupOrderByWithRelationInput? group;

  final _i2.ProfileOrderByWithRelationInput? profile;

  final _i2.CommentOrderByRelationAggregateInput? comments;

  final _i2.PostLikeOrderByRelationAggregateInput? likes;

  final _i2.PostTagOrderByRelationAggregateInput? postTags;

  final _i2.PostImageOrderByRelationAggregateInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'profile': profile,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
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
  });

  final String? id;

  final _i1.PrismaUnion<_i2.PostWhereInput, Iterable<_i2.PostWhereInput>>? AND;

  final Iterable<_i2.PostWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PostWhereInput, Iterable<_i2.PostWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? individual;

  final _i1.PrismaUnion<_i2.EnumMealTypeFilter, _i3.MealType>? meal;

  final _i1.PrismaUnion<_i2.StringFilter, String>? restaurantId;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? groupId;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? profileId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? review;

  final _i1.PrismaUnion<_i2.IntFilter, int>? rating;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.RestaurantRelationFilter, _i2.RestaurantWhereInput>?
      restaurant;

  final _i1.PrismaUnion<_i2.GroupNullableRelationFilter,
      _i1.PrismaUnion<_i2.GroupWhereInput, _i1.PrismaNull>>? group;

  final _i1.PrismaUnion<_i2.ProfileNullableRelationFilter,
      _i1.PrismaUnion<_i2.ProfileWhereInput, _i1.PrismaNull>>? profile;

  final _i2.CommentListRelationFilter? comments;

  final _i2.PostLikeListRelationFilter? likes;

  final _i2.PostTagListRelationFilter? postTags;

  final _i2.PostImageListRelationFilter? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'profile': profile,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

enum PostScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Post'),
  individual<bool>('individual', 'Post'),
  meal<_i3.MealType>('meal', 'Post'),
  restaurantId<String>('restaurantId', 'Post'),
  groupId<String>('groupId', 'Post'),
  profileId<String>('profileId', 'Post'),
  review<String>('review', 'Post'),
  rating<int>('rating', 'Post'),
  createdAt<DateTime>('createdAt', 'Post'),
  updatedAt<DateTime>('updatedAt', 'Post');

  const PostScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class RestaurantPostsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantPostsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PostWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PostOrderByWithRelationInput>,
      _i2.PostOrderByWithRelationInput>? orderBy;

  final _i2.PostWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PostScalar, Iterable<_i2.PostScalar>>? distinct;

  final _i2.PostSelect? select;

  final _i2.PostInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class RestaurantCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantCountOutputTypeSelect({this.posts});

  final bool? posts;

  @override
  Map<String, dynamic> toJson() => {'posts': posts};
}

class RestaurantCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantCountArgs({this.select});

  final _i2.RestaurantCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class RestaurantInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantInclude({
    this.posts,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.RestaurantPostsArgs>? posts;

  final _i1.PrismaUnion<bool, _i2.RestaurantCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'posts': posts,
        '_count': $count,
      };
}

class PostRestaurantArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostRestaurantArgs({
    this.select,
    this.include,
  });

  final _i2.RestaurantSelect? select;

  final _i2.RestaurantInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class MemberProfileArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberProfileArgs({
    this.select,
    this.include,
  });

  final _i2.ProfileSelect? select;

  final _i2.ProfileInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class MemberGroupArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberGroupArgs({
    this.select,
    this.include,
  });

  final _i2.GroupSelect? select;

  final _i2.GroupInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class MemberInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberInclude({
    this.profile,
    this.group,
  });

  final _i1.PrismaUnion<bool, _i2.MemberProfileArgs>? profile;

  final _i1.PrismaUnion<bool, _i2.MemberGroupArgs>? group;

  @override
  Map<String, dynamic> toJson() => {
        'profile': profile,
        'group': group,
      };
}

class MemberOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberOrderByWithRelationInput({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
    this.profile,
    this.group,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? groupId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.ProfileOrderByWithRelationInput? profile;

  final _i2.GroupOrderByWithRelationInput? group;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'profile': profile,
        'group': group,
      };
}

class MemberWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
    this.profile,
    this.group,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.MemberWhereInput, Iterable<_i2.MemberWhereInput>>?
      AND;

  final Iterable<_i2.MemberWhereInput>? OR;

  final _i1.PrismaUnion<_i2.MemberWhereInput, Iterable<_i2.MemberWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? groupId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.ProfileRelationFilter, _i2.ProfileWhereInput>?
      profile;

  final _i1.PrismaUnion<_i2.GroupRelationFilter, _i2.GroupWhereInput>? group;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'profile': profile,
        'group': group,
      };
}

enum MemberScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Member'),
  profileId<String>('profileId', 'Member'),
  groupId<String>('groupId', 'Member'),
  createdAt<DateTime>('createdAt', 'Member'),
  updatedAt<DateTime>('updatedAt', 'Member');

  const MemberScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class GroupMembersArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupMembersArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.MemberWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.MemberOrderByWithRelationInput>,
      _i2.MemberOrderByWithRelationInput>? orderBy;

  final _i2.MemberWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.MemberScalar, Iterable<_i2.MemberScalar>>? distinct;

  final _i2.MemberSelect? select;

  final _i2.MemberInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class GroupPostsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupPostsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PostWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PostOrderByWithRelationInput>,
      _i2.PostOrderByWithRelationInput>? orderBy;

  final _i2.PostWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PostScalar, Iterable<_i2.PostScalar>>? distinct;

  final _i2.PostSelect? select;

  final _i2.PostInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class GroupCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupCountOutputTypeSelect({
    this.members,
    this.posts,
  });

  final bool? members;

  final bool? posts;

  @override
  Map<String, dynamic> toJson() => {
        'members': members,
        'posts': posts,
      };
}

class GroupCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupCountArgs({this.select});

  final _i2.GroupCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class GroupInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupInclude({
    this.members,
    this.posts,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.GroupMembersArgs>? members;

  final _i1.PrismaUnion<bool, _i2.GroupPostsArgs>? posts;

  final _i1.PrismaUnion<bool, _i2.GroupCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'members': members,
        'posts': posts,
        '_count': $count,
      };
}

class MemberSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberSelect({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
    this.profile,
    this.group,
  });

  final bool? id;

  final bool? profileId;

  final bool? groupId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.MemberProfileArgs>? profile;

  final _i1.PrismaUnion<bool, _i2.MemberGroupArgs>? group;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'profile': profile,
        'group': group,
      };
}

class GroupSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupSelect({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.members,
    this.posts,
    this.$count,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.GroupMembersArgs>? members;

  final _i1.PrismaUnion<bool, _i2.GroupPostsArgs>? posts;

  final _i1.PrismaUnion<bool, _i2.GroupCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'members': members,
        'posts': posts,
        '_count': $count,
      };
}

class PostGroupArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostGroupArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.GroupWhereInput? where;

  final _i2.GroupSelect? select;

  final _i2.GroupInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class PostProfileArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostProfileArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.ProfileWhereInput? where;

  final _i2.ProfileSelect? select;

  final _i2.ProfileInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class CommentOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentOrderByWithRelationInput({
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
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? parentId;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.CommentOrderByRelationAggregateInput? replies;

  final _i2.CommentLikeOrderByRelationAggregateInput? likes;

  final _i2.CommentOrderByWithRelationInput? parent;

  final _i2.PostOrderByWithRelationInput? post;

  final _i2.ProfileOrderByWithRelationInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
        'parent': parent,
        'post': post,
        'profile': profile,
      };
}

class CommentWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
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
  });

  final String? id;

  final _i1.PrismaUnion<_i2.CommentWhereInput, Iterable<_i2.CommentWhereInput>>?
      AND;

  final Iterable<_i2.CommentWhereInput>? OR;

  final _i1.PrismaUnion<_i2.CommentWhereInput, Iterable<_i2.CommentWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? message;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? parentId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.CommentListRelationFilter? replies;

  final _i2.CommentLikeListRelationFilter? likes;

  final _i1.PrismaUnion<_i2.CommentNullableRelationFilter,
      _i1.PrismaUnion<_i2.CommentWhereInput, _i1.PrismaNull>>? parent;

  final _i1.PrismaUnion<_i2.PostRelationFilter, _i2.PostWhereInput>? post;

  final _i1.PrismaUnion<_i2.ProfileRelationFilter, _i2.ProfileWhereInput>?
      profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
        'parent': parent,
        'post': post,
        'profile': profile,
      };
}

enum CommentScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Comment'),
  message<String>('message', 'Comment'),
  parentId<String>('parentId', 'Comment'),
  postId<String>('postId', 'Comment'),
  profileId<String>('profileId', 'Comment'),
  createdAt<DateTime>('createdAt', 'Comment'),
  updatedAt<DateTime>('updatedAt', 'Comment');

  const CommentScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class CommentRepliesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentRepliesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.CommentWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.CommentOrderByWithRelationInput>,
      _i2.CommentOrderByWithRelationInput>? orderBy;

  final _i2.CommentWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.CommentScalar, Iterable<_i2.CommentScalar>>?
      distinct;

  final _i2.CommentSelect? select;

  final _i2.CommentInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class CommentLikeCommentArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeCommentArgs({
    this.select,
    this.include,
  });

  final _i2.CommentSelect? select;

  final _i2.CommentInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CommentLikeProfileArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeProfileArgs({
    this.select,
    this.include,
  });

  final _i2.ProfileSelect? select;

  final _i2.ProfileInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CommentLikeSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeSelect({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.comment,
    this.profile,
  });

  final bool? id;

  final bool? commentId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.CommentLikeCommentArgs>? comment;

  final _i1.PrismaUnion<bool, _i2.CommentLikeProfileArgs>? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comment': comment,
        'profile': profile,
      };
}

class CommentLikeInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeInclude({
    this.comment,
    this.profile,
  });

  final _i1.PrismaUnion<bool, _i2.CommentLikeCommentArgs>? comment;

  final _i1.PrismaUnion<bool, _i2.CommentLikeProfileArgs>? profile;

  @override
  Map<String, dynamic> toJson() => {
        'comment': comment,
        'profile': profile,
      };
}

class CommentLikeOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeOrderByWithRelationInput({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.comment,
    this.profile,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? commentId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.CommentOrderByWithRelationInput? comment;

  final _i2.ProfileOrderByWithRelationInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comment': comment,
        'profile': profile,
      };
}

class CommentLikeWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.comment,
    this.profile,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.CommentLikeWhereInput,
      Iterable<_i2.CommentLikeWhereInput>>? AND;

  final Iterable<_i2.CommentLikeWhereInput>? OR;

  final _i1.PrismaUnion<_i2.CommentLikeWhereInput,
      Iterable<_i2.CommentLikeWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? commentId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.CommentRelationFilter, _i2.CommentWhereInput>?
      comment;

  final _i1.PrismaUnion<_i2.ProfileRelationFilter, _i2.ProfileWhereInput>?
      profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comment': comment,
        'profile': profile,
      };
}

enum CommentLikeScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'CommentLike'),
  commentId<String>('commentId', 'CommentLike'),
  profileId<String>('profileId', 'CommentLike'),
  createdAt<DateTime>('createdAt', 'CommentLike'),
  updatedAt<DateTime>('updatedAt', 'CommentLike');

  const CommentLikeScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class CommentLikesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.CommentLikeWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.CommentLikeOrderByWithRelationInput>,
      _i2.CommentLikeOrderByWithRelationInput>? orderBy;

  final _i2.CommentLikeWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.CommentLikeScalar, Iterable<_i2.CommentLikeScalar>>?
      distinct;

  final _i2.CommentLikeSelect? select;

  final _i2.CommentLikeInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class CommentParentArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentParentArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.CommentWhereInput? where;

  final _i2.CommentSelect? select;

  final _i2.CommentInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class CommentPostArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentPostArgs({
    this.select,
    this.include,
  });

  final _i2.PostSelect? select;

  final _i2.PostInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CommentProfileArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentProfileArgs({
    this.select,
    this.include,
  });

  final _i2.ProfileSelect? select;

  final _i2.ProfileInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CommentCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCountOutputTypeSelect({
    this.replies,
    this.likes,
  });

  final bool? replies;

  final bool? likes;

  @override
  Map<String, dynamic> toJson() => {
        'replies': replies,
        'likes': likes,
      };
}

class CommentCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCountArgs({this.select});

  final _i2.CommentCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CommentInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentInclude({
    this.replies,
    this.likes,
    this.parent,
    this.post,
    this.profile,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.CommentRepliesArgs>? replies;

  final _i1.PrismaUnion<bool, _i2.CommentLikesArgs>? likes;

  final _i1.PrismaUnion<bool, _i2.CommentParentArgs>? parent;

  final _i1.PrismaUnion<bool, _i2.CommentPostArgs>? post;

  final _i1.PrismaUnion<bool, _i2.CommentProfileArgs>? profile;

  final _i1.PrismaUnion<bool, _i2.CommentCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'replies': replies,
        'likes': likes,
        'parent': parent,
        'post': post,
        'profile': profile,
        '_count': $count,
      };
}

class CommentSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentSelect({
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

  final bool? id;

  final bool? message;

  final bool? parentId;

  final bool? postId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.CommentRepliesArgs>? replies;

  final _i1.PrismaUnion<bool, _i2.CommentLikesArgs>? likes;

  final _i1.PrismaUnion<bool, _i2.CommentParentArgs>? parent;

  final _i1.PrismaUnion<bool, _i2.CommentPostArgs>? post;

  final _i1.PrismaUnion<bool, _i2.CommentProfileArgs>? profile;

  final _i1.PrismaUnion<bool, _i2.CommentCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
        'parent': parent,
        'post': post,
        'profile': profile,
        '_count': $count,
      };
}

class PostCommentsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCommentsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.CommentWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.CommentOrderByWithRelationInput>,
      _i2.CommentOrderByWithRelationInput>? orderBy;

  final _i2.CommentWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.CommentScalar, Iterable<_i2.CommentScalar>>?
      distinct;

  final _i2.CommentSelect? select;

  final _i2.CommentInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class PostLikePostArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikePostArgs({
    this.select,
    this.include,
  });

  final _i2.PostSelect? select;

  final _i2.PostInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class PostLikeProfileArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeProfileArgs({
    this.select,
    this.include,
  });

  final _i2.ProfileSelect? select;

  final _i2.ProfileInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class PostLikeSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeSelect({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.post,
    this.profile,
  });

  final bool? id;

  final bool? postId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.PostLikePostArgs>? post;

  final _i1.PrismaUnion<bool, _i2.PostLikeProfileArgs>? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
        'profile': profile,
      };
}

class PostLikeInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeInclude({
    this.post,
    this.profile,
  });

  final _i1.PrismaUnion<bool, _i2.PostLikePostArgs>? post;

  final _i1.PrismaUnion<bool, _i2.PostLikeProfileArgs>? profile;

  @override
  Map<String, dynamic> toJson() => {
        'post': post,
        'profile': profile,
      };
}

class PostLikeOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeOrderByWithRelationInput({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.post,
    this.profile,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.PostOrderByWithRelationInput? post;

  final _i2.ProfileOrderByWithRelationInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
        'profile': profile,
      };
}

class PostLikeWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.post,
    this.profile,
  });

  final String? id;

  final _i1
      .PrismaUnion<_i2.PostLikeWhereInput, Iterable<_i2.PostLikeWhereInput>>?
      AND;

  final Iterable<_i2.PostLikeWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.PostLikeWhereInput, Iterable<_i2.PostLikeWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.PostRelationFilter, _i2.PostWhereInput>? post;

  final _i1.PrismaUnion<_i2.ProfileRelationFilter, _i2.ProfileWhereInput>?
      profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
        'profile': profile,
      };
}

enum PostLikeScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'PostLike'),
  postId<String>('postId', 'PostLike'),
  profileId<String>('profileId', 'PostLike'),
  createdAt<DateTime>('createdAt', 'PostLike'),
  updatedAt<DateTime>('updatedAt', 'PostLike');

  const PostLikeScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class PostLikesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PostLikeWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PostLikeOrderByWithRelationInput>,
      _i2.PostLikeOrderByWithRelationInput>? orderBy;

  final _i2.PostLikeWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PostLikeScalar, Iterable<_i2.PostLikeScalar>>?
      distinct;

  final _i2.PostLikeSelect? select;

  final _i2.PostLikeInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class PostTagPostArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagPostArgs({
    this.select,
    this.include,
  });

  final _i2.PostSelect? select;

  final _i2.PostInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class PostTagProfileArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagProfileArgs({
    this.select,
    this.include,
  });

  final _i2.ProfileSelect? select;

  final _i2.ProfileInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class PostTagSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagSelect({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.post,
    this.profile,
  });

  final bool? id;

  final bool? postId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.PostTagPostArgs>? post;

  final _i1.PrismaUnion<bool, _i2.PostTagProfileArgs>? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
        'profile': profile,
      };
}

class PostTagInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagInclude({
    this.post,
    this.profile,
  });

  final _i1.PrismaUnion<bool, _i2.PostTagPostArgs>? post;

  final _i1.PrismaUnion<bool, _i2.PostTagProfileArgs>? profile;

  @override
  Map<String, dynamic> toJson() => {
        'post': post,
        'profile': profile,
      };
}

class PostTagOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagOrderByWithRelationInput({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.post,
    this.profile,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.PostOrderByWithRelationInput? post;

  final _i2.ProfileOrderByWithRelationInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
        'profile': profile,
      };
}

class PostTagWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.post,
    this.profile,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.PostTagWhereInput, Iterable<_i2.PostTagWhereInput>>?
      AND;

  final Iterable<_i2.PostTagWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PostTagWhereInput, Iterable<_i2.PostTagWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.PostRelationFilter, _i2.PostWhereInput>? post;

  final _i1.PrismaUnion<_i2.ProfileRelationFilter, _i2.ProfileWhereInput>?
      profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
        'profile': profile,
      };
}

enum PostTagScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'PostTag'),
  postId<String>('postId', 'PostTag'),
  profileId<String>('profileId', 'PostTag'),
  createdAt<DateTime>('createdAt', 'PostTag'),
  updatedAt<DateTime>('updatedAt', 'PostTag');

  const PostTagScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class PostPostTagsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostPostTagsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PostTagWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PostTagOrderByWithRelationInput>,
      _i2.PostTagOrderByWithRelationInput>? orderBy;

  final _i2.PostTagWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PostTagScalar, Iterable<_i2.PostTagScalar>>?
      distinct;

  final _i2.PostTagSelect? select;

  final _i2.PostTagInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class PostImagePostArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImagePostArgs({
    this.select,
    this.include,
  });

  final _i2.PostSelect? select;

  final _i2.PostInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class PostImageSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageSelect({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.post,
  });

  final bool? id;

  final bool? postId;

  final bool? imageUrl;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.PostImagePostArgs>? post;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
      };
}

class PostImageInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageInclude({this.post});

  final _i1.PrismaUnion<bool, _i2.PostImagePostArgs>? post;

  @override
  Map<String, dynamic> toJson() => {'post': post};
}

class PostImageOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageOrderByWithRelationInput({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.post,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? imageUrl;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.PostOrderByWithRelationInput? post;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
      };
}

class PostImageWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.post,
  });

  final String? id;

  final _i1
      .PrismaUnion<_i2.PostImageWhereInput, Iterable<_i2.PostImageWhereInput>>?
      AND;

  final Iterable<_i2.PostImageWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.PostImageWhereInput, Iterable<_i2.PostImageWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? imageUrl;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.PostRelationFilter, _i2.PostWhereInput>? post;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
      };
}

enum PostImageScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'PostImage'),
  postId<String>('postId', 'PostImage'),
  imageUrl<String>('imageUrl', 'PostImage'),
  createdAt<DateTime>('createdAt', 'PostImage'),
  updatedAt<DateTime>('updatedAt', 'PostImage');

  const PostImageScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class PostPostImagesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostPostImagesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PostImageWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PostImageOrderByWithRelationInput>,
      _i2.PostImageOrderByWithRelationInput>? orderBy;

  final _i2.PostImageWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PostImageScalar, Iterable<_i2.PostImageScalar>>?
      distinct;

  final _i2.PostImageSelect? select;

  final _i2.PostImageInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class PostCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCountOutputTypeSelect({
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final bool? comments;

  final bool? likes;

  final bool? postTags;

  final bool? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCountArgs({this.select});

  final _i2.PostCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostInclude({
    this.restaurant,
    this.group,
    this.profile,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.PostRestaurantArgs>? restaurant;

  final _i1.PrismaUnion<bool, _i2.PostGroupArgs>? group;

  final _i1.PrismaUnion<bool, _i2.PostProfileArgs>? profile;

  final _i1.PrismaUnion<bool, _i2.PostCommentsArgs>? comments;

  final _i1.PrismaUnion<bool, _i2.PostLikesArgs>? likes;

  final _i1.PrismaUnion<bool, _i2.PostPostTagsArgs>? postTags;

  final _i1.PrismaUnion<bool, _i2.PostPostImagesArgs>? postImages;

  final _i1.PrismaUnion<bool, _i2.PostCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'restaurant': restaurant,
        'group': group,
        'profile': profile,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
        '_count': $count,
      };
}

class RestaurantSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantSelect({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
    this.posts,
    this.$count,
  });

  final bool? id;

  final bool? name;

  final bool? yelpId;

  final bool? latitude;

  final bool? longitude;

  final _i1.PrismaUnion<bool, _i2.RestaurantPostsArgs>? posts;

  final _i1.PrismaUnion<bool, _i2.RestaurantCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
        'posts': posts,
        '_count': $count,
      };
}

class PostSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostSelect({
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

  final bool? id;

  final bool? individual;

  final bool? meal;

  final bool? restaurantId;

  final bool? groupId;

  final bool? profileId;

  final bool? review;

  final bool? rating;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.PostRestaurantArgs>? restaurant;

  final _i1.PrismaUnion<bool, _i2.PostGroupArgs>? group;

  final _i1.PrismaUnion<bool, _i2.PostProfileArgs>? profile;

  final _i1.PrismaUnion<bool, _i2.PostCommentsArgs>? comments;

  final _i1.PrismaUnion<bool, _i2.PostLikesArgs>? likes;

  final _i1.PrismaUnion<bool, _i2.PostPostTagsArgs>? postTags;

  final _i1.PrismaUnion<bool, _i2.PostPostImagesArgs>? postImages;

  final _i1.PrismaUnion<bool, _i2.PostCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'profile': profile,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
        '_count': $count,
      };
}

class ProfilePostsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfilePostsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PostWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PostOrderByWithRelationInput>,
      _i2.PostOrderByWithRelationInput>? orderBy;

  final _i2.PostWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PostScalar, Iterable<_i2.PostScalar>>? distinct;

  final _i2.PostSelect? select;

  final _i2.PostInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ProfilePostTagsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfilePostTagsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PostTagWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PostTagOrderByWithRelationInput>,
      _i2.PostTagOrderByWithRelationInput>? orderBy;

  final _i2.PostTagWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PostTagScalar, Iterable<_i2.PostTagScalar>>?
      distinct;

  final _i2.PostTagSelect? select;

  final _i2.PostTagInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ProfileMembersArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileMembersArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.MemberWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.MemberOrderByWithRelationInput>,
      _i2.MemberOrderByWithRelationInput>? orderBy;

  final _i2.MemberWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.MemberScalar, Iterable<_i2.MemberScalar>>? distinct;

  final _i2.MemberSelect? select;

  final _i2.MemberInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ProfileCommentsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCommentsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.CommentWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.CommentOrderByWithRelationInput>,
      _i2.CommentOrderByWithRelationInput>? orderBy;

  final _i2.CommentWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.CommentScalar, Iterable<_i2.CommentScalar>>?
      distinct;

  final _i2.CommentSelect? select;

  final _i2.CommentInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ProfilePostLikesArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfilePostLikesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PostLikeWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PostLikeOrderByWithRelationInput>,
      _i2.PostLikeOrderByWithRelationInput>? orderBy;

  final _i2.PostLikeWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PostLikeScalar, Iterable<_i2.PostLikeScalar>>?
      distinct;

  final _i2.PostLikeSelect? select;

  final _i2.PostLikeInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ProfileCommentLikesArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCommentLikesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.CommentLikeWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.CommentLikeOrderByWithRelationInput>,
      _i2.CommentLikeOrderByWithRelationInput>? orderBy;

  final _i2.CommentLikeWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.CommentLikeScalar, Iterable<_i2.CommentLikeScalar>>?
      distinct;

  final _i2.CommentLikeSelect? select;

  final _i2.CommentLikeInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ProfileCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCountOutputTypeSelect({
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final bool? followsFollowing;

  final bool? followsFollowed;

  final bool? posts;

  final bool? postTags;

  final bool? members;

  final bool? comments;

  final bool? postLikes;

  final bool? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCountArgs({this.select});

  final _i2.ProfileCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProfileInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileInclude({
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

  final _i1.PrismaUnion<bool, _i2.ProfileFollowsFollowingArgs>?
      followsFollowing;

  final _i1.PrismaUnion<bool, _i2.ProfileFollowsFollowedArgs>? followsFollowed;

  final _i1.PrismaUnion<bool, _i2.ProfilePostsArgs>? posts;

  final _i1.PrismaUnion<bool, _i2.ProfilePostTagsArgs>? postTags;

  final _i1.PrismaUnion<bool, _i2.ProfileMembersArgs>? members;

  final _i1.PrismaUnion<bool, _i2.ProfileCommentsArgs>? comments;

  final _i1.PrismaUnion<bool, _i2.ProfilePostLikesArgs>? postLikes;

  final _i1.PrismaUnion<bool, _i2.ProfileCommentLikesArgs>? commentLikes;

  final _i1.PrismaUnion<bool, _i2.ProfileCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
        '_count': $count,
      };
}

class FollowSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowSelect({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
    this.following,
    this.followed,
  });

  final bool? id;

  final bool? followingId;

  final bool? followedId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.FollowFollowingArgs>? following;

  final _i1.PrismaUnion<bool, _i2.FollowFollowedArgs>? followed;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'following': following,
        'followed': followed,
      };
}

class ProfileSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileSelect({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
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

  final bool? id;

  final bool? email;

  final bool? username;

  final bool? imageUrl;

  final bool? public;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.ProfileFollowsFollowingArgs>?
      followsFollowing;

  final _i1.PrismaUnion<bool, _i2.ProfileFollowsFollowedArgs>? followsFollowed;

  final _i1.PrismaUnion<bool, _i2.ProfilePostsArgs>? posts;

  final _i1.PrismaUnion<bool, _i2.ProfilePostTagsArgs>? postTags;

  final _i1.PrismaUnion<bool, _i2.ProfileMembersArgs>? members;

  final _i1.PrismaUnion<bool, _i2.ProfileCommentsArgs>? comments;

  final _i1.PrismaUnion<bool, _i2.ProfilePostLikesArgs>? postLikes;

  final _i1.PrismaUnion<bool, _i2.ProfileCommentLikesArgs>? commentLikes;

  final _i1.PrismaUnion<bool, _i2.ProfileCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
        '_count': $count,
      };
}

enum ProfileScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Profile'),
  email<String>('email', 'Profile'),
  username<String>('username', 'Profile'),
  imageUrl<String>('imageUrl', 'Profile'),
  public<bool>('public', 'Profile'),
  createdAt<DateTime>('createdAt', 'Profile'),
  updatedAt<DateTime>('updatedAt', 'Profile');

  const ProfileScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class RestaurantCreateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantCreateWithoutPostsInput({
    this.id,
    required this.name,
    required this.yelpId,
    required this.latitude,
    required this.longitude,
  });

  final String? id;

  final String name;

  final String yelpId;

  final String latitude;

  final String longitude;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
      };
}

class RestaurantUncheckedCreateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantUncheckedCreateWithoutPostsInput({
    this.id,
    required this.name,
    required this.yelpId,
    required this.latitude,
    required this.longitude,
  });

  final String? id;

  final String name;

  final String yelpId;

  final String latitude;

  final String longitude;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
      };
}

class RestaurantWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantWhereUniqueInput({
    this.id,
    this.yelpId,
    this.AND,
    this.OR,
    this.NOT,
    this.name,
    this.latitude,
    this.longitude,
    this.posts,
  });

  final String? id;

  final String? yelpId;

  final _i1.PrismaUnion<_i2.RestaurantWhereInput,
      Iterable<_i2.RestaurantWhereInput>>? AND;

  final Iterable<_i2.RestaurantWhereInput>? OR;

  final _i1.PrismaUnion<_i2.RestaurantWhereInput,
      Iterable<_i2.RestaurantWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? latitude;

  final _i1.PrismaUnion<_i2.StringFilter, String>? longitude;

  final _i2.PostListRelationFilter? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'yelpId': yelpId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'name': name,
        'latitude': latitude,
        'longitude': longitude,
        'posts': posts,
      };
}

class RestaurantCreateOrConnectWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantCreateOrConnectWithoutPostsInput({
    required this.where,
    required this.create,
  });

  final _i2.RestaurantWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.RestaurantCreateWithoutPostsInput,
      _i2.RestaurantUncheckedCreateWithoutPostsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class RestaurantCreateNestedOneWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantCreateNestedOneWithoutPostsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.RestaurantCreateWithoutPostsInput,
      _i2.RestaurantUncheckedCreateWithoutPostsInput>? create;

  final _i2.RestaurantCreateOrConnectWithoutPostsInput? connectOrCreate;

  final _i2.RestaurantWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ProfileCreateWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateWithoutPostTagsInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowCreateNestedManyWithoutFollowingInput? followsFollowing;

  final _i2.FollowCreateNestedManyWithoutFollowedInput? followsFollowed;

  final _i2.PostCreateNestedManyWithoutProfileInput? posts;

  final _i2.MemberCreateNestedManyWithoutProfileInput? members;

  final _i2.CommentCreateNestedManyWithoutProfileInput? comments;

  final _i2.PostLikeCreateNestedManyWithoutProfileInput? postLikes;

  final _i2.CommentLikeCreateNestedManyWithoutProfileInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class FollowUncheckedCreateWithoutFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedCreateWithoutFollowingInput({
    this.id,
    required this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String followedId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowCreateOrConnectWithoutFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateOrConnectWithoutFollowingInput({
    required this.where,
    required this.create,
  });

  final _i2.FollowWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FollowCreateWithoutFollowingInput,
      _i2.FollowUncheckedCreateWithoutFollowingInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class FollowCreateManyFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateManyFollowingInput({
    this.id,
    required this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String followedId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowCreateManyFollowingInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateManyFollowingInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.FollowCreateManyFollowingInput,
      Iterable<_i2.FollowCreateManyFollowingInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class FollowUncheckedCreateNestedManyWithoutFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedCreateNestedManyWithoutFollowingInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.FollowCreateWithoutFollowingInput,
          _i1.PrismaUnion<
              Iterable<_i2.FollowCreateWithoutFollowingInput>,
              _i1.PrismaUnion<_i2.FollowUncheckedCreateWithoutFollowingInput,
                  Iterable<_i2.FollowUncheckedCreateWithoutFollowingInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FollowCreateOrConnectWithoutFollowingInput,
          Iterable<_i2.FollowCreateOrConnectWithoutFollowingInput>>?
      connectOrCreate;

  final _i2.FollowCreateManyFollowingInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class FollowUncheckedCreateWithoutFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedCreateWithoutFollowedInput({
    this.id,
    required this.followingId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String followingId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowCreateOrConnectWithoutFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateOrConnectWithoutFollowedInput({
    required this.where,
    required this.create,
  });

  final _i2.FollowWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FollowCreateWithoutFollowedInput,
      _i2.FollowUncheckedCreateWithoutFollowedInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class FollowCreateManyFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateManyFollowedInput({
    this.id,
    required this.followingId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String followingId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowCreateManyFollowedInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateManyFollowedInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.FollowCreateManyFollowedInput,
      Iterable<_i2.FollowCreateManyFollowedInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class FollowUncheckedCreateNestedManyWithoutFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedCreateNestedManyWithoutFollowedInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.FollowCreateWithoutFollowedInput,
          _i1.PrismaUnion<
              Iterable<_i2.FollowCreateWithoutFollowedInput>,
              _i1.PrismaUnion<_i2.FollowUncheckedCreateWithoutFollowedInput,
                  Iterable<_i2.FollowUncheckedCreateWithoutFollowedInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FollowCreateOrConnectWithoutFollowedInput,
      Iterable<_i2.FollowCreateOrConnectWithoutFollowedInput>>? connectOrCreate;

  final _i2.FollowCreateManyFollowedInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class CommentLikeUncheckedCreateWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUncheckedCreateWithoutCommentInput({
    this.id,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeCreateOrConnectWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeCreateOrConnectWithoutCommentInput({
    required this.where,
    required this.create,
  });

  final _i2.CommentLikeWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentLikeCreateWithoutCommentInput,
      _i2.CommentLikeUncheckedCreateWithoutCommentInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class CommentLikeCreateManyCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeCreateManyCommentInput({
    this.id,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeCreateManyCommentInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeCreateManyCommentInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.CommentLikeCreateManyCommentInput,
      Iterable<_i2.CommentLikeCreateManyCommentInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class CommentLikeUncheckedCreateNestedManyWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUncheckedCreateNestedManyWithoutCommentInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.CommentLikeCreateWithoutCommentInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentLikeCreateWithoutCommentInput>,
          _i1.PrismaUnion<
              _i2.CommentLikeUncheckedCreateWithoutCommentInput,
              Iterable<
                  _i2.CommentLikeUncheckedCreateWithoutCommentInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentLikeCreateOrConnectWithoutCommentInput,
          Iterable<_i2.CommentLikeCreateOrConnectWithoutCommentInput>>?
      connectOrCreate;

  final _i2.CommentLikeCreateManyCommentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class CommentUncheckedCreateWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedCreateWithoutParentInput({
    this.id,
    required this.message,
    required this.postId,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
  });

  final String? id;

  final String message;

  final String postId;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutParentInput? replies;

  final _i2.CommentLikeUncheckedCreateNestedManyWithoutCommentInput? likes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
      };
}

class CommentCreateOrConnectWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateOrConnectWithoutParentInput({
    required this.where,
    required this.create,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentCreateWithoutParentInput,
      _i2.CommentUncheckedCreateWithoutParentInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class CommentCreateManyParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateManyParentInput({
    this.id,
    required this.message,
    required this.postId,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String message;

  final String postId;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentCreateManyParentInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateManyParentInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.CommentCreateManyParentInput,
      Iterable<_i2.CommentCreateManyParentInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class CommentUncheckedCreateNestedManyWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedCreateNestedManyWithoutParentInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.CommentCreateWithoutParentInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentCreateWithoutParentInput>,
          _i1.PrismaUnion<_i2.CommentUncheckedCreateWithoutParentInput,
              Iterable<_i2.CommentUncheckedCreateWithoutParentInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentCreateOrConnectWithoutParentInput,
      Iterable<_i2.CommentCreateOrConnectWithoutParentInput>>? connectOrCreate;

  final _i2.CommentCreateManyParentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class CommentUncheckedCreateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedCreateWithoutPostInput({
    this.id,
    required this.message,
    this.parentId,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
  });

  final String? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? parentId;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutParentInput? replies;

  final _i2.CommentLikeUncheckedCreateNestedManyWithoutCommentInput? likes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
      };
}

class CommentCreateOrConnectWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateOrConnectWithoutPostInput({
    required this.where,
    required this.create,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentCreateWithoutPostInput,
      _i2.CommentUncheckedCreateWithoutPostInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class CommentCreateManyPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateManyPostInput({
    this.id,
    required this.message,
    this.parentId,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? parentId;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentCreateManyPostInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateManyPostInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.CommentCreateManyPostInput,
      Iterable<_i2.CommentCreateManyPostInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class CommentUncheckedCreateNestedManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedCreateNestedManyWithoutPostInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.CommentCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.CommentUncheckedCreateWithoutPostInput,
              Iterable<_i2.CommentUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentCreateOrConnectWithoutPostInput,
      Iterable<_i2.CommentCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i2.CommentCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PostLikeUncheckedCreateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUncheckedCreateWithoutPostInput({
    this.id,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeCreateOrConnectWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeCreateOrConnectWithoutPostInput({
    required this.where,
    required this.create,
  });

  final _i2.PostLikeWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostLikeCreateWithoutPostInput,
      _i2.PostLikeUncheckedCreateWithoutPostInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PostLikeCreateManyPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeCreateManyPostInput({
    this.id,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeCreateManyPostInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeCreateManyPostInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PostLikeCreateManyPostInput,
      Iterable<_i2.PostLikeCreateManyPostInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PostLikeUncheckedCreateNestedManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUncheckedCreateNestedManyWithoutPostInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PostLikeCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostLikeCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.PostLikeUncheckedCreateWithoutPostInput,
              Iterable<_i2.PostLikeUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostLikeCreateOrConnectWithoutPostInput,
      Iterable<_i2.PostLikeCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i2.PostLikeCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PostTagUncheckedCreateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUncheckedCreateWithoutPostInput({
    this.id,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagCreateOrConnectWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagCreateOrConnectWithoutPostInput({
    required this.where,
    required this.create,
  });

  final _i2.PostTagWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostTagCreateWithoutPostInput,
      _i2.PostTagUncheckedCreateWithoutPostInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PostTagCreateManyPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagCreateManyPostInput({
    this.id,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagCreateManyPostInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagCreateManyPostInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PostTagCreateManyPostInput,
      Iterable<_i2.PostTagCreateManyPostInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PostTagUncheckedCreateNestedManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUncheckedCreateNestedManyWithoutPostInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PostTagCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostTagCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.PostTagUncheckedCreateWithoutPostInput,
              Iterable<_i2.PostTagUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostTagCreateOrConnectWithoutPostInput,
      Iterable<_i2.PostTagCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i2.PostTagCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PostImageCreateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageCreateWithoutPostInput({
    this.id,
    required this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageUncheckedCreateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageUncheckedCreateWithoutPostInput({
    this.id,
    required this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageCreateOrConnectWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageCreateOrConnectWithoutPostInput({
    required this.where,
    required this.create,
  });

  final _i2.PostImageWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostImageCreateWithoutPostInput,
      _i2.PostImageUncheckedCreateWithoutPostInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PostImageCreateManyPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageCreateManyPostInput({
    this.id,
    required this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageCreateManyPostInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageCreateManyPostInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PostImageCreateManyPostInput,
      Iterable<_i2.PostImageCreateManyPostInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PostImageUncheckedCreateNestedManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageUncheckedCreateNestedManyWithoutPostInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PostImageCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostImageCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.PostImageUncheckedCreateWithoutPostInput,
              Iterable<_i2.PostImageUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostImageCreateOrConnectWithoutPostInput,
      Iterable<_i2.PostImageCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i2.PostImageCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostImageWhereUniqueInput,
      Iterable<_i2.PostImageWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PostUncheckedCreateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateWithoutProfileInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.restaurantId,
    this.groupId,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String restaurantId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? groupId;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutPostInput? comments;

  final _i2.PostLikeUncheckedCreateNestedManyWithoutPostInput? likes;

  final _i2.PostTagUncheckedCreateNestedManyWithoutPostInput? postTags;

  final _i2.PostImageUncheckedCreateNestedManyWithoutPostInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostCreateOrConnectWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateOrConnectWithoutProfileInput({
    required this.where,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostCreateWithoutProfileInput,
      _i2.PostUncheckedCreateWithoutProfileInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PostCreateManyProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateManyProfileInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.restaurantId,
    this.groupId,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String restaurantId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? groupId;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostCreateManyProfileInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateManyProfileInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PostCreateManyProfileInput,
      Iterable<_i2.PostCreateManyProfileInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PostUncheckedCreateNestedManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateNestedManyWithoutProfileInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PostCreateWithoutProfileInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostCreateWithoutProfileInput>,
          _i1.PrismaUnion<_i2.PostUncheckedCreateWithoutProfileInput,
              Iterable<_i2.PostUncheckedCreateWithoutProfileInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostCreateOrConnectWithoutProfileInput,
      Iterable<_i2.PostCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i2.PostCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class MemberUncheckedCreateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUncheckedCreateWithoutProfileInput({
    this.id,
    required this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String groupId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberCreateOrConnectWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberCreateOrConnectWithoutProfileInput({
    required this.where,
    required this.create,
  });

  final _i2.MemberWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MemberCreateWithoutProfileInput,
      _i2.MemberUncheckedCreateWithoutProfileInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class MemberCreateManyProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberCreateManyProfileInput({
    this.id,
    required this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String groupId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberCreateManyProfileInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberCreateManyProfileInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.MemberCreateManyProfileInput,
      Iterable<_i2.MemberCreateManyProfileInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class MemberUncheckedCreateNestedManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUncheckedCreateNestedManyWithoutProfileInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.MemberCreateWithoutProfileInput,
      _i1.PrismaUnion<
          Iterable<_i2.MemberCreateWithoutProfileInput>,
          _i1.PrismaUnion<_i2.MemberUncheckedCreateWithoutProfileInput,
              Iterable<_i2.MemberUncheckedCreateWithoutProfileInput>>>>? create;

  final _i1.PrismaUnion<_i2.MemberCreateOrConnectWithoutProfileInput,
      Iterable<_i2.MemberCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i2.MemberCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class CommentUncheckedCreateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedCreateWithoutProfileInput({
    this.id,
    required this.message,
    this.parentId,
    required this.postId,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
  });

  final String? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? parentId;

  final String postId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutParentInput? replies;

  final _i2.CommentLikeUncheckedCreateNestedManyWithoutCommentInput? likes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
      };
}

class CommentCreateOrConnectWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateOrConnectWithoutProfileInput({
    required this.where,
    required this.create,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentCreateWithoutProfileInput,
      _i2.CommentUncheckedCreateWithoutProfileInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class CommentCreateManyProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateManyProfileInput({
    this.id,
    required this.message,
    this.parentId,
    required this.postId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? parentId;

  final String postId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentCreateManyProfileInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateManyProfileInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.CommentCreateManyProfileInput,
      Iterable<_i2.CommentCreateManyProfileInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class CommentUncheckedCreateNestedManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedCreateNestedManyWithoutProfileInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.CommentCreateWithoutProfileInput,
          _i1.PrismaUnion<
              Iterable<_i2.CommentCreateWithoutProfileInput>,
              _i1.PrismaUnion<_i2.CommentUncheckedCreateWithoutProfileInput,
                  Iterable<_i2.CommentUncheckedCreateWithoutProfileInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.CommentCreateOrConnectWithoutProfileInput,
      Iterable<_i2.CommentCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i2.CommentCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PostLikeUncheckedCreateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUncheckedCreateWithoutProfileInput({
    this.id,
    required this.postId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String postId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeCreateOrConnectWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeCreateOrConnectWithoutProfileInput({
    required this.where,
    required this.create,
  });

  final _i2.PostLikeWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostLikeCreateWithoutProfileInput,
      _i2.PostLikeUncheckedCreateWithoutProfileInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PostLikeCreateManyProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeCreateManyProfileInput({
    this.id,
    required this.postId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String postId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeCreateManyProfileInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeCreateManyProfileInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PostLikeCreateManyProfileInput,
      Iterable<_i2.PostLikeCreateManyProfileInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PostLikeUncheckedCreateNestedManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUncheckedCreateNestedManyWithoutProfileInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PostLikeCreateWithoutProfileInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostLikeCreateWithoutProfileInput>,
              _i1.PrismaUnion<_i2.PostLikeUncheckedCreateWithoutProfileInput,
                  Iterable<_i2.PostLikeUncheckedCreateWithoutProfileInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostLikeCreateOrConnectWithoutProfileInput,
          Iterable<_i2.PostLikeCreateOrConnectWithoutProfileInput>>?
      connectOrCreate;

  final _i2.PostLikeCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class CommentLikeUncheckedCreateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUncheckedCreateWithoutProfileInput({
    this.id,
    required this.commentId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String commentId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeCreateOrConnectWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeCreateOrConnectWithoutProfileInput({
    required this.where,
    required this.create,
  });

  final _i2.CommentLikeWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentLikeCreateWithoutProfileInput,
      _i2.CommentLikeUncheckedCreateWithoutProfileInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class CommentLikeCreateManyProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeCreateManyProfileInput({
    this.id,
    required this.commentId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String commentId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeCreateManyProfileInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeCreateManyProfileInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.CommentLikeCreateManyProfileInput,
      Iterable<_i2.CommentLikeCreateManyProfileInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class CommentLikeUncheckedCreateNestedManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUncheckedCreateNestedManyWithoutProfileInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.CommentLikeCreateWithoutProfileInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentLikeCreateWithoutProfileInput>,
          _i1.PrismaUnion<
              _i2.CommentLikeUncheckedCreateWithoutProfileInput,
              Iterable<
                  _i2.CommentLikeUncheckedCreateWithoutProfileInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentLikeCreateOrConnectWithoutProfileInput,
          Iterable<_i2.CommentLikeCreateOrConnectWithoutProfileInput>>?
      connectOrCreate;

  final _i2.CommentLikeCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProfileUncheckedCreateWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedCreateWithoutPostTagsInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowingInput?
      followsFollowing;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowedInput?
      followsFollowed;

  final _i2.PostUncheckedCreateNestedManyWithoutProfileInput? posts;

  final _i2.MemberUncheckedCreateNestedManyWithoutProfileInput? members;

  final _i2.CommentUncheckedCreateNestedManyWithoutProfileInput? comments;

  final _i2.PostLikeUncheckedCreateNestedManyWithoutProfileInput? postLikes;

  final _i2.CommentLikeUncheckedCreateNestedManyWithoutProfileInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileCreateOrConnectWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateOrConnectWithoutPostTagsInput({
    required this.where,
    required this.create,
  });

  final _i2.ProfileWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutPostTagsInput,
      _i2.ProfileUncheckedCreateWithoutPostTagsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProfileCreateNestedOneWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateNestedOneWithoutPostTagsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutPostTagsInput,
      _i2.ProfileUncheckedCreateWithoutPostTagsInput>? create;

  final _i2.ProfileCreateOrConnectWithoutPostTagsInput? connectOrCreate;

  final _i2.ProfileWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PostTagCreateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagCreateWithoutPostInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.profile,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ProfileCreateNestedOneWithoutPostTagsInput profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'profile': profile,
      };
}

class PostTagCreateNestedManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagCreateNestedManyWithoutPostInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PostTagCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostTagCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.PostTagUncheckedCreateWithoutPostInput,
              Iterable<_i2.PostTagUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostTagCreateOrConnectWithoutPostInput,
      Iterable<_i2.PostTagCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i2.PostTagCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PostImageCreateNestedManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageCreateNestedManyWithoutPostInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PostImageCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostImageCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.PostImageUncheckedCreateWithoutPostInput,
              Iterable<_i2.PostImageUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostImageCreateOrConnectWithoutPostInput,
      Iterable<_i2.PostImageCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i2.PostImageCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostImageWhereUniqueInput,
      Iterable<_i2.PostImageWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PostCreateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateWithoutLikesInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    required this.restaurant,
    this.group,
    this.profile,
    this.comments,
    this.postTags,
    this.postImages,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.RestaurantCreateNestedOneWithoutPostsInput restaurant;

  final _i2.GroupCreateNestedOneWithoutPostsInput? group;

  final _i2.ProfileCreateNestedOneWithoutPostsInput? profile;

  final _i2.CommentCreateNestedManyWithoutPostInput? comments;

  final _i2.PostTagCreateNestedManyWithoutPostInput? postTags;

  final _i2.PostImageCreateNestedManyWithoutPostInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'profile': profile,
        'comments': comments,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUncheckedCreateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateWithoutLikesInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.restaurantId,
    this.groupId,
    this.profileId,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    this.comments,
    this.postTags,
    this.postImages,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String restaurantId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? groupId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profileId;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutPostInput? comments;

  final _i2.PostTagUncheckedCreateNestedManyWithoutPostInput? postTags;

  final _i2.PostImageUncheckedCreateNestedManyWithoutPostInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comments': comments,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostCreateOrConnectWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateOrConnectWithoutLikesInput({
    required this.where,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostCreateWithoutLikesInput,
      _i2.PostUncheckedCreateWithoutLikesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PostCreateNestedOneWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateNestedOneWithoutLikesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.PostCreateWithoutLikesInput,
      _i2.PostUncheckedCreateWithoutLikesInput>? create;

  final _i2.PostCreateOrConnectWithoutLikesInput? connectOrCreate;

  final _i2.PostWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PostLikeCreateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeCreateWithoutProfileInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.post,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostCreateNestedOneWithoutLikesInput post;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
      };
}

class PostLikeCreateNestedManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeCreateNestedManyWithoutProfileInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PostLikeCreateWithoutProfileInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostLikeCreateWithoutProfileInput>,
              _i1.PrismaUnion<_i2.PostLikeUncheckedCreateWithoutProfileInput,
                  Iterable<_i2.PostLikeUncheckedCreateWithoutProfileInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostLikeCreateOrConnectWithoutProfileInput,
          Iterable<_i2.PostLikeCreateOrConnectWithoutProfileInput>>?
      connectOrCreate;

  final _i2.PostLikeCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProfileCreateWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateWithoutCommentsInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.postLikes,
    this.commentLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowCreateNestedManyWithoutFollowingInput? followsFollowing;

  final _i2.FollowCreateNestedManyWithoutFollowedInput? followsFollowed;

  final _i2.PostCreateNestedManyWithoutProfileInput? posts;

  final _i2.PostTagCreateNestedManyWithoutProfileInput? postTags;

  final _i2.MemberCreateNestedManyWithoutProfileInput? members;

  final _i2.PostLikeCreateNestedManyWithoutProfileInput? postLikes;

  final _i2.CommentLikeCreateNestedManyWithoutProfileInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class PostTagUncheckedCreateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUncheckedCreateWithoutProfileInput({
    this.id,
    required this.postId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String postId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagCreateOrConnectWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagCreateOrConnectWithoutProfileInput({
    required this.where,
    required this.create,
  });

  final _i2.PostTagWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostTagCreateWithoutProfileInput,
      _i2.PostTagUncheckedCreateWithoutProfileInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PostTagCreateManyProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagCreateManyProfileInput({
    this.id,
    required this.postId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String postId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagCreateManyProfileInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagCreateManyProfileInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PostTagCreateManyProfileInput,
      Iterable<_i2.PostTagCreateManyProfileInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PostTagUncheckedCreateNestedManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUncheckedCreateNestedManyWithoutProfileInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PostTagCreateWithoutProfileInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostTagCreateWithoutProfileInput>,
              _i1.PrismaUnion<_i2.PostTagUncheckedCreateWithoutProfileInput,
                  Iterable<_i2.PostTagUncheckedCreateWithoutProfileInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostTagCreateOrConnectWithoutProfileInput,
      Iterable<_i2.PostTagCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i2.PostTagCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProfileUncheckedCreateWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedCreateWithoutCommentsInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.postLikes,
    this.commentLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowingInput?
      followsFollowing;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowedInput?
      followsFollowed;

  final _i2.PostUncheckedCreateNestedManyWithoutProfileInput? posts;

  final _i2.PostTagUncheckedCreateNestedManyWithoutProfileInput? postTags;

  final _i2.MemberUncheckedCreateNestedManyWithoutProfileInput? members;

  final _i2.PostLikeUncheckedCreateNestedManyWithoutProfileInput? postLikes;

  final _i2.CommentLikeUncheckedCreateNestedManyWithoutProfileInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileCreateOrConnectWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateOrConnectWithoutCommentsInput({
    required this.where,
    required this.create,
  });

  final _i2.ProfileWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutCommentsInput,
      _i2.ProfileUncheckedCreateWithoutCommentsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProfileCreateNestedOneWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateNestedOneWithoutCommentsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutCommentsInput,
      _i2.ProfileUncheckedCreateWithoutCommentsInput>? create;

  final _i2.ProfileCreateOrConnectWithoutCommentsInput? connectOrCreate;

  final _i2.ProfileWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class CommentCreateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateWithoutLikesInput({
    this.id,
    required this.message,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.parent,
    required this.post,
    required this.profile,
  });

  final String? id;

  final String message;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentCreateNestedManyWithoutParentInput? replies;

  final _i2.CommentCreateNestedOneWithoutRepliesInput? parent;

  final _i2.PostCreateNestedOneWithoutCommentsInput post;

  final _i2.ProfileCreateNestedOneWithoutCommentsInput profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'parent': parent,
        'post': post,
        'profile': profile,
      };
}

class CommentUncheckedCreateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedCreateWithoutLikesInput({
    this.id,
    required this.message,
    this.parentId,
    required this.postId,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
    this.replies,
  });

  final String? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? parentId;

  final String postId;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutParentInput? replies;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
      };
}

class CommentCreateOrConnectWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateOrConnectWithoutLikesInput({
    required this.where,
    required this.create,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentCreateWithoutLikesInput,
      _i2.CommentUncheckedCreateWithoutLikesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class CommentCreateNestedOneWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateNestedOneWithoutLikesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.CommentCreateWithoutLikesInput,
      _i2.CommentUncheckedCreateWithoutLikesInput>? create;

  final _i2.CommentCreateOrConnectWithoutLikesInput? connectOrCreate;

  final _i2.CommentWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class CommentLikeCreateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeCreateWithoutProfileInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.comment,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentCreateNestedOneWithoutLikesInput comment;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comment': comment,
      };
}

class CommentLikeCreateNestedManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeCreateNestedManyWithoutProfileInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.CommentLikeCreateWithoutProfileInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentLikeCreateWithoutProfileInput>,
          _i1.PrismaUnion<
              _i2.CommentLikeUncheckedCreateWithoutProfileInput,
              Iterable<
                  _i2.CommentLikeUncheckedCreateWithoutProfileInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentLikeCreateOrConnectWithoutProfileInput,
          Iterable<_i2.CommentLikeCreateOrConnectWithoutProfileInput>>?
      connectOrCreate;

  final _i2.CommentLikeCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProfileCreateWithoutPostLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateWithoutPostLikesInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.commentLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowCreateNestedManyWithoutFollowingInput? followsFollowing;

  final _i2.FollowCreateNestedManyWithoutFollowedInput? followsFollowed;

  final _i2.PostCreateNestedManyWithoutProfileInput? posts;

  final _i2.PostTagCreateNestedManyWithoutProfileInput? postTags;

  final _i2.MemberCreateNestedManyWithoutProfileInput? members;

  final _i2.CommentCreateNestedManyWithoutProfileInput? comments;

  final _i2.CommentLikeCreateNestedManyWithoutProfileInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'commentLikes': commentLikes,
      };
}

class ProfileUncheckedCreateWithoutPostLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedCreateWithoutPostLikesInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.commentLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowingInput?
      followsFollowing;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowedInput?
      followsFollowed;

  final _i2.PostUncheckedCreateNestedManyWithoutProfileInput? posts;

  final _i2.PostTagUncheckedCreateNestedManyWithoutProfileInput? postTags;

  final _i2.MemberUncheckedCreateNestedManyWithoutProfileInput? members;

  final _i2.CommentUncheckedCreateNestedManyWithoutProfileInput? comments;

  final _i2.CommentLikeUncheckedCreateNestedManyWithoutProfileInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'commentLikes': commentLikes,
      };
}

class ProfileCreateOrConnectWithoutPostLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateOrConnectWithoutPostLikesInput({
    required this.where,
    required this.create,
  });

  final _i2.ProfileWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutPostLikesInput,
      _i2.ProfileUncheckedCreateWithoutPostLikesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProfileCreateNestedOneWithoutPostLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateNestedOneWithoutPostLikesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutPostLikesInput,
      _i2.ProfileUncheckedCreateWithoutPostLikesInput>? create;

  final _i2.ProfileCreateOrConnectWithoutPostLikesInput? connectOrCreate;

  final _i2.ProfileWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PostLikeCreateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeCreateWithoutPostInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.profile,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ProfileCreateNestedOneWithoutPostLikesInput profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'profile': profile,
      };
}

class PostLikeCreateNestedManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeCreateNestedManyWithoutPostInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PostLikeCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostLikeCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.PostLikeUncheckedCreateWithoutPostInput,
              Iterable<_i2.PostLikeUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostLikeCreateOrConnectWithoutPostInput,
      Iterable<_i2.PostLikeCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i2.PostLikeCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PostCreateWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateWithoutCommentsInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    required this.restaurant,
    this.group,
    this.profile,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.RestaurantCreateNestedOneWithoutPostsInput restaurant;

  final _i2.GroupCreateNestedOneWithoutPostsInput? group;

  final _i2.ProfileCreateNestedOneWithoutPostsInput? profile;

  final _i2.PostLikeCreateNestedManyWithoutPostInput? likes;

  final _i2.PostTagCreateNestedManyWithoutPostInput? postTags;

  final _i2.PostImageCreateNestedManyWithoutPostInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'profile': profile,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUncheckedCreateWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateWithoutCommentsInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.restaurantId,
    this.groupId,
    this.profileId,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String restaurantId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? groupId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profileId;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostLikeUncheckedCreateNestedManyWithoutPostInput? likes;

  final _i2.PostTagUncheckedCreateNestedManyWithoutPostInput? postTags;

  final _i2.PostImageUncheckedCreateNestedManyWithoutPostInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostCreateOrConnectWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateOrConnectWithoutCommentsInput({
    required this.where,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostCreateWithoutCommentsInput,
      _i2.PostUncheckedCreateWithoutCommentsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PostCreateNestedOneWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateNestedOneWithoutCommentsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.PostCreateWithoutCommentsInput,
      _i2.PostUncheckedCreateWithoutCommentsInput>? create;

  final _i2.PostCreateOrConnectWithoutCommentsInput? connectOrCreate;

  final _i2.PostWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class CommentCreateWithoutRepliesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateWithoutRepliesInput({
    this.id,
    required this.message,
    this.createdAt,
    this.updatedAt,
    this.likes,
    this.parent,
    required this.post,
    required this.profile,
  });

  final String? id;

  final String message;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentLikeCreateNestedManyWithoutCommentInput? likes;

  final _i2.CommentCreateNestedOneWithoutRepliesInput? parent;

  final _i2.PostCreateNestedOneWithoutCommentsInput post;

  final _i2.ProfileCreateNestedOneWithoutCommentsInput profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'likes': likes,
        'parent': parent,
        'post': post,
        'profile': profile,
      };
}

class CommentUncheckedCreateWithoutRepliesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedCreateWithoutRepliesInput({
    this.id,
    required this.message,
    this.parentId,
    required this.postId,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
    this.likes,
  });

  final String? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? parentId;

  final String postId;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentLikeUncheckedCreateNestedManyWithoutCommentInput? likes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'likes': likes,
      };
}

class CommentCreateOrConnectWithoutRepliesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateOrConnectWithoutRepliesInput({
    required this.where,
    required this.create,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentCreateWithoutRepliesInput,
      _i2.CommentUncheckedCreateWithoutRepliesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class CommentCreateNestedOneWithoutRepliesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateNestedOneWithoutRepliesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.CommentCreateWithoutRepliesInput,
      _i2.CommentUncheckedCreateWithoutRepliesInput>? create;

  final _i2.CommentCreateOrConnectWithoutRepliesInput? connectOrCreate;

  final _i2.CommentWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class CommentCreateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateWithoutProfileInput({
    this.id,
    required this.message,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
    this.parent,
    required this.post,
  });

  final String? id;

  final String message;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentCreateNestedManyWithoutParentInput? replies;

  final _i2.CommentLikeCreateNestedManyWithoutCommentInput? likes;

  final _i2.CommentCreateNestedOneWithoutRepliesInput? parent;

  final _i2.PostCreateNestedOneWithoutCommentsInput post;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
        'parent': parent,
        'post': post,
      };
}

class CommentCreateNestedManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateNestedManyWithoutProfileInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.CommentCreateWithoutProfileInput,
          _i1.PrismaUnion<
              Iterable<_i2.CommentCreateWithoutProfileInput>,
              _i1.PrismaUnion<_i2.CommentUncheckedCreateWithoutProfileInput,
                  Iterable<_i2.CommentUncheckedCreateWithoutProfileInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.CommentCreateOrConnectWithoutProfileInput,
      Iterable<_i2.CommentCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i2.CommentCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProfileCreateWithoutCommentLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateWithoutCommentLikesInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowCreateNestedManyWithoutFollowingInput? followsFollowing;

  final _i2.FollowCreateNestedManyWithoutFollowedInput? followsFollowed;

  final _i2.PostCreateNestedManyWithoutProfileInput? posts;

  final _i2.PostTagCreateNestedManyWithoutProfileInput? postTags;

  final _i2.MemberCreateNestedManyWithoutProfileInput? members;

  final _i2.CommentCreateNestedManyWithoutProfileInput? comments;

  final _i2.PostLikeCreateNestedManyWithoutProfileInput? postLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
      };
}

class ProfileUncheckedCreateWithoutCommentLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedCreateWithoutCommentLikesInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowingInput?
      followsFollowing;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowedInput?
      followsFollowed;

  final _i2.PostUncheckedCreateNestedManyWithoutProfileInput? posts;

  final _i2.PostTagUncheckedCreateNestedManyWithoutProfileInput? postTags;

  final _i2.MemberUncheckedCreateNestedManyWithoutProfileInput? members;

  final _i2.CommentUncheckedCreateNestedManyWithoutProfileInput? comments;

  final _i2.PostLikeUncheckedCreateNestedManyWithoutProfileInput? postLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
      };
}

class ProfileCreateOrConnectWithoutCommentLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateOrConnectWithoutCommentLikesInput({
    required this.where,
    required this.create,
  });

  final _i2.ProfileWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutCommentLikesInput,
      _i2.ProfileUncheckedCreateWithoutCommentLikesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProfileCreateNestedOneWithoutCommentLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateNestedOneWithoutCommentLikesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutCommentLikesInput,
      _i2.ProfileUncheckedCreateWithoutCommentLikesInput>? create;

  final _i2.ProfileCreateOrConnectWithoutCommentLikesInput? connectOrCreate;

  final _i2.ProfileWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class CommentLikeCreateWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeCreateWithoutCommentInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.profile,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ProfileCreateNestedOneWithoutCommentLikesInput profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'profile': profile,
      };
}

class CommentLikeCreateNestedManyWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeCreateNestedManyWithoutCommentInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.CommentLikeCreateWithoutCommentInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentLikeCreateWithoutCommentInput>,
          _i1.PrismaUnion<
              _i2.CommentLikeUncheckedCreateWithoutCommentInput,
              Iterable<
                  _i2.CommentLikeUncheckedCreateWithoutCommentInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentLikeCreateOrConnectWithoutCommentInput,
          Iterable<_i2.CommentLikeCreateOrConnectWithoutCommentInput>>?
      connectOrCreate;

  final _i2.CommentLikeCreateManyCommentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class CommentCreateWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateWithoutParentInput({
    this.id,
    required this.message,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
    required this.post,
    required this.profile,
  });

  final String? id;

  final String message;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentCreateNestedManyWithoutParentInput? replies;

  final _i2.CommentLikeCreateNestedManyWithoutCommentInput? likes;

  final _i2.PostCreateNestedOneWithoutCommentsInput post;

  final _i2.ProfileCreateNestedOneWithoutCommentsInput profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
        'post': post,
        'profile': profile,
      };
}

class CommentCreateNestedManyWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateNestedManyWithoutParentInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.CommentCreateWithoutParentInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentCreateWithoutParentInput>,
          _i1.PrismaUnion<_i2.CommentUncheckedCreateWithoutParentInput,
              Iterable<_i2.CommentUncheckedCreateWithoutParentInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentCreateOrConnectWithoutParentInput,
      Iterable<_i2.CommentCreateOrConnectWithoutParentInput>>? connectOrCreate;

  final _i2.CommentCreateManyParentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class CommentCreateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateWithoutPostInput({
    this.id,
    required this.message,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
    this.parent,
    required this.profile,
  });

  final String? id;

  final String message;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentCreateNestedManyWithoutParentInput? replies;

  final _i2.CommentLikeCreateNestedManyWithoutCommentInput? likes;

  final _i2.CommentCreateNestedOneWithoutRepliesInput? parent;

  final _i2.ProfileCreateNestedOneWithoutCommentsInput profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
        'parent': parent,
        'profile': profile,
      };
}

class CommentCreateNestedManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateNestedManyWithoutPostInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.CommentCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.CommentUncheckedCreateWithoutPostInput,
              Iterable<_i2.CommentUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentCreateOrConnectWithoutPostInput,
      Iterable<_i2.CommentCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i2.CommentCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PostCreateWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateWithoutGroupInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    required this.restaurant,
    this.profile,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.RestaurantCreateNestedOneWithoutPostsInput restaurant;

  final _i2.ProfileCreateNestedOneWithoutPostsInput? profile;

  final _i2.CommentCreateNestedManyWithoutPostInput? comments;

  final _i2.PostLikeCreateNestedManyWithoutPostInput? likes;

  final _i2.PostTagCreateNestedManyWithoutPostInput? postTags;

  final _i2.PostImageCreateNestedManyWithoutPostInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'profile': profile,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUncheckedCreateWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateWithoutGroupInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.restaurantId,
    this.profileId,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String restaurantId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profileId;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutPostInput? comments;

  final _i2.PostLikeUncheckedCreateNestedManyWithoutPostInput? likes;

  final _i2.PostTagUncheckedCreateNestedManyWithoutPostInput? postTags;

  final _i2.PostImageUncheckedCreateNestedManyWithoutPostInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostCreateOrConnectWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateOrConnectWithoutGroupInput({
    required this.where,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostCreateWithoutGroupInput,
      _i2.PostUncheckedCreateWithoutGroupInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PostCreateManyGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateManyGroupInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.restaurantId,
    this.profileId,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String restaurantId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profileId;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostCreateManyGroupInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateManyGroupInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PostCreateManyGroupInput,
      Iterable<_i2.PostCreateManyGroupInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PostCreateNestedManyWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateNestedManyWithoutGroupInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PostCreateWithoutGroupInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostCreateWithoutGroupInput>,
          _i1.PrismaUnion<_i2.PostUncheckedCreateWithoutGroupInput,
              Iterable<_i2.PostUncheckedCreateWithoutGroupInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostCreateOrConnectWithoutGroupInput,
      Iterable<_i2.PostCreateOrConnectWithoutGroupInput>>? connectOrCreate;

  final _i2.PostCreateManyGroupInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class GroupCreateWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupCreateWithoutMembersInput({
    this.id,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
    this.posts,
  });

  final String? id;

  final String name;

  final String description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostCreateNestedManyWithoutGroupInput? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'posts': posts,
      };
}

class PostUncheckedCreateNestedManyWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateNestedManyWithoutGroupInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PostCreateWithoutGroupInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostCreateWithoutGroupInput>,
          _i1.PrismaUnion<_i2.PostUncheckedCreateWithoutGroupInput,
              Iterable<_i2.PostUncheckedCreateWithoutGroupInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostCreateOrConnectWithoutGroupInput,
      Iterable<_i2.PostCreateOrConnectWithoutGroupInput>>? connectOrCreate;

  final _i2.PostCreateManyGroupInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class GroupUncheckedCreateWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUncheckedCreateWithoutMembersInput({
    this.id,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
    this.posts,
  });

  final String? id;

  final String name;

  final String description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostUncheckedCreateNestedManyWithoutGroupInput? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'posts': posts,
      };
}

class GroupWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.members,
    this.posts,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.GroupWhereInput, Iterable<_i2.GroupWhereInput>>?
      AND;

  final Iterable<_i2.GroupWhereInput>? OR;

  final _i1.PrismaUnion<_i2.GroupWhereInput, Iterable<_i2.GroupWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.MemberListRelationFilter? members;

  final _i2.PostListRelationFilter? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'members': members,
        'posts': posts,
      };
}

class GroupCreateOrConnectWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupCreateOrConnectWithoutMembersInput({
    required this.where,
    required this.create,
  });

  final _i2.GroupWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.GroupCreateWithoutMembersInput,
      _i2.GroupUncheckedCreateWithoutMembersInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class GroupCreateNestedOneWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupCreateNestedOneWithoutMembersInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.GroupCreateWithoutMembersInput,
      _i2.GroupUncheckedCreateWithoutMembersInput>? create;

  final _i2.GroupCreateOrConnectWithoutMembersInput? connectOrCreate;

  final _i2.GroupWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class MemberCreateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberCreateWithoutProfileInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.group,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.GroupCreateNestedOneWithoutMembersInput group;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'group': group,
      };
}

class MemberCreateNestedManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberCreateNestedManyWithoutProfileInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.MemberCreateWithoutProfileInput,
      _i1.PrismaUnion<
          Iterable<_i2.MemberCreateWithoutProfileInput>,
          _i1.PrismaUnion<_i2.MemberUncheckedCreateWithoutProfileInput,
              Iterable<_i2.MemberUncheckedCreateWithoutProfileInput>>>>? create;

  final _i1.PrismaUnion<_i2.MemberCreateOrConnectWithoutProfileInput,
      Iterable<_i2.MemberCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i2.MemberCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProfileCreateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateWithoutPostsInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowCreateNestedManyWithoutFollowingInput? followsFollowing;

  final _i2.FollowCreateNestedManyWithoutFollowedInput? followsFollowed;

  final _i2.PostTagCreateNestedManyWithoutProfileInput? postTags;

  final _i2.MemberCreateNestedManyWithoutProfileInput? members;

  final _i2.CommentCreateNestedManyWithoutProfileInput? comments;

  final _i2.PostLikeCreateNestedManyWithoutProfileInput? postLikes;

  final _i2.CommentLikeCreateNestedManyWithoutProfileInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUncheckedCreateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedCreateWithoutPostsInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowingInput?
      followsFollowing;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowedInput?
      followsFollowed;

  final _i2.PostTagUncheckedCreateNestedManyWithoutProfileInput? postTags;

  final _i2.MemberUncheckedCreateNestedManyWithoutProfileInput? members;

  final _i2.CommentUncheckedCreateNestedManyWithoutProfileInput? comments;

  final _i2.PostLikeUncheckedCreateNestedManyWithoutProfileInput? postLikes;

  final _i2.CommentLikeUncheckedCreateNestedManyWithoutProfileInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileCreateOrConnectWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateOrConnectWithoutPostsInput({
    required this.where,
    required this.create,
  });

  final _i2.ProfileWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutPostsInput,
      _i2.ProfileUncheckedCreateWithoutPostsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProfileCreateNestedOneWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateNestedOneWithoutPostsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutPostsInput,
      _i2.ProfileUncheckedCreateWithoutPostsInput>? create;

  final _i2.ProfileCreateOrConnectWithoutPostsInput? connectOrCreate;

  final _i2.ProfileWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PostCreateWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateWithoutPostTagsInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    required this.restaurant,
    this.group,
    this.profile,
    this.comments,
    this.likes,
    this.postImages,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.RestaurantCreateNestedOneWithoutPostsInput restaurant;

  final _i2.GroupCreateNestedOneWithoutPostsInput? group;

  final _i2.ProfileCreateNestedOneWithoutPostsInput? profile;

  final _i2.CommentCreateNestedManyWithoutPostInput? comments;

  final _i2.PostLikeCreateNestedManyWithoutPostInput? likes;

  final _i2.PostImageCreateNestedManyWithoutPostInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'profile': profile,
        'comments': comments,
        'likes': likes,
        'postImages': postImages,
      };
}

class PostUncheckedCreateWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateWithoutPostTagsInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.restaurantId,
    this.groupId,
    this.profileId,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    this.comments,
    this.likes,
    this.postImages,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String restaurantId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? groupId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profileId;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutPostInput? comments;

  final _i2.PostLikeUncheckedCreateNestedManyWithoutPostInput? likes;

  final _i2.PostImageUncheckedCreateNestedManyWithoutPostInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comments': comments,
        'likes': likes,
        'postImages': postImages,
      };
}

class PostCreateOrConnectWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateOrConnectWithoutPostTagsInput({
    required this.where,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostCreateWithoutPostTagsInput,
      _i2.PostUncheckedCreateWithoutPostTagsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PostCreateNestedOneWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateNestedOneWithoutPostTagsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.PostCreateWithoutPostTagsInput,
      _i2.PostUncheckedCreateWithoutPostTagsInput>? create;

  final _i2.PostCreateOrConnectWithoutPostTagsInput? connectOrCreate;

  final _i2.PostWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PostTagCreateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagCreateWithoutProfileInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.post,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostCreateNestedOneWithoutPostTagsInput post;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
      };
}

class PostTagCreateNestedManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagCreateNestedManyWithoutProfileInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PostTagCreateWithoutProfileInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostTagCreateWithoutProfileInput>,
              _i1.PrismaUnion<_i2.PostTagUncheckedCreateWithoutProfileInput,
                  Iterable<_i2.PostTagUncheckedCreateWithoutProfileInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostTagCreateOrConnectWithoutProfileInput,
      Iterable<_i2.PostTagCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i2.PostTagCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProfileCreateWithoutFollowsFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateWithoutFollowsFollowingInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowCreateNestedManyWithoutFollowedInput? followsFollowed;

  final _i2.PostCreateNestedManyWithoutProfileInput? posts;

  final _i2.PostTagCreateNestedManyWithoutProfileInput? postTags;

  final _i2.MemberCreateNestedManyWithoutProfileInput? members;

  final _i2.CommentCreateNestedManyWithoutProfileInput? comments;

  final _i2.PostLikeCreateNestedManyWithoutProfileInput? postLikes;

  final _i2.CommentLikeCreateNestedManyWithoutProfileInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUncheckedCreateWithoutFollowsFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedCreateWithoutFollowsFollowingInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowedInput?
      followsFollowed;

  final _i2.PostUncheckedCreateNestedManyWithoutProfileInput? posts;

  final _i2.PostTagUncheckedCreateNestedManyWithoutProfileInput? postTags;

  final _i2.MemberUncheckedCreateNestedManyWithoutProfileInput? members;

  final _i2.CommentUncheckedCreateNestedManyWithoutProfileInput? comments;

  final _i2.PostLikeUncheckedCreateNestedManyWithoutProfileInput? postLikes;

  final _i2.CommentLikeUncheckedCreateNestedManyWithoutProfileInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileCreateOrConnectWithoutFollowsFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateOrConnectWithoutFollowsFollowingInput({
    required this.where,
    required this.create,
  });

  final _i2.ProfileWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutFollowsFollowingInput,
      _i2.ProfileUncheckedCreateWithoutFollowsFollowingInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProfileCreateNestedOneWithoutFollowsFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateNestedOneWithoutFollowsFollowingInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutFollowsFollowingInput,
      _i2.ProfileUncheckedCreateWithoutFollowsFollowingInput>? create;

  final _i2.ProfileCreateOrConnectWithoutFollowsFollowingInput? connectOrCreate;

  final _i2.ProfileWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class FollowCreateWithoutFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateWithoutFollowedInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.following,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ProfileCreateNestedOneWithoutFollowsFollowingInput following;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'following': following,
      };
}

class FollowCreateNestedManyWithoutFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateNestedManyWithoutFollowedInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.FollowCreateWithoutFollowedInput,
          _i1.PrismaUnion<
              Iterable<_i2.FollowCreateWithoutFollowedInput>,
              _i1.PrismaUnion<_i2.FollowUncheckedCreateWithoutFollowedInput,
                  Iterable<_i2.FollowUncheckedCreateWithoutFollowedInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FollowCreateOrConnectWithoutFollowedInput,
      Iterable<_i2.FollowCreateOrConnectWithoutFollowedInput>>? connectOrCreate;

  final _i2.FollowCreateManyFollowedInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProfileCreateWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateWithoutMembersInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowCreateNestedManyWithoutFollowingInput? followsFollowing;

  final _i2.FollowCreateNestedManyWithoutFollowedInput? followsFollowed;

  final _i2.PostCreateNestedManyWithoutProfileInput? posts;

  final _i2.PostTagCreateNestedManyWithoutProfileInput? postTags;

  final _i2.CommentCreateNestedManyWithoutProfileInput? comments;

  final _i2.PostLikeCreateNestedManyWithoutProfileInput? postLikes;

  final _i2.CommentLikeCreateNestedManyWithoutProfileInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUncheckedCreateWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedCreateWithoutMembersInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowingInput?
      followsFollowing;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowedInput?
      followsFollowed;

  final _i2.PostUncheckedCreateNestedManyWithoutProfileInput? posts;

  final _i2.PostTagUncheckedCreateNestedManyWithoutProfileInput? postTags;

  final _i2.CommentUncheckedCreateNestedManyWithoutProfileInput? comments;

  final _i2.PostLikeUncheckedCreateNestedManyWithoutProfileInput? postLikes;

  final _i2.CommentLikeUncheckedCreateNestedManyWithoutProfileInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileCreateOrConnectWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateOrConnectWithoutMembersInput({
    required this.where,
    required this.create,
  });

  final _i2.ProfileWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutMembersInput,
      _i2.ProfileUncheckedCreateWithoutMembersInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProfileCreateNestedOneWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateNestedOneWithoutMembersInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutMembersInput,
      _i2.ProfileUncheckedCreateWithoutMembersInput>? create;

  final _i2.ProfileCreateOrConnectWithoutMembersInput? connectOrCreate;

  final _i2.ProfileWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class MemberCreateWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberCreateWithoutGroupInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.profile,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ProfileCreateNestedOneWithoutMembersInput profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'profile': profile,
      };
}

class MemberUncheckedCreateWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUncheckedCreateWithoutGroupInput({
    this.id,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberCreateOrConnectWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberCreateOrConnectWithoutGroupInput({
    required this.where,
    required this.create,
  });

  final _i2.MemberWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MemberCreateWithoutGroupInput,
      _i2.MemberUncheckedCreateWithoutGroupInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class MemberCreateManyGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberCreateManyGroupInput({
    this.id,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberCreateManyGroupInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberCreateManyGroupInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.MemberCreateManyGroupInput,
      Iterable<_i2.MemberCreateManyGroupInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class MemberCreateNestedManyWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberCreateNestedManyWithoutGroupInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.MemberCreateWithoutGroupInput,
      _i1.PrismaUnion<
          Iterable<_i2.MemberCreateWithoutGroupInput>,
          _i1.PrismaUnion<_i2.MemberUncheckedCreateWithoutGroupInput,
              Iterable<_i2.MemberUncheckedCreateWithoutGroupInput>>>>? create;

  final _i1.PrismaUnion<_i2.MemberCreateOrConnectWithoutGroupInput,
      Iterable<_i2.MemberCreateOrConnectWithoutGroupInput>>? connectOrCreate;

  final _i2.MemberCreateManyGroupInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class GroupCreateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupCreateWithoutPostsInput({
    this.id,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
    this.members,
  });

  final String? id;

  final String name;

  final String description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.MemberCreateNestedManyWithoutGroupInput? members;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'members': members,
      };
}

class MemberUncheckedCreateNestedManyWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUncheckedCreateNestedManyWithoutGroupInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.MemberCreateWithoutGroupInput,
      _i1.PrismaUnion<
          Iterable<_i2.MemberCreateWithoutGroupInput>,
          _i1.PrismaUnion<_i2.MemberUncheckedCreateWithoutGroupInput,
              Iterable<_i2.MemberUncheckedCreateWithoutGroupInput>>>>? create;

  final _i1.PrismaUnion<_i2.MemberCreateOrConnectWithoutGroupInput,
      Iterable<_i2.MemberCreateOrConnectWithoutGroupInput>>? connectOrCreate;

  final _i2.MemberCreateManyGroupInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class GroupUncheckedCreateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUncheckedCreateWithoutPostsInput({
    this.id,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
    this.members,
  });

  final String? id;

  final String name;

  final String description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.MemberUncheckedCreateNestedManyWithoutGroupInput? members;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'members': members,
      };
}

class GroupCreateOrConnectWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupCreateOrConnectWithoutPostsInput({
    required this.where,
    required this.create,
  });

  final _i2.GroupWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.GroupCreateWithoutPostsInput,
      _i2.GroupUncheckedCreateWithoutPostsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class GroupCreateNestedOneWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupCreateNestedOneWithoutPostsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.GroupCreateWithoutPostsInput,
      _i2.GroupUncheckedCreateWithoutPostsInput>? create;

  final _i2.GroupCreateOrConnectWithoutPostsInput? connectOrCreate;

  final _i2.GroupWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PostCreateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateWithoutProfileInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    required this.restaurant,
    this.group,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.RestaurantCreateNestedOneWithoutPostsInput restaurant;

  final _i2.GroupCreateNestedOneWithoutPostsInput? group;

  final _i2.CommentCreateNestedManyWithoutPostInput? comments;

  final _i2.PostLikeCreateNestedManyWithoutPostInput? likes;

  final _i2.PostTagCreateNestedManyWithoutPostInput? postTags;

  final _i2.PostImageCreateNestedManyWithoutPostInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostCreateNestedManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateNestedManyWithoutProfileInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PostCreateWithoutProfileInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostCreateWithoutProfileInput>,
          _i1.PrismaUnion<_i2.PostUncheckedCreateWithoutProfileInput,
              Iterable<_i2.PostUncheckedCreateWithoutProfileInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostCreateOrConnectWithoutProfileInput,
      Iterable<_i2.PostCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i2.PostCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProfileCreateWithoutFollowsFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateWithoutFollowsFollowedInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowCreateNestedManyWithoutFollowingInput? followsFollowing;

  final _i2.PostCreateNestedManyWithoutProfileInput? posts;

  final _i2.PostTagCreateNestedManyWithoutProfileInput? postTags;

  final _i2.MemberCreateNestedManyWithoutProfileInput? members;

  final _i2.CommentCreateNestedManyWithoutProfileInput? comments;

  final _i2.PostLikeCreateNestedManyWithoutProfileInput? postLikes;

  final _i2.CommentLikeCreateNestedManyWithoutProfileInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUncheckedCreateWithoutFollowsFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedCreateWithoutFollowsFollowedInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowingInput?
      followsFollowing;

  final _i2.PostUncheckedCreateNestedManyWithoutProfileInput? posts;

  final _i2.PostTagUncheckedCreateNestedManyWithoutProfileInput? postTags;

  final _i2.MemberUncheckedCreateNestedManyWithoutProfileInput? members;

  final _i2.CommentUncheckedCreateNestedManyWithoutProfileInput? comments;

  final _i2.PostLikeUncheckedCreateNestedManyWithoutProfileInput? postLikes;

  final _i2.CommentLikeUncheckedCreateNestedManyWithoutProfileInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileCreateOrConnectWithoutFollowsFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateOrConnectWithoutFollowsFollowedInput({
    required this.where,
    required this.create,
  });

  final _i2.ProfileWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutFollowsFollowedInput,
      _i2.ProfileUncheckedCreateWithoutFollowsFollowedInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProfileCreateNestedOneWithoutFollowsFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateNestedOneWithoutFollowsFollowedInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutFollowsFollowedInput,
      _i2.ProfileUncheckedCreateWithoutFollowsFollowedInput>? create;

  final _i2.ProfileCreateOrConnectWithoutFollowsFollowedInput? connectOrCreate;

  final _i2.ProfileWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class FollowCreateWithoutFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateWithoutFollowingInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.followed,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ProfileCreateNestedOneWithoutFollowsFollowedInput followed;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followed': followed,
      };
}

class FollowCreateNestedManyWithoutFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateNestedManyWithoutFollowingInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.FollowCreateWithoutFollowingInput,
          _i1.PrismaUnion<
              Iterable<_i2.FollowCreateWithoutFollowingInput>,
              _i1.PrismaUnion<_i2.FollowUncheckedCreateWithoutFollowingInput,
                  Iterable<_i2.FollowUncheckedCreateWithoutFollowingInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FollowCreateOrConnectWithoutFollowingInput,
          Iterable<_i2.FollowCreateOrConnectWithoutFollowingInput>>?
      connectOrCreate;

  final _i2.FollowCreateManyFollowingInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProfileCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
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
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowCreateNestedManyWithoutFollowingInput? followsFollowing;

  final _i2.FollowCreateNestedManyWithoutFollowedInput? followsFollowed;

  final _i2.PostCreateNestedManyWithoutProfileInput? posts;

  final _i2.PostTagCreateNestedManyWithoutProfileInput? postTags;

  final _i2.MemberCreateNestedManyWithoutProfileInput? members;

  final _i2.CommentCreateNestedManyWithoutProfileInput? comments;

  final _i2.PostLikeCreateNestedManyWithoutProfileInput? postLikes;

  final _i2.CommentLikeCreateNestedManyWithoutProfileInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedCreateInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
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
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowingInput?
      followsFollowing;

  final _i2.FollowUncheckedCreateNestedManyWithoutFollowedInput?
      followsFollowed;

  final _i2.PostUncheckedCreateNestedManyWithoutProfileInput? posts;

  final _i2.PostTagUncheckedCreateNestedManyWithoutProfileInput? postTags;

  final _i2.MemberUncheckedCreateNestedManyWithoutProfileInput? members;

  final _i2.CommentUncheckedCreateNestedManyWithoutProfileInput? comments;

  final _i2.PostLikeUncheckedCreateNestedManyWithoutProfileInput? postLikes;

  final _i2.CommentLikeUncheckedCreateNestedManyWithoutProfileInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;
}

class ProfileCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCreateManyInput({
    this.id,
    required this.email,
    required this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String email;

  final String username;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableStringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableStringFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<String, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class BoolFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFieldUpdateOperationsInput({this.set});

  final bool? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class EnumMealTypeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumMealTypeFieldUpdateOperationsInput({this.set});

  final _i3.MealType? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class IntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class RestaurantUpdateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantUpdateWithoutPostsInput({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? yelpId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? latitude;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      longitude;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
      };
}

class RestaurantUncheckedUpdateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantUncheckedUpdateWithoutPostsInput({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? yelpId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? latitude;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      longitude;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
      };
}

class RestaurantUpsertWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantUpsertWithoutPostsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.RestaurantUpdateWithoutPostsInput,
      _i2.RestaurantUncheckedUpdateWithoutPostsInput> update;

  final _i1.PrismaUnion<_i2.RestaurantCreateWithoutPostsInput,
      _i2.RestaurantUncheckedCreateWithoutPostsInput> create;

  final _i2.RestaurantWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class RestaurantUpdateToOneWithWhereWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantUpdateToOneWithWhereWithoutPostsInput({
    this.where,
    required this.data,
  });

  final _i2.RestaurantWhereInput? where;

  final _i1.PrismaUnion<_i2.RestaurantUpdateWithoutPostsInput,
      _i2.RestaurantUncheckedUpdateWithoutPostsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class RestaurantUpdateOneRequiredWithoutPostsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantUpdateOneRequiredWithoutPostsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.RestaurantCreateWithoutPostsInput,
      _i2.RestaurantUncheckedCreateWithoutPostsInput>? create;

  final _i2.RestaurantCreateOrConnectWithoutPostsInput? connectOrCreate;

  final _i2.RestaurantUpsertWithoutPostsInput? upsert;

  final _i2.RestaurantWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.RestaurantUpdateToOneWithWhereWithoutPostsInput,
      _i1.PrismaUnion<_i2.RestaurantUpdateWithoutPostsInput,
          _i2.RestaurantUncheckedUpdateWithoutPostsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ProfileUpdateWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateWithoutPostTagsInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUpdateManyWithoutFollowingNestedInput? followsFollowing;

  final _i2.FollowUpdateManyWithoutFollowedNestedInput? followsFollowed;

  final _i2.PostUpdateManyWithoutProfileNestedInput? posts;

  final _i2.MemberUpdateManyWithoutProfileNestedInput? members;

  final _i2.CommentUpdateManyWithoutProfileNestedInput? comments;

  final _i2.PostLikeUpdateManyWithoutProfileNestedInput? postLikes;

  final _i2.CommentLikeUpdateManyWithoutProfileNestedInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class FollowUncheckedUpdateWithoutFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateWithoutFollowingInput({
    this.id,
    this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      followedId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowUpdateWithWhereUniqueWithoutFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateWithWhereUniqueWithoutFollowingInput({
    required this.where,
    required this.data,
  });

  final _i2.FollowWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FollowUpdateWithoutFollowingInput,
      _i2.FollowUncheckedUpdateWithoutFollowingInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class FollowScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.FollowScalarWhereInput,
      Iterable<_i2.FollowScalarWhereInput>>? AND;

  final Iterable<_i2.FollowScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.FollowScalarWhereInput,
      Iterable<_i2.FollowScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? followingId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? followedId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateManyMutationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowUncheckedUpdateManyWithoutFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateManyWithoutFollowingInput({
    this.id,
    this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      followedId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowUpdateManyWithWhereWithoutFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateManyWithWhereWithoutFollowingInput({
    required this.where,
    required this.data,
  });

  final _i2.FollowScalarWhereInput where;

  final _i1.PrismaUnion<_i2.FollowUpdateManyMutationInput,
      _i2.FollowUncheckedUpdateManyWithoutFollowingInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class FollowUncheckedUpdateManyWithoutFollowingNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateManyWithoutFollowingNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.FollowCreateWithoutFollowingInput,
          _i1.PrismaUnion<
              Iterable<_i2.FollowCreateWithoutFollowingInput>,
              _i1.PrismaUnion<_i2.FollowUncheckedCreateWithoutFollowingInput,
                  Iterable<_i2.FollowUncheckedCreateWithoutFollowingInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FollowCreateOrConnectWithoutFollowingInput,
          Iterable<_i2.FollowCreateOrConnectWithoutFollowingInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.FollowUpsertWithWhereUniqueWithoutFollowingInput,
      Iterable<_i2.FollowUpsertWithWhereUniqueWithoutFollowingInput>>? upsert;

  final _i2.FollowCreateManyFollowingInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.FollowUpdateWithWhereUniqueWithoutFollowingInput,
      Iterable<_i2.FollowUpdateWithWhereUniqueWithoutFollowingInput>>? update;

  final _i1.PrismaUnion<_i2.FollowUpdateManyWithWhereWithoutFollowingInput,
      Iterable<_i2.FollowUpdateManyWithWhereWithoutFollowingInput>>? updateMany;

  final _i1.PrismaUnion<_i2.FollowScalarWhereInput,
      Iterable<_i2.FollowScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class FollowUncheckedUpdateWithoutFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateWithoutFollowedInput({
    this.id,
    this.followingId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      followingId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowUpdateWithWhereUniqueWithoutFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateWithWhereUniqueWithoutFollowedInput({
    required this.where,
    required this.data,
  });

  final _i2.FollowWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FollowUpdateWithoutFollowedInput,
      _i2.FollowUncheckedUpdateWithoutFollowedInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class FollowUncheckedUpdateManyWithoutFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateManyWithoutFollowedInput({
    this.id,
    this.followingId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      followingId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowUpdateManyWithWhereWithoutFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateManyWithWhereWithoutFollowedInput({
    required this.where,
    required this.data,
  });

  final _i2.FollowScalarWhereInput where;

  final _i1.PrismaUnion<_i2.FollowUpdateManyMutationInput,
      _i2.FollowUncheckedUpdateManyWithoutFollowedInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class FollowUncheckedUpdateManyWithoutFollowedNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateManyWithoutFollowedNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.FollowCreateWithoutFollowedInput,
          _i1.PrismaUnion<
              Iterable<_i2.FollowCreateWithoutFollowedInput>,
              _i1.PrismaUnion<_i2.FollowUncheckedCreateWithoutFollowedInput,
                  Iterable<_i2.FollowUncheckedCreateWithoutFollowedInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FollowCreateOrConnectWithoutFollowedInput,
      Iterable<_i2.FollowCreateOrConnectWithoutFollowedInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.FollowUpsertWithWhereUniqueWithoutFollowedInput,
      Iterable<_i2.FollowUpsertWithWhereUniqueWithoutFollowedInput>>? upsert;

  final _i2.FollowCreateManyFollowedInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.FollowUpdateWithWhereUniqueWithoutFollowedInput,
      Iterable<_i2.FollowUpdateWithWhereUniqueWithoutFollowedInput>>? update;

  final _i1.PrismaUnion<_i2.FollowUpdateManyWithWhereWithoutFollowedInput,
      Iterable<_i2.FollowUpdateManyWithWhereWithoutFollowedInput>>? updateMany;

  final _i1.PrismaUnion<_i2.FollowScalarWhereInput,
      Iterable<_i2.FollowScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class CommentLikeUncheckedUpdateWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUncheckedUpdateWithoutCommentInput({
    this.id,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeUpdateWithWhereUniqueWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUpdateWithWhereUniqueWithoutCommentInput({
    required this.where,
    required this.data,
  });

  final _i2.CommentLikeWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentLikeUpdateWithoutCommentInput,
      _i2.CommentLikeUncheckedUpdateWithoutCommentInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CommentLikeScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.CommentLikeScalarWhereInput,
      Iterable<_i2.CommentLikeScalarWhereInput>>? AND;

  final Iterable<_i2.CommentLikeScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.CommentLikeScalarWhereInput,
      Iterable<_i2.CommentLikeScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? commentId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUpdateManyMutationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeUncheckedUpdateManyWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUncheckedUpdateManyWithoutCommentInput({
    this.id,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeUpdateManyWithWhereWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUpdateManyWithWhereWithoutCommentInput({
    required this.where,
    required this.data,
  });

  final _i2.CommentLikeScalarWhereInput where;

  final _i1.PrismaUnion<_i2.CommentLikeUpdateManyMutationInput,
      _i2.CommentLikeUncheckedUpdateManyWithoutCommentInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CommentLikeUncheckedUpdateManyWithoutCommentNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUncheckedUpdateManyWithoutCommentNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.CommentLikeCreateWithoutCommentInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentLikeCreateWithoutCommentInput>,
          _i1.PrismaUnion<
              _i2.CommentLikeUncheckedCreateWithoutCommentInput,
              Iterable<
                  _i2.CommentLikeUncheckedCreateWithoutCommentInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentLikeCreateOrConnectWithoutCommentInput,
          Iterable<_i2.CommentLikeCreateOrConnectWithoutCommentInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.CommentLikeUpsertWithWhereUniqueWithoutCommentInput,
          Iterable<_i2.CommentLikeUpsertWithWhereUniqueWithoutCommentInput>>?
      upsert;

  final _i2.CommentLikeCreateManyCommentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.CommentLikeUpdateWithWhereUniqueWithoutCommentInput,
          Iterable<_i2.CommentLikeUpdateWithWhereUniqueWithoutCommentInput>>?
      update;

  final _i1.PrismaUnion<_i2.CommentLikeUpdateManyWithWhereWithoutCommentInput,
          Iterable<_i2.CommentLikeUpdateManyWithWhereWithoutCommentInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.CommentLikeScalarWhereInput,
      Iterable<_i2.CommentLikeScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class CommentUncheckedUpdateWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateWithoutParentInput({
    this.id,
    this.message,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutParentNestedInput? replies;

  final _i2.CommentLikeUncheckedUpdateManyWithoutCommentNestedInput? likes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
      };
}

class CommentUpdateWithWhereUniqueWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateWithWhereUniqueWithoutParentInput({
    required this.where,
    required this.data,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentUpdateWithoutParentInput,
      _i2.CommentUncheckedUpdateWithoutParentInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CommentScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.CommentScalarWhereInput,
      Iterable<_i2.CommentScalarWhereInput>>? AND;

  final Iterable<_i2.CommentScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.CommentScalarWhereInput,
      Iterable<_i2.CommentScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? message;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? parentId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateManyMutationInput({
    this.id,
    this.message,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentUncheckedUpdateManyWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateManyWithoutParentInput({
    this.id,
    this.message,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentUpdateManyWithWhereWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateManyWithWhereWithoutParentInput({
    required this.where,
    required this.data,
  });

  final _i2.CommentScalarWhereInput where;

  final _i1.PrismaUnion<_i2.CommentUpdateManyMutationInput,
      _i2.CommentUncheckedUpdateManyWithoutParentInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CommentUncheckedUpdateManyWithoutParentNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateManyWithoutParentNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.CommentCreateWithoutParentInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentCreateWithoutParentInput>,
          _i1.PrismaUnion<_i2.CommentUncheckedCreateWithoutParentInput,
              Iterable<_i2.CommentUncheckedCreateWithoutParentInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentCreateOrConnectWithoutParentInput,
      Iterable<_i2.CommentCreateOrConnectWithoutParentInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.CommentUpsertWithWhereUniqueWithoutParentInput,
      Iterable<_i2.CommentUpsertWithWhereUniqueWithoutParentInput>>? upsert;

  final _i2.CommentCreateManyParentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.CommentUpdateWithWhereUniqueWithoutParentInput,
      Iterable<_i2.CommentUpdateWithWhereUniqueWithoutParentInput>>? update;

  final _i1.PrismaUnion<_i2.CommentUpdateManyWithWhereWithoutParentInput,
      Iterable<_i2.CommentUpdateManyWithWhereWithoutParentInput>>? updateMany;

  final _i1.PrismaUnion<_i2.CommentScalarWhereInput,
      Iterable<_i2.CommentScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class CommentUncheckedUpdateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateWithoutPostInput({
    this.id,
    this.message,
    this.parentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutParentNestedInput? replies;

  final _i2.CommentLikeUncheckedUpdateManyWithoutCommentNestedInput? likes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
      };
}

class CommentUpdateWithWhereUniqueWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateWithWhereUniqueWithoutPostInput({
    required this.where,
    required this.data,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentUpdateWithoutPostInput,
      _i2.CommentUncheckedUpdateWithoutPostInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CommentUncheckedUpdateManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateManyWithoutPostInput({
    this.id,
    this.message,
    this.parentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentUpdateManyWithWhereWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateManyWithWhereWithoutPostInput({
    required this.where,
    required this.data,
  });

  final _i2.CommentScalarWhereInput where;

  final _i1.PrismaUnion<_i2.CommentUpdateManyMutationInput,
      _i2.CommentUncheckedUpdateManyWithoutPostInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CommentUncheckedUpdateManyWithoutPostNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateManyWithoutPostNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.CommentCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.CommentUncheckedCreateWithoutPostInput,
              Iterable<_i2.CommentUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentCreateOrConnectWithoutPostInput,
      Iterable<_i2.CommentCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.CommentUpsertWithWhereUniqueWithoutPostInput,
      Iterable<_i2.CommentUpsertWithWhereUniqueWithoutPostInput>>? upsert;

  final _i2.CommentCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.CommentUpdateWithWhereUniqueWithoutPostInput,
      Iterable<_i2.CommentUpdateWithWhereUniqueWithoutPostInput>>? update;

  final _i1.PrismaUnion<_i2.CommentUpdateManyWithWhereWithoutPostInput,
      Iterable<_i2.CommentUpdateManyWithWhereWithoutPostInput>>? updateMany;

  final _i1.PrismaUnion<_i2.CommentScalarWhereInput,
      Iterable<_i2.CommentScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PostLikeUncheckedUpdateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUncheckedUpdateWithoutPostInput({
    this.id,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeUpdateWithWhereUniqueWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUpdateWithWhereUniqueWithoutPostInput({
    required this.where,
    required this.data,
  });

  final _i2.PostLikeWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostLikeUpdateWithoutPostInput,
      _i2.PostLikeUncheckedUpdateWithoutPostInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostLikeScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.PostLikeScalarWhereInput,
      Iterable<_i2.PostLikeScalarWhereInput>>? AND;

  final Iterable<_i2.PostLikeScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PostLikeScalarWhereInput,
      Iterable<_i2.PostLikeScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUpdateManyMutationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeUncheckedUpdateManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUncheckedUpdateManyWithoutPostInput({
    this.id,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeUpdateManyWithWhereWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUpdateManyWithWhereWithoutPostInput({
    required this.where,
    required this.data,
  });

  final _i2.PostLikeScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PostLikeUpdateManyMutationInput,
      _i2.PostLikeUncheckedUpdateManyWithoutPostInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostLikeUncheckedUpdateManyWithoutPostNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUncheckedUpdateManyWithoutPostNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PostLikeCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostLikeCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.PostLikeUncheckedCreateWithoutPostInput,
              Iterable<_i2.PostLikeUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostLikeCreateOrConnectWithoutPostInput,
      Iterable<_i2.PostLikeCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PostLikeUpsertWithWhereUniqueWithoutPostInput,
      Iterable<_i2.PostLikeUpsertWithWhereUniqueWithoutPostInput>>? upsert;

  final _i2.PostLikeCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostLikeUpdateWithWhereUniqueWithoutPostInput,
      Iterable<_i2.PostLikeUpdateWithWhereUniqueWithoutPostInput>>? update;

  final _i1.PrismaUnion<_i2.PostLikeUpdateManyWithWhereWithoutPostInput,
      Iterable<_i2.PostLikeUpdateManyWithWhereWithoutPostInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostLikeScalarWhereInput,
      Iterable<_i2.PostLikeScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PostTagUncheckedUpdateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUncheckedUpdateWithoutPostInput({
    this.id,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagUpdateWithWhereUniqueWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUpdateWithWhereUniqueWithoutPostInput({
    required this.where,
    required this.data,
  });

  final _i2.PostTagWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostTagUpdateWithoutPostInput,
      _i2.PostTagUncheckedUpdateWithoutPostInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostTagScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.PostTagScalarWhereInput,
      Iterable<_i2.PostTagScalarWhereInput>>? AND;

  final Iterable<_i2.PostTagScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PostTagScalarWhereInput,
      Iterable<_i2.PostTagScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUpdateManyMutationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagUncheckedUpdateManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUncheckedUpdateManyWithoutPostInput({
    this.id,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagUpdateManyWithWhereWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUpdateManyWithWhereWithoutPostInput({
    required this.where,
    required this.data,
  });

  final _i2.PostTagScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PostTagUpdateManyMutationInput,
      _i2.PostTagUncheckedUpdateManyWithoutPostInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostTagUncheckedUpdateManyWithoutPostNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUncheckedUpdateManyWithoutPostNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PostTagCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostTagCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.PostTagUncheckedCreateWithoutPostInput,
              Iterable<_i2.PostTagUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostTagCreateOrConnectWithoutPostInput,
      Iterable<_i2.PostTagCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PostTagUpsertWithWhereUniqueWithoutPostInput,
      Iterable<_i2.PostTagUpsertWithWhereUniqueWithoutPostInput>>? upsert;

  final _i2.PostTagCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostTagUpdateWithWhereUniqueWithoutPostInput,
      Iterable<_i2.PostTagUpdateWithWhereUniqueWithoutPostInput>>? update;

  final _i1.PrismaUnion<_i2.PostTagUpdateManyWithWhereWithoutPostInput,
      Iterable<_i2.PostTagUpdateManyWithWhereWithoutPostInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostTagScalarWhereInput,
      Iterable<_i2.PostTagScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PostImageUpdateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageUpdateWithoutPostInput({
    this.id,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageUncheckedUpdateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageUncheckedUpdateWithoutPostInput({
    this.id,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageUpsertWithWhereUniqueWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageUpsertWithWhereUniqueWithoutPostInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PostImageWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostImageUpdateWithoutPostInput,
      _i2.PostImageUncheckedUpdateWithoutPostInput> update;

  final _i1.PrismaUnion<_i2.PostImageCreateWithoutPostInput,
      _i2.PostImageUncheckedCreateWithoutPostInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PostImageUpdateWithWhereUniqueWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageUpdateWithWhereUniqueWithoutPostInput({
    required this.where,
    required this.data,
  });

  final _i2.PostImageWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostImageUpdateWithoutPostInput,
      _i2.PostImageUncheckedUpdateWithoutPostInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostImageScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.PostImageScalarWhereInput,
      Iterable<_i2.PostImageScalarWhereInput>>? AND;

  final Iterable<_i2.PostImageScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PostImageScalarWhereInput,
      Iterable<_i2.PostImageScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? imageUrl;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageUpdateManyMutationInput({
    this.id,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageUncheckedUpdateManyWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageUncheckedUpdateManyWithoutPostInput({
    this.id,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageUpdateManyWithWhereWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageUpdateManyWithWhereWithoutPostInput({
    required this.where,
    required this.data,
  });

  final _i2.PostImageScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PostImageUpdateManyMutationInput,
      _i2.PostImageUncheckedUpdateManyWithoutPostInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostImageUncheckedUpdateManyWithoutPostNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageUncheckedUpdateManyWithoutPostNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PostImageCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostImageCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.PostImageUncheckedCreateWithoutPostInput,
              Iterable<_i2.PostImageUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostImageCreateOrConnectWithoutPostInput,
      Iterable<_i2.PostImageCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PostImageUpsertWithWhereUniqueWithoutPostInput,
      Iterable<_i2.PostImageUpsertWithWhereUniqueWithoutPostInput>>? upsert;

  final _i2.PostImageCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostImageWhereUniqueInput,
      Iterable<_i2.PostImageWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostImageWhereUniqueInput,
      Iterable<_i2.PostImageWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostImageWhereUniqueInput,
      Iterable<_i2.PostImageWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostImageWhereUniqueInput,
      Iterable<_i2.PostImageWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostImageUpdateWithWhereUniqueWithoutPostInput,
      Iterable<_i2.PostImageUpdateWithWhereUniqueWithoutPostInput>>? update;

  final _i1.PrismaUnion<_i2.PostImageUpdateManyWithWhereWithoutPostInput,
      Iterable<_i2.PostImageUpdateManyWithWhereWithoutPostInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostImageScalarWhereInput,
      Iterable<_i2.PostImageScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PostUncheckedUpdateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateWithoutProfileInput({
    this.id,
    this.individual,
    this.meal,
    this.restaurantId,
    this.groupId,
    this.review,
    this.rating,
    this.createdAt,
    this.updatedAt,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      restaurantId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? groupId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutPostNestedInput? comments;

  final _i2.PostLikeUncheckedUpdateManyWithoutPostNestedInput? likes;

  final _i2.PostTagUncheckedUpdateManyWithoutPostNestedInput? postTags;

  final _i2.PostImageUncheckedUpdateManyWithoutPostNestedInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUpdateWithWhereUniqueWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithWhereUniqueWithoutProfileInput({
    required this.where,
    required this.data,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostUpdateWithoutProfileInput,
      _i2.PostUncheckedUpdateWithoutProfileInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
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
  });

  final _i1.PrismaUnion<_i2.PostScalarWhereInput,
      Iterable<_i2.PostScalarWhereInput>>? AND;

  final Iterable<_i2.PostScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PostScalarWhereInput,
      Iterable<_i2.PostScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? individual;

  final _i1.PrismaUnion<_i2.EnumMealTypeFilter, _i3.MealType>? meal;

  final _i1.PrismaUnion<_i2.StringFilter, String>? restaurantId;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? groupId;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? profileId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? review;

  final _i1.PrismaUnion<_i2.IntFilter, int>? rating;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateManyMutationInput({
    this.id,
    this.individual,
    this.meal,
    this.review,
    this.rating,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostUncheckedUpdateManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateManyWithoutProfileInput({
    this.id,
    this.individual,
    this.meal,
    this.restaurantId,
    this.groupId,
    this.review,
    this.rating,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      restaurantId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? groupId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostUpdateManyWithWhereWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateManyWithWhereWithoutProfileInput({
    required this.where,
    required this.data,
  });

  final _i2.PostScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PostUpdateManyMutationInput,
      _i2.PostUncheckedUpdateManyWithoutProfileInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostUncheckedUpdateManyWithoutProfileNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateManyWithoutProfileNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PostCreateWithoutProfileInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostCreateWithoutProfileInput>,
          _i1.PrismaUnion<_i2.PostUncheckedCreateWithoutProfileInput,
              Iterable<_i2.PostUncheckedCreateWithoutProfileInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostCreateOrConnectWithoutProfileInput,
      Iterable<_i2.PostCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PostUpsertWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.PostUpsertWithWhereUniqueWithoutProfileInput>>? upsert;

  final _i2.PostCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostUpdateWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.PostUpdateWithWhereUniqueWithoutProfileInput>>? update;

  final _i1.PrismaUnion<_i2.PostUpdateManyWithWhereWithoutProfileInput,
      Iterable<_i2.PostUpdateManyWithWhereWithoutProfileInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostScalarWhereInput,
      Iterable<_i2.PostScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class MemberUncheckedUpdateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUncheckedUpdateWithoutProfileInput({
    this.id,
    this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? groupId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberUpdateWithWhereUniqueWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUpdateWithWhereUniqueWithoutProfileInput({
    required this.where,
    required this.data,
  });

  final _i2.MemberWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MemberUpdateWithoutProfileInput,
      _i2.MemberUncheckedUpdateWithoutProfileInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class MemberScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.MemberScalarWhereInput,
      Iterable<_i2.MemberScalarWhereInput>>? AND;

  final Iterable<_i2.MemberScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.MemberScalarWhereInput,
      Iterable<_i2.MemberScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? groupId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUpdateManyMutationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberUncheckedUpdateManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUncheckedUpdateManyWithoutProfileInput({
    this.id,
    this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? groupId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberUpdateManyWithWhereWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUpdateManyWithWhereWithoutProfileInput({
    required this.where,
    required this.data,
  });

  final _i2.MemberScalarWhereInput where;

  final _i1.PrismaUnion<_i2.MemberUpdateManyMutationInput,
      _i2.MemberUncheckedUpdateManyWithoutProfileInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class MemberUncheckedUpdateManyWithoutProfileNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUncheckedUpdateManyWithoutProfileNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.MemberCreateWithoutProfileInput,
      _i1.PrismaUnion<
          Iterable<_i2.MemberCreateWithoutProfileInput>,
          _i1.PrismaUnion<_i2.MemberUncheckedCreateWithoutProfileInput,
              Iterable<_i2.MemberUncheckedCreateWithoutProfileInput>>>>? create;

  final _i1.PrismaUnion<_i2.MemberCreateOrConnectWithoutProfileInput,
      Iterable<_i2.MemberCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.MemberUpsertWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.MemberUpsertWithWhereUniqueWithoutProfileInput>>? upsert;

  final _i2.MemberCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.MemberUpdateWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.MemberUpdateWithWhereUniqueWithoutProfileInput>>? update;

  final _i1.PrismaUnion<_i2.MemberUpdateManyWithWhereWithoutProfileInput,
      Iterable<_i2.MemberUpdateManyWithWhereWithoutProfileInput>>? updateMany;

  final _i1.PrismaUnion<_i2.MemberScalarWhereInput,
      Iterable<_i2.MemberScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class CommentUncheckedUpdateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateWithoutProfileInput({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutParentNestedInput? replies;

  final _i2.CommentLikeUncheckedUpdateManyWithoutCommentNestedInput? likes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
      };
}

class CommentUpdateWithWhereUniqueWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateWithWhereUniqueWithoutProfileInput({
    required this.where,
    required this.data,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentUpdateWithoutProfileInput,
      _i2.CommentUncheckedUpdateWithoutProfileInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CommentUncheckedUpdateManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateManyWithoutProfileInput({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentUpdateManyWithWhereWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateManyWithWhereWithoutProfileInput({
    required this.where,
    required this.data,
  });

  final _i2.CommentScalarWhereInput where;

  final _i1.PrismaUnion<_i2.CommentUpdateManyMutationInput,
      _i2.CommentUncheckedUpdateManyWithoutProfileInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CommentUncheckedUpdateManyWithoutProfileNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateManyWithoutProfileNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.CommentCreateWithoutProfileInput,
          _i1.PrismaUnion<
              Iterable<_i2.CommentCreateWithoutProfileInput>,
              _i1.PrismaUnion<_i2.CommentUncheckedCreateWithoutProfileInput,
                  Iterable<_i2.CommentUncheckedCreateWithoutProfileInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.CommentCreateOrConnectWithoutProfileInput,
      Iterable<_i2.CommentCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.CommentUpsertWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.CommentUpsertWithWhereUniqueWithoutProfileInput>>? upsert;

  final _i2.CommentCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.CommentUpdateWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.CommentUpdateWithWhereUniqueWithoutProfileInput>>? update;

  final _i1.PrismaUnion<_i2.CommentUpdateManyWithWhereWithoutProfileInput,
      Iterable<_i2.CommentUpdateManyWithWhereWithoutProfileInput>>? updateMany;

  final _i1.PrismaUnion<_i2.CommentScalarWhereInput,
      Iterable<_i2.CommentScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PostLikeUncheckedUpdateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUncheckedUpdateWithoutProfileInput({
    this.id,
    this.postId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeUpdateWithWhereUniqueWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUpdateWithWhereUniqueWithoutProfileInput({
    required this.where,
    required this.data,
  });

  final _i2.PostLikeWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostLikeUpdateWithoutProfileInput,
      _i2.PostLikeUncheckedUpdateWithoutProfileInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostLikeUncheckedUpdateManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUncheckedUpdateManyWithoutProfileInput({
    this.id,
    this.postId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeUpdateManyWithWhereWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUpdateManyWithWhereWithoutProfileInput({
    required this.where,
    required this.data,
  });

  final _i2.PostLikeScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PostLikeUpdateManyMutationInput,
      _i2.PostLikeUncheckedUpdateManyWithoutProfileInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostLikeUncheckedUpdateManyWithoutProfileNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUncheckedUpdateManyWithoutProfileNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PostLikeCreateWithoutProfileInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostLikeCreateWithoutProfileInput>,
              _i1.PrismaUnion<_i2.PostLikeUncheckedCreateWithoutProfileInput,
                  Iterable<_i2.PostLikeUncheckedCreateWithoutProfileInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostLikeCreateOrConnectWithoutProfileInput,
          Iterable<_i2.PostLikeCreateOrConnectWithoutProfileInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.PostLikeUpsertWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.PostLikeUpsertWithWhereUniqueWithoutProfileInput>>? upsert;

  final _i2.PostLikeCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostLikeUpdateWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.PostLikeUpdateWithWhereUniqueWithoutProfileInput>>? update;

  final _i1.PrismaUnion<_i2.PostLikeUpdateManyWithWhereWithoutProfileInput,
      Iterable<_i2.PostLikeUpdateManyWithWhereWithoutProfileInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostLikeScalarWhereInput,
      Iterable<_i2.PostLikeScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class CommentLikeUncheckedUpdateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUncheckedUpdateWithoutProfileInput({
    this.id,
    this.commentId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      commentId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeUpdateWithWhereUniqueWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUpdateWithWhereUniqueWithoutProfileInput({
    required this.where,
    required this.data,
  });

  final _i2.CommentLikeWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentLikeUpdateWithoutProfileInput,
      _i2.CommentLikeUncheckedUpdateWithoutProfileInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CommentLikeUncheckedUpdateManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUncheckedUpdateManyWithoutProfileInput({
    this.id,
    this.commentId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      commentId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeUpdateManyWithWhereWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUpdateManyWithWhereWithoutProfileInput({
    required this.where,
    required this.data,
  });

  final _i2.CommentLikeScalarWhereInput where;

  final _i1.PrismaUnion<_i2.CommentLikeUpdateManyMutationInput,
      _i2.CommentLikeUncheckedUpdateManyWithoutProfileInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CommentLikeUncheckedUpdateManyWithoutProfileNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUncheckedUpdateManyWithoutProfileNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.CommentLikeCreateWithoutProfileInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentLikeCreateWithoutProfileInput>,
          _i1.PrismaUnion<
              _i2.CommentLikeUncheckedCreateWithoutProfileInput,
              Iterable<
                  _i2.CommentLikeUncheckedCreateWithoutProfileInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentLikeCreateOrConnectWithoutProfileInput,
          Iterable<_i2.CommentLikeCreateOrConnectWithoutProfileInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.CommentLikeUpsertWithWhereUniqueWithoutProfileInput,
          Iterable<_i2.CommentLikeUpsertWithWhereUniqueWithoutProfileInput>>?
      upsert;

  final _i2.CommentLikeCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.CommentLikeUpdateWithWhereUniqueWithoutProfileInput,
          Iterable<_i2.CommentLikeUpdateWithWhereUniqueWithoutProfileInput>>?
      update;

  final _i1.PrismaUnion<_i2.CommentLikeUpdateManyWithWhereWithoutProfileInput,
          Iterable<_i2.CommentLikeUpdateManyWithWhereWithoutProfileInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.CommentLikeScalarWhereInput,
      Iterable<_i2.CommentLikeScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProfileUncheckedUpdateWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedUpdateWithoutPostTagsInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUncheckedUpdateManyWithoutFollowingNestedInput?
      followsFollowing;

  final _i2.FollowUncheckedUpdateManyWithoutFollowedNestedInput?
      followsFollowed;

  final _i2.PostUncheckedUpdateManyWithoutProfileNestedInput? posts;

  final _i2.MemberUncheckedUpdateManyWithoutProfileNestedInput? members;

  final _i2.CommentUncheckedUpdateManyWithoutProfileNestedInput? comments;

  final _i2.PostLikeUncheckedUpdateManyWithoutProfileNestedInput? postLikes;

  final _i2.CommentLikeUncheckedUpdateManyWithoutProfileNestedInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUpsertWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpsertWithoutPostTagsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutPostTagsInput,
      _i2.ProfileUncheckedUpdateWithoutPostTagsInput> update;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutPostTagsInput,
      _i2.ProfileUncheckedCreateWithoutPostTagsInput> create;

  final _i2.ProfileWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProfileUpdateToOneWithWhereWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateToOneWithWhereWithoutPostTagsInput({
    this.where,
    required this.data,
  });

  final _i2.ProfileWhereInput? where;

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutPostTagsInput,
      _i2.ProfileUncheckedUpdateWithoutPostTagsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProfileUpdateOneRequiredWithoutPostTagsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateOneRequiredWithoutPostTagsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutPostTagsInput,
      _i2.ProfileUncheckedCreateWithoutPostTagsInput>? create;

  final _i2.ProfileCreateOrConnectWithoutPostTagsInput? connectOrCreate;

  final _i2.ProfileUpsertWithoutPostTagsInput? upsert;

  final _i2.ProfileWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProfileUpdateToOneWithWhereWithoutPostTagsInput,
      _i1.PrismaUnion<_i2.ProfileUpdateWithoutPostTagsInput,
          _i2.ProfileUncheckedUpdateWithoutPostTagsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class PostTagUpdateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUpdateWithoutPostInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.profile,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ProfileUpdateOneRequiredWithoutPostTagsNestedInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'profile': profile,
      };
}

class PostTagUpsertWithWhereUniqueWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUpsertWithWhereUniqueWithoutPostInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PostTagWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostTagUpdateWithoutPostInput,
      _i2.PostTagUncheckedUpdateWithoutPostInput> update;

  final _i1.PrismaUnion<_i2.PostTagCreateWithoutPostInput,
      _i2.PostTagUncheckedCreateWithoutPostInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PostTagUpdateManyWithoutPostNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUpdateManyWithoutPostNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PostTagCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostTagCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.PostTagUncheckedCreateWithoutPostInput,
              Iterable<_i2.PostTagUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostTagCreateOrConnectWithoutPostInput,
      Iterable<_i2.PostTagCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PostTagUpsertWithWhereUniqueWithoutPostInput,
      Iterable<_i2.PostTagUpsertWithWhereUniqueWithoutPostInput>>? upsert;

  final _i2.PostTagCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostTagUpdateWithWhereUniqueWithoutPostInput,
      Iterable<_i2.PostTagUpdateWithWhereUniqueWithoutPostInput>>? update;

  final _i1.PrismaUnion<_i2.PostTagUpdateManyWithWhereWithoutPostInput,
      Iterable<_i2.PostTagUpdateManyWithWhereWithoutPostInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostTagScalarWhereInput,
      Iterable<_i2.PostTagScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PostImageUpdateManyWithoutPostNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageUpdateManyWithoutPostNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PostImageCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostImageCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.PostImageUncheckedCreateWithoutPostInput,
              Iterable<_i2.PostImageUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostImageCreateOrConnectWithoutPostInput,
      Iterable<_i2.PostImageCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PostImageUpsertWithWhereUniqueWithoutPostInput,
      Iterable<_i2.PostImageUpsertWithWhereUniqueWithoutPostInput>>? upsert;

  final _i2.PostImageCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostImageWhereUniqueInput,
      Iterable<_i2.PostImageWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostImageWhereUniqueInput,
      Iterable<_i2.PostImageWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostImageWhereUniqueInput,
      Iterable<_i2.PostImageWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostImageWhereUniqueInput,
      Iterable<_i2.PostImageWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostImageUpdateWithWhereUniqueWithoutPostInput,
      Iterable<_i2.PostImageUpdateWithWhereUniqueWithoutPostInput>>? update;

  final _i1.PrismaUnion<_i2.PostImageUpdateManyWithWhereWithoutPostInput,
      Iterable<_i2.PostImageUpdateManyWithWhereWithoutPostInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostImageScalarWhereInput,
      Iterable<_i2.PostImageScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PostUpdateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithoutLikesInput({
    this.id,
    this.individual,
    this.meal,
    this.review,
    this.rating,
    this.createdAt,
    this.updatedAt,
    this.restaurant,
    this.group,
    this.profile,
    this.comments,
    this.postTags,
    this.postImages,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.RestaurantUpdateOneRequiredWithoutPostsNestedInput? restaurant;

  final _i2.GroupUpdateOneWithoutPostsNestedInput? group;

  final _i2.ProfileUpdateOneWithoutPostsNestedInput? profile;

  final _i2.CommentUpdateManyWithoutPostNestedInput? comments;

  final _i2.PostTagUpdateManyWithoutPostNestedInput? postTags;

  final _i2.PostImageUpdateManyWithoutPostNestedInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'profile': profile,
        'comments': comments,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUncheckedUpdateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateWithoutLikesInput({
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
    this.comments,
    this.postTags,
    this.postImages,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      restaurantId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? groupId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profileId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutPostNestedInput? comments;

  final _i2.PostTagUncheckedUpdateManyWithoutPostNestedInput? postTags;

  final _i2.PostImageUncheckedUpdateManyWithoutPostNestedInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comments': comments,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUpsertWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpsertWithoutLikesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.PostUpdateWithoutLikesInput,
      _i2.PostUncheckedUpdateWithoutLikesInput> update;

  final _i1.PrismaUnion<_i2.PostCreateWithoutLikesInput,
      _i2.PostUncheckedCreateWithoutLikesInput> create;

  final _i2.PostWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class PostUpdateToOneWithWhereWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateToOneWithWhereWithoutLikesInput({
    this.where,
    required this.data,
  });

  final _i2.PostWhereInput? where;

  final _i1.PrismaUnion<_i2.PostUpdateWithoutLikesInput,
      _i2.PostUncheckedUpdateWithoutLikesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostUpdateOneRequiredWithoutLikesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateOneRequiredWithoutLikesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.PostCreateWithoutLikesInput,
      _i2.PostUncheckedCreateWithoutLikesInput>? create;

  final _i2.PostCreateOrConnectWithoutLikesInput? connectOrCreate;

  final _i2.PostUpsertWithoutLikesInput? upsert;

  final _i2.PostWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.PostUpdateToOneWithWhereWithoutLikesInput,
      _i1.PrismaUnion<_i2.PostUpdateWithoutLikesInput,
          _i2.PostUncheckedUpdateWithoutLikesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class PostLikeUpdateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUpdateWithoutProfileInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.post,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PostUpdateOneRequiredWithoutLikesNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
      };
}

class PostLikeUpsertWithWhereUniqueWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUpsertWithWhereUniqueWithoutProfileInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PostLikeWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostLikeUpdateWithoutProfileInput,
      _i2.PostLikeUncheckedUpdateWithoutProfileInput> update;

  final _i1.PrismaUnion<_i2.PostLikeCreateWithoutProfileInput,
      _i2.PostLikeUncheckedCreateWithoutProfileInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PostLikeUpdateManyWithoutProfileNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUpdateManyWithoutProfileNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PostLikeCreateWithoutProfileInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostLikeCreateWithoutProfileInput>,
              _i1.PrismaUnion<_i2.PostLikeUncheckedCreateWithoutProfileInput,
                  Iterable<_i2.PostLikeUncheckedCreateWithoutProfileInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostLikeCreateOrConnectWithoutProfileInput,
          Iterable<_i2.PostLikeCreateOrConnectWithoutProfileInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.PostLikeUpsertWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.PostLikeUpsertWithWhereUniqueWithoutProfileInput>>? upsert;

  final _i2.PostLikeCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostLikeUpdateWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.PostLikeUpdateWithWhereUniqueWithoutProfileInput>>? update;

  final _i1.PrismaUnion<_i2.PostLikeUpdateManyWithWhereWithoutProfileInput,
      Iterable<_i2.PostLikeUpdateManyWithWhereWithoutProfileInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostLikeScalarWhereInput,
      Iterable<_i2.PostLikeScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProfileUpdateWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateWithoutCommentsInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.postLikes,
    this.commentLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUpdateManyWithoutFollowingNestedInput? followsFollowing;

  final _i2.FollowUpdateManyWithoutFollowedNestedInput? followsFollowed;

  final _i2.PostUpdateManyWithoutProfileNestedInput? posts;

  final _i2.PostTagUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.MemberUpdateManyWithoutProfileNestedInput? members;

  final _i2.PostLikeUpdateManyWithoutProfileNestedInput? postLikes;

  final _i2.CommentLikeUpdateManyWithoutProfileNestedInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class PostTagUncheckedUpdateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUncheckedUpdateWithoutProfileInput({
    this.id,
    this.postId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagUpdateWithWhereUniqueWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUpdateWithWhereUniqueWithoutProfileInput({
    required this.where,
    required this.data,
  });

  final _i2.PostTagWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostTagUpdateWithoutProfileInput,
      _i2.PostTagUncheckedUpdateWithoutProfileInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostTagUncheckedUpdateManyWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUncheckedUpdateManyWithoutProfileInput({
    this.id,
    this.postId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagUpdateManyWithWhereWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUpdateManyWithWhereWithoutProfileInput({
    required this.where,
    required this.data,
  });

  final _i2.PostTagScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PostTagUpdateManyMutationInput,
      _i2.PostTagUncheckedUpdateManyWithoutProfileInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostTagUncheckedUpdateManyWithoutProfileNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUncheckedUpdateManyWithoutProfileNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PostTagCreateWithoutProfileInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostTagCreateWithoutProfileInput>,
              _i1.PrismaUnion<_i2.PostTagUncheckedCreateWithoutProfileInput,
                  Iterable<_i2.PostTagUncheckedCreateWithoutProfileInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostTagCreateOrConnectWithoutProfileInput,
      Iterable<_i2.PostTagCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PostTagUpsertWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.PostTagUpsertWithWhereUniqueWithoutProfileInput>>? upsert;

  final _i2.PostTagCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostTagUpdateWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.PostTagUpdateWithWhereUniqueWithoutProfileInput>>? update;

  final _i1.PrismaUnion<_i2.PostTagUpdateManyWithWhereWithoutProfileInput,
      Iterable<_i2.PostTagUpdateManyWithWhereWithoutProfileInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostTagScalarWhereInput,
      Iterable<_i2.PostTagScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProfileUncheckedUpdateWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedUpdateWithoutCommentsInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.postLikes,
    this.commentLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUncheckedUpdateManyWithoutFollowingNestedInput?
      followsFollowing;

  final _i2.FollowUncheckedUpdateManyWithoutFollowedNestedInput?
      followsFollowed;

  final _i2.PostUncheckedUpdateManyWithoutProfileNestedInput? posts;

  final _i2.PostTagUncheckedUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.MemberUncheckedUpdateManyWithoutProfileNestedInput? members;

  final _i2.PostLikeUncheckedUpdateManyWithoutProfileNestedInput? postLikes;

  final _i2.CommentLikeUncheckedUpdateManyWithoutProfileNestedInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUpsertWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpsertWithoutCommentsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutCommentsInput,
      _i2.ProfileUncheckedUpdateWithoutCommentsInput> update;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutCommentsInput,
      _i2.ProfileUncheckedCreateWithoutCommentsInput> create;

  final _i2.ProfileWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProfileUpdateToOneWithWhereWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateToOneWithWhereWithoutCommentsInput({
    this.where,
    required this.data,
  });

  final _i2.ProfileWhereInput? where;

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutCommentsInput,
      _i2.ProfileUncheckedUpdateWithoutCommentsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProfileUpdateOneRequiredWithoutCommentsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateOneRequiredWithoutCommentsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutCommentsInput,
      _i2.ProfileUncheckedCreateWithoutCommentsInput>? create;

  final _i2.ProfileCreateOrConnectWithoutCommentsInput? connectOrCreate;

  final _i2.ProfileUpsertWithoutCommentsInput? upsert;

  final _i2.ProfileWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProfileUpdateToOneWithWhereWithoutCommentsInput,
      _i1.PrismaUnion<_i2.ProfileUpdateWithoutCommentsInput,
          _i2.ProfileUncheckedUpdateWithoutCommentsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class CommentUpdateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateWithoutLikesInput({
    this.id,
    this.message,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.parent,
    this.post,
    this.profile,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUpdateManyWithoutParentNestedInput? replies;

  final _i2.CommentUpdateOneWithoutRepliesNestedInput? parent;

  final _i2.PostUpdateOneRequiredWithoutCommentsNestedInput? post;

  final _i2.ProfileUpdateOneRequiredWithoutCommentsNestedInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'parent': parent,
        'post': post,
        'profile': profile,
      };
}

class CommentUncheckedUpdateWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateWithoutLikesInput({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.replies,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutParentNestedInput? replies;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
      };
}

class CommentUpsertWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpsertWithoutLikesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.CommentUpdateWithoutLikesInput,
      _i2.CommentUncheckedUpdateWithoutLikesInput> update;

  final _i1.PrismaUnion<_i2.CommentCreateWithoutLikesInput,
      _i2.CommentUncheckedCreateWithoutLikesInput> create;

  final _i2.CommentWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class CommentUpdateToOneWithWhereWithoutLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateToOneWithWhereWithoutLikesInput({
    this.where,
    required this.data,
  });

  final _i2.CommentWhereInput? where;

  final _i1.PrismaUnion<_i2.CommentUpdateWithoutLikesInput,
      _i2.CommentUncheckedUpdateWithoutLikesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CommentUpdateOneRequiredWithoutLikesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateOneRequiredWithoutLikesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.CommentCreateWithoutLikesInput,
      _i2.CommentUncheckedCreateWithoutLikesInput>? create;

  final _i2.CommentCreateOrConnectWithoutLikesInput? connectOrCreate;

  final _i2.CommentUpsertWithoutLikesInput? upsert;

  final _i2.CommentWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.CommentUpdateToOneWithWhereWithoutLikesInput,
      _i1.PrismaUnion<_i2.CommentUpdateWithoutLikesInput,
          _i2.CommentUncheckedUpdateWithoutLikesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class CommentLikeUpdateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUpdateWithoutProfileInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.comment,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUpdateOneRequiredWithoutLikesNestedInput? comment;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comment': comment,
      };
}

class CommentLikeUpsertWithWhereUniqueWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUpsertWithWhereUniqueWithoutProfileInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.CommentLikeWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentLikeUpdateWithoutProfileInput,
      _i2.CommentLikeUncheckedUpdateWithoutProfileInput> update;

  final _i1.PrismaUnion<_i2.CommentLikeCreateWithoutProfileInput,
      _i2.CommentLikeUncheckedCreateWithoutProfileInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class CommentLikeUpdateManyWithoutProfileNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUpdateManyWithoutProfileNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.CommentLikeCreateWithoutProfileInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentLikeCreateWithoutProfileInput>,
          _i1.PrismaUnion<
              _i2.CommentLikeUncheckedCreateWithoutProfileInput,
              Iterable<
                  _i2.CommentLikeUncheckedCreateWithoutProfileInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentLikeCreateOrConnectWithoutProfileInput,
          Iterable<_i2.CommentLikeCreateOrConnectWithoutProfileInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.CommentLikeUpsertWithWhereUniqueWithoutProfileInput,
          Iterable<_i2.CommentLikeUpsertWithWhereUniqueWithoutProfileInput>>?
      upsert;

  final _i2.CommentLikeCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.CommentLikeUpdateWithWhereUniqueWithoutProfileInput,
          Iterable<_i2.CommentLikeUpdateWithWhereUniqueWithoutProfileInput>>?
      update;

  final _i1.PrismaUnion<_i2.CommentLikeUpdateManyWithWhereWithoutProfileInput,
          Iterable<_i2.CommentLikeUpdateManyWithWhereWithoutProfileInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.CommentLikeScalarWhereInput,
      Iterable<_i2.CommentLikeScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProfileUpdateWithoutPostLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateWithoutPostLikesInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.commentLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUpdateManyWithoutFollowingNestedInput? followsFollowing;

  final _i2.FollowUpdateManyWithoutFollowedNestedInput? followsFollowed;

  final _i2.PostUpdateManyWithoutProfileNestedInput? posts;

  final _i2.PostTagUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.MemberUpdateManyWithoutProfileNestedInput? members;

  final _i2.CommentUpdateManyWithoutProfileNestedInput? comments;

  final _i2.CommentLikeUpdateManyWithoutProfileNestedInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'commentLikes': commentLikes,
      };
}

class ProfileUncheckedUpdateWithoutPostLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedUpdateWithoutPostLikesInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.commentLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUncheckedUpdateManyWithoutFollowingNestedInput?
      followsFollowing;

  final _i2.FollowUncheckedUpdateManyWithoutFollowedNestedInput?
      followsFollowed;

  final _i2.PostUncheckedUpdateManyWithoutProfileNestedInput? posts;

  final _i2.PostTagUncheckedUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.MemberUncheckedUpdateManyWithoutProfileNestedInput? members;

  final _i2.CommentUncheckedUpdateManyWithoutProfileNestedInput? comments;

  final _i2.CommentLikeUncheckedUpdateManyWithoutProfileNestedInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'commentLikes': commentLikes,
      };
}

class ProfileUpsertWithoutPostLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpsertWithoutPostLikesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutPostLikesInput,
      _i2.ProfileUncheckedUpdateWithoutPostLikesInput> update;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutPostLikesInput,
      _i2.ProfileUncheckedCreateWithoutPostLikesInput> create;

  final _i2.ProfileWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProfileUpdateToOneWithWhereWithoutPostLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateToOneWithWhereWithoutPostLikesInput({
    this.where,
    required this.data,
  });

  final _i2.ProfileWhereInput? where;

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutPostLikesInput,
      _i2.ProfileUncheckedUpdateWithoutPostLikesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProfileUpdateOneRequiredWithoutPostLikesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateOneRequiredWithoutPostLikesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutPostLikesInput,
      _i2.ProfileUncheckedCreateWithoutPostLikesInput>? create;

  final _i2.ProfileCreateOrConnectWithoutPostLikesInput? connectOrCreate;

  final _i2.ProfileUpsertWithoutPostLikesInput? upsert;

  final _i2.ProfileWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProfileUpdateToOneWithWhereWithoutPostLikesInput,
      _i1.PrismaUnion<_i2.ProfileUpdateWithoutPostLikesInput,
          _i2.ProfileUncheckedUpdateWithoutPostLikesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class PostLikeUpdateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUpdateWithoutPostInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.profile,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ProfileUpdateOneRequiredWithoutPostLikesNestedInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'profile': profile,
      };
}

class PostLikeUpsertWithWhereUniqueWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUpsertWithWhereUniqueWithoutPostInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PostLikeWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostLikeUpdateWithoutPostInput,
      _i2.PostLikeUncheckedUpdateWithoutPostInput> update;

  final _i1.PrismaUnion<_i2.PostLikeCreateWithoutPostInput,
      _i2.PostLikeUncheckedCreateWithoutPostInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PostLikeUpdateManyWithoutPostNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUpdateManyWithoutPostNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PostLikeCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostLikeCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.PostLikeUncheckedCreateWithoutPostInput,
              Iterable<_i2.PostLikeUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostLikeCreateOrConnectWithoutPostInput,
      Iterable<_i2.PostLikeCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PostLikeUpsertWithWhereUniqueWithoutPostInput,
      Iterable<_i2.PostLikeUpsertWithWhereUniqueWithoutPostInput>>? upsert;

  final _i2.PostLikeCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostLikeWhereUniqueInput,
      Iterable<_i2.PostLikeWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostLikeUpdateWithWhereUniqueWithoutPostInput,
      Iterable<_i2.PostLikeUpdateWithWhereUniqueWithoutPostInput>>? update;

  final _i1.PrismaUnion<_i2.PostLikeUpdateManyWithWhereWithoutPostInput,
      Iterable<_i2.PostLikeUpdateManyWithWhereWithoutPostInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostLikeScalarWhereInput,
      Iterable<_i2.PostLikeScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PostUpdateWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithoutCommentsInput({
    this.id,
    this.individual,
    this.meal,
    this.review,
    this.rating,
    this.createdAt,
    this.updatedAt,
    this.restaurant,
    this.group,
    this.profile,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.RestaurantUpdateOneRequiredWithoutPostsNestedInput? restaurant;

  final _i2.GroupUpdateOneWithoutPostsNestedInput? group;

  final _i2.ProfileUpdateOneWithoutPostsNestedInput? profile;

  final _i2.PostLikeUpdateManyWithoutPostNestedInput? likes;

  final _i2.PostTagUpdateManyWithoutPostNestedInput? postTags;

  final _i2.PostImageUpdateManyWithoutPostNestedInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'profile': profile,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUncheckedUpdateWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateWithoutCommentsInput({
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
    this.likes,
    this.postTags,
    this.postImages,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      restaurantId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? groupId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profileId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PostLikeUncheckedUpdateManyWithoutPostNestedInput? likes;

  final _i2.PostTagUncheckedUpdateManyWithoutPostNestedInput? postTags;

  final _i2.PostImageUncheckedUpdateManyWithoutPostNestedInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUpsertWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpsertWithoutCommentsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.PostUpdateWithoutCommentsInput,
      _i2.PostUncheckedUpdateWithoutCommentsInput> update;

  final _i1.PrismaUnion<_i2.PostCreateWithoutCommentsInput,
      _i2.PostUncheckedCreateWithoutCommentsInput> create;

  final _i2.PostWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class PostUpdateToOneWithWhereWithoutCommentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateToOneWithWhereWithoutCommentsInput({
    this.where,
    required this.data,
  });

  final _i2.PostWhereInput? where;

  final _i1.PrismaUnion<_i2.PostUpdateWithoutCommentsInput,
      _i2.PostUncheckedUpdateWithoutCommentsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostUpdateOneRequiredWithoutCommentsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateOneRequiredWithoutCommentsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.PostCreateWithoutCommentsInput,
      _i2.PostUncheckedCreateWithoutCommentsInput>? create;

  final _i2.PostCreateOrConnectWithoutCommentsInput? connectOrCreate;

  final _i2.PostUpsertWithoutCommentsInput? upsert;

  final _i2.PostWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.PostUpdateToOneWithWhereWithoutCommentsInput,
      _i1.PrismaUnion<_i2.PostUpdateWithoutCommentsInput,
          _i2.PostUncheckedUpdateWithoutCommentsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class CommentUpdateWithoutRepliesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateWithoutRepliesInput({
    this.id,
    this.message,
    this.createdAt,
    this.updatedAt,
    this.likes,
    this.parent,
    this.post,
    this.profile,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentLikeUpdateManyWithoutCommentNestedInput? likes;

  final _i2.CommentUpdateOneWithoutRepliesNestedInput? parent;

  final _i2.PostUpdateOneRequiredWithoutCommentsNestedInput? post;

  final _i2.ProfileUpdateOneRequiredWithoutCommentsNestedInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'likes': likes,
        'parent': parent,
        'post': post,
        'profile': profile,
      };
}

class CommentUncheckedUpdateWithoutRepliesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateWithoutRepliesInput({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.likes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentLikeUncheckedUpdateManyWithoutCommentNestedInput? likes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'likes': likes,
      };
}

class CommentUpsertWithoutRepliesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpsertWithoutRepliesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.CommentUpdateWithoutRepliesInput,
      _i2.CommentUncheckedUpdateWithoutRepliesInput> update;

  final _i1.PrismaUnion<_i2.CommentCreateWithoutRepliesInput,
      _i2.CommentUncheckedCreateWithoutRepliesInput> create;

  final _i2.CommentWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class CommentUpdateToOneWithWhereWithoutRepliesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateToOneWithWhereWithoutRepliesInput({
    this.where,
    required this.data,
  });

  final _i2.CommentWhereInput? where;

  final _i1.PrismaUnion<_i2.CommentUpdateWithoutRepliesInput,
      _i2.CommentUncheckedUpdateWithoutRepliesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CommentUpdateOneWithoutRepliesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateOneWithoutRepliesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.CommentCreateWithoutRepliesInput,
      _i2.CommentUncheckedCreateWithoutRepliesInput>? create;

  final _i2.CommentCreateOrConnectWithoutRepliesInput? connectOrCreate;

  final _i2.CommentUpsertWithoutRepliesInput? upsert;

  final _i1.PrismaUnion<bool, _i2.CommentWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.CommentWhereInput>? delete;

  final _i2.CommentWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.CommentUpdateToOneWithWhereWithoutRepliesInput,
      _i1.PrismaUnion<_i2.CommentUpdateWithoutRepliesInput,
          _i2.CommentUncheckedUpdateWithoutRepliesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class CommentUpdateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateWithoutProfileInput({
    this.id,
    this.message,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
    this.parent,
    this.post,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUpdateManyWithoutParentNestedInput? replies;

  final _i2.CommentLikeUpdateManyWithoutCommentNestedInput? likes;

  final _i2.CommentUpdateOneWithoutRepliesNestedInput? parent;

  final _i2.PostUpdateOneRequiredWithoutCommentsNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
        'parent': parent,
        'post': post,
      };
}

class CommentUpsertWithWhereUniqueWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpsertWithWhereUniqueWithoutProfileInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentUpdateWithoutProfileInput,
      _i2.CommentUncheckedUpdateWithoutProfileInput> update;

  final _i1.PrismaUnion<_i2.CommentCreateWithoutProfileInput,
      _i2.CommentUncheckedCreateWithoutProfileInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class CommentUpdateManyWithoutProfileNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateManyWithoutProfileNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.CommentCreateWithoutProfileInput,
          _i1.PrismaUnion<
              Iterable<_i2.CommentCreateWithoutProfileInput>,
              _i1.PrismaUnion<_i2.CommentUncheckedCreateWithoutProfileInput,
                  Iterable<_i2.CommentUncheckedCreateWithoutProfileInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.CommentCreateOrConnectWithoutProfileInput,
      Iterable<_i2.CommentCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.CommentUpsertWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.CommentUpsertWithWhereUniqueWithoutProfileInput>>? upsert;

  final _i2.CommentCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.CommentUpdateWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.CommentUpdateWithWhereUniqueWithoutProfileInput>>? update;

  final _i1.PrismaUnion<_i2.CommentUpdateManyWithWhereWithoutProfileInput,
      Iterable<_i2.CommentUpdateManyWithWhereWithoutProfileInput>>? updateMany;

  final _i1.PrismaUnion<_i2.CommentScalarWhereInput,
      Iterable<_i2.CommentScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProfileUpdateWithoutCommentLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateWithoutCommentLikesInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUpdateManyWithoutFollowingNestedInput? followsFollowing;

  final _i2.FollowUpdateManyWithoutFollowedNestedInput? followsFollowed;

  final _i2.PostUpdateManyWithoutProfileNestedInput? posts;

  final _i2.PostTagUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.MemberUpdateManyWithoutProfileNestedInput? members;

  final _i2.CommentUpdateManyWithoutProfileNestedInput? comments;

  final _i2.PostLikeUpdateManyWithoutProfileNestedInput? postLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
      };
}

class ProfileUncheckedUpdateWithoutCommentLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedUpdateWithoutCommentLikesInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUncheckedUpdateManyWithoutFollowingNestedInput?
      followsFollowing;

  final _i2.FollowUncheckedUpdateManyWithoutFollowedNestedInput?
      followsFollowed;

  final _i2.PostUncheckedUpdateManyWithoutProfileNestedInput? posts;

  final _i2.PostTagUncheckedUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.MemberUncheckedUpdateManyWithoutProfileNestedInput? members;

  final _i2.CommentUncheckedUpdateManyWithoutProfileNestedInput? comments;

  final _i2.PostLikeUncheckedUpdateManyWithoutProfileNestedInput? postLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
      };
}

class ProfileUpsertWithoutCommentLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpsertWithoutCommentLikesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutCommentLikesInput,
      _i2.ProfileUncheckedUpdateWithoutCommentLikesInput> update;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutCommentLikesInput,
      _i2.ProfileUncheckedCreateWithoutCommentLikesInput> create;

  final _i2.ProfileWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProfileUpdateToOneWithWhereWithoutCommentLikesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateToOneWithWhereWithoutCommentLikesInput({
    this.where,
    required this.data,
  });

  final _i2.ProfileWhereInput? where;

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutCommentLikesInput,
      _i2.ProfileUncheckedUpdateWithoutCommentLikesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProfileUpdateOneRequiredWithoutCommentLikesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateOneRequiredWithoutCommentLikesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutCommentLikesInput,
      _i2.ProfileUncheckedCreateWithoutCommentLikesInput>? create;

  final _i2.ProfileCreateOrConnectWithoutCommentLikesInput? connectOrCreate;

  final _i2.ProfileUpsertWithoutCommentLikesInput? upsert;

  final _i2.ProfileWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProfileUpdateToOneWithWhereWithoutCommentLikesInput,
      _i1.PrismaUnion<_i2.ProfileUpdateWithoutCommentLikesInput,
          _i2.ProfileUncheckedUpdateWithoutCommentLikesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class CommentLikeUpdateWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUpdateWithoutCommentInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.profile,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ProfileUpdateOneRequiredWithoutCommentLikesNestedInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'profile': profile,
      };
}

class CommentLikeUpsertWithWhereUniqueWithoutCommentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUpsertWithWhereUniqueWithoutCommentInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.CommentLikeWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentLikeUpdateWithoutCommentInput,
      _i2.CommentLikeUncheckedUpdateWithoutCommentInput> update;

  final _i1.PrismaUnion<_i2.CommentLikeCreateWithoutCommentInput,
      _i2.CommentLikeUncheckedCreateWithoutCommentInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class CommentLikeUpdateManyWithoutCommentNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUpdateManyWithoutCommentNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.CommentLikeCreateWithoutCommentInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentLikeCreateWithoutCommentInput>,
          _i1.PrismaUnion<
              _i2.CommentLikeUncheckedCreateWithoutCommentInput,
              Iterable<
                  _i2.CommentLikeUncheckedCreateWithoutCommentInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentLikeCreateOrConnectWithoutCommentInput,
          Iterable<_i2.CommentLikeCreateOrConnectWithoutCommentInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.CommentLikeUpsertWithWhereUniqueWithoutCommentInput,
          Iterable<_i2.CommentLikeUpsertWithWhereUniqueWithoutCommentInput>>?
      upsert;

  final _i2.CommentLikeCreateManyCommentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.CommentLikeWhereUniqueInput,
      Iterable<_i2.CommentLikeWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.CommentLikeUpdateWithWhereUniqueWithoutCommentInput,
          Iterable<_i2.CommentLikeUpdateWithWhereUniqueWithoutCommentInput>>?
      update;

  final _i1.PrismaUnion<_i2.CommentLikeUpdateManyWithWhereWithoutCommentInput,
          Iterable<_i2.CommentLikeUpdateManyWithWhereWithoutCommentInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.CommentLikeScalarWhereInput,
      Iterable<_i2.CommentLikeScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class CommentUpdateWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateWithoutParentInput({
    this.id,
    this.message,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
    this.post,
    this.profile,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUpdateManyWithoutParentNestedInput? replies;

  final _i2.CommentLikeUpdateManyWithoutCommentNestedInput? likes;

  final _i2.PostUpdateOneRequiredWithoutCommentsNestedInput? post;

  final _i2.ProfileUpdateOneRequiredWithoutCommentsNestedInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
        'post': post,
        'profile': profile,
      };
}

class CommentUpsertWithWhereUniqueWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpsertWithWhereUniqueWithoutParentInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentUpdateWithoutParentInput,
      _i2.CommentUncheckedUpdateWithoutParentInput> update;

  final _i1.PrismaUnion<_i2.CommentCreateWithoutParentInput,
      _i2.CommentUncheckedCreateWithoutParentInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class CommentUpdateManyWithoutParentNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateManyWithoutParentNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.CommentCreateWithoutParentInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentCreateWithoutParentInput>,
          _i1.PrismaUnion<_i2.CommentUncheckedCreateWithoutParentInput,
              Iterable<_i2.CommentUncheckedCreateWithoutParentInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentCreateOrConnectWithoutParentInput,
      Iterable<_i2.CommentCreateOrConnectWithoutParentInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.CommentUpsertWithWhereUniqueWithoutParentInput,
      Iterable<_i2.CommentUpsertWithWhereUniqueWithoutParentInput>>? upsert;

  final _i2.CommentCreateManyParentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.CommentUpdateWithWhereUniqueWithoutParentInput,
      Iterable<_i2.CommentUpdateWithWhereUniqueWithoutParentInput>>? update;

  final _i1.PrismaUnion<_i2.CommentUpdateManyWithWhereWithoutParentInput,
      Iterable<_i2.CommentUpdateManyWithWhereWithoutParentInput>>? updateMany;

  final _i1.PrismaUnion<_i2.CommentScalarWhereInput,
      Iterable<_i2.CommentScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class CommentUpdateWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateWithoutPostInput({
    this.id,
    this.message,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
    this.parent,
    this.profile,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUpdateManyWithoutParentNestedInput? replies;

  final _i2.CommentLikeUpdateManyWithoutCommentNestedInput? likes;

  final _i2.CommentUpdateOneWithoutRepliesNestedInput? parent;

  final _i2.ProfileUpdateOneRequiredWithoutCommentsNestedInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
        'parent': parent,
        'profile': profile,
      };
}

class CommentUpsertWithWhereUniqueWithoutPostInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpsertWithWhereUniqueWithoutPostInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.CommentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CommentUpdateWithoutPostInput,
      _i2.CommentUncheckedUpdateWithoutPostInput> update;

  final _i1.PrismaUnion<_i2.CommentCreateWithoutPostInput,
      _i2.CommentUncheckedCreateWithoutPostInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class CommentUpdateManyWithoutPostNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateManyWithoutPostNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.CommentCreateWithoutPostInput,
      _i1.PrismaUnion<
          Iterable<_i2.CommentCreateWithoutPostInput>,
          _i1.PrismaUnion<_i2.CommentUncheckedCreateWithoutPostInput,
              Iterable<_i2.CommentUncheckedCreateWithoutPostInput>>>>? create;

  final _i1.PrismaUnion<_i2.CommentCreateOrConnectWithoutPostInput,
      Iterable<_i2.CommentCreateOrConnectWithoutPostInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.CommentUpsertWithWhereUniqueWithoutPostInput,
      Iterable<_i2.CommentUpsertWithWhereUniqueWithoutPostInput>>? upsert;

  final _i2.CommentCreateManyPostInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.CommentWhereUniqueInput,
      Iterable<_i2.CommentWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.CommentUpdateWithWhereUniqueWithoutPostInput,
      Iterable<_i2.CommentUpdateWithWhereUniqueWithoutPostInput>>? update;

  final _i1.PrismaUnion<_i2.CommentUpdateManyWithWhereWithoutPostInput,
      Iterable<_i2.CommentUpdateManyWithWhereWithoutPostInput>>? updateMany;

  final _i1.PrismaUnion<_i2.CommentScalarWhereInput,
      Iterable<_i2.CommentScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PostUpdateWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithoutGroupInput({
    this.id,
    this.individual,
    this.meal,
    this.review,
    this.rating,
    this.createdAt,
    this.updatedAt,
    this.restaurant,
    this.profile,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.RestaurantUpdateOneRequiredWithoutPostsNestedInput? restaurant;

  final _i2.ProfileUpdateOneWithoutPostsNestedInput? profile;

  final _i2.CommentUpdateManyWithoutPostNestedInput? comments;

  final _i2.PostLikeUpdateManyWithoutPostNestedInput? likes;

  final _i2.PostTagUpdateManyWithoutPostNestedInput? postTags;

  final _i2.PostImageUpdateManyWithoutPostNestedInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'profile': profile,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUncheckedUpdateWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateWithoutGroupInput({
    this.id,
    this.individual,
    this.meal,
    this.restaurantId,
    this.profileId,
    this.review,
    this.rating,
    this.createdAt,
    this.updatedAt,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      restaurantId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profileId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutPostNestedInput? comments;

  final _i2.PostLikeUncheckedUpdateManyWithoutPostNestedInput? likes;

  final _i2.PostTagUncheckedUpdateManyWithoutPostNestedInput? postTags;

  final _i2.PostImageUncheckedUpdateManyWithoutPostNestedInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUpsertWithWhereUniqueWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpsertWithWhereUniqueWithoutGroupInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostUpdateWithoutGroupInput,
      _i2.PostUncheckedUpdateWithoutGroupInput> update;

  final _i1.PrismaUnion<_i2.PostCreateWithoutGroupInput,
      _i2.PostUncheckedCreateWithoutGroupInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PostUpdateWithWhereUniqueWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithWhereUniqueWithoutGroupInput({
    required this.where,
    required this.data,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostUpdateWithoutGroupInput,
      _i2.PostUncheckedUpdateWithoutGroupInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostUncheckedUpdateManyWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateManyWithoutGroupInput({
    this.id,
    this.individual,
    this.meal,
    this.restaurantId,
    this.profileId,
    this.review,
    this.rating,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      restaurantId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profileId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostUpdateManyWithWhereWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateManyWithWhereWithoutGroupInput({
    required this.where,
    required this.data,
  });

  final _i2.PostScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PostUpdateManyMutationInput,
      _i2.PostUncheckedUpdateManyWithoutGroupInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostUpdateManyWithoutGroupNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateManyWithoutGroupNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PostCreateWithoutGroupInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostCreateWithoutGroupInput>,
          _i1.PrismaUnion<_i2.PostUncheckedCreateWithoutGroupInput,
              Iterable<_i2.PostUncheckedCreateWithoutGroupInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostCreateOrConnectWithoutGroupInput,
      Iterable<_i2.PostCreateOrConnectWithoutGroupInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PostUpsertWithWhereUniqueWithoutGroupInput,
      Iterable<_i2.PostUpsertWithWhereUniqueWithoutGroupInput>>? upsert;

  final _i2.PostCreateManyGroupInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostUpdateWithWhereUniqueWithoutGroupInput,
      Iterable<_i2.PostUpdateWithWhereUniqueWithoutGroupInput>>? update;

  final _i1.PrismaUnion<_i2.PostUpdateManyWithWhereWithoutGroupInput,
      Iterable<_i2.PostUpdateManyWithWhereWithoutGroupInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostScalarWhereInput,
      Iterable<_i2.PostScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class GroupUpdateWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUpdateWithoutMembersInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.posts,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PostUpdateManyWithoutGroupNestedInput? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'posts': posts,
      };
}

class PostUncheckedUpdateManyWithoutGroupNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateManyWithoutGroupNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PostCreateWithoutGroupInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostCreateWithoutGroupInput>,
          _i1.PrismaUnion<_i2.PostUncheckedCreateWithoutGroupInput,
              Iterable<_i2.PostUncheckedCreateWithoutGroupInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostCreateOrConnectWithoutGroupInput,
      Iterable<_i2.PostCreateOrConnectWithoutGroupInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PostUpsertWithWhereUniqueWithoutGroupInput,
      Iterable<_i2.PostUpsertWithWhereUniqueWithoutGroupInput>>? upsert;

  final _i2.PostCreateManyGroupInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostUpdateWithWhereUniqueWithoutGroupInput,
      Iterable<_i2.PostUpdateWithWhereUniqueWithoutGroupInput>>? update;

  final _i1.PrismaUnion<_i2.PostUpdateManyWithWhereWithoutGroupInput,
      Iterable<_i2.PostUpdateManyWithWhereWithoutGroupInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostScalarWhereInput,
      Iterable<_i2.PostScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class GroupUncheckedUpdateWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUncheckedUpdateWithoutMembersInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.posts,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PostUncheckedUpdateManyWithoutGroupNestedInput? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'posts': posts,
      };
}

class GroupUpsertWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUpsertWithoutMembersInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.GroupUpdateWithoutMembersInput,
      _i2.GroupUncheckedUpdateWithoutMembersInput> update;

  final _i1.PrismaUnion<_i2.GroupCreateWithoutMembersInput,
      _i2.GroupUncheckedCreateWithoutMembersInput> create;

  final _i2.GroupWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class GroupUpdateToOneWithWhereWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUpdateToOneWithWhereWithoutMembersInput({
    this.where,
    required this.data,
  });

  final _i2.GroupWhereInput? where;

  final _i1.PrismaUnion<_i2.GroupUpdateWithoutMembersInput,
      _i2.GroupUncheckedUpdateWithoutMembersInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class GroupUpdateOneRequiredWithoutMembersNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUpdateOneRequiredWithoutMembersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.GroupCreateWithoutMembersInput,
      _i2.GroupUncheckedCreateWithoutMembersInput>? create;

  final _i2.GroupCreateOrConnectWithoutMembersInput? connectOrCreate;

  final _i2.GroupUpsertWithoutMembersInput? upsert;

  final _i2.GroupWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.GroupUpdateToOneWithWhereWithoutMembersInput,
      _i1.PrismaUnion<_i2.GroupUpdateWithoutMembersInput,
          _i2.GroupUncheckedUpdateWithoutMembersInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class MemberUpdateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUpdateWithoutProfileInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.group,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.GroupUpdateOneRequiredWithoutMembersNestedInput? group;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'group': group,
      };
}

class MemberUpsertWithWhereUniqueWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUpsertWithWhereUniqueWithoutProfileInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.MemberWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MemberUpdateWithoutProfileInput,
      _i2.MemberUncheckedUpdateWithoutProfileInput> update;

  final _i1.PrismaUnion<_i2.MemberCreateWithoutProfileInput,
      _i2.MemberUncheckedCreateWithoutProfileInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class MemberUpdateManyWithoutProfileNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUpdateManyWithoutProfileNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.MemberCreateWithoutProfileInput,
      _i1.PrismaUnion<
          Iterable<_i2.MemberCreateWithoutProfileInput>,
          _i1.PrismaUnion<_i2.MemberUncheckedCreateWithoutProfileInput,
              Iterable<_i2.MemberUncheckedCreateWithoutProfileInput>>>>? create;

  final _i1.PrismaUnion<_i2.MemberCreateOrConnectWithoutProfileInput,
      Iterable<_i2.MemberCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.MemberUpsertWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.MemberUpsertWithWhereUniqueWithoutProfileInput>>? upsert;

  final _i2.MemberCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.MemberUpdateWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.MemberUpdateWithWhereUniqueWithoutProfileInput>>? update;

  final _i1.PrismaUnion<_i2.MemberUpdateManyWithWhereWithoutProfileInput,
      Iterable<_i2.MemberUpdateManyWithWhereWithoutProfileInput>>? updateMany;

  final _i1.PrismaUnion<_i2.MemberScalarWhereInput,
      Iterable<_i2.MemberScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProfileUpdateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateWithoutPostsInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUpdateManyWithoutFollowingNestedInput? followsFollowing;

  final _i2.FollowUpdateManyWithoutFollowedNestedInput? followsFollowed;

  final _i2.PostTagUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.MemberUpdateManyWithoutProfileNestedInput? members;

  final _i2.CommentUpdateManyWithoutProfileNestedInput? comments;

  final _i2.PostLikeUpdateManyWithoutProfileNestedInput? postLikes;

  final _i2.CommentLikeUpdateManyWithoutProfileNestedInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUncheckedUpdateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedUpdateWithoutPostsInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUncheckedUpdateManyWithoutFollowingNestedInput?
      followsFollowing;

  final _i2.FollowUncheckedUpdateManyWithoutFollowedNestedInput?
      followsFollowed;

  final _i2.PostTagUncheckedUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.MemberUncheckedUpdateManyWithoutProfileNestedInput? members;

  final _i2.CommentUncheckedUpdateManyWithoutProfileNestedInput? comments;

  final _i2.PostLikeUncheckedUpdateManyWithoutProfileNestedInput? postLikes;

  final _i2.CommentLikeUncheckedUpdateManyWithoutProfileNestedInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUpsertWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpsertWithoutPostsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutPostsInput,
      _i2.ProfileUncheckedUpdateWithoutPostsInput> update;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutPostsInput,
      _i2.ProfileUncheckedCreateWithoutPostsInput> create;

  final _i2.ProfileWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProfileUpdateToOneWithWhereWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateToOneWithWhereWithoutPostsInput({
    this.where,
    required this.data,
  });

  final _i2.ProfileWhereInput? where;

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutPostsInput,
      _i2.ProfileUncheckedUpdateWithoutPostsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProfileUpdateOneWithoutPostsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateOneWithoutPostsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutPostsInput,
      _i2.ProfileUncheckedCreateWithoutPostsInput>? create;

  final _i2.ProfileCreateOrConnectWithoutPostsInput? connectOrCreate;

  final _i2.ProfileUpsertWithoutPostsInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ProfileWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ProfileWhereInput>? delete;

  final _i2.ProfileWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProfileUpdateToOneWithWhereWithoutPostsInput,
      _i1.PrismaUnion<_i2.ProfileUpdateWithoutPostsInput,
          _i2.ProfileUncheckedUpdateWithoutPostsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class PostUpdateWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithoutPostTagsInput({
    this.id,
    this.individual,
    this.meal,
    this.review,
    this.rating,
    this.createdAt,
    this.updatedAt,
    this.restaurant,
    this.group,
    this.profile,
    this.comments,
    this.likes,
    this.postImages,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.RestaurantUpdateOneRequiredWithoutPostsNestedInput? restaurant;

  final _i2.GroupUpdateOneWithoutPostsNestedInput? group;

  final _i2.ProfileUpdateOneWithoutPostsNestedInput? profile;

  final _i2.CommentUpdateManyWithoutPostNestedInput? comments;

  final _i2.PostLikeUpdateManyWithoutPostNestedInput? likes;

  final _i2.PostImageUpdateManyWithoutPostNestedInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'profile': profile,
        'comments': comments,
        'likes': likes,
        'postImages': postImages,
      };
}

class PostUncheckedUpdateWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateWithoutPostTagsInput({
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
    this.comments,
    this.likes,
    this.postImages,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      restaurantId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? groupId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profileId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutPostNestedInput? comments;

  final _i2.PostLikeUncheckedUpdateManyWithoutPostNestedInput? likes;

  final _i2.PostImageUncheckedUpdateManyWithoutPostNestedInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comments': comments,
        'likes': likes,
        'postImages': postImages,
      };
}

class PostUpsertWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpsertWithoutPostTagsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.PostUpdateWithoutPostTagsInput,
      _i2.PostUncheckedUpdateWithoutPostTagsInput> update;

  final _i1.PrismaUnion<_i2.PostCreateWithoutPostTagsInput,
      _i2.PostUncheckedCreateWithoutPostTagsInput> create;

  final _i2.PostWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class PostUpdateToOneWithWhereWithoutPostTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateToOneWithWhereWithoutPostTagsInput({
    this.where,
    required this.data,
  });

  final _i2.PostWhereInput? where;

  final _i1.PrismaUnion<_i2.PostUpdateWithoutPostTagsInput,
      _i2.PostUncheckedUpdateWithoutPostTagsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostUpdateOneRequiredWithoutPostTagsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateOneRequiredWithoutPostTagsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.PostCreateWithoutPostTagsInput,
      _i2.PostUncheckedCreateWithoutPostTagsInput>? create;

  final _i2.PostCreateOrConnectWithoutPostTagsInput? connectOrCreate;

  final _i2.PostUpsertWithoutPostTagsInput? upsert;

  final _i2.PostWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.PostUpdateToOneWithWhereWithoutPostTagsInput,
      _i1.PrismaUnion<_i2.PostUpdateWithoutPostTagsInput,
          _i2.PostUncheckedUpdateWithoutPostTagsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class PostTagUpdateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUpdateWithoutProfileInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.post,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PostUpdateOneRequiredWithoutPostTagsNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
      };
}

class PostTagUpsertWithWhereUniqueWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUpsertWithWhereUniqueWithoutProfileInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PostTagWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostTagUpdateWithoutProfileInput,
      _i2.PostTagUncheckedUpdateWithoutProfileInput> update;

  final _i1.PrismaUnion<_i2.PostTagCreateWithoutProfileInput,
      _i2.PostTagUncheckedCreateWithoutProfileInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PostTagUpdateManyWithoutProfileNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUpdateManyWithoutProfileNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PostTagCreateWithoutProfileInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostTagCreateWithoutProfileInput>,
              _i1.PrismaUnion<_i2.PostTagUncheckedCreateWithoutProfileInput,
                  Iterable<_i2.PostTagUncheckedCreateWithoutProfileInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostTagCreateOrConnectWithoutProfileInput,
      Iterable<_i2.PostTagCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PostTagUpsertWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.PostTagUpsertWithWhereUniqueWithoutProfileInput>>? upsert;

  final _i2.PostTagCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostTagWhereUniqueInput,
      Iterable<_i2.PostTagWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostTagUpdateWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.PostTagUpdateWithWhereUniqueWithoutProfileInput>>? update;

  final _i1.PrismaUnion<_i2.PostTagUpdateManyWithWhereWithoutProfileInput,
      Iterable<_i2.PostTagUpdateManyWithWhereWithoutProfileInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostTagScalarWhereInput,
      Iterable<_i2.PostTagScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProfileUpdateWithoutFollowsFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateWithoutFollowsFollowingInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUpdateManyWithoutFollowedNestedInput? followsFollowed;

  final _i2.PostUpdateManyWithoutProfileNestedInput? posts;

  final _i2.PostTagUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.MemberUpdateManyWithoutProfileNestedInput? members;

  final _i2.CommentUpdateManyWithoutProfileNestedInput? comments;

  final _i2.PostLikeUpdateManyWithoutProfileNestedInput? postLikes;

  final _i2.CommentLikeUpdateManyWithoutProfileNestedInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUncheckedUpdateWithoutFollowsFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedUpdateWithoutFollowsFollowingInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUncheckedUpdateManyWithoutFollowedNestedInput?
      followsFollowed;

  final _i2.PostUncheckedUpdateManyWithoutProfileNestedInput? posts;

  final _i2.PostTagUncheckedUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.MemberUncheckedUpdateManyWithoutProfileNestedInput? members;

  final _i2.CommentUncheckedUpdateManyWithoutProfileNestedInput? comments;

  final _i2.PostLikeUncheckedUpdateManyWithoutProfileNestedInput? postLikes;

  final _i2.CommentLikeUncheckedUpdateManyWithoutProfileNestedInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUpsertWithoutFollowsFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpsertWithoutFollowsFollowingInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutFollowsFollowingInput,
      _i2.ProfileUncheckedUpdateWithoutFollowsFollowingInput> update;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutFollowsFollowingInput,
      _i2.ProfileUncheckedCreateWithoutFollowsFollowingInput> create;

  final _i2.ProfileWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProfileUpdateToOneWithWhereWithoutFollowsFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateToOneWithWhereWithoutFollowsFollowingInput({
    this.where,
    required this.data,
  });

  final _i2.ProfileWhereInput? where;

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutFollowsFollowingInput,
      _i2.ProfileUncheckedUpdateWithoutFollowsFollowingInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProfileUpdateOneRequiredWithoutFollowsFollowingNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateOneRequiredWithoutFollowsFollowingNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutFollowsFollowingInput,
      _i2.ProfileUncheckedCreateWithoutFollowsFollowingInput>? create;

  final _i2.ProfileCreateOrConnectWithoutFollowsFollowingInput? connectOrCreate;

  final _i2.ProfileUpsertWithoutFollowsFollowingInput? upsert;

  final _i2.ProfileWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProfileUpdateToOneWithWhereWithoutFollowsFollowingInput,
      _i1.PrismaUnion<_i2.ProfileUpdateWithoutFollowsFollowingInput,
          _i2.ProfileUncheckedUpdateWithoutFollowsFollowingInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class FollowUpdateWithoutFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateWithoutFollowedInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.following,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ProfileUpdateOneRequiredWithoutFollowsFollowingNestedInput?
      following;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'following': following,
      };
}

class FollowUpsertWithWhereUniqueWithoutFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpsertWithWhereUniqueWithoutFollowedInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.FollowWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FollowUpdateWithoutFollowedInput,
      _i2.FollowUncheckedUpdateWithoutFollowedInput> update;

  final _i1.PrismaUnion<_i2.FollowCreateWithoutFollowedInput,
      _i2.FollowUncheckedCreateWithoutFollowedInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class FollowUpdateManyWithoutFollowedNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateManyWithoutFollowedNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.FollowCreateWithoutFollowedInput,
          _i1.PrismaUnion<
              Iterable<_i2.FollowCreateWithoutFollowedInput>,
              _i1.PrismaUnion<_i2.FollowUncheckedCreateWithoutFollowedInput,
                  Iterable<_i2.FollowUncheckedCreateWithoutFollowedInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FollowCreateOrConnectWithoutFollowedInput,
      Iterable<_i2.FollowCreateOrConnectWithoutFollowedInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.FollowUpsertWithWhereUniqueWithoutFollowedInput,
      Iterable<_i2.FollowUpsertWithWhereUniqueWithoutFollowedInput>>? upsert;

  final _i2.FollowCreateManyFollowedInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.FollowUpdateWithWhereUniqueWithoutFollowedInput,
      Iterable<_i2.FollowUpdateWithWhereUniqueWithoutFollowedInput>>? update;

  final _i1.PrismaUnion<_i2.FollowUpdateManyWithWhereWithoutFollowedInput,
      Iterable<_i2.FollowUpdateManyWithWhereWithoutFollowedInput>>? updateMany;

  final _i1.PrismaUnion<_i2.FollowScalarWhereInput,
      Iterable<_i2.FollowScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProfileUpdateWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateWithoutMembersInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUpdateManyWithoutFollowingNestedInput? followsFollowing;

  final _i2.FollowUpdateManyWithoutFollowedNestedInput? followsFollowed;

  final _i2.PostUpdateManyWithoutProfileNestedInput? posts;

  final _i2.PostTagUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.CommentUpdateManyWithoutProfileNestedInput? comments;

  final _i2.PostLikeUpdateManyWithoutProfileNestedInput? postLikes;

  final _i2.CommentLikeUpdateManyWithoutProfileNestedInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUncheckedUpdateWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedUpdateWithoutMembersInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.followsFollowed,
    this.posts,
    this.postTags,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUncheckedUpdateManyWithoutFollowingNestedInput?
      followsFollowing;

  final _i2.FollowUncheckedUpdateManyWithoutFollowedNestedInput?
      followsFollowed;

  final _i2.PostUncheckedUpdateManyWithoutProfileNestedInput? posts;

  final _i2.PostTagUncheckedUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.CommentUncheckedUpdateManyWithoutProfileNestedInput? comments;

  final _i2.PostLikeUncheckedUpdateManyWithoutProfileNestedInput? postLikes;

  final _i2.CommentLikeUncheckedUpdateManyWithoutProfileNestedInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUpsertWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpsertWithoutMembersInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutMembersInput,
      _i2.ProfileUncheckedUpdateWithoutMembersInput> update;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutMembersInput,
      _i2.ProfileUncheckedCreateWithoutMembersInput> create;

  final _i2.ProfileWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProfileUpdateToOneWithWhereWithoutMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateToOneWithWhereWithoutMembersInput({
    this.where,
    required this.data,
  });

  final _i2.ProfileWhereInput? where;

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutMembersInput,
      _i2.ProfileUncheckedUpdateWithoutMembersInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProfileUpdateOneRequiredWithoutMembersNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateOneRequiredWithoutMembersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutMembersInput,
      _i2.ProfileUncheckedCreateWithoutMembersInput>? create;

  final _i2.ProfileCreateOrConnectWithoutMembersInput? connectOrCreate;

  final _i2.ProfileUpsertWithoutMembersInput? upsert;

  final _i2.ProfileWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProfileUpdateToOneWithWhereWithoutMembersInput,
      _i1.PrismaUnion<_i2.ProfileUpdateWithoutMembersInput,
          _i2.ProfileUncheckedUpdateWithoutMembersInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class MemberUpdateWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUpdateWithoutGroupInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.profile,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ProfileUpdateOneRequiredWithoutMembersNestedInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'profile': profile,
      };
}

class MemberUncheckedUpdateWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUncheckedUpdateWithoutGroupInput({
    this.id,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberUpsertWithWhereUniqueWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUpsertWithWhereUniqueWithoutGroupInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.MemberWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MemberUpdateWithoutGroupInput,
      _i2.MemberUncheckedUpdateWithoutGroupInput> update;

  final _i1.PrismaUnion<_i2.MemberCreateWithoutGroupInput,
      _i2.MemberUncheckedCreateWithoutGroupInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class MemberUpdateWithWhereUniqueWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUpdateWithWhereUniqueWithoutGroupInput({
    required this.where,
    required this.data,
  });

  final _i2.MemberWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MemberUpdateWithoutGroupInput,
      _i2.MemberUncheckedUpdateWithoutGroupInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class MemberUncheckedUpdateManyWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUncheckedUpdateManyWithoutGroupInput({
    this.id,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberUpdateManyWithWhereWithoutGroupInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUpdateManyWithWhereWithoutGroupInput({
    required this.where,
    required this.data,
  });

  final _i2.MemberScalarWhereInput where;

  final _i1.PrismaUnion<_i2.MemberUpdateManyMutationInput,
      _i2.MemberUncheckedUpdateManyWithoutGroupInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class MemberUpdateManyWithoutGroupNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUpdateManyWithoutGroupNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.MemberCreateWithoutGroupInput,
      _i1.PrismaUnion<
          Iterable<_i2.MemberCreateWithoutGroupInput>,
          _i1.PrismaUnion<_i2.MemberUncheckedCreateWithoutGroupInput,
              Iterable<_i2.MemberUncheckedCreateWithoutGroupInput>>>>? create;

  final _i1.PrismaUnion<_i2.MemberCreateOrConnectWithoutGroupInput,
      Iterable<_i2.MemberCreateOrConnectWithoutGroupInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.MemberUpsertWithWhereUniqueWithoutGroupInput,
      Iterable<_i2.MemberUpsertWithWhereUniqueWithoutGroupInput>>? upsert;

  final _i2.MemberCreateManyGroupInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.MemberUpdateWithWhereUniqueWithoutGroupInput,
      Iterable<_i2.MemberUpdateWithWhereUniqueWithoutGroupInput>>? update;

  final _i1.PrismaUnion<_i2.MemberUpdateManyWithWhereWithoutGroupInput,
      Iterable<_i2.MemberUpdateManyWithWhereWithoutGroupInput>>? updateMany;

  final _i1.PrismaUnion<_i2.MemberScalarWhereInput,
      Iterable<_i2.MemberScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class GroupUpdateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUpdateWithoutPostsInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.members,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.MemberUpdateManyWithoutGroupNestedInput? members;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'members': members,
      };
}

class MemberUncheckedUpdateManyWithoutGroupNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUncheckedUpdateManyWithoutGroupNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.MemberCreateWithoutGroupInput,
      _i1.PrismaUnion<
          Iterable<_i2.MemberCreateWithoutGroupInput>,
          _i1.PrismaUnion<_i2.MemberUncheckedCreateWithoutGroupInput,
              Iterable<_i2.MemberUncheckedCreateWithoutGroupInput>>>>? create;

  final _i1.PrismaUnion<_i2.MemberCreateOrConnectWithoutGroupInput,
      Iterable<_i2.MemberCreateOrConnectWithoutGroupInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.MemberUpsertWithWhereUniqueWithoutGroupInput,
      Iterable<_i2.MemberUpsertWithWhereUniqueWithoutGroupInput>>? upsert;

  final _i2.MemberCreateManyGroupInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.MemberWhereUniqueInput,
      Iterable<_i2.MemberWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.MemberUpdateWithWhereUniqueWithoutGroupInput,
      Iterable<_i2.MemberUpdateWithWhereUniqueWithoutGroupInput>>? update;

  final _i1.PrismaUnion<_i2.MemberUpdateManyWithWhereWithoutGroupInput,
      Iterable<_i2.MemberUpdateManyWithWhereWithoutGroupInput>>? updateMany;

  final _i1.PrismaUnion<_i2.MemberScalarWhereInput,
      Iterable<_i2.MemberScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class GroupUncheckedUpdateWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUncheckedUpdateWithoutPostsInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.members,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.MemberUncheckedUpdateManyWithoutGroupNestedInput? members;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'members': members,
      };
}

class GroupUpsertWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUpsertWithoutPostsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.GroupUpdateWithoutPostsInput,
      _i2.GroupUncheckedUpdateWithoutPostsInput> update;

  final _i1.PrismaUnion<_i2.GroupCreateWithoutPostsInput,
      _i2.GroupUncheckedCreateWithoutPostsInput> create;

  final _i2.GroupWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class GroupUpdateToOneWithWhereWithoutPostsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUpdateToOneWithWhereWithoutPostsInput({
    this.where,
    required this.data,
  });

  final _i2.GroupWhereInput? where;

  final _i1.PrismaUnion<_i2.GroupUpdateWithoutPostsInput,
      _i2.GroupUncheckedUpdateWithoutPostsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class GroupUpdateOneWithoutPostsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUpdateOneWithoutPostsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.GroupCreateWithoutPostsInput,
      _i2.GroupUncheckedCreateWithoutPostsInput>? create;

  final _i2.GroupCreateOrConnectWithoutPostsInput? connectOrCreate;

  final _i2.GroupUpsertWithoutPostsInput? upsert;

  final _i1.PrismaUnion<bool, _i2.GroupWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.GroupWhereInput>? delete;

  final _i2.GroupWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.GroupUpdateToOneWithWhereWithoutPostsInput,
      _i1.PrismaUnion<_i2.GroupUpdateWithoutPostsInput,
          _i2.GroupUncheckedUpdateWithoutPostsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class PostUpdateWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithoutProfileInput({
    this.id,
    this.individual,
    this.meal,
    this.review,
    this.rating,
    this.createdAt,
    this.updatedAt,
    this.restaurant,
    this.group,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.RestaurantUpdateOneRequiredWithoutPostsNestedInput? restaurant;

  final _i2.GroupUpdateOneWithoutPostsNestedInput? group;

  final _i2.CommentUpdateManyWithoutPostNestedInput? comments;

  final _i2.PostLikeUpdateManyWithoutPostNestedInput? likes;

  final _i2.PostTagUpdateManyWithoutPostNestedInput? postTags;

  final _i2.PostImageUpdateManyWithoutPostNestedInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUpsertWithWhereUniqueWithoutProfileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpsertWithWhereUniqueWithoutProfileInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostUpdateWithoutProfileInput,
      _i2.PostUncheckedUpdateWithoutProfileInput> update;

  final _i1.PrismaUnion<_i2.PostCreateWithoutProfileInput,
      _i2.PostUncheckedCreateWithoutProfileInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PostUpdateManyWithoutProfileNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateManyWithoutProfileNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PostCreateWithoutProfileInput,
      _i1.PrismaUnion<
          Iterable<_i2.PostCreateWithoutProfileInput>,
          _i1.PrismaUnion<_i2.PostUncheckedCreateWithoutProfileInput,
              Iterable<_i2.PostUncheckedCreateWithoutProfileInput>>>>? create;

  final _i1.PrismaUnion<_i2.PostCreateOrConnectWithoutProfileInput,
      Iterable<_i2.PostCreateOrConnectWithoutProfileInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PostUpsertWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.PostUpsertWithWhereUniqueWithoutProfileInput>>? upsert;

  final _i2.PostCreateManyProfileInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostUpdateWithWhereUniqueWithoutProfileInput,
      Iterable<_i2.PostUpdateWithWhereUniqueWithoutProfileInput>>? update;

  final _i1.PrismaUnion<_i2.PostUpdateManyWithWhereWithoutProfileInput,
      Iterable<_i2.PostUpdateManyWithWhereWithoutProfileInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostScalarWhereInput,
      Iterable<_i2.PostScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProfileUpdateWithoutFollowsFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateWithoutFollowsFollowedInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUpdateManyWithoutFollowingNestedInput? followsFollowing;

  final _i2.PostUpdateManyWithoutProfileNestedInput? posts;

  final _i2.PostTagUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.MemberUpdateManyWithoutProfileNestedInput? members;

  final _i2.CommentUpdateManyWithoutProfileNestedInput? comments;

  final _i2.PostLikeUpdateManyWithoutProfileNestedInput? postLikes;

  final _i2.CommentLikeUpdateManyWithoutProfileNestedInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUncheckedUpdateWithoutFollowsFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedUpdateWithoutFollowsFollowedInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.followsFollowing,
    this.posts,
    this.postTags,
    this.members,
    this.comments,
    this.postLikes,
    this.commentLikes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUncheckedUpdateManyWithoutFollowingNestedInput?
      followsFollowing;

  final _i2.PostUncheckedUpdateManyWithoutProfileNestedInput? posts;

  final _i2.PostTagUncheckedUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.MemberUncheckedUpdateManyWithoutProfileNestedInput? members;

  final _i2.CommentUncheckedUpdateManyWithoutProfileNestedInput? comments;

  final _i2.PostLikeUncheckedUpdateManyWithoutProfileNestedInput? postLikes;

  final _i2.CommentLikeUncheckedUpdateManyWithoutProfileNestedInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUpsertWithoutFollowsFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpsertWithoutFollowsFollowedInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutFollowsFollowedInput,
      _i2.ProfileUncheckedUpdateWithoutFollowsFollowedInput> update;

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutFollowsFollowedInput,
      _i2.ProfileUncheckedCreateWithoutFollowsFollowedInput> create;

  final _i2.ProfileWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProfileUpdateToOneWithWhereWithoutFollowsFollowedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateToOneWithWhereWithoutFollowsFollowedInput({
    this.where,
    required this.data,
  });

  final _i2.ProfileWhereInput? where;

  final _i1.PrismaUnion<_i2.ProfileUpdateWithoutFollowsFollowedInput,
      _i2.ProfileUncheckedUpdateWithoutFollowsFollowedInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProfileUpdateOneRequiredWithoutFollowsFollowedNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateOneRequiredWithoutFollowsFollowedNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProfileCreateWithoutFollowsFollowedInput,
      _i2.ProfileUncheckedCreateWithoutFollowsFollowedInput>? create;

  final _i2.ProfileCreateOrConnectWithoutFollowsFollowedInput? connectOrCreate;

  final _i2.ProfileUpsertWithoutFollowsFollowedInput? upsert;

  final _i2.ProfileWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProfileUpdateToOneWithWhereWithoutFollowsFollowedInput,
      _i1.PrismaUnion<_i2.ProfileUpdateWithoutFollowsFollowedInput,
          _i2.ProfileUncheckedUpdateWithoutFollowsFollowedInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class FollowUpdateWithoutFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateWithoutFollowingInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.followed,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ProfileUpdateOneRequiredWithoutFollowsFollowedNestedInput? followed;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followed': followed,
      };
}

class FollowUpsertWithWhereUniqueWithoutFollowingInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpsertWithWhereUniqueWithoutFollowingInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.FollowWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FollowUpdateWithoutFollowingInput,
      _i2.FollowUncheckedUpdateWithoutFollowingInput> update;

  final _i1.PrismaUnion<_i2.FollowCreateWithoutFollowingInput,
      _i2.FollowUncheckedCreateWithoutFollowingInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class FollowUpdateManyWithoutFollowingNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateManyWithoutFollowingNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.FollowCreateWithoutFollowingInput,
          _i1.PrismaUnion<
              Iterable<_i2.FollowCreateWithoutFollowingInput>,
              _i1.PrismaUnion<_i2.FollowUncheckedCreateWithoutFollowingInput,
                  Iterable<_i2.FollowUncheckedCreateWithoutFollowingInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.FollowCreateOrConnectWithoutFollowingInput,
          Iterable<_i2.FollowCreateOrConnectWithoutFollowingInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.FollowUpsertWithWhereUniqueWithoutFollowingInput,
      Iterable<_i2.FollowUpsertWithWhereUniqueWithoutFollowingInput>>? upsert;

  final _i2.FollowCreateManyFollowingInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.FollowWhereUniqueInput,
      Iterable<_i2.FollowWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.FollowUpdateWithWhereUniqueWithoutFollowingInput,
      Iterable<_i2.FollowUpdateWithWhereUniqueWithoutFollowingInput>>? update;

  final _i1.PrismaUnion<_i2.FollowUpdateManyWithWhereWithoutFollowingInput,
      Iterable<_i2.FollowUpdateManyWithWhereWithoutFollowingInput>>? updateMany;

  final _i1.PrismaUnion<_i2.FollowScalarWhereInput,
      Iterable<_i2.FollowScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProfileUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
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
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUpdateManyWithoutFollowingNestedInput? followsFollowing;

  final _i2.FollowUpdateManyWithoutFollowedNestedInput? followsFollowed;

  final _i2.PostUpdateManyWithoutProfileNestedInput? posts;

  final _i2.PostTagUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.MemberUpdateManyWithoutProfileNestedInput? members;

  final _i2.CommentUpdateManyWithoutProfileNestedInput? comments;

  final _i2.PostLikeUpdateManyWithoutProfileNestedInput? postLikes;

  final _i2.CommentLikeUpdateManyWithoutProfileNestedInput? commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedUpdateInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
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
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FollowUncheckedUpdateManyWithoutFollowingNestedInput?
      followsFollowing;

  final _i2.FollowUncheckedUpdateManyWithoutFollowedNestedInput?
      followsFollowed;

  final _i2.PostUncheckedUpdateManyWithoutProfileNestedInput? posts;

  final _i2.PostTagUncheckedUpdateManyWithoutProfileNestedInput? postTags;

  final _i2.MemberUncheckedUpdateManyWithoutProfileNestedInput? members;

  final _i2.CommentUncheckedUpdateManyWithoutProfileNestedInput? comments;

  final _i2.PostLikeUncheckedUpdateManyWithoutProfileNestedInput? postLikes;

  final _i2.CommentLikeUncheckedUpdateManyWithoutProfileNestedInput?
      commentLikes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'followsFollowing': followsFollowing,
        'followsFollowed': followsFollowed,
        'posts': posts,
        'postTags': postTags,
        'members': members,
        'comments': comments,
        'postLikes': postLikes,
        'commentLikes': commentLikes,
      };
}

class ProfileUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUpdateManyMutationInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class ProfileUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileUncheckedUpdateManyInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? public;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class ProfileCountAggregateOutputType {
  const ProfileCountAggregateOutputType({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory ProfileCountAggregateOutputType.fromJson(Map json) =>
      ProfileCountAggregateOutputType(
        id: json['id'],
        email: json['email'],
        username: json['username'],
        imageUrl: json['imageUrl'],
        public: json['public'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? email;

  final int? username;

  final int? imageUrl;

  final int? public;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;
}

class ProfileMinAggregateOutputType {
  const ProfileMinAggregateOutputType({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
  });

  factory ProfileMinAggregateOutputType.fromJson(Map json) =>
      ProfileMinAggregateOutputType(
        id: json['id'],
        email: json['email'],
        username: json['username'],
        imageUrl: json['imageUrl'],
        public: json['public'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? email;

  final String? username;

  final String? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class ProfileMaxAggregateOutputType {
  const ProfileMaxAggregateOutputType({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
  });

  factory ProfileMaxAggregateOutputType.fromJson(Map json) =>
      ProfileMaxAggregateOutputType(
        id: json['id'],
        email: json['email'],
        username: json['username'],
        imageUrl: json['imageUrl'],
        public: json['public'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? email;

  final String? username;

  final String? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class ProfileGroupByOutputType {
  const ProfileGroupByOutputType({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory ProfileGroupByOutputType.fromJson(Map json) =>
      ProfileGroupByOutputType(
        id: json['id'],
        email: json['email'],
        username: json['username'],
        imageUrl: json['imageUrl'],
        public: json['public'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $count: json['_count'] is Map
            ? _i2.ProfileCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ProfileMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ProfileMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? email;

  final String? username;

  final String? imageUrl;

  final bool? public;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ProfileCountAggregateOutputType? $count;

  final _i2.ProfileMinAggregateOutputType? $min;

  final _i2.ProfileMaxAggregateOutputType? $max;
}

class ProfileCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCountOrderByAggregateInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? username;

  final _i2.SortOrder? imageUrl;

  final _i2.SortOrder? public;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class ProfileMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileMaxOrderByAggregateInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? username;

  final _i2.SortOrder? imageUrl;

  final _i2.SortOrder? public;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class ProfileMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileMinOrderByAggregateInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? username;

  final _i2.SortOrder? imageUrl;

  final _i2.SortOrder? public;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class ProfileOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileOrderByWithAggregationInput({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? username;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? imageUrl;

  final _i2.SortOrder? public;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.ProfileCountOrderByAggregateInput? $count;

  final _i2.ProfileMaxOrderByAggregateInput? $max;

  final _i2.ProfileMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedStringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedBoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class BoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedDateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class ProfileScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.ProfileScalarWhereWithAggregatesInput,
      Iterable<_i2.ProfileScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.ProfileScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.ProfileScalarWhereWithAggregatesInput,
      Iterable<_i2.ProfileScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? username;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<_i2.BoolWithAggregatesFilter, bool>? public;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class ProfileCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileCountAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? email;

  final bool? username;

  final bool? imageUrl;

  final bool? public;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class ProfileGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileGroupByOutputTypeCountArgs({this.select});

  final _i2.ProfileCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProfileMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileMinAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? email;

  final bool? username;

  final bool? imageUrl;

  final bool? public;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class ProfileGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileGroupByOutputTypeMinArgs({this.select});

  final _i2.ProfileMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProfileMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileMaxAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? email;

  final bool? username;

  final bool? imageUrl;

  final bool? public;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class ProfileGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileGroupByOutputTypeMaxArgs({this.select});

  final _i2.ProfileMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProfileGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProfileGroupByOutputTypeSelect({
    this.id,
    this.email,
    this.username,
    this.imageUrl,
    this.public,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? email;

  final bool? username;

  final bool? imageUrl;

  final bool? public;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.ProfileGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.ProfileGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.ProfileGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'imageUrl': imageUrl,
        'public': public,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateProfile {
  const AggregateProfile({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateProfile.fromJson(Map json) => AggregateProfile(
        $count: json['_count'] is Map
            ? _i2.ProfileCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ProfileMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ProfileMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.ProfileCountAggregateOutputType? $count;

  final _i2.ProfileMinAggregateOutputType? $min;

  final _i2.ProfileMaxAggregateOutputType? $max;
}

class AggregateProfileCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProfileCountArgs({this.select});

  final _i2.ProfileCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProfileMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProfileMinArgs({this.select});

  final _i2.ProfileMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProfileMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProfileMaxArgs({this.select});

  final _i2.ProfileMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProfileSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProfileSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateProfileCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateProfileMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateProfileMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class FollowCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.following,
    required this.followed,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ProfileCreateNestedOneWithoutFollowsFollowingInput following;

  final _i2.ProfileCreateNestedOneWithoutFollowsFollowedInput followed;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'following': following,
        'followed': followed,
      };
}

class FollowUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedCreateInput({
    this.id,
    required this.followingId,
    required this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String followingId;

  final String followedId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCreateManyInput({
    this.id,
    required this.followingId,
    required this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String followingId;

  final String followedId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUpdateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.following,
    this.followed,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ProfileUpdateOneRequiredWithoutFollowsFollowingNestedInput?
      following;

  final _i2.ProfileUpdateOneRequiredWithoutFollowsFollowedNestedInput? followed;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'following': following,
        'followed': followed,
      };
}

class FollowUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateInput({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      followingId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      followedId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowUncheckedUpdateManyInput({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      followingId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      followedId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowCountAggregateOutputType {
  const FollowCountAggregateOutputType({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory FollowCountAggregateOutputType.fromJson(Map json) =>
      FollowCountAggregateOutputType(
        id: json['id'],
        followingId: json['followingId'],
        followedId: json['followedId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? followingId;

  final int? followedId;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;
}

class FollowMinAggregateOutputType {
  const FollowMinAggregateOutputType({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  factory FollowMinAggregateOutputType.fromJson(Map json) =>
      FollowMinAggregateOutputType(
        id: json['id'],
        followingId: json['followingId'],
        followedId: json['followedId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? followingId;

  final String? followedId;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class FollowMaxAggregateOutputType {
  const FollowMaxAggregateOutputType({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  factory FollowMaxAggregateOutputType.fromJson(Map json) =>
      FollowMaxAggregateOutputType(
        id: json['id'],
        followingId: json['followingId'],
        followedId: json['followedId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? followingId;

  final String? followedId;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class FollowGroupByOutputType {
  const FollowGroupByOutputType({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory FollowGroupByOutputType.fromJson(Map json) => FollowGroupByOutputType(
        id: json['id'],
        followingId: json['followingId'],
        followedId: json['followedId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $count: json['_count'] is Map
            ? _i2.FollowCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.FollowMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.FollowMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? followingId;

  final String? followedId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FollowCountAggregateOutputType? $count;

  final _i2.FollowMinAggregateOutputType? $min;

  final _i2.FollowMaxAggregateOutputType? $max;
}

class FollowCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCountOrderByAggregateInput({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? followingId;

  final _i2.SortOrder? followedId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowMaxOrderByAggregateInput({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? followingId;

  final _i2.SortOrder? followedId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowMinOrderByAggregateInput({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? followingId;

  final _i2.SortOrder? followedId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowOrderByWithAggregationInput({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? followingId;

  final _i2.SortOrder? followedId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.FollowCountOrderByAggregateInput? $count;

  final _i2.FollowMaxOrderByAggregateInput? $max;

  final _i2.FollowMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class FollowScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.FollowScalarWhereWithAggregatesInput,
      Iterable<_i2.FollowScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.FollowScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.FollowScalarWhereWithAggregatesInput,
      Iterable<_i2.FollowScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? followingId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? followedId;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowCountAggregateOutputTypeSelect({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? followingId;

  final bool? followedId;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class FollowGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowGroupByOutputTypeCountArgs({this.select});

  final _i2.FollowCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FollowMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowMinAggregateOutputTypeSelect({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? followingId;

  final bool? followedId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowGroupByOutputTypeMinArgs({this.select});

  final _i2.FollowMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FollowMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowMaxAggregateOutputTypeSelect({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? followingId;

  final bool? followedId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FollowGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowGroupByOutputTypeMaxArgs({this.select});

  final _i2.FollowMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FollowGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FollowGroupByOutputTypeSelect({
    this.id,
    this.followingId,
    this.followedId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? followingId;

  final bool? followedId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.FollowGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.FollowGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.FollowGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'followingId': followingId,
        'followedId': followedId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateFollow {
  const AggregateFollow({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateFollow.fromJson(Map json) => AggregateFollow(
        $count: json['_count'] is Map
            ? _i2.FollowCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.FollowMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.FollowMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.FollowCountAggregateOutputType? $count;

  final _i2.FollowMinAggregateOutputType? $min;

  final _i2.FollowMaxAggregateOutputType? $max;
}

class AggregateFollowCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFollowCountArgs({this.select});

  final _i2.FollowCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFollowMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFollowMinArgs({this.select});

  final _i2.FollowMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFollowMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFollowMaxArgs({this.select});

  final _i2.FollowMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFollowSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFollowSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateFollowCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateFollowMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateFollowMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class PostCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    required this.restaurant,
    this.group,
    this.profile,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.RestaurantCreateNestedOneWithoutPostsInput restaurant;

  final _i2.GroupCreateNestedOneWithoutPostsInput? group;

  final _i2.ProfileCreateNestedOneWithoutPostsInput? profile;

  final _i2.CommentCreateNestedManyWithoutPostInput? comments;

  final _i2.PostLikeCreateNestedManyWithoutPostInput? likes;

  final _i2.PostTagCreateNestedManyWithoutPostInput? postTags;

  final _i2.PostImageCreateNestedManyWithoutPostInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'profile': profile,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.restaurantId,
    this.groupId,
    this.profileId,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String restaurantId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? groupId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profileId;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutPostInput? comments;

  final _i2.PostLikeUncheckedCreateNestedManyWithoutPostInput? likes;

  final _i2.PostTagUncheckedCreateNestedManyWithoutPostInput? postTags;

  final _i2.PostImageUncheckedCreateNestedManyWithoutPostInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateManyInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.restaurantId,
    this.groupId,
    this.profileId,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String restaurantId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? groupId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profileId;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateInput({
    this.id,
    this.individual,
    this.meal,
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
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.RestaurantUpdateOneRequiredWithoutPostsNestedInput? restaurant;

  final _i2.GroupUpdateOneWithoutPostsNestedInput? group;

  final _i2.ProfileUpdateOneWithoutPostsNestedInput? profile;

  final _i2.CommentUpdateManyWithoutPostNestedInput? comments;

  final _i2.PostLikeUpdateManyWithoutPostNestedInput? likes;

  final _i2.PostTagUpdateManyWithoutPostNestedInput? postTags;

  final _i2.PostImageUpdateManyWithoutPostNestedInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'profile': profile,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateInput({
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
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      restaurantId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? groupId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profileId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutPostNestedInput? comments;

  final _i2.PostLikeUncheckedUpdateManyWithoutPostNestedInput? likes;

  final _i2.PostTagUncheckedUpdateManyWithoutPostNestedInput? postTags;

  final _i2.PostImageUncheckedUpdateManyWithoutPostNestedInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateManyInput({
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
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      restaurantId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? groupId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profileId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostCountAggregateOutputType {
  const PostCountAggregateOutputType({
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
    this.$all,
  });

  factory PostCountAggregateOutputType.fromJson(Map json) =>
      PostCountAggregateOutputType(
        id: json['id'],
        individual: json['individual'],
        meal: json['meal'],
        restaurantId: json['restaurantId'],
        groupId: json['groupId'],
        profileId: json['profileId'],
        review: json['review'],
        rating: json['rating'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? individual;

  final int? meal;

  final int? restaurantId;

  final int? groupId;

  final int? profileId;

  final int? review;

  final int? rating;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;
}

class PostAvgAggregateOutputType {
  const PostAvgAggregateOutputType({this.rating});

  factory PostAvgAggregateOutputType.fromJson(Map json) =>
      PostAvgAggregateOutputType(rating: json['rating']);

  final double? rating;
}

class PostSumAggregateOutputType {
  const PostSumAggregateOutputType({this.rating});

  factory PostSumAggregateOutputType.fromJson(Map json) =>
      PostSumAggregateOutputType(rating: json['rating']);

  final int? rating;
}

class PostMinAggregateOutputType {
  const PostMinAggregateOutputType({
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
  });

  factory PostMinAggregateOutputType.fromJson(Map json) =>
      PostMinAggregateOutputType(
        id: json['id'],
        individual: json['individual'],
        meal: json['meal'] != null
            ? _i3.MealType.values.firstWhere((e) => e.name == json['meal'])
            : null,
        restaurantId: json['restaurantId'],
        groupId: json['groupId'],
        profileId: json['profileId'],
        review: json['review'],
        rating: json['rating'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final bool? individual;

  final _i3.MealType? meal;

  final String? restaurantId;

  final String? groupId;

  final String? profileId;

  final String? review;

  final int? rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class PostMaxAggregateOutputType {
  const PostMaxAggregateOutputType({
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
  });

  factory PostMaxAggregateOutputType.fromJson(Map json) =>
      PostMaxAggregateOutputType(
        id: json['id'],
        individual: json['individual'],
        meal: json['meal'] != null
            ? _i3.MealType.values.firstWhere((e) => e.name == json['meal'])
            : null,
        restaurantId: json['restaurantId'],
        groupId: json['groupId'],
        profileId: json['profileId'],
        review: json['review'],
        rating: json['rating'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final bool? individual;

  final _i3.MealType? meal;

  final String? restaurantId;

  final String? groupId;

  final String? profileId;

  final String? review;

  final int? rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class PostGroupByOutputType {
  const PostGroupByOutputType({
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
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory PostGroupByOutputType.fromJson(Map json) => PostGroupByOutputType(
        id: json['id'],
        individual: json['individual'],
        meal: json['meal'] != null
            ? _i3.MealType.values.firstWhere((e) => e.name == json['meal'])
            : null,
        restaurantId: json['restaurantId'],
        groupId: json['groupId'],
        profileId: json['profileId'],
        review: json['review'],
        rating: json['rating'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $count: json['_count'] is Map
            ? _i2.PostCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.PostAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.PostSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PostMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PostMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final bool? individual;

  final _i3.MealType? meal;

  final String? restaurantId;

  final String? groupId;

  final String? profileId;

  final String? review;

  final int? rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostCountAggregateOutputType? $count;

  final _i2.PostAvgAggregateOutputType? $avg;

  final _i2.PostSumAggregateOutputType? $sum;

  final _i2.PostMinAggregateOutputType? $min;

  final _i2.PostMaxAggregateOutputType? $max;
}

class PostCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCountOrderByAggregateInput({
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
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? individual;

  final _i2.SortOrder? meal;

  final _i2.SortOrder? restaurantId;

  final _i2.SortOrder? groupId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? review;

  final _i2.SortOrder? rating;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostAvgOrderByAggregateInput({this.rating});

  final _i2.SortOrder? rating;

  @override
  Map<String, dynamic> toJson() => {'rating': rating};
}

class PostMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostMaxOrderByAggregateInput({
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
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? individual;

  final _i2.SortOrder? meal;

  final _i2.SortOrder? restaurantId;

  final _i2.SortOrder? groupId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? review;

  final _i2.SortOrder? rating;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostMinOrderByAggregateInput({
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
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? individual;

  final _i2.SortOrder? meal;

  final _i2.SortOrder? restaurantId;

  final _i2.SortOrder? groupId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? review;

  final _i2.SortOrder? rating;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostSumOrderByAggregateInput({this.rating});

  final _i2.SortOrder? rating;

  @override
  Map<String, dynamic> toJson() => {'rating': rating};
}

class PostOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostOrderByWithAggregationInput({
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
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? individual;

  final _i2.SortOrder? meal;

  final _i2.SortOrder? restaurantId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? groupId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? profileId;

  final _i2.SortOrder? review;

  final _i2.SortOrder? rating;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.PostCountOrderByAggregateInput? $count;

  final _i2.PostAvgOrderByAggregateInput? $avg;

  final _i2.PostMaxOrderByAggregateInput? $max;

  final _i2.PostMinOrderByAggregateInput? $min;

  final _i2.PostSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedEnumMealTypeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumMealTypeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i3.MealType, _i1.Reference<_i3.MealType>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.MealType>,
      _i1.Reference<Iterable<_i3.MealType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.MealType>,
      _i1.Reference<Iterable<_i3.MealType>>>? notIn;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.NestedEnumMealTypeWithAggregatesFilter>?
      not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumMealTypeFilter? $min;

  final _i2.NestedEnumMealTypeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class EnumMealTypeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumMealTypeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i3.MealType, _i1.Reference<_i3.MealType>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.MealType>,
      _i1.Reference<Iterable<_i3.MealType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.MealType>,
      _i1.Reference<Iterable<_i3.MealType>>>? notIn;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.NestedEnumMealTypeWithAggregatesFilter>?
      not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumMealTypeFilter? $min;

  final _i2.NestedEnumMealTypeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedFloatFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double, _i1.Reference<double>>? equals;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>? $in;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>?
      notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double, _i2.NestedFloatFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class PostScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
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
  });

  final _i1.PrismaUnion<_i2.PostScalarWhereWithAggregatesInput,
      Iterable<_i2.PostScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.PostScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.PostScalarWhereWithAggregatesInput,
      Iterable<_i2.PostScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.BoolWithAggregatesFilter, bool>? individual;

  final _i1.PrismaUnion<_i2.EnumMealTypeWithAggregatesFilter, _i3.MealType>?
      meal;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? restaurantId;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? groupId;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? profileId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? review;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? rating;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCountAggregateOutputTypeSelect({
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
    this.$all,
  });

  final bool? id;

  final bool? individual;

  final bool? meal;

  final bool? restaurantId;

  final bool? groupId;

  final bool? profileId;

  final bool? review;

  final bool? rating;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class PostGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostGroupByOutputTypeCountArgs({this.select});

  final _i2.PostCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostAvgAggregateOutputTypeSelect({this.rating});

  final bool? rating;

  @override
  Map<String, dynamic> toJson() => {'rating': rating};
}

class PostGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostGroupByOutputTypeAvgArgs({this.select});

  final _i2.PostAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostSumAggregateOutputTypeSelect({this.rating});

  final bool? rating;

  @override
  Map<String, dynamic> toJson() => {'rating': rating};
}

class PostGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostGroupByOutputTypeSumArgs({this.select});

  final _i2.PostSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostMinAggregateOutputTypeSelect({
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
  });

  final bool? id;

  final bool? individual;

  final bool? meal;

  final bool? restaurantId;

  final bool? groupId;

  final bool? profileId;

  final bool? review;

  final bool? rating;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostGroupByOutputTypeMinArgs({this.select});

  final _i2.PostMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostMaxAggregateOutputTypeSelect({
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
  });

  final bool? id;

  final bool? individual;

  final bool? meal;

  final bool? restaurantId;

  final bool? groupId;

  final bool? profileId;

  final bool? review;

  final bool? rating;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostGroupByOutputTypeMaxArgs({this.select});

  final _i2.PostMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostGroupByOutputTypeSelect({
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
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? individual;

  final bool? meal;

  final bool? restaurantId;

  final bool? groupId;

  final bool? profileId;

  final bool? review;

  final bool? rating;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.PostGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.PostGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.PostGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.PostGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.PostGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregatePost {
  const AggregatePost({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregatePost.fromJson(Map json) => AggregatePost(
        $count: json['_count'] is Map
            ? _i2.PostCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.PostAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.PostSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PostMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PostMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.PostCountAggregateOutputType? $count;

  final _i2.PostAvgAggregateOutputType? $avg;

  final _i2.PostSumAggregateOutputType? $sum;

  final _i2.PostMinAggregateOutputType? $min;

  final _i2.PostMaxAggregateOutputType? $max;
}

class AggregatePostCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostCountArgs({this.select});

  final _i2.PostCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostAvgArgs({this.select});

  final _i2.PostAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostSumArgs({this.select});

  final _i2.PostSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostMinArgs({this.select});

  final _i2.PostMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostMaxArgs({this.select});

  final _i2.PostMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregatePostCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregatePostAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregatePostSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregatePostMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregatePostMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class PostTagCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagCreateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.post,
    required this.profile,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostCreateNestedOneWithoutPostTagsInput post;

  final _i2.ProfileCreateNestedOneWithoutPostTagsInput profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
        'profile': profile,
      };
}

class PostTagUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUncheckedCreateInput({
    this.id,
    required this.postId,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String postId;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagCreateManyInput({
    this.id,
    required this.postId,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String postId;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUpdateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.post,
    this.profile,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PostUpdateOneRequiredWithoutPostTagsNestedInput? post;

  final _i2.ProfileUpdateOneRequiredWithoutPostTagsNestedInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
        'profile': profile,
      };
}

class PostTagUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUncheckedUpdateInput({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagUncheckedUpdateManyInput({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagCountAggregateOutputType {
  const PostTagCountAggregateOutputType({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory PostTagCountAggregateOutputType.fromJson(Map json) =>
      PostTagCountAggregateOutputType(
        id: json['id'],
        postId: json['postId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? postId;

  final int? profileId;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;
}

class PostTagMinAggregateOutputType {
  const PostTagMinAggregateOutputType({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  factory PostTagMinAggregateOutputType.fromJson(Map json) =>
      PostTagMinAggregateOutputType(
        id: json['id'],
        postId: json['postId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? postId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class PostTagMaxAggregateOutputType {
  const PostTagMaxAggregateOutputType({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  factory PostTagMaxAggregateOutputType.fromJson(Map json) =>
      PostTagMaxAggregateOutputType(
        id: json['id'],
        postId: json['postId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? postId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class PostTagGroupByOutputType {
  const PostTagGroupByOutputType({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory PostTagGroupByOutputType.fromJson(Map json) =>
      PostTagGroupByOutputType(
        id: json['id'],
        postId: json['postId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $count: json['_count'] is Map
            ? _i2.PostTagCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PostTagMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PostTagMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? postId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostTagCountAggregateOutputType? $count;

  final _i2.PostTagMinAggregateOutputType? $min;

  final _i2.PostTagMaxAggregateOutputType? $max;
}

class PostTagCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagCountOrderByAggregateInput({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagMaxOrderByAggregateInput({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagMinOrderByAggregateInput({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagOrderByWithAggregationInput({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.PostTagCountOrderByAggregateInput? $count;

  final _i2.PostTagMaxOrderByAggregateInput? $max;

  final _i2.PostTagMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class PostTagScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.PostTagScalarWhereWithAggregatesInput,
      Iterable<_i2.PostTagScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.PostTagScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.PostTagScalarWhereWithAggregatesInput,
      Iterable<_i2.PostTagScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagCountAggregateOutputTypeSelect({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? postId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class PostTagGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagGroupByOutputTypeCountArgs({this.select});

  final _i2.PostTagCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostTagMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagMinAggregateOutputTypeSelect({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? postId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagGroupByOutputTypeMinArgs({this.select});

  final _i2.PostTagMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostTagMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagMaxAggregateOutputTypeSelect({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? postId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostTagGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagGroupByOutputTypeMaxArgs({this.select});

  final _i2.PostTagMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostTagGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostTagGroupByOutputTypeSelect({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? postId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.PostTagGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.PostTagGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.PostTagGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregatePostTag {
  const AggregatePostTag({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregatePostTag.fromJson(Map json) => AggregatePostTag(
        $count: json['_count'] is Map
            ? _i2.PostTagCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PostTagMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PostTagMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.PostTagCountAggregateOutputType? $count;

  final _i2.PostTagMinAggregateOutputType? $min;

  final _i2.PostTagMaxAggregateOutputType? $max;
}

class AggregatePostTagCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostTagCountArgs({this.select});

  final _i2.PostTagCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostTagMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostTagMinArgs({this.select});

  final _i2.PostTagMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostTagMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostTagMaxArgs({this.select});

  final _i2.PostTagMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostTagSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostTagSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregatePostTagCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregatePostTagMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregatePostTagMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class PostCreateWithoutPostImagesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateWithoutPostImagesInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    required this.restaurant,
    this.group,
    this.profile,
    this.comments,
    this.likes,
    this.postTags,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.RestaurantCreateNestedOneWithoutPostsInput restaurant;

  final _i2.GroupCreateNestedOneWithoutPostsInput? group;

  final _i2.ProfileCreateNestedOneWithoutPostsInput? profile;

  final _i2.CommentCreateNestedManyWithoutPostInput? comments;

  final _i2.PostLikeCreateNestedManyWithoutPostInput? likes;

  final _i2.PostTagCreateNestedManyWithoutPostInput? postTags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'profile': profile,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
      };
}

class PostUncheckedCreateWithoutPostImagesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateWithoutPostImagesInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.restaurantId,
    this.groupId,
    this.profileId,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    this.comments,
    this.likes,
    this.postTags,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String restaurantId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? groupId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profileId;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutPostInput? comments;

  final _i2.PostLikeUncheckedCreateNestedManyWithoutPostInput? likes;

  final _i2.PostTagUncheckedCreateNestedManyWithoutPostInput? postTags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
      };
}

class PostCreateOrConnectWithoutPostImagesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateOrConnectWithoutPostImagesInput({
    required this.where,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostCreateWithoutPostImagesInput,
      _i2.PostUncheckedCreateWithoutPostImagesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PostCreateNestedOneWithoutPostImagesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateNestedOneWithoutPostImagesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.PostCreateWithoutPostImagesInput,
      _i2.PostUncheckedCreateWithoutPostImagesInput>? create;

  final _i2.PostCreateOrConnectWithoutPostImagesInput? connectOrCreate;

  final _i2.PostWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PostImageCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageCreateInput({
    this.id,
    required this.imageUrl,
    this.createdAt,
    this.updatedAt,
    required this.post,
  });

  final String? id;

  final String imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostCreateNestedOneWithoutPostImagesInput post;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
      };
}

class PostImageUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageUncheckedCreateInput({
    this.id,
    required this.postId,
    required this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String postId;

  final String imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageCreateManyInput({
    this.id,
    required this.postId,
    required this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String postId;

  final String imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostUpdateWithoutPostImagesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithoutPostImagesInput({
    this.id,
    this.individual,
    this.meal,
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
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.RestaurantUpdateOneRequiredWithoutPostsNestedInput? restaurant;

  final _i2.GroupUpdateOneWithoutPostsNestedInput? group;

  final _i2.ProfileUpdateOneWithoutPostsNestedInput? profile;

  final _i2.CommentUpdateManyWithoutPostNestedInput? comments;

  final _i2.PostLikeUpdateManyWithoutPostNestedInput? likes;

  final _i2.PostTagUpdateManyWithoutPostNestedInput? postTags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'restaurant': restaurant,
        'group': group,
        'profile': profile,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
      };
}

class PostUncheckedUpdateWithoutPostImagesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateWithoutPostImagesInput({
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
    this.comments,
    this.likes,
    this.postTags,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      restaurantId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? groupId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profileId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutPostNestedInput? comments;

  final _i2.PostLikeUncheckedUpdateManyWithoutPostNestedInput? likes;

  final _i2.PostTagUncheckedUpdateManyWithoutPostNestedInput? postTags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'restaurantId': restaurantId,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
      };
}

class PostUpsertWithoutPostImagesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpsertWithoutPostImagesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.PostUpdateWithoutPostImagesInput,
      _i2.PostUncheckedUpdateWithoutPostImagesInput> update;

  final _i1.PrismaUnion<_i2.PostCreateWithoutPostImagesInput,
      _i2.PostUncheckedCreateWithoutPostImagesInput> create;

  final _i2.PostWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class PostUpdateToOneWithWhereWithoutPostImagesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateToOneWithWhereWithoutPostImagesInput({
    this.where,
    required this.data,
  });

  final _i2.PostWhereInput? where;

  final _i1.PrismaUnion<_i2.PostUpdateWithoutPostImagesInput,
      _i2.PostUncheckedUpdateWithoutPostImagesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostUpdateOneRequiredWithoutPostImagesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateOneRequiredWithoutPostImagesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.PostCreateWithoutPostImagesInput,
      _i2.PostUncheckedCreateWithoutPostImagesInput>? create;

  final _i2.PostCreateOrConnectWithoutPostImagesInput? connectOrCreate;

  final _i2.PostUpsertWithoutPostImagesInput? upsert;

  final _i2.PostWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.PostUpdateToOneWithWhereWithoutPostImagesInput,
      _i1.PrismaUnion<_i2.PostUpdateWithoutPostImagesInput,
          _i2.PostUncheckedUpdateWithoutPostImagesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class PostImageUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageUpdateInput({
    this.id,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.post,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PostUpdateOneRequiredWithoutPostImagesNestedInput? post;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
      };
}

class PostImageUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageUncheckedUpdateInput({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageUncheckedUpdateManyInput({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageCountAggregateOutputType {
  const PostImageCountAggregateOutputType({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory PostImageCountAggregateOutputType.fromJson(Map json) =>
      PostImageCountAggregateOutputType(
        id: json['id'],
        postId: json['postId'],
        imageUrl: json['imageUrl'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? postId;

  final int? imageUrl;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;
}

class PostImageMinAggregateOutputType {
  const PostImageMinAggregateOutputType({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  factory PostImageMinAggregateOutputType.fromJson(Map json) =>
      PostImageMinAggregateOutputType(
        id: json['id'],
        postId: json['postId'],
        imageUrl: json['imageUrl'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? postId;

  final String? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class PostImageMaxAggregateOutputType {
  const PostImageMaxAggregateOutputType({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  factory PostImageMaxAggregateOutputType.fromJson(Map json) =>
      PostImageMaxAggregateOutputType(
        id: json['id'],
        postId: json['postId'],
        imageUrl: json['imageUrl'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? postId;

  final String? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class PostImageGroupByOutputType {
  const PostImageGroupByOutputType({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory PostImageGroupByOutputType.fromJson(Map json) =>
      PostImageGroupByOutputType(
        id: json['id'],
        postId: json['postId'],
        imageUrl: json['imageUrl'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $count: json['_count'] is Map
            ? _i2.PostImageCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PostImageMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PostImageMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? postId;

  final String? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostImageCountAggregateOutputType? $count;

  final _i2.PostImageMinAggregateOutputType? $min;

  final _i2.PostImageMaxAggregateOutputType? $max;
}

class PostImageCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageCountOrderByAggregateInput({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? imageUrl;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageMaxOrderByAggregateInput({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? imageUrl;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageMinOrderByAggregateInput({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? imageUrl;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageOrderByWithAggregationInput({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? imageUrl;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.PostImageCountOrderByAggregateInput? $count;

  final _i2.PostImageMaxOrderByAggregateInput? $max;

  final _i2.PostImageMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class PostImageScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.PostImageScalarWhereWithAggregatesInput,
      Iterable<_i2.PostImageScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.PostImageScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.PostImageScalarWhereWithAggregatesInput,
      Iterable<_i2.PostImageScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? imageUrl;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageCountAggregateOutputTypeSelect({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? postId;

  final bool? imageUrl;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class PostImageGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageGroupByOutputTypeCountArgs({this.select});

  final _i2.PostImageCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostImageMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageMinAggregateOutputTypeSelect({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? postId;

  final bool? imageUrl;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageGroupByOutputTypeMinArgs({this.select});

  final _i2.PostImageMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostImageMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageMaxAggregateOutputTypeSelect({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? postId;

  final bool? imageUrl;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostImageGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageGroupByOutputTypeMaxArgs({this.select});

  final _i2.PostImageMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostImageGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostImageGroupByOutputTypeSelect({
    this.id,
    this.postId,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? postId;

  final bool? imageUrl;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.PostImageGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.PostImageGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.PostImageGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregatePostImage {
  const AggregatePostImage({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregatePostImage.fromJson(Map json) => AggregatePostImage(
        $count: json['_count'] is Map
            ? _i2.PostImageCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PostImageMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PostImageMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.PostImageCountAggregateOutputType? $count;

  final _i2.PostImageMinAggregateOutputType? $min;

  final _i2.PostImageMaxAggregateOutputType? $max;
}

class AggregatePostImageCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostImageCountArgs({this.select});

  final _i2.PostImageCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostImageMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostImageMinArgs({this.select});

  final _i2.PostImageMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostImageMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostImageMaxArgs({this.select});

  final _i2.PostImageMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostImageSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostImageSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregatePostImageCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregatePostImageMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregatePostImageMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

enum GroupScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Group'),
  name$<String>('name', 'Group'),
  description<String>('description', 'Group'),
  createdAt<DateTime>('createdAt', 'Group'),
  updatedAt<DateTime>('updatedAt', 'Group');

  const GroupScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class GroupCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupCreateInput({
    this.id,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
    this.members,
    this.posts,
  });

  final String? id;

  final String name;

  final String description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.MemberCreateNestedManyWithoutGroupInput? members;

  final _i2.PostCreateNestedManyWithoutGroupInput? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'members': members,
        'posts': posts,
      };
}

class GroupUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUncheckedCreateInput({
    this.id,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
    this.members,
    this.posts,
  });

  final String? id;

  final String name;

  final String description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.MemberUncheckedCreateNestedManyWithoutGroupInput? members;

  final _i2.PostUncheckedCreateNestedManyWithoutGroupInput? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'members': members,
        'posts': posts,
      };
}

class GroupCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupCreateManyInput({
    this.id,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String name;

  final String description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class GroupUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUpdateInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.members,
    this.posts,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.MemberUpdateManyWithoutGroupNestedInput? members;

  final _i2.PostUpdateManyWithoutGroupNestedInput? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'members': members,
        'posts': posts,
      };
}

class GroupUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUncheckedUpdateInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.members,
    this.posts,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.MemberUncheckedUpdateManyWithoutGroupNestedInput? members;

  final _i2.PostUncheckedUpdateManyWithoutGroupNestedInput? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'members': members,
        'posts': posts,
      };
}

class GroupUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUpdateManyMutationInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class GroupUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class GroupCountAggregateOutputType {
  const GroupCountAggregateOutputType({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory GroupCountAggregateOutputType.fromJson(Map json) =>
      GroupCountAggregateOutputType(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? name;

  final int? description;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;
}

class GroupMinAggregateOutputType {
  const GroupMinAggregateOutputType({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory GroupMinAggregateOutputType.fromJson(Map json) =>
      GroupMinAggregateOutputType(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? name;

  final String? description;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class GroupMaxAggregateOutputType {
  const GroupMaxAggregateOutputType({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory GroupMaxAggregateOutputType.fromJson(Map json) =>
      GroupMaxAggregateOutputType(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? name;

  final String? description;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class GroupGroupByOutputType {
  const GroupGroupByOutputType({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory GroupGroupByOutputType.fromJson(Map json) => GroupGroupByOutputType(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $count: json['_count'] is Map
            ? _i2.GroupCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.GroupMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.GroupMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? name;

  final String? description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.GroupCountAggregateOutputType? $count;

  final _i2.GroupMinAggregateOutputType? $min;

  final _i2.GroupMaxAggregateOutputType? $max;
}

class GroupCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupCountOrderByAggregateInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class GroupMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class GroupMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupMinOrderByAggregateInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class GroupOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupOrderByWithAggregationInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.GroupCountOrderByAggregateInput? $count;

  final _i2.GroupMaxOrderByAggregateInput? $max;

  final _i2.GroupMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class GroupScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.GroupScalarWhereWithAggregatesInput,
      Iterable<_i2.GroupScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.GroupScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.GroupScalarWhereWithAggregatesInput,
      Iterable<_i2.GroupScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? description;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class GroupCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupCountAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class GroupGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupGroupByOutputTypeCountArgs({this.select});

  final _i2.GroupCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class GroupMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupMinAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class GroupGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupGroupByOutputTypeMinArgs({this.select});

  final _i2.GroupMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class GroupMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupMaxAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class GroupGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupGroupByOutputTypeMaxArgs({this.select});

  final _i2.GroupMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class GroupGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const GroupGroupByOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.GroupGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.GroupGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.GroupGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateGroup {
  const AggregateGroup({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateGroup.fromJson(Map json) => AggregateGroup(
        $count: json['_count'] is Map
            ? _i2.GroupCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.GroupMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.GroupMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.GroupCountAggregateOutputType? $count;

  final _i2.GroupMinAggregateOutputType? $min;

  final _i2.GroupMaxAggregateOutputType? $max;
}

class AggregateGroupCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateGroupCountArgs({this.select});

  final _i2.GroupCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateGroupMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateGroupMinArgs({this.select});

  final _i2.GroupMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateGroupMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateGroupMaxArgs({this.select});

  final _i2.GroupMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateGroupSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateGroupSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateGroupCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateGroupMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateGroupMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class MemberCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberCreateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.profile,
    required this.group,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ProfileCreateNestedOneWithoutMembersInput profile;

  final _i2.GroupCreateNestedOneWithoutMembersInput group;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'profile': profile,
        'group': group,
      };
}

class MemberUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUncheckedCreateInput({
    this.id,
    required this.profileId,
    required this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String profileId;

  final String groupId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberCreateManyInput({
    this.id,
    required this.profileId,
    required this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String profileId;

  final String groupId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUpdateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.profile,
    this.group,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ProfileUpdateOneRequiredWithoutMembersNestedInput? profile;

  final _i2.GroupUpdateOneRequiredWithoutMembersNestedInput? group;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'profile': profile,
        'group': group,
      };
}

class MemberUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUncheckedUpdateInput({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? groupId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberUncheckedUpdateManyInput({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? groupId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberCountAggregateOutputType {
  const MemberCountAggregateOutputType({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory MemberCountAggregateOutputType.fromJson(Map json) =>
      MemberCountAggregateOutputType(
        id: json['id'],
        profileId: json['profileId'],
        groupId: json['groupId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? profileId;

  final int? groupId;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;
}

class MemberMinAggregateOutputType {
  const MemberMinAggregateOutputType({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  factory MemberMinAggregateOutputType.fromJson(Map json) =>
      MemberMinAggregateOutputType(
        id: json['id'],
        profileId: json['profileId'],
        groupId: json['groupId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? profileId;

  final String? groupId;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class MemberMaxAggregateOutputType {
  const MemberMaxAggregateOutputType({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  factory MemberMaxAggregateOutputType.fromJson(Map json) =>
      MemberMaxAggregateOutputType(
        id: json['id'],
        profileId: json['profileId'],
        groupId: json['groupId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? profileId;

  final String? groupId;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class MemberGroupByOutputType {
  const MemberGroupByOutputType({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory MemberGroupByOutputType.fromJson(Map json) => MemberGroupByOutputType(
        id: json['id'],
        profileId: json['profileId'],
        groupId: json['groupId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $count: json['_count'] is Map
            ? _i2.MemberCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.MemberMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.MemberMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? profileId;

  final String? groupId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.MemberCountAggregateOutputType? $count;

  final _i2.MemberMinAggregateOutputType? $min;

  final _i2.MemberMaxAggregateOutputType? $max;
}

class MemberCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberCountOrderByAggregateInput({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? groupId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberMaxOrderByAggregateInput({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? groupId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberMinOrderByAggregateInput({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? groupId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberOrderByWithAggregationInput({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? groupId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.MemberCountOrderByAggregateInput? $count;

  final _i2.MemberMaxOrderByAggregateInput? $max;

  final _i2.MemberMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class MemberScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.MemberScalarWhereWithAggregatesInput,
      Iterable<_i2.MemberScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.MemberScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.MemberScalarWhereWithAggregatesInput,
      Iterable<_i2.MemberScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? groupId;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberCountAggregateOutputTypeSelect({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? profileId;

  final bool? groupId;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class MemberGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberGroupByOutputTypeCountArgs({this.select});

  final _i2.MemberCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MemberMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberMinAggregateOutputTypeSelect({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? profileId;

  final bool? groupId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberGroupByOutputTypeMinArgs({this.select});

  final _i2.MemberMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MemberMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberMaxAggregateOutputTypeSelect({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? profileId;

  final bool? groupId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class MemberGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberGroupByOutputTypeMaxArgs({this.select});

  final _i2.MemberMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MemberGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MemberGroupByOutputTypeSelect({
    this.id,
    this.profileId,
    this.groupId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? profileId;

  final bool? groupId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.MemberGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.MemberGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.MemberGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'profileId': profileId,
        'groupId': groupId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateMember {
  const AggregateMember({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateMember.fromJson(Map json) => AggregateMember(
        $count: json['_count'] is Map
            ? _i2.MemberCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.MemberMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.MemberMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.MemberCountAggregateOutputType? $count;

  final _i2.MemberMinAggregateOutputType? $min;

  final _i2.MemberMaxAggregateOutputType? $max;
}

class AggregateMemberCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMemberCountArgs({this.select});

  final _i2.MemberCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMemberMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMemberMinArgs({this.select});

  final _i2.MemberMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMemberMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMemberMaxArgs({this.select});

  final _i2.MemberMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMemberSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMemberSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateMemberCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateMemberMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateMemberMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class CommentCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateInput({
    this.id,
    required this.message,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
    this.parent,
    required this.post,
    required this.profile,
  });

  final String? id;

  final String message;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentCreateNestedManyWithoutParentInput? replies;

  final _i2.CommentLikeCreateNestedManyWithoutCommentInput? likes;

  final _i2.CommentCreateNestedOneWithoutRepliesInput? parent;

  final _i2.PostCreateNestedOneWithoutCommentsInput post;

  final _i2.ProfileCreateNestedOneWithoutCommentsInput profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
        'parent': parent,
        'post': post,
        'profile': profile,
      };
}

class CommentUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedCreateInput({
    this.id,
    required this.message,
    this.parentId,
    required this.postId,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
  });

  final String? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? parentId;

  final String postId;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutParentInput? replies;

  final _i2.CommentLikeUncheckedCreateNestedManyWithoutCommentInput? likes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
      };
}

class CommentCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCreateManyInput({
    this.id,
    required this.message,
    this.parentId,
    required this.postId,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String message;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? parentId;

  final String postId;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUpdateInput({
    this.id,
    this.message,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
    this.parent,
    this.post,
    this.profile,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUpdateManyWithoutParentNestedInput? replies;

  final _i2.CommentLikeUpdateManyWithoutCommentNestedInput? likes;

  final _i2.CommentUpdateOneWithoutRepliesNestedInput? parent;

  final _i2.PostUpdateOneRequiredWithoutCommentsNestedInput? post;

  final _i2.ProfileUpdateOneRequiredWithoutCommentsNestedInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
        'parent': parent,
        'post': post,
        'profile': profile,
      };
}

class CommentUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateInput({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.replies,
    this.likes,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutParentNestedInput? replies;

  final _i2.CommentLikeUncheckedUpdateManyWithoutCommentNestedInput? likes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'replies': replies,
        'likes': likes,
      };
}

class CommentUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentUncheckedUpdateManyInput({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentCountAggregateOutputType {
  const CommentCountAggregateOutputType({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory CommentCountAggregateOutputType.fromJson(Map json) =>
      CommentCountAggregateOutputType(
        id: json['id'],
        message: json['message'],
        parentId: json['parentId'],
        postId: json['postId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? message;

  final int? parentId;

  final int? postId;

  final int? profileId;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;
}

class CommentMinAggregateOutputType {
  const CommentMinAggregateOutputType({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  factory CommentMinAggregateOutputType.fromJson(Map json) =>
      CommentMinAggregateOutputType(
        id: json['id'],
        message: json['message'],
        parentId: json['parentId'],
        postId: json['postId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? message;

  final String? parentId;

  final String? postId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class CommentMaxAggregateOutputType {
  const CommentMaxAggregateOutputType({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  factory CommentMaxAggregateOutputType.fromJson(Map json) =>
      CommentMaxAggregateOutputType(
        id: json['id'],
        message: json['message'],
        parentId: json['parentId'],
        postId: json['postId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? message;

  final String? parentId;

  final String? postId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class CommentGroupByOutputType {
  const CommentGroupByOutputType({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory CommentGroupByOutputType.fromJson(Map json) =>
      CommentGroupByOutputType(
        id: json['id'],
        message: json['message'],
        parentId: json['parentId'],
        postId: json['postId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $count: json['_count'] is Map
            ? _i2.CommentCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.CommentMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.CommentMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? message;

  final String? parentId;

  final String? postId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentCountAggregateOutputType? $count;

  final _i2.CommentMinAggregateOutputType? $min;

  final _i2.CommentMaxAggregateOutputType? $max;
}

class CommentCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCountOrderByAggregateInput({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i2.SortOrder? parentId;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentMaxOrderByAggregateInput({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i2.SortOrder? parentId;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentMinOrderByAggregateInput({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i2.SortOrder? parentId;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentOrderByWithAggregationInput({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? message;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? parentId;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.CommentCountOrderByAggregateInput? $count;

  final _i2.CommentMaxOrderByAggregateInput? $max;

  final _i2.CommentMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class CommentScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.CommentScalarWhereWithAggregatesInput,
      Iterable<_i2.CommentScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.CommentScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.CommentScalarWhereWithAggregatesInput,
      Iterable<_i2.CommentScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? message;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? parentId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentCountAggregateOutputTypeSelect({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? message;

  final bool? parentId;

  final bool? postId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class CommentGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentGroupByOutputTypeCountArgs({this.select});

  final _i2.CommentCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CommentMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentMinAggregateOutputTypeSelect({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? message;

  final bool? parentId;

  final bool? postId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentGroupByOutputTypeMinArgs({this.select});

  final _i2.CommentMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CommentMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentMaxAggregateOutputTypeSelect({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? message;

  final bool? parentId;

  final bool? postId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentGroupByOutputTypeMaxArgs({this.select});

  final _i2.CommentMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CommentGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentGroupByOutputTypeSelect({
    this.id,
    this.message,
    this.parentId,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? message;

  final bool? parentId;

  final bool? postId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.CommentGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.CommentGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.CommentGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'parentId': parentId,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateComment {
  const AggregateComment({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateComment.fromJson(Map json) => AggregateComment(
        $count: json['_count'] is Map
            ? _i2.CommentCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.CommentMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.CommentMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.CommentCountAggregateOutputType? $count;

  final _i2.CommentMinAggregateOutputType? $min;

  final _i2.CommentMaxAggregateOutputType? $max;
}

class AggregateCommentCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCommentCountArgs({this.select});

  final _i2.CommentCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCommentMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCommentMinArgs({this.select});

  final _i2.CommentMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCommentMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCommentMaxArgs({this.select});

  final _i2.CommentMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCommentSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCommentSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateCommentCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateCommentMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateCommentMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class PostLikeCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeCreateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.post,
    required this.profile,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostCreateNestedOneWithoutLikesInput post;

  final _i2.ProfileCreateNestedOneWithoutPostLikesInput profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
        'profile': profile,
      };
}

class PostLikeUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUncheckedCreateInput({
    this.id,
    required this.postId,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String postId;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeCreateManyInput({
    this.id,
    required this.postId,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String postId;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUpdateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.post,
    this.profile,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PostUpdateOneRequiredWithoutLikesNestedInput? post;

  final _i2.ProfileUpdateOneRequiredWithoutPostLikesNestedInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'post': post,
        'profile': profile,
      };
}

class PostLikeUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUncheckedUpdateInput({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeUncheckedUpdateManyInput({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeCountAggregateOutputType {
  const PostLikeCountAggregateOutputType({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory PostLikeCountAggregateOutputType.fromJson(Map json) =>
      PostLikeCountAggregateOutputType(
        id: json['id'],
        postId: json['postId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? postId;

  final int? profileId;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;
}

class PostLikeMinAggregateOutputType {
  const PostLikeMinAggregateOutputType({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  factory PostLikeMinAggregateOutputType.fromJson(Map json) =>
      PostLikeMinAggregateOutputType(
        id: json['id'],
        postId: json['postId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? postId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class PostLikeMaxAggregateOutputType {
  const PostLikeMaxAggregateOutputType({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  factory PostLikeMaxAggregateOutputType.fromJson(Map json) =>
      PostLikeMaxAggregateOutputType(
        id: json['id'],
        postId: json['postId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? postId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class PostLikeGroupByOutputType {
  const PostLikeGroupByOutputType({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory PostLikeGroupByOutputType.fromJson(Map json) =>
      PostLikeGroupByOutputType(
        id: json['id'],
        postId: json['postId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $count: json['_count'] is Map
            ? _i2.PostLikeCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PostLikeMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PostLikeMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? postId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostLikeCountAggregateOutputType? $count;

  final _i2.PostLikeMinAggregateOutputType? $min;

  final _i2.PostLikeMaxAggregateOutputType? $max;
}

class PostLikeCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeCountOrderByAggregateInput({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeMaxOrderByAggregateInput({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeMinOrderByAggregateInput({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeOrderByWithAggregationInput({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? postId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.PostLikeCountOrderByAggregateInput? $count;

  final _i2.PostLikeMaxOrderByAggregateInput? $max;

  final _i2.PostLikeMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class PostLikeScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.PostLikeScalarWhereWithAggregatesInput,
      Iterable<_i2.PostLikeScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.PostLikeScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.PostLikeScalarWhereWithAggregatesInput,
      Iterable<_i2.PostLikeScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeCountAggregateOutputTypeSelect({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? postId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class PostLikeGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeGroupByOutputTypeCountArgs({this.select});

  final _i2.PostLikeCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostLikeMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeMinAggregateOutputTypeSelect({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? postId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeGroupByOutputTypeMinArgs({this.select});

  final _i2.PostLikeMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostLikeMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeMaxAggregateOutputTypeSelect({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? postId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostLikeGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeGroupByOutputTypeMaxArgs({this.select});

  final _i2.PostLikeMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostLikeGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostLikeGroupByOutputTypeSelect({
    this.id,
    this.postId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? postId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.PostLikeGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.PostLikeGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.PostLikeGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregatePostLike {
  const AggregatePostLike({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregatePostLike.fromJson(Map json) => AggregatePostLike(
        $count: json['_count'] is Map
            ? _i2.PostLikeCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PostLikeMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PostLikeMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.PostLikeCountAggregateOutputType? $count;

  final _i2.PostLikeMinAggregateOutputType? $min;

  final _i2.PostLikeMaxAggregateOutputType? $max;
}

class AggregatePostLikeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostLikeCountArgs({this.select});

  final _i2.PostLikeCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostLikeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostLikeMinArgs({this.select});

  final _i2.PostLikeMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostLikeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostLikeMaxArgs({this.select});

  final _i2.PostLikeMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostLikeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostLikeSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregatePostLikeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregatePostLikeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregatePostLikeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class CommentLikeCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeCreateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.comment,
    required this.profile,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentCreateNestedOneWithoutLikesInput comment;

  final _i2.ProfileCreateNestedOneWithoutCommentLikesInput profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comment': comment,
        'profile': profile,
      };
}

class CommentLikeUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUncheckedCreateInput({
    this.id,
    required this.commentId,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String commentId;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeCreateManyInput({
    this.id,
    required this.commentId,
    required this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String commentId;

  final String profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUpdateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.comment,
    this.profile,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUpdateOneRequiredWithoutLikesNestedInput? comment;

  final _i2.ProfileUpdateOneRequiredWithoutCommentLikesNestedInput? profile;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comment': comment,
        'profile': profile,
      };
}

class CommentLikeUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUncheckedUpdateInput({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      commentId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeUncheckedUpdateManyInput({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      commentId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      profileId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeCountAggregateOutputType {
  const CommentLikeCountAggregateOutputType({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory CommentLikeCountAggregateOutputType.fromJson(Map json) =>
      CommentLikeCountAggregateOutputType(
        id: json['id'],
        commentId: json['commentId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? commentId;

  final int? profileId;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;
}

class CommentLikeMinAggregateOutputType {
  const CommentLikeMinAggregateOutputType({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  factory CommentLikeMinAggregateOutputType.fromJson(Map json) =>
      CommentLikeMinAggregateOutputType(
        id: json['id'],
        commentId: json['commentId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? commentId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class CommentLikeMaxAggregateOutputType {
  const CommentLikeMaxAggregateOutputType({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  factory CommentLikeMaxAggregateOutputType.fromJson(Map json) =>
      CommentLikeMaxAggregateOutputType(
        id: json['id'],
        commentId: json['commentId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  final String? id;

  final String? commentId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;
}

class CommentLikeGroupByOutputType {
  const CommentLikeGroupByOutputType({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory CommentLikeGroupByOutputType.fromJson(Map json) =>
      CommentLikeGroupByOutputType(
        id: json['id'],
        commentId: json['commentId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $count: json['_count'] is Map
            ? _i2.CommentLikeCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.CommentLikeMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.CommentLikeMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? commentId;

  final String? profileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentLikeCountAggregateOutputType? $count;

  final _i2.CommentLikeMinAggregateOutputType? $min;

  final _i2.CommentLikeMaxAggregateOutputType? $max;
}

class CommentLikeCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeCountOrderByAggregateInput({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? commentId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeMaxOrderByAggregateInput({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? commentId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeMinOrderByAggregateInput({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? commentId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeOrderByWithAggregationInput({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? commentId;

  final _i2.SortOrder? profileId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.CommentLikeCountOrderByAggregateInput? $count;

  final _i2.CommentLikeMaxOrderByAggregateInput? $max;

  final _i2.CommentLikeMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class CommentLikeScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.CommentLikeScalarWhereWithAggregatesInput,
      Iterable<_i2.CommentLikeScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.CommentLikeScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.CommentLikeScalarWhereWithAggregatesInput,
      Iterable<_i2.CommentLikeScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? commentId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? profileId;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeCountAggregateOutputTypeSelect({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? commentId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class CommentLikeGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeGroupByOutputTypeCountArgs({this.select});

  final _i2.CommentLikeCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CommentLikeMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeMinAggregateOutputTypeSelect({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? commentId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeGroupByOutputTypeMinArgs({this.select});

  final _i2.CommentLikeMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CommentLikeMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeMaxAggregateOutputTypeSelect({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? commentId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CommentLikeGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeGroupByOutputTypeMaxArgs({this.select});

  final _i2.CommentLikeMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CommentLikeGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CommentLikeGroupByOutputTypeSelect({
    this.id,
    this.commentId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? commentId;

  final bool? profileId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.CommentLikeGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.CommentLikeGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.CommentLikeGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'commentId': commentId,
        'profileId': profileId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateCommentLike {
  const AggregateCommentLike({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateCommentLike.fromJson(Map json) => AggregateCommentLike(
        $count: json['_count'] is Map
            ? _i2.CommentLikeCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.CommentLikeMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.CommentLikeMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.CommentLikeCountAggregateOutputType? $count;

  final _i2.CommentLikeMinAggregateOutputType? $min;

  final _i2.CommentLikeMaxAggregateOutputType? $max;
}

class AggregateCommentLikeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCommentLikeCountArgs({this.select});

  final _i2.CommentLikeCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCommentLikeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCommentLikeMinArgs({this.select});

  final _i2.CommentLikeMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCommentLikeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCommentLikeMaxArgs({this.select});

  final _i2.CommentLikeMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCommentLikeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCommentLikeSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateCommentLikeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateCommentLikeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateCommentLikeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

enum RestaurantScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Restaurant'),
  name$<String>('name', 'Restaurant'),
  yelpId<String>('yelpId', 'Restaurant'),
  latitude<String>('latitude', 'Restaurant'),
  longitude<String>('longitude', 'Restaurant');

  const RestaurantScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class PostCreateWithoutRestaurantInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateWithoutRestaurantInput({
    this.id,
    required this.individual,
    required this.meal,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    this.group,
    this.profile,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.GroupCreateNestedOneWithoutPostsInput? group;

  final _i2.ProfileCreateNestedOneWithoutPostsInput? profile;

  final _i2.CommentCreateNestedManyWithoutPostInput? comments;

  final _i2.PostLikeCreateNestedManyWithoutPostInput? likes;

  final _i2.PostTagCreateNestedManyWithoutPostInput? postTags;

  final _i2.PostImageCreateNestedManyWithoutPostInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'group': group,
        'profile': profile,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUncheckedCreateWithoutRestaurantInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateWithoutRestaurantInput({
    this.id,
    required this.individual,
    required this.meal,
    this.groupId,
    this.profileId,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? groupId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profileId;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CommentUncheckedCreateNestedManyWithoutPostInput? comments;

  final _i2.PostLikeUncheckedCreateNestedManyWithoutPostInput? likes;

  final _i2.PostTagUncheckedCreateNestedManyWithoutPostInput? postTags;

  final _i2.PostImageUncheckedCreateNestedManyWithoutPostInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostCreateOrConnectWithoutRestaurantInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateOrConnectWithoutRestaurantInput({
    required this.where,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostCreateWithoutRestaurantInput,
      _i2.PostUncheckedCreateWithoutRestaurantInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PostCreateManyRestaurantInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateManyRestaurantInput({
    this.id,
    required this.individual,
    required this.meal,
    this.groupId,
    this.profileId,
    required this.review,
    required this.rating,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final bool individual;

  final _i3.MealType meal;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? groupId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profileId;

  final String review;

  final int rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostCreateManyRestaurantInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateManyRestaurantInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PostCreateManyRestaurantInput,
      Iterable<_i2.PostCreateManyRestaurantInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PostCreateNestedManyWithoutRestaurantInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCreateNestedManyWithoutRestaurantInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PostCreateWithoutRestaurantInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostCreateWithoutRestaurantInput>,
              _i1.PrismaUnion<_i2.PostUncheckedCreateWithoutRestaurantInput,
                  Iterable<_i2.PostUncheckedCreateWithoutRestaurantInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostCreateOrConnectWithoutRestaurantInput,
      Iterable<_i2.PostCreateOrConnectWithoutRestaurantInput>>? connectOrCreate;

  final _i2.PostCreateManyRestaurantInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class RestaurantCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantCreateInput({
    this.id,
    required this.name,
    required this.yelpId,
    required this.latitude,
    required this.longitude,
    this.posts,
  });

  final String? id;

  final String name;

  final String yelpId;

  final String latitude;

  final String longitude;

  final _i2.PostCreateNestedManyWithoutRestaurantInput? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
        'posts': posts,
      };
}

class PostUncheckedCreateNestedManyWithoutRestaurantInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedCreateNestedManyWithoutRestaurantInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PostCreateWithoutRestaurantInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostCreateWithoutRestaurantInput>,
              _i1.PrismaUnion<_i2.PostUncheckedCreateWithoutRestaurantInput,
                  Iterable<_i2.PostUncheckedCreateWithoutRestaurantInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostCreateOrConnectWithoutRestaurantInput,
      Iterable<_i2.PostCreateOrConnectWithoutRestaurantInput>>? connectOrCreate;

  final _i2.PostCreateManyRestaurantInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class RestaurantUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantUncheckedCreateInput({
    this.id,
    required this.name,
    required this.yelpId,
    required this.latitude,
    required this.longitude,
    this.posts,
  });

  final String? id;

  final String name;

  final String yelpId;

  final String latitude;

  final String longitude;

  final _i2.PostUncheckedCreateNestedManyWithoutRestaurantInput? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
        'posts': posts,
      };
}

class RestaurantCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantCreateManyInput({
    this.id,
    required this.name,
    required this.yelpId,
    required this.latitude,
    required this.longitude,
  });

  final String? id;

  final String name;

  final String yelpId;

  final String latitude;

  final String longitude;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
      };
}

class PostUpdateWithoutRestaurantInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithoutRestaurantInput({
    this.id,
    this.individual,
    this.meal,
    this.review,
    this.rating,
    this.createdAt,
    this.updatedAt,
    this.group,
    this.profile,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.GroupUpdateOneWithoutPostsNestedInput? group;

  final _i2.ProfileUpdateOneWithoutPostsNestedInput? profile;

  final _i2.CommentUpdateManyWithoutPostNestedInput? comments;

  final _i2.PostLikeUpdateManyWithoutPostNestedInput? likes;

  final _i2.PostTagUpdateManyWithoutPostNestedInput? postTags;

  final _i2.PostImageUpdateManyWithoutPostNestedInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'group': group,
        'profile': profile,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUncheckedUpdateWithoutRestaurantInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateWithoutRestaurantInput({
    this.id,
    this.individual,
    this.meal,
    this.groupId,
    this.profileId,
    this.review,
    this.rating,
    this.createdAt,
    this.updatedAt,
    this.comments,
    this.likes,
    this.postTags,
    this.postImages,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? groupId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profileId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.CommentUncheckedUpdateManyWithoutPostNestedInput? comments;

  final _i2.PostLikeUncheckedUpdateManyWithoutPostNestedInput? likes;

  final _i2.PostTagUncheckedUpdateManyWithoutPostNestedInput? postTags;

  final _i2.PostImageUncheckedUpdateManyWithoutPostNestedInput? postImages;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'comments': comments,
        'likes': likes,
        'postTags': postTags,
        'postImages': postImages,
      };
}

class PostUpsertWithWhereUniqueWithoutRestaurantInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpsertWithWhereUniqueWithoutRestaurantInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostUpdateWithoutRestaurantInput,
      _i2.PostUncheckedUpdateWithoutRestaurantInput> update;

  final _i1.PrismaUnion<_i2.PostCreateWithoutRestaurantInput,
      _i2.PostUncheckedCreateWithoutRestaurantInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PostUpdateWithWhereUniqueWithoutRestaurantInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateWithWhereUniqueWithoutRestaurantInput({
    required this.where,
    required this.data,
  });

  final _i2.PostWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostUpdateWithoutRestaurantInput,
      _i2.PostUncheckedUpdateWithoutRestaurantInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostUncheckedUpdateManyWithoutRestaurantInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateManyWithoutRestaurantInput({
    this.id,
    this.individual,
    this.meal,
    this.groupId,
    this.profileId,
    this.review,
    this.rating,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? individual;

  final _i1
      .PrismaUnion<_i3.MealType, _i2.EnumMealTypeFieldUpdateOperationsInput>?
      meal;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? groupId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profileId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? review;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? rating;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'individual': individual,
        'meal': meal,
        'groupId': groupId,
        'profileId': profileId,
        'review': review,
        'rating': rating,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PostUpdateManyWithWhereWithoutRestaurantInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateManyWithWhereWithoutRestaurantInput({
    required this.where,
    required this.data,
  });

  final _i2.PostScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PostUpdateManyMutationInput,
      _i2.PostUncheckedUpdateManyWithoutRestaurantInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostUpdateManyWithoutRestaurantNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUpdateManyWithoutRestaurantNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PostCreateWithoutRestaurantInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostCreateWithoutRestaurantInput>,
              _i1.PrismaUnion<_i2.PostUncheckedCreateWithoutRestaurantInput,
                  Iterable<_i2.PostUncheckedCreateWithoutRestaurantInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostCreateOrConnectWithoutRestaurantInput,
      Iterable<_i2.PostCreateOrConnectWithoutRestaurantInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PostUpsertWithWhereUniqueWithoutRestaurantInput,
      Iterable<_i2.PostUpsertWithWhereUniqueWithoutRestaurantInput>>? upsert;

  final _i2.PostCreateManyRestaurantInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostUpdateWithWhereUniqueWithoutRestaurantInput,
      Iterable<_i2.PostUpdateWithWhereUniqueWithoutRestaurantInput>>? update;

  final _i1.PrismaUnion<_i2.PostUpdateManyWithWhereWithoutRestaurantInput,
      Iterable<_i2.PostUpdateManyWithWhereWithoutRestaurantInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostScalarWhereInput,
      Iterable<_i2.PostScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class RestaurantUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantUpdateInput({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
    this.posts,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? yelpId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? latitude;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      longitude;

  final _i2.PostUpdateManyWithoutRestaurantNestedInput? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
        'posts': posts,
      };
}

class PostUncheckedUpdateManyWithoutRestaurantNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostUncheckedUpdateManyWithoutRestaurantNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PostCreateWithoutRestaurantInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostCreateWithoutRestaurantInput>,
              _i1.PrismaUnion<_i2.PostUncheckedCreateWithoutRestaurantInput,
                  Iterable<_i2.PostUncheckedCreateWithoutRestaurantInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostCreateOrConnectWithoutRestaurantInput,
      Iterable<_i2.PostCreateOrConnectWithoutRestaurantInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PostUpsertWithWhereUniqueWithoutRestaurantInput,
      Iterable<_i2.PostUpsertWithWhereUniqueWithoutRestaurantInput>>? upsert;

  final _i2.PostCreateManyRestaurantInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostWhereUniqueInput,
      Iterable<_i2.PostWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PostUpdateWithWhereUniqueWithoutRestaurantInput,
      Iterable<_i2.PostUpdateWithWhereUniqueWithoutRestaurantInput>>? update;

  final _i1.PrismaUnion<_i2.PostUpdateManyWithWhereWithoutRestaurantInput,
      Iterable<_i2.PostUpdateManyWithWhereWithoutRestaurantInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PostScalarWhereInput,
      Iterable<_i2.PostScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class RestaurantUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantUncheckedUpdateInput({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
    this.posts,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? yelpId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? latitude;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      longitude;

  final _i2.PostUncheckedUpdateManyWithoutRestaurantNestedInput? posts;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
        'posts': posts,
      };
}

class RestaurantUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantUpdateManyMutationInput({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? yelpId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? latitude;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      longitude;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
      };
}

class RestaurantUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? yelpId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? latitude;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      longitude;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
      };
}

class RestaurantCountAggregateOutputType {
  const RestaurantCountAggregateOutputType({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
    this.$all,
  });

  factory RestaurantCountAggregateOutputType.fromJson(Map json) =>
      RestaurantCountAggregateOutputType(
        id: json['id'],
        name: json['name'],
        yelpId: json['yelpId'],
        latitude: json['latitude'],
        longitude: json['longitude'],
        $all: json['_all'],
      );

  final int? id;

  final int? name;

  final int? yelpId;

  final int? latitude;

  final int? longitude;

  final int? $all;
}

class RestaurantMinAggregateOutputType {
  const RestaurantMinAggregateOutputType({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
  });

  factory RestaurantMinAggregateOutputType.fromJson(Map json) =>
      RestaurantMinAggregateOutputType(
        id: json['id'],
        name: json['name'],
        yelpId: json['yelpId'],
        latitude: json['latitude'],
        longitude: json['longitude'],
      );

  final String? id;

  final String? name;

  final String? yelpId;

  final String? latitude;

  final String? longitude;
}

class RestaurantMaxAggregateOutputType {
  const RestaurantMaxAggregateOutputType({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
  });

  factory RestaurantMaxAggregateOutputType.fromJson(Map json) =>
      RestaurantMaxAggregateOutputType(
        id: json['id'],
        name: json['name'],
        yelpId: json['yelpId'],
        latitude: json['latitude'],
        longitude: json['longitude'],
      );

  final String? id;

  final String? name;

  final String? yelpId;

  final String? latitude;

  final String? longitude;
}

class RestaurantGroupByOutputType {
  const RestaurantGroupByOutputType({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
    this.$count,
    this.$min,
    this.$max,
  });

  factory RestaurantGroupByOutputType.fromJson(Map json) =>
      RestaurantGroupByOutputType(
        id: json['id'],
        name: json['name'],
        yelpId: json['yelpId'],
        latitude: json['latitude'],
        longitude: json['longitude'],
        $count: json['_count'] is Map
            ? _i2.RestaurantCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.RestaurantMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.RestaurantMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? name;

  final String? yelpId;

  final String? latitude;

  final String? longitude;

  final _i2.RestaurantCountAggregateOutputType? $count;

  final _i2.RestaurantMinAggregateOutputType? $min;

  final _i2.RestaurantMaxAggregateOutputType? $max;
}

class RestaurantCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantCountOrderByAggregateInput({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? yelpId;

  final _i2.SortOrder? latitude;

  final _i2.SortOrder? longitude;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
      };
}

class RestaurantMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? yelpId;

  final _i2.SortOrder? latitude;

  final _i2.SortOrder? longitude;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
      };
}

class RestaurantMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantMinOrderByAggregateInput({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? yelpId;

  final _i2.SortOrder? latitude;

  final _i2.SortOrder? longitude;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
      };
}

class RestaurantOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantOrderByWithAggregationInput({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? yelpId;

  final _i2.SortOrder? latitude;

  final _i2.SortOrder? longitude;

  final _i2.RestaurantCountOrderByAggregateInput? $count;

  final _i2.RestaurantMaxOrderByAggregateInput? $max;

  final _i2.RestaurantMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class RestaurantScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
  });

  final _i1.PrismaUnion<_i2.RestaurantScalarWhereWithAggregatesInput,
      Iterable<_i2.RestaurantScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.RestaurantScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.RestaurantScalarWhereWithAggregatesInput,
      Iterable<_i2.RestaurantScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? yelpId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? latitude;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? longitude;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
      };
}

class RestaurantCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantCountAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
    this.$all,
  });

  final bool? id;

  final bool? name;

  final bool? yelpId;

  final bool? latitude;

  final bool? longitude;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
        '_all': $all,
      };
}

class RestaurantGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantGroupByOutputTypeCountArgs({this.select});

  final _i2.RestaurantCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class RestaurantMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantMinAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
  });

  final bool? id;

  final bool? name;

  final bool? yelpId;

  final bool? latitude;

  final bool? longitude;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
      };
}

class RestaurantGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantGroupByOutputTypeMinArgs({this.select});

  final _i2.RestaurantMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class RestaurantMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantMaxAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
  });

  final bool? id;

  final bool? name;

  final bool? yelpId;

  final bool? latitude;

  final bool? longitude;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
      };
}

class RestaurantGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantGroupByOutputTypeMaxArgs({this.select});

  final _i2.RestaurantMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class RestaurantGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RestaurantGroupByOutputTypeSelect({
    this.id,
    this.name,
    this.yelpId,
    this.latitude,
    this.longitude,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? name;

  final bool? yelpId;

  final bool? latitude;

  final bool? longitude;

  final _i1.PrismaUnion<bool, _i2.RestaurantGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.RestaurantGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.RestaurantGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'yelpId': yelpId,
        'latitude': latitude,
        'longitude': longitude,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateRestaurant {
  const AggregateRestaurant({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateRestaurant.fromJson(Map json) => AggregateRestaurant(
        $count: json['_count'] is Map
            ? _i2.RestaurantCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.RestaurantMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.RestaurantMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.RestaurantCountAggregateOutputType? $count;

  final _i2.RestaurantMinAggregateOutputType? $min;

  final _i2.RestaurantMaxAggregateOutputType? $max;
}

class AggregateRestaurantCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateRestaurantCountArgs({this.select});

  final _i2.RestaurantCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateRestaurantMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateRestaurantMinArgs({this.select});

  final _i2.RestaurantMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateRestaurantMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateRestaurantMaxArgs({this.select});

  final _i2.RestaurantMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateRestaurantSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateRestaurantSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateRestaurantCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateRestaurantMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateRestaurantMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}
