# Fix FAB Widget Issue - "ko tetap gabisa ya fab_widget nya"

## Analysis:
- FabWidget returns raw FloatingActionButton without Scaffold → doesn't render properly.
- Not navigated from main.dart.

## Plan & Steps:
1. Update `hello_world/lib/basic_widgets/fab_widget.dart`: Make it full Scaffold page with AppBar, body text, working FAB (shows snackbar).
2. Update `hello_world/lib/main.dart`: Add import, ElevatedButton in body for navigation to FabWidget.
3. Test: Hot reload / `flutter run`, navigate, verify pink FAB with thumb_up shows snackbar.

## Progress:
- [x] Step 1: fab_widget.dart fixed to full Scaffold demo with snackbar.
- [x] Step

Expected outcome: FAB fixed. Dialog widget dibuat sebagai bonus demo.

**Bonus: DialogWidget dibuat di lib/basic_widgets/dialog_widget.dart** - Halaman demo dengan FAB biru untuk show AlertDialog.
