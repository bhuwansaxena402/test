/*
 * Copyright (c) 2020 - 2021 : William Todt
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:receipt_manager/app/pages/history/history_presenter.dart';
import 'package:receipt_manager/data/storage/receipt_database.dart';

class HistoryController extends Controller {
  final HistoryPresenter _historyPresenter;
  List<Receipt> _receipts;

  HistoryController(repository)
      : _historyPresenter = HistoryPresenter(repository),
        _receipts = [],
        super();

  String get getWeeklyOverview => "Weekly overview 19.00\$";

  get receipts => _receipts;

  get deleteMethod => UnimplementedError();

  get editMethod => UnimplementedError();

  @override
  void initListeners() {
    _historyPresenter.getReceiptsOnNext = (List<Receipt> receipts) {
      print(receipts.toString());
      _receipts = receipts;
      refreshUI();
    };

    _historyPresenter.getReceiptsOnComplete = () {
      print('Received receipts list');
    };
  }

  void buttonPressed() {}

  @override
  void onResumed() => print('On resumed');

  @override
  void onReassembled() => print('View is about to be reassembled');

  @override
  void onDeactivated() => print('View is about to be deactivated');

  @override
  void onDisposed() {
    _historyPresenter.dispose();
    super.onDisposed();
  }
}
