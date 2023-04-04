import 'package:logger/logger.dart';

Function log(String title){
  return (Level level, String content) => Logger().log(level, '[$title] $content');
}