import 'dart:convert';

class Encuesta {
    String p1;
    String p2;
    String p3;
    String p4;
    String p5;
    String p6;
    String p7;
    String p8;
    String p9;
    String p10;
    String p11;
    String p12;
    String p13;
    String p14;
    String p15;
    String p16;
    String p17;
    String p18;
    String email;

    Encuesta({
        required this.p1,
        required this.p2,
        required this.p3,
        required this.p4,
        required this.p5,
        required this.p6,
        required this.p7,
        required this.p8,
        required this.p9,
        required this.p10,
        required this.p11,
        required this.p12,
        required this.p13,
        required this.p14,
        required this.p15,
        required this.p16,
        required this.p17,
        required this.p18,
        required this.email,
    });

    factory Encuesta.fromJson(String str) => Encuesta.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Encuesta.fromMap(Map<String, dynamic> json) => Encuesta(
        p1: json["P1"],
        p2: json["P2"],
        p3: json["P3"],
        p4: json["P4"],
        p5: json["P5"],
        p6: json["P6"],
        p7: json["P7"],
        p8: json["P8"],
        p9: json["P9"],
        p10: json["P10"],
        p11: json["P11"],
        p12: json["P12"],
        p13: json["P13"],
        p14: json["P14"],
        p15: json["P15"],
        p16: json["P16"],
        p17: json["P17"],
        p18: json["P18"],
        email: json["email"],
    );

    Map<String, dynamic> toMap() => {
        "P1": p1,
        "P2": p2,
        "P3": p3,
        "P4": p4,
        "P5": p5,
        "P6": p6,
        "P7": p7,
        "P8": p8,
        "P9": p9,
        "P10": p10,
        "P11": p11,
        "P12": p12,
        "P13": p13,
        "P14": p14,
        "P15": p15,
        "P16": p16,
        "P17": p17,
        "P18": p18,
        "email": email,
    };
}
