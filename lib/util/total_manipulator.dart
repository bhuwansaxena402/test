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
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import 'dart:developer';

class TotalManipulator {
  static String getTotalString(String total) {
    int pos = 0;
    for (int i = total.length - 1; i > 0; i--) {
      if (double.tryParse(total[i]) != null) break;

      pos++;
    }
    return total.substring(0, total.length - pos);
  }

  static double get(String total) {
    String formatString = total.trim();
    formatString = getTotalString(formatString);
    double _total = 0.00;
    try {
      _total = double.parse(formatString);
    } catch (_) {
      log(_.toString());
    }
    return _total;
  }
}
