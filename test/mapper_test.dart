import 'package:flutter_test/flutter_test.dart';
import 'package:mapper/mapper.dart';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:mockito/mockito.dart';
// class MockQuerySnapshot extends Mock implements QuerySnapshot<Object> {}
// class MockQueryDocumentSnapshot extends Mock implements QueryDocumentSnapshot<Object> {}

void main() {
  // -----------------------------------------------------------------------------

  /// CLEANING

  // --------------------
  const Map<String, dynamic> _map = {
    'id': 'id',
    'name': 'name',
    'phid': 'phid',
    'phidType': 'phidType',
    'thing': 0,
  };
  // -----------------------------------------------------------------------------
  /// AI GENERATED
  test('getMapsPrimaryKeysValues', () {
    final List<Map<String, dynamic>> maps = [
      {'id': '1', 'name': 'John Doe'},
      {'id': '2', 'name': 'Jane Doe'},
      {'id': '3', 'name': 'Bob Smith'},
    ];

    final List<String> primaryKeys = Mapper.getMapsPrimaryKeysValues(
      maps: maps,
      // primaryKey: 'id',
    );

    expect(primaryKeys, ['1', '2', '3']);
  });
  // --------------------
  /// AI GENERATED
  test('getMapsPrimaryKeysValues 2', () {
    final List<Map<String, dynamic>> maps = [
      {'id': 1, 'name': 'John Doe'},
      {'id': 2, 'name': 'Jane Doe'},
      {'id': 3, 'name': 'Bob Smith'},
    ];

    final List<String> primaryKeys = Mapper.getMapsPrimaryKeysValues(
      maps: maps,
      // primaryKey: 'id',
      // throwErrorOnInvalidID: false,
    );

    expect(primaryKeys, []);
  });
  // --------------------
  /// AI GENERATED
  test('getMapsPrimaryKeysValues with custom primaryKey', () {
    final List<Map<String, dynamic>> maps = [
      {'custom_id': 'a1', 'name': 'John Doe'},
      {'custom_id': 'b2', 'name': 'Jane Doe'},
      {'custom_id': 'c3', 'name': 'Bob Smith'},
    ];

    final List<String> primaryKeys =
        Mapper.getMapsPrimaryKeysValues(maps: maps, primaryKey: 'custom_id');

    expect(primaryKeys, ['a1', 'b2', 'c3']);
  });
  // -----------------------------------------------------------------------------
  /// AI GENERATED
  test('insertPairInMap', () {
    final Map<String, dynamic> map = {'name': 'John Doe'};
    final Map<String, dynamic> result = Mapper.insertPairInMap(
      map: map,
      key: 'age',
      value: 30,
    );

    expect(result, {'name': 'John Doe', 'age': 30});
  });
  // --------------------
  /// AI GENERATED
  test('insertPairInMap with overrideExisting', () {
    final Map<String, dynamic> map = {'name': 'John Doe', 'age': 25};
    final Map<String, dynamic> result = Mapper.insertPairInMap(
      map: map,
      key: 'age',
      value: 30,
      overrideExisting: true,
    );

    expect(result, {'name': 'John Doe', 'age': 30});
  });
  // --------------------
  /// AI GENERATED
  test('insertPairInMap with empty map', () {
    final Map<String, dynamic> map = {};
    final Map<String, dynamic> result = Mapper.insertPairInMap(
      map: map,
      key: 'age',
      value: 30,
    );

    expect(result, {'age': 30});
  });
  // --------------------
  /// AI GENERATED
  test('insertPairInMap with null map', () {
    final Map<String, dynamic> result = Mapper.insertPairInMap(
      map: null,
      key: 'age',
      value: 30,
    );

    expect(result, {});
  });
  // --------------------
  /// AI GENERATED
  test('insertPairInMap with null key', () {
    final Map<String, dynamic> map = {'name': 'John Doe'};
    final Map<String, dynamic> result = Mapper.insertPairInMap(
      map: map,
      key: null,
      value: 30,
    );

    expect(result, map);
  });
  // --------------------
  /// AI GENERATED
  test('insertPairInMap with null value', () {
    final Map<String, dynamic> map = {'name': 'John Doe'};
    final Map<String, dynamic> result = Mapper.insertPairInMap(
      map: map,
      key: 'age',
      value: null,
    );

    expect(result, {'name': 'John Doe', 'age': null});
  });
  // --------------------
  /// AI GENERATED
  test('insertPairInMap with existing key and overrideExisting false', () {
    final Map<String, dynamic> map = {'name': 'John Doe', 'age': 25};
    final Map<String, dynamic> result = Mapper.insertPairInMap(
      map: map,
      key: 'age',
      value: 30,
      // overrideExisting: false,
    );

    expect(result, map);
  });
  // -----------------------------------------------------------------------------
  final List<Map<String, dynamic>> maps = [
    {'id': '1', 'name': 'John Doe', 'age': 30},
    {'id': '2', 'name': 'Jane Smith', 'age': 25},
    {'id': '3', 'name': 'Bob Johnson', 'age': 35},
  ];
  // --------------------
  /// AI GENERATED
  test('getMapFromMapsByID with existing ID', () {
    final Map<String, dynamic> result = Mapper.getMapFromMapsByID(
      maps: maps,
      id: '2',
    );
    expect(result, {'id': '2', 'name': 'Jane Smith', 'age': 25});
  });
  // --------------------
  /// AI GENERATED
  test('getMapFromMapsByID with non-existing ID', () {
    final Map<String, dynamic> result = Mapper.getMapFromMapsByID(
      maps: maps,
      id: '4',
    );
    expect(result, null);
  });
  // --------------------
  /// AI GENERATED
  test('getMapFromMapsByID with null ID', () {
    final Map<String, dynamic> result = Mapper.getMapFromMapsByID(
      maps: maps,
      id: null,
    );
    expect(result, null);
  });
  // --------------------
  /// AI GENERATED
  test('getMapFromMapsByID with null maps', () {
    final Map<String, dynamic> result = Mapper.getMapFromMapsByID(
      maps: null,
      id: '2',
    );
    expect(result, null);
  });
  // --------------------
  /// AI GENERATED
  test('getMapFromMapsByID with custom ID field name', () {
    final Map<String, dynamic> result = Mapper.getMapFromMapsByID(
      maps: [
        {'customID': '1', 'name': 'John Doe', 'age': 30},
        {'customID': '2', 'name': 'Jane Smith', 'age': 25},
      ],
      id: '2',
      idFieldName: 'customID',
    );
    expect(result, {'customID': '2', 'name': 'Jane Smith', 'age': 25});
  });
  // -----------------------------------------------------------------------------
  final List<Map<String, dynamic>> _maps2 = [
    {'id': '1', 'name': 'John Doe', 'age': 30},
    {'id': '2', 'name': 'Jane Smith', 'age': 25},
    {'id': '3', 'name': 'Bob Johnson', 'age': 35},
  ];
  // --------------------
  /// AI GENERATED
  test('getMapIndexByID with existing ID', () {
    final int result = Mapper.getMapIndexByID(
      maps: _maps2,
      id: '2',
      // idFieldName: 'id',
    );
    expect(result, 1);
  });
  // --------------------
  /// AI GENERATED
  test('getMapIndexByID with non-existing ID', () {
    final int result = Mapper.getMapIndexByID(
      maps: _maps2,
      id: '4',
    );
    expect(result, -1);
  });
  // --------------------
  /// AI GENERATED
  test('getMapIndexByID with null ID', () {
    final int result = Mapper.getMapIndexByID(
      maps: _maps2,
      id: null,
    );
    expect(result, -1);
  });
  // --------------------
  /// AI GENERATED
  test('getMapIndexByID with null maps', () {
    final int result = Mapper.getMapIndexByID(
      maps: null,
      id: '2',
    );
    expect(result, -1);
  });
  // --------------------
  /// AI GENERATED
  test('getMapIndexByID with custom ID field name', () {
    final int result = Mapper.getMapIndexByID(
      maps: [
        {'customID': '1', 'name': 'John Doe', 'age': 30},
        {'customID': '2', 'name': 'Jane Smith', 'age': 25},
        {'customID': '3', 'name': 'Bob Johnson', 'age': 35},
      ],
      id: '2',
      idFieldName: 'customID',
    );
    expect(result, 1);
  });
  // -----------------------------------------------------------------------------
  final Map<String, Object> _map3 = {
    'id': '1',
    'name': 'John Doe',
    'age': 30,
    'address': {'city': 'New York', 'zip': '10001'}
  };
  // --------------------
  /// PERFECT
  test('removePair', () {
    final Map<String, dynamic> _a = Mapper.removePair(
      map: {},
      fieldKey: 'id',
    );
    expect(_a, {});

    final Map<String, dynamic> _b = Mapper.removePair(
      map: null,
      fieldKey: 'id',
    );
    expect(_b, {});

    final Map<String, dynamic> _c = Mapper.removePair(
      map: {'id': 'x'},
      fieldKey: 'id',
    );
    expect(_c, {});

    final Map<String, dynamic> _d = Mapper.removePair(
      map: _map,
      fieldKey: 'id',
    );

    const Map<String, dynamic> _expected = {
      'name': 'name',
      'phid': 'phid',
      'phidType': 'phidType',
      'thing': 0,
    };

    expect(_d, _expected);
  });
  // --------------------
  /// AI GENERATED
  test('removePair with existing key', () {
    final Map<String, Object> result = Mapper.removePair(
      map: _map3,
      fieldKey: 'name',
    );
    expect(result, {
      'id': '1',
      'age': 30,
      'address': {'city': 'New York', 'zip': '10001'}
    });
  });
  // --------------------
  /// AI GENERATED
  test('removePair with non-existing key', () {
    final Map<String, Object> result = Mapper.removePair(
      map: _map3,
      fieldKey: 'gender',
    );
    expect(result, _map3);
  });
  // --------------------
  /// AI GENERATED
  test('removePair with null key', () {
    final Map<String, Object> result = Mapper.removePair(
      map: _map3,
      fieldKey: null,
    );
    expect(result, _map3);
  });
  // --------------------
  /// AI GENERATED
  test('removePair with null _map3', () {
    final Map<String, Object> result = Mapper.removePair(
      map: null,
      fieldKey: 'name',
    );
    expect(result, {});
  });
  // -----------------------------------------------------------------------------
  final Map<String, dynamic> baseMapA = {
    'id': '1',
    'name': 'John Doe',
    'age': 30,
  };
  final Map<String, dynamic> insertMapA = {
    'address': {'city': 'New York', 'zip': '10001'},
    'phone': '555-555-5555',
  };
  // --------------------
  /// AI GENERATED
  test('insertMapInMap with replaceDuplicateKeys = true', () {
    final Map<String, dynamic> result = Mapper.insertMapInMap(
      baseMap: baseMapA,
      insert: insertMapA,
      // replaceDuplicateKeys: true,
    );
    expect(result, {
      'id': '1',
      'name': 'John Doe',
      'age': 30,
      'address': {'city': 'New York', 'zip': '10001'},
      'phone': '555-555-5555',
    });
  });
  // --------------------
  /// AI GENERATED
  test('insertMapInMap with replaceDuplicateKeys = false', () {
    final Map<String, dynamic> result = Mapper.insertMapInMap(
      baseMap: baseMapA,
      insert: insertMapA,
      replaceDuplicateKeys: false,
    );
    expect(result, {
      'id': '1',
      'name': 'John Doe',
      'age': 30,
      'address': {'city': 'New York', 'zip': '10001'},
      'phone': '555-555-5555',
    });
  });
  // --------------------
  /// AI GENERATED
  test('insertMapInMap with null baseMapA', () {
    final Map<String, dynamic> result = Mapper.insertMapInMap(
      baseMap: null,
      insert: insertMapA,
      // replaceDuplicateKeys: true,
    );

    expect(result, insertMapA);
  });
  //--------------------
  /// AI GENERATED
  test('insertMapInMap with null insertMapA', () {
    final Map<String, dynamic> result = Mapper.insertMapInMap(
      baseMap: baseMapA,
      insert: null,
      // replaceDuplicateKeys: true,
    );
    expect(result, baseMapA);
  });
  // --------------------
  /// AI GENERATED
  test('insertMapInMap with duplicate keys and replaceDuplicateKeys = true', () {
    final Map<String, dynamic> baseMap = {
      'id': '1',
      'name': 'John Doe',
      'age': 30,
    };

    final Map<String, dynamic> insertMap = {
      'id': '2',
      'name': 'Jane Doe',
      'age': 25,
    };
    final Map<String, dynamic> result = Mapper.insertMapInMap(
      baseMap: baseMap,
      insert: insertMap,
      // replaceDuplicateKeys: true,
    );
    expect(result, {
      'id': '2',
      'name': 'Jane Doe',
      'age': 25,
      // 'address': {'city': 'New York', 'zip': '10001'},
      // 'phone': '555-555-5555',
    });
  });
  // --------------------
  /// AI GENERATED
  test('insertMapInMap with duplicate keys and replaceDuplicateKeys = false', () {
    final Map<String, dynamic> baseMap = {
      'id': '1',
      'name': 'John Doe',
      'age': 30,
    };

    final Map<String, dynamic> insertMap = {
      'id': '2',
      'name': 'Jane Doe',
      'age': 25,
    };
    final Map<String, dynamic> result = Mapper.insertMapInMap(
      baseMap: baseMap,
      insert: insertMap,
      replaceDuplicateKeys: false,
    );
    expect(result, {
      'id': '1',
      'name': 'John Doe',
      'age': 30,
      // 'address': {'city': 'New York', 'zip': '10001'},
      // 'phone': '555-555-5555',
      // 'id': '2',
      // 'name': 'Jane Doe',
      // 'age': 25,
    });
  });
  // --------------------
  /// AI GENERATED
  test('insertMapInMap with nested maps', () {

    final Map<String, dynamic> baseMap = {
      'id': '1',
      'name': 'John Doe',
      'age': 30,
    };

      final Map<String, dynamic> insertMap = {
          'address': {'city': 'Los Angeles', 'zip': '90001'},
      };

      final Map<String, dynamic> result = Mapper.insertMapInMap(
          baseMap: baseMap,
          insert: insertMap,
          // replaceDuplicateKeys: true,
      );

      expect(result, {
        'id': '1',
        'name': 'John Doe',
        'age': 30,
        'address': {'city': 'Los Angeles', 'zip': '90001'},
        });

  });
  // --------------------
  /// AI GENERATED
  test('insertMapInMap with empty baseMap and insertMap', () {

    final Map<String, dynamic> result = Mapper.insertMapInMap(
      baseMap: {},
      insert: {},
      // replaceDuplicateKeys: true,
    );

  expect(result, {});

  });
  // -----------------------------------------------------------------------------
  test('cleanZeroValuesPairs cleanZeroValuesPairs', () {
    final Map<String, dynamic> _cleaned = Mapper.cleanZeroValuesPairs(
      map: _map,
    );

    const Map<String, dynamic> _expected = {
      'id': 'id',
      'name': 'name',
      'phid': 'phid',
      'phidType': 'phidType',
    };

    expect(_cleaned, _expected);
  });
  // -----------------------------------------------------------------------------
  /// AI GENERATED
  test('cleanDuplicateMaps Test for empty input list', () {
    final List<Map<String, dynamic>> maps = <Map<String, dynamic>>[];
    final List<Map<String, dynamic>> result = Mapper.cleanDuplicateMaps(maps: maps);
    expect(result, <Map<String, dynamic>>[]);
  });
  // --------------------
  /// AI GENERATED
  test('cleanDuplicateMaps Test for list with duplicate maps', () {
    final List<Map<String, dynamic>> maps = <Map<String, dynamic>>[
      {'name': 'John', 'age': 30},
      {'name': 'Jane', 'age': 25},
      {'name': 'John', 'age': 30}
    ];
    final List<Map<String, dynamic>> result = Mapper.cleanDuplicateMaps(maps: maps);
    expect(result, <Map<String, dynamic>>[
      {'name': 'John', 'age': 30},
      {'name': 'Jane', 'age': 25}
    ]);
  });
  // --------------------
  /// AI GENERATED
  test('cleanDuplicateMaps Test for list with no duplicate maps', () {
    final List<Map<String, dynamic>> maps = <Map<String, dynamic>>[
      {'name': 'John', 'age': 30},
      {'name': 'Jane', 'age': 25},
      {'name': 'Mike', 'age': 35}
    ];
    final List<Map<String, dynamic>> result = Mapper.cleanDuplicateMaps(maps: maps);
    expect(result, <Map<String, dynamic>>[
      {'name': 'John', 'age': 30},
      {'name': 'Jane', 'age': 25},
      {'name': 'Mike', 'age': 35}
    ]);
  });
  // --------------------
  /// AI GENERATED
  test('cleanDuplicateMaps Test for list with duplicate maps but different keys', () {
    final List<Map<String, dynamic>> maps = <Map<String, dynamic>>[
      {'name': 'John', 'age': 30},
      {'name': 'Jane', 'age': 25},
      {'first_name': 'John', 'age': 30}
    ];
    final List<Map<String, dynamic>> result = Mapper.cleanDuplicateMaps(maps: maps);
    expect(result, <Map<String, dynamic>>[
      {'name': 'John', 'age': 30},
      {'name': 'Jane', 'age': 25},
      {'first_name': 'John', 'age': 30}
    ]);
  });
  // -----------------------------------------------------------------------------
  /// AI GENERATED
  test('cleanMapsOfDuplicateIDs Test for empty input list', () {
    final List<Map<String, dynamic>> maps = <Map<String, dynamic>>[];
    const String idFieldName = 'id';
    final List<Map<String, dynamic>> result = Mapper.cleanMapsOfDuplicateIDs(maps: maps, idFieldName:
    idFieldName);
    expect(result, <Map<String, dynamic>>[]);
  });
  // --------------------
  /// AI GENERATED
  test('cleanMapsOfDuplicateIDs Test for list with duplicate IDs', () {
    final List<Map<String, dynamic>> maps = <Map<String, dynamic>>[
      {'id': 1, 'name': 'John', 'age': 30},
      {'id': 2, 'name': 'Jane', 'age': 25},
      {'id': 1, 'name': 'Mike', 'age': 35}
    ];
    const String idFieldName = 'id';
    final List<Map<String, dynamic>> result = Mapper.cleanMapsOfDuplicateIDs(maps: maps, idFieldName:
    idFieldName);
    expect(result, <Map<String, dynamic>>[
      {'id': 1, 'name': 'John', 'age': 30},
      {'id': 2, 'name': 'Jane', 'age': 25}
    ]);
  });
  // --------------------
  /// AI GENERATED
  test('cleanMapsOfDuplicateIDs Test for list with no duplicate IDs', () {
    final List<Map<String, dynamic>> maps = <Map<String, dynamic>>[
      {'id': 1, 'name': 'John', 'age': 30},
      {'id': 2, 'name': 'Jane', 'age': 25},
      {'id': 3, 'name': 'Mike', 'age': 35}
    ];
    const String idFieldName = 'id';
    final List<Map<String, dynamic>> result = Mapper.cleanMapsOfDuplicateIDs(maps: maps, idFieldName:
    idFieldName);
    expect(result, <Map<String, dynamic>>[
      {'id': 1, 'name': 'John', 'age': 30},
      {'id': 2, 'name': 'Jane', 'age': 25},
      {'id': 3, 'name': 'Mike', 'age': 35}
    ]);
  });
  // --------------------
  /// AI GENERATED
  test('cleanMapsOfDuplicateIDs Test for list with duplicate IDs but different fields', () {
    final List<Map<String, dynamic>> maps = <Map<String, dynamic>>[
      {'id': 1, 'name': 'John', 'age': 30},
      {'id': 2, 'name': 'Jane', 'age': 25},
      {'id': 1, 'first_name': 'Mike', 'age': 35}
    ];
    const String idFieldName = 'id';
    final List<Map<String, dynamic>> result = Mapper.cleanMapsOfDuplicateIDs(maps: maps, idFieldName:
    idFieldName);
    expect(result, <Map<String, dynamic>>[
      {'id': 1, 'name': 'John', 'age': 30},
      {'id': 2, 'name': 'Jane', 'age': 25}
    ]);
  });
  // -----------------------------------------------------------------------------

  /// CLEANING

  // --------------------
  const Map<String, dynamic> _mapXXX = {
    'id': 'id',
    'name': 'name',
    'phid': 'phid',
    'phidType': 'phidType',
    'thing': 0,
  };
  // --------------------
  test('cleanZeroValuesPairs', () {

    final Map<String, dynamic> _cleaned = Mapper.cleanZeroValuesPairs(
      map: _mapXXX,
    );

    const Map<String, dynamic> _expected = {
      'id': 'id',
      'name': 'name',
      'phid': 'phid',
      'phidType': 'phidType',
    };

    expect(_cleaned, _expected);

  });
  // --------------------
  test('removePair', () {

    final Map<String, dynamic> _a = Mapper.removePair(
      map: {},
      fieldKey: 'id',
    );
    expect(_a, {});

    final Map<String, dynamic> _b = Mapper.removePair(
      map: null,
      fieldKey: 'id',
    );
    expect(_b, {});


    final Map<String, dynamic> _c = Mapper.removePair(
      map: {'id' : 'x'},
      fieldKey: 'id',
    );
    expect(_c, {});

    final Map<String, dynamic> _d = Mapper.removePair(
      map: _mapXXX,
      fieldKey: 'id',
    );

    const Map<String, dynamic> _expected = {
      'name': 'name',
      'phid': 'phid',
      'phidType': 'phidType',
      'thing': 0,
    };

    expect(_d, _expected);



  });
  // -----------------------------------------------------------------------------
  void f() {}
}
