Future llamadaPesada1() async {
  return await Future.delayed(Duration(seconds: 2));
}

Future llamadaPesada2() async {
  return await Future.delayed(Duration(seconds: 1));
}

Future llamadaPesada3() async {
  return await Future.delayed(Duration(seconds: 1));
}
