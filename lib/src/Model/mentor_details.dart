// To parse this JSON data, do
//
//     final mentorDetails = mentorDetailsFromJson(jsonString);

import 'dart:convert';

MentorDetails mentorDetailsFromJson(String str) => MentorDetails.fromJson(json.decode(str));

String mentorDetailsToJson(MentorDetails data) => json.encode(data.toJson());

class MentorDetails {
    MentorDetails({
        required this.course,
        required this.email,
        required this.gre,
        required this.id,
        required this.linkedin,
        required this.name,
        required this.pgUniversity,
        required this.ugclgtier,
        required this.ugcourse,
        required this.university,
        required this.workExperience,
    }); 

    String course;
    String email;
    String gre;
    int id;
    String linkedin;
    String name;
    String pgUniversity;
    String ugclgtier;
    String ugcourse;
    String university;
    String workExperience;

    factory MentorDetails.fromJson(Map<String, dynamic> json) => MentorDetails(
        course: json["course"],
        email: json["email"],
        gre: json["gre"],
        id: json["id"],
        linkedin: json["linkedin"],
        name: json["name"],
        pgUniversity: json["pgUniversity"],
        ugclgtier: json["ugclgtier"],
        ugcourse: json["ugcourse"],
        university: json["university"],
        workExperience: json["workExperience"],
    );

    Map<String, dynamic> toJson() => {
        "course": course,
        "email": email,
        "gre": gre,
        "id": id,
        "linkedin": linkedin,
        "name": name,
        "pgUniversity": pgUniversity,
        "ugclgtier": ugclgtier,
        "ugcourse": ugcourse,
        "university": university,
        "workExperience": workExperience,
    };
}
