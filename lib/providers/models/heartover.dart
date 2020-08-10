class HeartOver {
  HeartOver({
    this.code,
    this.msg,
  });

  String code;
  List<Msg> msg;

  factory HeartOver.fromJson(Map<String, dynamic> json) => HeartOver(
        code: json["code"] == null ? null : json["code"],
        msg: json["msg"] == null
            ? null
            : List<Msg>.from(json["msg"].map((x) => Msg.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "msg":
            msg == null ? null : List<dynamic>.from(msg.map((x) => x.toJson())),
      };
}

class Msg {
  Msg({
    this.id,
    this.fbId,
    this.userInfo,
    this.count,
    this.liked,
    this.video,
    this.thum,
    this.gif,
    this.description,
    this.sound,
    this.created,
  });

  String id;
  String fbId;
  UserInfo userInfo;
  Count count;
  String liked;
  String video;
  String thum;
  String gif;
  String description;
  Sound sound;
  DateTime created;

  factory Msg.fromJson(Map<String, dynamic> json) => Msg(
        id: json["id"] == null ? null : json["id"],
        fbId: json["fb_id"] == null ? null : json["fb_id"],
        userInfo: json["user_info"] == null
            ? null
            : UserInfo.fromJson(json["user_info"]),
        count: json["count"] == null ? null : Count.fromJson(json["count"]),
        liked: json["liked"] == null ? null : json["liked"],
        video: json["video"] == null ? null : json["video"],
        thum: json["thum"] == null ? null : json["thum"],
        gif: json["gif"] == null ? null : json["gif"],
        description: json["description"] == null ? null : json["description"],
        sound: json["sound"] == null ? null : Sound.fromJson(json["sound"]),
        created:
            json["created"] == null ? null : DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "fb_id": fbId == null ? null : fbId,
        "user_info": userInfo == null ? null : userInfo.toJson(),
        "count": count == null ? null : count.toJson(),
        "liked": liked == null ? null : liked,
        "video": video == null ? null : video,
        "thum": thum == null ? null : thum,
        "gif": gif == null ? null : gif,
        "description": description == null ? null : description,
        "sound": sound == null ? null : sound.toJson(),
        "created": created == null ? null : created.toIso8601String(),
      };
}

class Count {
  Count({
    this.likeCount,
    this.videoCommentCount,
  });

  String likeCount;
  String videoCommentCount;

  factory Count.fromJson(Map<String, dynamic> json) => Count(
        likeCount: json["like_count"] == null ? null : json["like_count"],
        videoCommentCount: json["video_comment_count"] == null
            ? null
            : json["video_comment_count"],
      );

  Map<String, dynamic> toJson() => {
        "like_count": likeCount == null ? null : likeCount,
        "video_comment_count":
            videoCommentCount == null ? null : videoCommentCount,
      };
}

class Sound {
  Sound({
    this.id,
    this.audioPath,
    this.soundName,
    this.description,
    this.thum,
    this.section,
    this.created,
  });

  String id;
  AudioPath audioPath;
  String soundName;
  String description;
  String thum;
  String section;
  DateTime created;

  factory Sound.fromJson(Map<String, dynamic> json) => Sound(
        id: json["id"] == null ? null : json["id"],
        audioPath: json["audio_path"] == null
            ? null
            : AudioPath.fromJson(json["audio_path"]),
        soundName: json["sound_name"] == null ? null : json["sound_name"],
        description: json["description"] == null ? null : json["description"],
        thum: json["thum"] == null ? null : json["thum"],
        section: json["section"] == null ? null : json["section"],
        created:
            json["created"] == null ? null : DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "audio_path": audioPath == null ? null : audioPath.toJson(),
        "sound_name": soundName == null ? null : soundName,
        "description": description == null ? null : description,
        "thum": thum == null ? null : thum,
        "section": section == null ? null : section,
        "created": created == null ? null : created.toIso8601String(),
      };
}

class AudioPath {
  AudioPath({
    this.mp3,
    this.acc,
  });

  String mp3;
  String acc;

  factory AudioPath.fromJson(Map<String, dynamic> json) => AudioPath(
        mp3: json["mp3"] == null ? null : json["mp3"],
        acc: json["acc"] == null ? null : json["acc"],
      );

  Map<String, dynamic> toJson() => {
        "mp3": mp3 == null ? null : mp3,
        "acc": acc == null ? null : acc,
      };
}

class UserInfo {
  UserInfo({
    this.firstName,
    this.lastName,
    this.profilePic,
    this.username,
    this.verified,
  });

  String firstName;
  String lastName;
  String profilePic;
  String username;
  String verified;

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        profilePic: json["profile_pic"] == null ? null : json["profile_pic"],
        username: json["username"] == null ? null : json["username"],
        verified: json["verified"] == null ? null : json["verified"],
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "profile_pic": profilePic == null ? null : profilePic,
        "username": username == null ? null : username,
        "verified": verified == null ? null : verified,
      };
}
