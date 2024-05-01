import 'package:cognito_aws_labs/app/app.dart';
import 'package:cognito_aws_labs/bootstrap.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load();

  await bootstrap(() => const App());
}
