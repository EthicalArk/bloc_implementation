// To parse this JSON data, do
//
//     final apiResult = apiResultFromJson(jsonString);

import 'dart:convert';

ApiResult apiResultFromJson(String str) => ApiResult.fromJson(json.decode(str));

String apiResultToJson(ApiResult data) => json.encode(data.toJson());

class ApiResult {
    int page;
    int totalPages;
    int totalResults;
    String type;
    int count;
    List<Item> items;

    ApiResult({
        this.page,
        this.totalPages,
        this.totalResults,
        this.type,
        this.count,
        this.items,
    });

    factory ApiResult.fromJson(Map<String, dynamic> json) => new ApiResult(
        page: json["page"],
        totalPages: json["totalPages"],
        totalResults: json["totalResults"],
        type: json["type"],
        count: json["count"],
        items: new List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "totalPages": totalPages,
        "totalResults": totalResults,
        "type": type,
        "count": count,
        "items": new List<dynamic>.from(items.map((x) => x.toJson())),
    };
}

class Item {
    String commonName;
    String firstName;
    String lastName;
    League league;
    Nation nation;
    Club club;
    Headshot headshot;
    String position;
    int composure;
    PlayStyle playStyle;
    dynamic playStyleId;
    int height;
    int weight;
    String birthdate;
    int age;
    int acceleration;
    int aggression;
    int agility;
    int balance;
    int ballcontrol;
    Foot foot;
    int skillMoves;
    int crossing;
    int curve;
    int dribbling;
    int finishing;
    int freekickaccuracy;
    int gkdiving;
    int gkhandling;
    int gkkicking;
    int gkpositioning;
    int gkreflexes;
    int headingaccuracy;
    int interceptions;
    int jumping;
    int longpassing;~
    int longshots;
    int marking;
    int penalties;
    int positioning;
    int potential;
    int reactions;
    int shortpassing;
    int shotpower;
    int slidingtackle;
    int sprintspeed;
    int standingtackle;
    int stamina;
    int strength;
    int vision;
    int volleys;
    int weakFoot;
    List<String> traits;
    List<String> specialities;
    WorkRate atkWorkRate;
    WorkRate defWorkRate;
    dynamic playerType;
    List<Attribute> attributes;
    String name;
    int rarityId;
    bool isIcon;
    Quality quality;
    bool isGk;
    String positionFull;
    bool isSpecialType;
    dynamic contracts;
    dynamic fitness;
    dynamic rawAttributeChemistryBonus;
    dynamic isLoan;
    dynamic squadPosition;
    IconAttributes iconAttributes;
    ItemType itemType;
    dynamic discardValue;
    String id;
    ModelName modelName;
    int baseId;
    int rating;

    Item({
        this.commonName,
        this.firstName,
        this.lastName,
        this.league,
        this.nation,
        this.club,
        this.headshot,
        this.position,
        this.composure,
        this.playStyle,
        this.playStyleId,
        this.height,
        this.weight,
        this.birthdate,
        this.age,
        this.acceleration,
        this.aggression,
        this.agility,
        this.balance,
        this.ballcontrol,
        this.foot,
        this.skillMoves,
        this.crossing,
        this.curve,
        this.dribbling,
        this.finishing,
        this.freekickaccuracy,
        this.gkdiving,
        this.gkhandling,
        this.gkkicking,
        this.gkpositioning,
        this.gkreflexes,
        this.headingaccuracy,
        this.interceptions,
        this.jumping,
        this.longpassing,
        this.longshots,
        this.marking,
        this.penalties,
        this.positioning,
        this.potential,
        this.reactions,
        this.shortpassing,
        this.shotpower,
        this.slidingtackle,
        this.sprintspeed,
        this.standingtackle,
        this.stamina,
        this.strength,
        this.vision,
        this.volleys,
        this.weakFoot,
        this.traits,
        this.specialities,
        this.atkWorkRate,
        this.defWorkRate,
        this.playerType,
        this.attributes,
        this.name,
        this.rarityId,
        this.isIcon,
        this.quality,
        this.isGk,
        this.positionFull,
        this.isSpecialType,
        this.contracts,
        this.fitness,
        this.rawAttributeChemistryBonus,
        this.isLoan,
        this.squadPosition,
        this.iconAttributes,
        this.itemType,
        this.discardValue,
        this.id,
        this.modelName,
        this.baseId,
        this.rating,
    });

    factory Item.fromJson(Map<String, dynamic> json) => new Item(
        commonName: json["commonName"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        league: League.fromJson(json["league"]),
        nation: Nation.fromJson(json["nation"]),
        club: Club.fromJson(json["club"]),
        headshot: Headshot.fromJson(json["headshot"]),
        position: json["position"],
        composure: json["composure"],
        playStyle: playStyleValues.map[json["playStyle"]],
        playStyleId: json["playStyleId"],
        height: json["height"],
        weight: json["weight"],
        birthdate: json["birthdate"],
        age: json["age"],
        acceleration: json["acceleration"],
        aggression: json["aggression"],
        agility: json["agility"],
        balance: json["balance"],
        ballcontrol: json["ballcontrol"],
        foot: footValues.map[json["foot"]],
        skillMoves: json["skillMoves"],
        crossing: json["crossing"],
        curve: json["curve"],
        dribbling: json["dribbling"],
        finishing: json["finishing"],
        freekickaccuracy: json["freekickaccuracy"],
        gkdiving: json["gkdiving"],
        gkhandling: json["gkhandling"],
        gkkicking: json["gkkicking"],
        gkpositioning: json["gkpositioning"],
        gkreflexes: json["gkreflexes"],
        headingaccuracy: json["headingaccuracy"],
        interceptions: json["interceptions"],
        jumping: json["jumping"],
        longpassing: json["longpassing"],
        longshots: json["longshots"],
        marking: json["marking"],
        penalties: json["penalties"],
        positioning: json["positioning"],
        potential: json["potential"],
        reactions: json["reactions"],
        shortpassing: json["shortpassing"],
        shotpower: json["shotpower"],
        slidingtackle: json["slidingtackle"],
        sprintspeed: json["sprintspeed"],
        standingtackle: json["standingtackle"],
        stamina: json["stamina"],
        strength: json["strength"],
        vision: json["vision"],
        volleys: json["volleys"],
        weakFoot: json["weakFoot"],
        traits: new List<String>.from(json["traits"].map((x) => x)),
        specialities: new List<String>.from(json["specialities"].map((x) => x)),
        atkWorkRate: workRateValues.map[json["atkWorkRate"]],
        defWorkRate: workRateValues.map[json["defWorkRate"]],
        playerType: json["playerType"],
        attributes: new List<Attribute>.from(json["attributes"].map((x) => Attribute.fromJson(x))),
        name: json["name"],
        rarityId: json["rarityId"],
        isIcon: json["isIcon"],
        quality: qualityValues.map[json["quality"]],
        isGk: json["isGK"],
        positionFull: json["positionFull"],
        isSpecialType: json["isSpecialType"],
        contracts: json["contracts"],
        fitness: json["fitness"],
        rawAttributeChemistryBonus: json["rawAttributeChemistryBonus"],
        isLoan: json["isLoan"],
        squadPosition: json["squadPosition"],
        iconAttributes: json["iconAttributes"] == null ? null : IconAttributes.fromJson(json["iconAttributes"]),
        itemType: itemTypeValues.map[json["itemType"]],
        discardValue: json["discardValue"],
        id: json["id"],
        modelName: modelNameValues.map[json["modelName"]],
        baseId: json["baseId"],
        rating: json["rating"],
    );

    Map<String, dynamic> toJson() => {
        "commonName": commonName,
        "firstName": firstName,
        "lastName": lastName,
        "league": league.toJson(),
        "nation": nation.toJson(),
        "club": club.toJson(),
        "headshot": headshot.toJson(),
        "position": position,
        "composure": composure,
        "playStyle": playStyleValues.reverse[playStyle],
        "playStyleId": playStyleId,
        "height": height,
        "weight": weight,
        "birthdate": birthdate,
        "age": age,
        "acceleration": acceleration,
        "aggression": aggression,
        "agility": agility,
        "balance": balance,
        "ballcontrol": ballcontrol,
        "foot": footValues.reverse[foot],
        "skillMoves": skillMoves,
        "crossing": crossing,
        "curve": curve,
        "dribbling": dribbling,
        "finishing": finishing,
        "freekickaccuracy": freekickaccuracy,
        "gkdiving": gkdiving,
        "gkhandling": gkhandling,
        "gkkicking": gkkicking,
        "gkpositioning": gkpositioning,
        "gkreflexes": gkreflexes,
        "headingaccuracy": headingaccuracy,
        "interceptions": interceptions,
        "jumping": jumping,
        "longpassing": longpassing,
        "longshots": longshots,
        "marking": marking,
        "penalties": penalties,
        "positioning": positioning,
        "potential": potential,
        "reactions": reactions,
        "shortpassing": shortpassing,
        "shotpower": shotpower,
        "slidingtackle": slidingtackle,
        "sprintspeed": sprintspeed,
        "standingtackle": standingtackle,
        "stamina": stamina,
        "strength": strength,
        "vision": vision,
        "volleys": volleys,
        "weakFoot": weakFoot,
        "traits": new List<dynamic>.from(traits.map((x) => x)),
        "specialities": new List<dynamic>.from(specialities.map((x) => x)),
        "atkWorkRate": workRateValues.reverse[atkWorkRate],
        "defWorkRate": workRateValues.reverse[defWorkRate],
        "playerType": playerType,
        "attributes": new List<dynamic>.from(attributes.map((x) => x.toJson())),
        "name": name,
        "rarityId": rarityId,
        "isIcon": isIcon,
        "quality": qualityValues.reverse[quality],
        "isGK": isGk,
        "positionFull": positionFull,
        "isSpecialType": isSpecialType,
        "contracts": contracts,
        "fitness": fitness,
        "rawAttributeChemistryBonus": rawAttributeChemistryBonus,
        "isLoan": isLoan,
        "squadPosition": squadPosition,
        "iconAttributes": iconAttributes == null ? null : iconAttributes.toJson(),
        "itemType": itemTypeValues.reverse[itemType],
        "discardValue": discardValue,
        "id": id,
        "modelName": modelNameValues.reverse[modelName],
        "baseId": baseId,
        "rating": rating,
    };
}

enum WorkRate { MEDIUM, HIGH }

final workRateValues = new EnumValues({
    "High": WorkRate.HIGH,
    "Medium": WorkRate.MEDIUM
});

class Attribute {
    AttributeName name;
    int value;
    List<int> chemistryBonus;

    Attribute({
        this.name,
        this.value,
        this.chemistryBonus,
    });

    factory Attribute.fromJson(Map<String, dynamic> json) => new Attribute(
        name: attributeNameValues.map[json["name"]],
        value: json["value"],
        chemistryBonus: new List<int>.from(json["chemistryBonus"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "name": attributeNameValues.reverse[name],
        "value": value,
        "chemistryBonus": new List<dynamic>.from(chemistryBonus.map((x) => x)),
    };
}

enum AttributeName { FUT_ATTRIBUTE_PAC, FUT_ATTRIBUTE_SHO, FUT_ATTRIBUTE_PAS, FUT_ATTRIBUTE_DRI, FUT_ATTRIBUTE_DEF, FUT_ATTRIBUTE_PHY }

final attributeNameValues = new EnumValues({
    "fut.attribute.DEF": AttributeName.FUT_ATTRIBUTE_DEF,
    "fut.attribute.DRI": AttributeName.FUT_ATTRIBUTE_DRI,
    "fut.attribute.PAC": AttributeName.FUT_ATTRIBUTE_PAC,
    "fut.attribute.PAS": AttributeName.FUT_ATTRIBUTE_PAS,
    "fut.attribute.PHY": AttributeName.FUT_ATTRIBUTE_PHY,
    "fut.attribute.SHO": AttributeName.FUT_ATTRIBUTE_SHO
});

class Club {
    ClubImageUrls imageUrls;
    String abbrName;
    int id;
    dynamic imgUrl;
    String name;

    Club({
        this.imageUrls,
        this.abbrName,
        this.id,
        this.imgUrl,
        this.name,
    });

    factory Club.fromJson(Map<String, dynamic> json) => new Club(
        imageUrls: ClubImageUrls.fromJson(json["imageUrls"]),
        abbrName: json["abbrName"],
        id: json["id"],
        imgUrl: json["imgUrl"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "imageUrls": imageUrls.toJson(),
        "abbrName": abbrName,
        "id": id,
        "imgUrl": imgUrl,
        "name": name,
    };
}

class ClubImageUrls {
    ImageUrls dark;
    ImageUrls light;

    ClubImageUrls({
        this.dark,
        this.light,
    });

    factory ClubImageUrls.fromJson(Map<String, dynamic> json) => new ClubImageUrls(
        dark: ImageUrls.fromJson(json["dark"]),
        light: ImageUrls.fromJson(json["light"]),
    );

    Map<String, dynamic> toJson() => {
        "dark": dark.toJson(),
        "light": light.toJson(),
    };
}

class ImageUrls {
    String small;
    String medium;
    String large;

    ImageUrls({
        this.small,
        this.medium,
        this.large,
    });

    factory ImageUrls.fromJson(Map<String, dynamic> json) => new ImageUrls(
        small: json["small"],
        medium: json["medium"],
        large: json["large"],
    );

    Map<String, dynamic> toJson() => {
        "small": small,
        "medium": medium,
        "large": large,
    };
}

enum Foot { LEFT, RIGHT }

final footValues = new EnumValues({
    "Left": Foot.LEFT,
    "Right": Foot.RIGHT
});

class Headshot {
    String imgUrl;
    bool isDynamicPortrait;

    Headshot({
        this.imgUrl,
        this.isDynamicPortrait,
    });

    factory Headshot.fromJson(Map<String, dynamic> json) => new Headshot(
        imgUrl: json["imgUrl"],
        isDynamicPortrait: json["isDynamicPortrait"],
    );

    Map<String, dynamic> toJson() => {
        "imgUrl": imgUrl,
        "isDynamicPortrait": isDynamicPortrait,
    };
}

class IconAttributes {
    List<TeamStat> clubTeamStats;
    List<TeamStat> nationalTeamStats;
    String iconText;

    IconAttributes({
        this.clubTeamStats,
        this.nationalTeamStats,
        this.iconText,
    });

    factory IconAttributes.fromJson(Map<String, dynamic> json) => new IconAttributes(
        clubTeamStats: new List<TeamStat>.from(json["clubTeamStats"].map((x) => TeamStat.fromJson(x))),
        nationalTeamStats: new List<TeamStat>.from(json["nationalTeamStats"].map((x) => TeamStat.fromJson(x))),
        iconText: json["iconText"],
    );

    Map<String, dynamic> toJson() => {
        "clubTeamStats": new List<dynamic>.from(clubTeamStats.map((x) => x.toJson())),
        "nationalTeamStats": new List<dynamic>.from(nationalTeamStats.map((x) => x.toJson())),
        "iconText": iconText,
    };
}

class TeamStat {
    int years;
    int clubId;
    String clubName;
    int appearances;
    int goals;

    TeamStat({
        this.years,
        this.clubId,
        this.clubName,
        this.appearances,
        this.goals,
    });

    factory TeamStat.fromJson(Map<String, dynamic> json) => new TeamStat(
        years: json["years"],
        clubId: json["clubId"],
        clubName: json["clubName"],
        appearances: json["appearances"],
        goals: json["goals"],
    );

    Map<String, dynamic> toJson() => {
        "years": years,
        "clubId": clubId,
        "clubName": clubName,
        "appearances": appearances,
        "goals": goals,
    };
}

enum ItemType { PLAYER }

final itemTypeValues = new EnumValues({
    "player": ItemType.PLAYER
});

class League {
    LeagueImageUrls imageUrls;
    String abbrName;
    int id;
    dynamic imgUrl;
    String name;

    League({
        this.imageUrls,
        this.abbrName,
        this.id,
        this.imgUrl,
        this.name,
    });

    factory League.fromJson(Map<String, dynamic> json) => new League(
        imageUrls: LeagueImageUrls.fromJson(json["imageUrls"]),
        abbrName: json["abbrName"],
        id: json["id"],
        imgUrl: json["imgUrl"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "imageUrls": imageUrls.toJson(),
        "abbrName": abbrName,
        "id": id,
        "imgUrl": imgUrl,
        "name": name,
    };
}

class LeagueImageUrls {
    String dark;
    String light;

    LeagueImageUrls({
        this.dark,
        this.light,
    });

    factory LeagueImageUrls.fromJson(Map<String, dynamic> json) => new LeagueImageUrls(
        dark: json["dark"],
        light: json["light"],
    );

    Map<String, dynamic> toJson() => {
        "dark": dark,
        "light": light,
    };
}

enum ModelName { FUT_PLAYER_ITEM }

final modelNameValues = new EnumValues({
    "FUTPlayerItem": ModelName.FUT_PLAYER_ITEM
});

class Nation {
    ImageUrls imageUrls;
    AbbrNameEnum abbrName;
    int id;
    dynamic imgUrl;
    AbbrNameEnum name;

    Nation({
        this.imageUrls,
        this.abbrName,
        this.id,
        this.imgUrl,
        this.name,
    });

    factory Nation.fromJson(Map<String, dynamic> json) => new Nation(
        imageUrls: ImageUrls.fromJson(json["imageUrls"]),
        abbrName: abbrNameEnumValues.map[json["abbrName"]],
        id: json["id"],
        imgUrl: json["imgUrl"],
        name: abbrNameEnumValues.map[json["name"]],
    );

    Map<String, dynamic> toJson() => {
        "imageUrls": imageUrls.toJson(),
        "abbrName": abbrNameEnumValues.reverse[abbrName],
        "id": id,
        "imgUrl": imgUrl,
        "name": abbrNameEnumValues.reverse[name],
    };
}

enum AbbrNameEnum { ARGENTINA }

final abbrNameEnumValues = new EnumValues({
    "Argentina": AbbrNameEnum.ARGENTINA
});

enum PlayStyle { BASIC }

final playStyleValues = new EnumValues({
    "Basic": PlayStyle.BASIC
});

enum Quality { GOLD }

final qualityValues = new EnumValues({
    "gold": Quality.GOLD
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
