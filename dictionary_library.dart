typedef LD = list_dictionary;

class list_dictionary {
  late List<Map<String, String>> A = [];
  void _add({
    required String term,
    required String definition,
  }) {
    A.add({"term": "${term}", "definition": "${definition}"});
  }

  void get({
    required String term,
  }) {
    for (var item in this.A) {
      if (item["term"] == term) {
        print('"$term"의 뜻은 "${item["definition"]}" 입니다.');
        return;
      }
    }
    print('사전에 "$term"의 뜻이 없습니다.');
  }

  void delete({
    required String term,
  }) {
    late var remove_item;
    for (var item in this.A) {
      if (item["term"] == term) {
        remove_item = item;
      }
    }
    this.A.remove(remove_item);
  }

  void _update({
    required String term,
    required String definition,
  }) {
    for (var item in this.A) {
      if (item["term"] == term) {
        item["definition"] = definition;
        return;
      }
    }
  }

  void showAll() {
    print("\n사전");
    for (var item in this.A) {
      print("${item["term"]}: '${item["definition"]}'");
    }
  }

  void count() {
    print(this.A.length);
  }

  bool exists({
    required String term,
  }) {
    bool i = false;
    for (var item in this.A) {
      if (item["term"] == term) {
        i = true;
      }
    }
    return i;
  }

  void upsert({
    required String term,
    required String definition,
  }) {
    if (exists(term: term)) {
      _update(term: term, definition: definition);
    } else {
      _add(term: term, definition: definition);
    }
  }

  void bulkAdd(
    List<Map<String, String>> terms,
  ) {
    for (var item in terms) {
      upsert(term: "${item["term"]}", definition: "${item["definition"]}");
    }
  }

  void bulkDelete(
    List<String> terms,
  ) {
    for (var item in terms) {
      delete(term: "$item");
    }
  }
}
