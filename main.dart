import 'dictionary_library.dart';

void main() {
  LD DT = LD();
  DT.upsert(term: "쌀", definition: "한국인의 주식");
  DT.upsert(term: "김치", definition: "빨간 음식");
  DT.upsert(term: "노마드코더", definition: "최고의 개발자");
  DT.showAll();
  DT.bulkAdd([
    {"term": "김치찌개", "definition": "대박이네~"},
    {"term": "아파트", "definition": "비싸네~"}
  ]);
  DT.showAll();
  DT.bulkDelete(["김치", "아파트"]);
  DT.showAll();
}
