import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

//mostrar proyectos
Future<List<Map<String, dynamic>>?> getProjects() async {
  List<Map<String, dynamic>> projects = [];
  CollectionReference collectionReferenceProject = db.collection('Proyectos');
  QuerySnapshot queryProject = await collectionReferenceProject.get();

  queryProject.docs.forEach((proyecto) {
    projects.add(proyecto.data() as Map<String, dynamic>);
  });

  return projects;
}

//guardar proyectos
Future<void> addProject(String name, String description, String course, String cycle) async {
  await db.collection("Proyectos").add({
    "Nombre":name,
    "Descripcion": description,
    "Curso": course,
    "Ciclo": cycle,});
}

