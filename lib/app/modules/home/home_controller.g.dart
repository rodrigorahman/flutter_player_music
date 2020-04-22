// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$bandsFutureAtom = Atom(name: '_HomeControllerBase.bandsFuture');

  @override
  ObservableFuture<List<BandModel>> get bandsFuture {
    _$bandsFutureAtom.context.enforceReadPolicy(_$bandsFutureAtom);
    _$bandsFutureAtom.reportObserved();
    return super.bandsFuture;
  }

  @override
  set bandsFuture(ObservableFuture<List<BandModel>> value) {
    _$bandsFutureAtom.context.conditionallyRunInAction(() {
      super.bandsFuture = value;
      _$bandsFutureAtom.reportChanged();
    }, _$bandsFutureAtom, name: '${_$bandsFutureAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void findAll() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.findAll();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'bandsFuture: ${bandsFuture.toString()}';
    return '{$string}';
  }
}
