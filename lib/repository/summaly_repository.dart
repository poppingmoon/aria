import 'package:dio/dio.dart';

import '../model/summaly_result.dart';

class SummalyRepository {
  const SummalyRepository(this.dio);

  final Dio dio;

  Future<SummalyResult> getSummary({
    required String host,
    required String link,
    String? lang,
  }) async {
    final url = Uri.parse(link);
    final replacedUrl =
        url
            .replace(
              host:
                  url.host == 'music.youtube.com' &&
                          [
                            'watch',
                            'channel',
                          ].contains(url.pathSegments.firstOrNull)
                      ? 'www.youtube.com'
                      : null,
            )
            .removeFragment();
    final response = await dio.getUri<Map<String, dynamic>>(
      Uri.https(host, 'url', {
        'url': replacedUrl.toString(),
        if (lang != null) 'lang': lang,
      }),
    );
    return SummalyResult.fromJson(response.data!);
  }
}
