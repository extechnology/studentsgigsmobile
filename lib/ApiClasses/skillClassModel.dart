class SkillCategory {
  final String category;
  final List<Skill> skills;

  SkillCategory({required this.category, required this.skills});

  factory SkillCategory.fromJson(Map<String, dynamic> json) {
    return SkillCategory(
      category: json['category'],
      skills: List<Skill>.from(json['skills'].map((x) => Skill.fromJson(x))),
    );
  }
}

class Skill {
  final String label;
  final String value;

  Skill({required this.label, required this.value});

  factory Skill.fromJson(Map<String, dynamic> json) {
    return Skill(
      label: json['label'],
      value: json['value'],
    );
  }
}
