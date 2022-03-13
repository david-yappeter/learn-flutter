import 'package:hive/hive.dart';

import 'package:flut_hive/model/transaction.dart';

class Boxes {
  static Box<Transaction> getTransactions() => Hive.box<Transaction>('transactions');

}
