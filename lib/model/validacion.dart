import 'dart:convert';

class Validacion {
    String email;
    String r1;
    String r2;
    String r3;
    String r4;
    String r5;
    String r6;
    String r7;
    String r8;
    String r9;
    String r10;
    String r11;
    String r12;
    String r13;
    String r14;
    String r15;
    String r16;

    Validacion({
        required this.email,
        required this.r1,
        required this.r2,
        required this.r3,
        required this.r4,
        required this.r5,
        required this.r6,
        required this.r7,
        required this.r8,
        required this.r9,
        required this.r10,
        required this.r11,
        required this.r12,
        required this.r13,
        required this.r14,
        required this.r15,
        required this.r16,
    });

    factory Validacion.fromJson(String str) => Validacion.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Validacion.fromMap(Map<String, dynamic> json) => Validacion(
        email: json["email"],
        r1: json["r1"],
        r2: json["r2"],
        r3: json["r3"],
        r4: json["r4"],
        r5: json["r5"],
        r6: json["r6"],
        r7: json["r7"],
        r8: json["r8"],
        r9: json["r9"],
        r10: json["r10"],
        r11: json["r11"],
        r12: json["r12"],
        r13: json["r13"],
        r14: json["r14"],
        r15: json["r15"],
        r16: json["r16"],
    );

    Map<String, dynamic> toMap() => {
        "email": email,
        "r1": r1,
        "r2": r2,
        "r3": r3,
        "r4": r4,
        "r5": r5,
        "r6": r6,
        "r7": r7,
        "r8": r8,
        "r9": r9,
        "r10": r10,
        "r11": r11,
        "r12": r12,
        "r13": r13,
        "r14": r14,
        "r15": r15,
        "r16": r16,
    };
}
