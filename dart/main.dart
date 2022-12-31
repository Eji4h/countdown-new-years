import 'dart:io';

void main() {
  final getNow = () => DateTime.now();
  final newYear = getNow().year + 1;
  final newYearDate = DateTime(newYear);
  final consoleClear =
      () => print(Process.runSync("clear", [], runInShell: true).stdout);

  for (;;) {
    final now = getNow();
    final remainDuration = newYearDate.difference(now);
    print(remainDuration);
    consoleClear();

    if (newYearDate.isBefore(now)) {
      break;
    }
  }

  consoleClear();
  print('Happy New Year: ${newYear} !!!');
}
