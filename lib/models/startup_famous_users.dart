class StartUpFamous {
  String? apiStatus;
  String? apiText;
  Null? apiVersion;
  Null? userId;
  List<Data>? data;

  StartUpFamous(
      {this.apiStatus, this.apiText, this.apiVersion, this.userId, this.data});

  StartUpFamous.fromJson(Map<String, dynamic> json) {
    apiStatus = json['api_status'];
    apiText = json['api_text'];
    apiVersion = json['api_version'];
    userId = json['user_id'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_status'] = this.apiStatus;
    data['api_text'] = this.apiText;
    data['api_version'] = this.apiVersion;
    data['user_id'] = this.userId;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? userId;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? reviewMarket;
  String? reviewLogin;
  String? avatar;
  String? cover;
  String? backgroundImage;
  String? backgroundImageStatus;
  String? relationshipId;
  String? address;
  String? working;
  String? workingLink;
  String? about;
  String? school;
  String? gender;
  String? birthday;
  String? countryId;
  String? website;
  String? facebook;
  String? google;
  String? twitter;
  String? linkedin;
  String? youtube;
  String? vk;
  String? instagram;
  Null? qq;
  Null? wechat;
  Null? discord;
  Null? mailru;
  String? language;
  String? emailCode;
  String? src;
  String? ipAddress;
  String? privatePrivacy;
  String? followPrivacy;
  String? friendPrivacy;
  String? postPrivacy;
  String? hashtagPrivacy;
  String? storyOnProfile;
  String? messagePrivacy;
  String? confirmFollowers;
  String? showActivitiesPrivacy;
  String? birthPrivacy;
  String? visitPrivacy;
  String? verified;
  String? lastseen;
  String? showlastseen;
  String? emailNotification;
  String? eLiked;
  String? eWondered;
  String? eShared;
  String? eFollowed;
  String? eCommented;
  String? eVisited;
  String? eLikedPage;
  String? eMentioned;
  String? eJoinedGroup;
  String? eAccepted;
  String? eMsg;
  String? eProfileWallPost;
  String? eSentmeMsg;
  String? eLastNotif;
  String? notificationSettings;
  String? status;
  String? active;
  String? admin;
  String? type;
  String? registered;
  String? startUp;
  String? startUpInfo;
  String? startupFollow;
  String? startupImage;
  String? lastEmailSent;
  String? phoneNumber;
  String? smsCode;
  String? isPro;
  String? proTime;
  String? proType;
  String? joined;
  String? cssFile;
  String? timezone;
  String? referrer;
  String? balance;
  String? paypalEmail;
  String? notificationsSound;
  String? orderPostsBy;
  String? socialLogin;
  String? androidMDeviceId;
  String? iosMDeviceId;
  String? androidNDeviceId;
  String? iosNDeviceId;
  String? webDeviceId;
  String? wallet;
  String? lat;
  String? lng;
  String? lastLocationUpdate;
  String? shareMyLocation;
  String? lastDataUpdate;
  Details? details;
  String? sidebarData;
  String? lastAvatarMod;
  String? lastCoverMod;
  String? points;
  String? dailyPoints;
  String? pointDayExpire;
  String? lastFollowId;
  String? shareMyData;
  Null? lastLoginData;
  String? twoFactor;
  String? newEmail;
  String? twoFactorVerified;
  String? newPhone;
  String? infoFile;
  String? canAddProduct;
  Null? parentName;
  Null? parentProof;
  String? showMisscall;
  String? disableLive;
  Null? restrict15Days;
  String? showOnLiveBraodcast;
  String? weatherUnit;
  String? paystackRef;
  String? codeSent;
  Null? stripeSessionId;
  String? schoolCompleted;
  String? hideMyProfile;
  String? lockProfile;
  String? showJustVideosOnSinglePage;
  String? hideFromStartup;
  String? hideFromSearch;
  String? allowTagInPosts;
  String? totalVideoViews;
  String? totalLikes;
  String? totalLoves;
  String? totalPoints;
  String? buyersProtection;
  String? timeCodeSent;
  String? currency;
  String? currencySymbol;
  String? avatarPostId;
  int? coverPostId;
  String? avatarOrg;
  String? coverOrg;
  String? coverFull;
  String? avatarFull;
  String? id;
  String? userPlatform;
  String? url;
  String? name;
  APINotificationSettings? aPINotificationSettings;
  List<String>? followingData;
  List<String>? followersData;
  String? mutualFriendsData;
  String? likesData;
  String? groupsData;
  String? albumData;
  String? lastseenUnixTime;
  String? lastseenStatus;
  bool? isReported;
  bool? isStoryMuted;

  Data(
      {this.userId,
        this.username,
        this.email,
        this.firstName,
        this.lastName,
        this.reviewMarket,
        this.reviewLogin,
        this.avatar,
        this.cover,
        this.backgroundImage,
        this.backgroundImageStatus,
        this.relationshipId,
        this.address,
        this.working,
        this.workingLink,
        this.about,
        this.school,
        this.gender,
        this.birthday,
        this.countryId,
        this.website,
        this.facebook,
        this.google,
        this.twitter,
        this.linkedin,
        this.youtube,
        this.vk,
        this.instagram,
        this.qq,
        this.wechat,
        this.discord,
        this.mailru,
        this.language,
        this.emailCode,
        this.src,
        this.ipAddress,
        this.privatePrivacy,
        this.followPrivacy,
        this.friendPrivacy,
        this.postPrivacy,
        this.hashtagPrivacy,
        this.storyOnProfile,
        this.messagePrivacy,
        this.confirmFollowers,
        this.showActivitiesPrivacy,
        this.birthPrivacy,
        this.visitPrivacy,
        this.verified,
        this.lastseen,
        this.showlastseen,
        this.emailNotification,
        this.eLiked,
        this.eWondered,
        this.eShared,
        this.eFollowed,
        this.eCommented,
        this.eVisited,
        this.eLikedPage,
        this.eMentioned,
        this.eJoinedGroup,
        this.eAccepted,
        this.eMsg,
        this.eProfileWallPost,
        this.eSentmeMsg,
        this.eLastNotif,
        this.notificationSettings,
        this.status,
        this.active,
        this.admin,
        this.type,
        this.registered,
        this.startUp,
        this.startUpInfo,
        this.startupFollow,
        this.startupImage,
        this.lastEmailSent,
        this.phoneNumber,
        this.smsCode,
        this.isPro,
        this.proTime,
        this.proType,
        this.joined,
        this.cssFile,
        this.timezone,
        this.referrer,
        this.balance,
        this.paypalEmail,
        this.notificationsSound,
        this.orderPostsBy,
        this.socialLogin,
        this.androidMDeviceId,
        this.iosMDeviceId,
        this.androidNDeviceId,
        this.iosNDeviceId,
        this.webDeviceId,
        this.wallet,
        this.lat,
        this.lng,
        this.lastLocationUpdate,
        this.shareMyLocation,
        this.lastDataUpdate,
        this.details,
        this.sidebarData,
        this.lastAvatarMod,
        this.lastCoverMod,
        this.points,
        this.dailyPoints,
        this.pointDayExpire,
        this.lastFollowId,
        this.shareMyData,
        this.lastLoginData,
        this.twoFactor,
        this.newEmail,
        this.twoFactorVerified,
        this.newPhone,
        this.infoFile,
        this.canAddProduct,
        this.parentName,
        this.parentProof,
        this.showMisscall,
        this.disableLive,
        this.restrict15Days,
        this.showOnLiveBraodcast,
        this.weatherUnit,
        this.paystackRef,
        this.codeSent,
        this.stripeSessionId,
        this.schoolCompleted,
        this.hideMyProfile,
        this.lockProfile,
        this.showJustVideosOnSinglePage,
        this.hideFromStartup,
        this.hideFromSearch,
        this.allowTagInPosts,
        this.totalVideoViews,
        this.totalLikes,
        this.totalLoves,
        this.totalPoints,
        this.buyersProtection,
        this.timeCodeSent,
        this.currency,
        this.currencySymbol,
        this.avatarPostId,
        this.coverPostId,
        this.avatarOrg,
        this.coverOrg,
        this.coverFull,
        this.avatarFull,
        this.id,
        this.userPlatform,
        this.url,
        this.name,
        this.aPINotificationSettings,
        this.followingData,
        this.followersData,
        this.mutualFriendsData,
        this.likesData,
        this.groupsData,
        this.albumData,
        this.lastseenUnixTime,
        this.lastseenStatus,
        this.isReported,
        this.isStoryMuted});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    username = json['username'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    reviewMarket = json['review_market'];
    reviewLogin = json['review_login'];
    avatar = json['avatar'];
    cover = json['cover'];
    backgroundImage = json['background_image'];
    backgroundImageStatus = json['background_image_status'];
    relationshipId = json['relationship_id'];
    address = json['address'];
    working = json['working'];
    workingLink = json['working_link'];
    about = json['about'];
    school = json['school'];
    gender = json['gender'];
    birthday = json['birthday'];
    countryId = json['country_id'];
    website = json['website'];
    facebook = json['facebook'];
    google = json['google'];
    twitter = json['twitter'];
    linkedin = json['linkedin'];
    youtube = json['youtube'];
    vk = json['vk'];
    instagram = json['instagram'];
    qq = json['qq'];
    wechat = json['wechat'];
    discord = json['discord'];
    mailru = json['mailru'];
    language = json['language'];
    emailCode = json['email_code'];
    src = json['src'];
    ipAddress = json['ip_address'];
    privatePrivacy = json['private_privacy'];
    followPrivacy = json['follow_privacy'];
    friendPrivacy = json['friend_privacy'];
    postPrivacy = json['post_privacy'];
    hashtagPrivacy = json['hashtag_privacy'];
    storyOnProfile = json['story_on_profile'];
    messagePrivacy = json['message_privacy'];
    confirmFollowers = json['confirm_followers'];
    showActivitiesPrivacy = json['show_activities_privacy'];
    birthPrivacy = json['birth_privacy'];
    visitPrivacy = json['visit_privacy'];
    verified = json['verified'];
    lastseen = json['lastseen'];
    showlastseen = json['showlastseen'];
    emailNotification = json['emailNotification'];
    eLiked = json['e_liked'];
    eWondered = json['e_wondered'];
    eShared = json['e_shared'];
    eFollowed = json['e_followed'];
    eCommented = json['e_commented'];
    eVisited = json['e_visited'];
    eLikedPage = json['e_liked_page'];
    eMentioned = json['e_mentioned'];
    eJoinedGroup = json['e_joined_group'];
    eAccepted = json['e_accepted'];
    eMsg = json['e_msg'];
    eProfileWallPost = json['e_profile_wall_post'];
    eSentmeMsg = json['e_sentme_msg'];
    eLastNotif = json['e_last_notif'];
    notificationSettings = json['notification_settings'];
    status = json['status'];
    active = json['active'];
    admin = json['admin'];
    type = json['type'];
    registered = json['registered'];
    startUp = json['start_up'];
    startUpInfo = json['start_up_info'];
    startupFollow = json['startup_follow'];
    startupImage = json['startup_image'];
    lastEmailSent = json['last_email_sent'];
    phoneNumber = json['phone_number'];
    smsCode = json['sms_code'];
    isPro = json['is_pro'];
    proTime = json['pro_time'];
    proType = json['pro_type'];
    joined = json['joined'];
    cssFile = json['css_file'];
    timezone = json['timezone'];
    referrer = json['referrer'];
    balance = json['balance'];
    paypalEmail = json['paypal_email'];
    notificationsSound = json['notifications_sound'];
    orderPostsBy = json['order_posts_by'];
    socialLogin = json['social_login'];
    androidMDeviceId = json['android_m_device_id'];
    iosMDeviceId = json['ios_m_device_id'];
    androidNDeviceId = json['android_n_device_id'];
    iosNDeviceId = json['ios_n_device_id'];
    webDeviceId = json['web_device_id'];
    wallet = json['wallet'];
    lat = json['lat'];
    lng = json['lng'];
    lastLocationUpdate = json['last_location_update'];
    shareMyLocation = json['share_my_location'];
    lastDataUpdate = json['last_data_update'];
    details =
    json['details'] != null ? new Details.fromJson(json['details']) : null;
    sidebarData = json['sidebar_data'];
    lastAvatarMod = json['last_avatar_mod'];
    lastCoverMod = json['last_cover_mod'];
    points = json['points'];
    dailyPoints = json['daily_points'];
    pointDayExpire = json['point_day_expire'];
    lastFollowId = json['last_follow_id'];
    shareMyData = json['share_my_data'];
    lastLoginData = json['last_login_data'];
    twoFactor = json['two_factor'];
    newEmail = json['new_email'];
    twoFactorVerified = json['two_factor_verified'];
    newPhone = json['new_phone'];
    infoFile = json['info_file'];
    canAddProduct = json['canAddProduct'];
    parentName = json['parent_name'];
    parentProof = json['parent_proof'];
    showMisscall = json['show_misscall'];
    disableLive = json['disable_live'];
    restrict15Days = json['restrict_15_days'];
    showOnLiveBraodcast = json['show_on_live_braodcast'];
    weatherUnit = json['weather_unit'];
    paystackRef = json['paystack_ref'];
    codeSent = json['code_sent'];
    stripeSessionId = json['StripeSessionId'];
    schoolCompleted = json['school_completed'];
    hideMyProfile = json['hide_my_profile'];
    lockProfile = json['lock_profile'];
    showJustVideosOnSinglePage = json['show_just_videos_on_single_page'];
    hideFromStartup = json['hide_from_startup'];
    hideFromSearch = json['hide_from_search'];
    allowTagInPosts = json['allow_tag_in_posts'];
    totalVideoViews = json['total_video_views'];
    totalLikes = json['total_likes'];
    totalLoves = json['total_loves'];
    totalPoints = json['total_points'];
    buyersProtection = json['buyers_protection'];
    timeCodeSent = json['time_code_sent'];
    currency = json['currency'];
    currencySymbol = json['currency_symbol'];
    avatarPostId = json['avatar_post_id'];
    coverPostId = json['cover_post_id'];
    avatarOrg = json['avatar_org'];
    coverOrg = json['cover_org'];
    coverFull = json['cover_full'];
    avatarFull = json['avatar_full'];
    id = json['id'];
    userPlatform = json['user_platform'];
    url = json['url'];
    name = json['name'];
    aPINotificationSettings = json['API_notification_settings'] != null
        ? new APINotificationSettings.fromJson(
        json['API_notification_settings'])
        : null;
    followingData = json['following_data'].cast<String>();
    followersData = json['followers_data'].cast<String>();
    mutualFriendsData = json['mutual_friends_data'];
    likesData = json['likes_data'];
    groupsData = json['groups_data'];
    albumData = json['album_data'];
    lastseenUnixTime = json['lastseen_unix_time'];
    lastseenStatus = json['lastseen_status'];
    isReported = json['is_reported'];
    isStoryMuted = json['is_story_muted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['username'] = this.username;
    data['email'] = this.email;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['review_market'] = this.reviewMarket;
    data['review_login'] = this.reviewLogin;
    data['avatar'] = this.avatar;
    data['cover'] = this.cover;
    data['background_image'] = this.backgroundImage;
    data['background_image_status'] = this.backgroundImageStatus;
    data['relationship_id'] = this.relationshipId;
    data['address'] = this.address;
    data['working'] = this.working;
    data['working_link'] = this.workingLink;
    data['about'] = this.about;
    data['school'] = this.school;
    data['gender'] = this.gender;
    data['birthday'] = this.birthday;
    data['country_id'] = this.countryId;
    data['website'] = this.website;
    data['facebook'] = this.facebook;
    data['google'] = this.google;
    data['twitter'] = this.twitter;
    data['linkedin'] = this.linkedin;
    data['youtube'] = this.youtube;
    data['vk'] = this.vk;
    data['instagram'] = this.instagram;
    data['qq'] = this.qq;
    data['wechat'] = this.wechat;
    data['discord'] = this.discord;
    data['mailru'] = this.mailru;
    data['language'] = this.language;
    data['email_code'] = this.emailCode;
    data['src'] = this.src;
    data['ip_address'] = this.ipAddress;
    data['private_privacy'] = this.privatePrivacy;
    data['follow_privacy'] = this.followPrivacy;
    data['friend_privacy'] = this.friendPrivacy;
    data['post_privacy'] = this.postPrivacy;
    data['hashtag_privacy'] = this.hashtagPrivacy;
    data['story_on_profile'] = this.storyOnProfile;
    data['message_privacy'] = this.messagePrivacy;
    data['confirm_followers'] = this.confirmFollowers;
    data['show_activities_privacy'] = this.showActivitiesPrivacy;
    data['birth_privacy'] = this.birthPrivacy;
    data['visit_privacy'] = this.visitPrivacy;
    data['verified'] = this.verified;
    data['lastseen'] = this.lastseen;
    data['showlastseen'] = this.showlastseen;
    data['emailNotification'] = this.emailNotification;
    data['e_liked'] = this.eLiked;
    data['e_wondered'] = this.eWondered;
    data['e_shared'] = this.eShared;
    data['e_followed'] = this.eFollowed;
    data['e_commented'] = this.eCommented;
    data['e_visited'] = this.eVisited;
    data['e_liked_page'] = this.eLikedPage;
    data['e_mentioned'] = this.eMentioned;
    data['e_joined_group'] = this.eJoinedGroup;
    data['e_accepted'] = this.eAccepted;
    data['e_msg'] = this.eMsg;
    data['e_profile_wall_post'] = this.eProfileWallPost;
    data['e_sentme_msg'] = this.eSentmeMsg;
    data['e_last_notif'] = this.eLastNotif;
    data['notification_settings'] = this.notificationSettings;
    data['status'] = this.status;
    data['active'] = this.active;
    data['admin'] = this.admin;
    data['type'] = this.type;
    data['registered'] = this.registered;
    data['start_up'] = this.startUp;
    data['start_up_info'] = this.startUpInfo;
    data['startup_follow'] = this.startupFollow;
    data['startup_image'] = this.startupImage;
    data['last_email_sent'] = this.lastEmailSent;
    data['phone_number'] = this.phoneNumber;
    data['sms_code'] = this.smsCode;
    data['is_pro'] = this.isPro;
    data['pro_time'] = this.proTime;
    data['pro_type'] = this.proType;
    data['joined'] = this.joined;
    data['css_file'] = this.cssFile;
    data['timezone'] = this.timezone;
    data['referrer'] = this.referrer;
    data['balance'] = this.balance;
    data['paypal_email'] = this.paypalEmail;
    data['notifications_sound'] = this.notificationsSound;
    data['order_posts_by'] = this.orderPostsBy;
    data['social_login'] = this.socialLogin;
    data['android_m_device_id'] = this.androidMDeviceId;
    data['ios_m_device_id'] = this.iosMDeviceId;
    data['android_n_device_id'] = this.androidNDeviceId;
    data['ios_n_device_id'] = this.iosNDeviceId;
    data['web_device_id'] = this.webDeviceId;
    data['wallet'] = this.wallet;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['last_location_update'] = this.lastLocationUpdate;
    data['share_my_location'] = this.shareMyLocation;
    data['last_data_update'] = this.lastDataUpdate;
    if (this.details != null) {
      data['details'] = this.details!.toJson();
    }
    data['sidebar_data'] = this.sidebarData;
    data['last_avatar_mod'] = this.lastAvatarMod;
    data['last_cover_mod'] = this.lastCoverMod;
    data['points'] = this.points;
    data['daily_points'] = this.dailyPoints;
    data['point_day_expire'] = this.pointDayExpire;
    data['last_follow_id'] = this.lastFollowId;
    data['share_my_data'] = this.shareMyData;
    data['last_login_data'] = this.lastLoginData;
    data['two_factor'] = this.twoFactor;
    data['new_email'] = this.newEmail;
    data['two_factor_verified'] = this.twoFactorVerified;
    data['new_phone'] = this.newPhone;
    data['info_file'] = this.infoFile;
    data['canAddProduct'] = this.canAddProduct;
    data['parent_name'] = this.parentName;
    data['parent_proof'] = this.parentProof;
    data['show_misscall'] = this.showMisscall;
    data['disable_live'] = this.disableLive;
    data['restrict_15_days'] = this.restrict15Days;
    data['show_on_live_braodcast'] = this.showOnLiveBraodcast;
    data['weather_unit'] = this.weatherUnit;
    data['paystack_ref'] = this.paystackRef;
    data['code_sent'] = this.codeSent;
    data['StripeSessionId'] = this.stripeSessionId;
    data['school_completed'] = this.schoolCompleted;
    data['hide_my_profile'] = this.hideMyProfile;
    data['lock_profile'] = this.lockProfile;
    data['show_just_videos_on_single_page'] = this.showJustVideosOnSinglePage;
    data['hide_from_startup'] = this.hideFromStartup;
    data['hide_from_search'] = this.hideFromSearch;
    data['allow_tag_in_posts'] = this.allowTagInPosts;
    data['total_video_views'] = this.totalVideoViews;
    data['total_likes'] = this.totalLikes;
    data['total_loves'] = this.totalLoves;
    data['total_points'] = this.totalPoints;
    data['buyers_protection'] = this.buyersProtection;
    data['time_code_sent'] = this.timeCodeSent;
    data['currency'] = this.currency;
    data['currency_symbol'] = this.currencySymbol;
    data['avatar_post_id'] = this.avatarPostId;
    data['cover_post_id'] = this.coverPostId;
    data['avatar_org'] = this.avatarOrg;
    data['cover_org'] = this.coverOrg;
    data['cover_full'] = this.coverFull;
    data['avatar_full'] = this.avatarFull;
    data['id'] = this.id;
    data['user_platform'] = this.userPlatform;
    data['url'] = this.url;
    data['name'] = this.name;
    if (this.aPINotificationSettings != null) {
      data['API_notification_settings'] =
          this.aPINotificationSettings!.toJson();
    }
    data['following_data'] = this.followingData;
    data['followers_data'] = this.followersData;
    data['mutual_friends_data'] = this.mutualFriendsData;
    data['likes_data'] = this.likesData;
    data['groups_data'] = this.groupsData;
    data['album_data'] = this.albumData;
    data['lastseen_unix_time'] = this.lastseenUnixTime;
    data['lastseen_status'] = this.lastseenStatus;
    data['is_reported'] = this.isReported;
    data['is_story_muted'] = this.isStoryMuted;
    return data;
  }
}

class Details {
  String? postCount;
  String? albumCount;
  String? followingCount;
  String? followersCount;
  String? groupsCount;
  String? likesCount;
  bool? mutualFriendsCount;

  Details(
      {this.postCount,
        this.albumCount,
        this.followingCount,
        this.followersCount,
        this.groupsCount,
        this.likesCount,
        this.mutualFriendsCount});

  Details.fromJson(Map<String, dynamic> json) {
    postCount = json['post_count'];
    albumCount = json['album_count'];
    followingCount = json['following_count'];
    followersCount = json['followers_count'];
    groupsCount = json['groups_count'];
    likesCount = json['likes_count'];
    mutualFriendsCount = json['mutual_friends_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['post_count'] = this.postCount;
    data['album_count'] = this.albumCount;
    data['following_count'] = this.followingCount;
    data['followers_count'] = this.followersCount;
    data['groups_count'] = this.groupsCount;
    data['likes_count'] = this.likesCount;
    data['mutual_friends_count'] = this.mutualFriendsCount;
    return data;
  }
}

class APINotificationSettings {
  int? eLiked;
  int? eShared;
  int? eWondered;
  int? eCommented;
  int? eFollowed;
  int? eAccepted;
  int? eMentioned;
  int? eJoinedGroup;
  int? eLikedPage;
  int? eVisited;
  int? eProfileWallPost;
  int? eMemory;

  APINotificationSettings(
      {this.eLiked,
        this.eShared,
        this.eWondered,
        this.eCommented,
        this.eFollowed,
        this.eAccepted,
        this.eMentioned,
        this.eJoinedGroup,
        this.eLikedPage,
        this.eVisited,
        this.eProfileWallPost,
        this.eMemory});

  APINotificationSettings.fromJson(Map<String, dynamic> json) {
    eLiked = json['e_liked'];
    eShared = json['e_shared'];
    eWondered = json['e_wondered'];
    eCommented = json['e_commented'];
    eFollowed = json['e_followed'];
    eAccepted = json['e_accepted'];
    eMentioned = json['e_mentioned'];
    eJoinedGroup = json['e_joined_group'];
    eLikedPage = json['e_liked_page'];
    eVisited = json['e_visited'];
    eProfileWallPost = json['e_profile_wall_post'];
    eMemory = json['e_memory'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['e_liked'] = this.eLiked;
    data['e_shared'] = this.eShared;
    data['e_wondered'] = this.eWondered;
    data['e_commented'] = this.eCommented;
    data['e_followed'] = this.eFollowed;
    data['e_accepted'] = this.eAccepted;
    data['e_mentioned'] = this.eMentioned;
    data['e_joined_group'] = this.eJoinedGroup;
    data['e_liked_page'] = this.eLikedPage;
    data['e_visited'] = this.eVisited;
    data['e_profile_wall_post'] = this.eProfileWallPost;
    data['e_memory'] = this.eMemory;
    return data;
  }
}