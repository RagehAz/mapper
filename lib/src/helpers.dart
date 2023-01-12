import 'package:flutter/material.dart';

// -----------------------------------------------------------------------------

/// BLOGGING

// --------------------
/// TESTED : WORKS PERFECT
void blog(dynamic msg, {String invoker}){

  assert((){
    // log(msg.toString());
    // ignore: avoid_print
    print(msg?.toString());
    return true;
  }(), '_');

  /// NOUR IDEA
  /*
    extension Printer on dynamic {
      void log() {
        return dev.log(toString());
      }
    }
     */

}
// -----------------------------------------------------------------------------

/// NUMERICS

// --------------------
class Numeric {
  // --------------------
  Numeric();
  // --------------------
  /// TESTED : WORKS PERFECT
  static int calculateIntegerPower({
    @required int num,
    @required int power,
  }) {

    /// NOTE :  num = 10; power = 2; => 10^2 = 100,, cheers
    int _output = 1;

    for (int i = 0; i < power; i++) {
      _output *= num;
    }

    return _output;
  }
  // --------------------
  /// TESTED : WORKS PERFECT
  static String formatNumberWithinDigits({
    @required int num,
    @required int digits,
  }) {

    /// this should put the number within number of digits
    /// for digits = 4,, any number should be written like this 0000
    /// 0001 -> 0010 -> 0100 -> 1000 -> 9999
    /// when num = 10000 => should return 'increase digits to view number'


    String _output;

    if (num != null){

      final int _maxPlusOne = calculateIntegerPower(num: 10, power: digits);
      final int _maxPossibleNum = _maxPlusOne - 1;

      if (num > _maxPossibleNum) {
        _output = 'XXXX';
      }

      else {

        String _numAsText = num.toString();

        for (int i = 1; i <= digits; i++) {

          if (_numAsText.length < digits) {
            _numAsText = '0$_numAsText';
          }

          else {
            break;
          }

        }

        _output = _numAsText;
      }

    }

    return _output;
  }
  // --------------------
  /// TESTED : WORKS PERFECT
  static int concludeNumberOfDigits(int length){
    final int _length = length == null || length <= 0 ? 0 : length - 1;
    return _length.toString().length;
  }
  // --------------------
  /// TESTED : WORKS PERFECT
  static String formatIndexDigits({
    @required int index,
    @required int listLength,
  }){

    return formatNumberWithinDigits(
      digits: concludeNumberOfDigits(listLength),
      num: index,
    );

  }
  // -----------------------------------------------------------------------------
}
// -----------------------------------------------------------------------------
