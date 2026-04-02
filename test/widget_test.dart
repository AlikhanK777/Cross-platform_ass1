import 'package:flutter_test/flutter_test.dart';
import 'package:scrollable_widgets_app/main.dart';

void main() {
  testWidgets('App load smoke test', (WidgetTester tester) async {
    // Запускаем наше приложение
    await tester.pumpWidget(const MovieApp());

    // Проверяем, что приложение загрузилось и нет критических ошибок при старте
    expect(find.byType(MovieApp), findsOneWidget);
  });
}