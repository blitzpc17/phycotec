import 'dart:convert';

class Estudiante {
    String nombre;
    String fechaNacimiento;
    String edad;
    String institucionEducativa;
    String escolaridad;
    String direccion;
    String telefono;
    String nombreMadre;
    String edadMadre;
    String ocupacionMadre;
    String escolaridadMadre;
    String estadoCivilMadre;
    String nombrePadre;
    String edadPadre;
    String ocupacionPadre;
    String escolaridadPadre;
    String estadoCivilPadre;
    String hermanos;
    String email;
    String password;
    String? id;

    Estudiante({
        required this.nombre,
        required this.fechaNacimiento,
        required this.edad,
        required this.institucionEducativa,
        required this.escolaridad,
        required this.direccion,
        required this.telefono,
        required this.nombreMadre,
        required this.edadMadre,
        required this.ocupacionMadre,
        required this.escolaridadMadre,
        required this.estadoCivilMadre,
        required this.nombrePadre,
        required this.edadPadre,
        required this.ocupacionPadre,
        required this.escolaridadPadre,
        required this.estadoCivilPadre,
        required this.hermanos,
        required this.email,
        required this.password,
        required this.id,
    });

    factory Estudiante.fromJson(String str) => Estudiante.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Estudiante.fromMap(Map<String, dynamic> json) => Estudiante(
        nombre: json["Nombre"],
        fechaNacimiento: json["FechaNacimiento"],
        edad: json["Edad"],
        institucionEducativa: json["InstitucionEducativa"],
        escolaridad: json["Escolaridad"],
        direccion: json["Direccion"],
        telefono: json["Telefono"],
        nombreMadre: json["NombreMadre"],
        edadMadre: json["EdadMadre"],
        ocupacionMadre: json["OcupacionMadre"],
        escolaridadMadre: json["EscolaridadMadre"],
        estadoCivilMadre: json["EstadoCivilMadre"],
        nombrePadre: json["NombrePadre"],
        edadPadre: json["EdadPadre"],
        ocupacionPadre: json["OcupacionPadre"],
        escolaridadPadre: json["EscolaridadPadre"],
        estadoCivilPadre: json["EstadoCivilPadre"],
        hermanos: json["Hermanos"],
        email: json["email"],
        password: json["password"],
        id: json["id"],
    );

    Map<String, dynamic> toMap() => {
        "Nombre": nombre,
        "FechaNacimiento": fechaNacimiento,
        "Edad": edad,
        "InstitucionEducativa": institucionEducativa,
        "Escolaridad": escolaridad,
        "Direccion": direccion,
        "Telefono": telefono,
        "NombreMadre": nombreMadre,
        "EdadMadre": edadMadre,
        "OcupacionMadre": ocupacionMadre,
        "EscolaridadMadre": escolaridadMadre,
        "EstadoCivilMadre": estadoCivilMadre,
        "NombrePadre": nombrePadre,
        "EdadPadre": edadPadre,
        "OcupacionPadre": ocupacionPadre,
        "EscolaridadPadre": escolaridadPadre,
        "EstadoCivilPadre": estadoCivilPadre,
        "Hermanos": hermanos,
        "email": email,
        "password": password,
        "id": id,
    };
}
