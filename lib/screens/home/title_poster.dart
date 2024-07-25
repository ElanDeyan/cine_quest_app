import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TitlePoster extends StatefulWidget {
  const TitlePoster({super.key, required this.id, required this.posterUri});

  final int id;
  final Uri posterUri;

  @override
  State<TitlePoster> createState() => _TitlePosterState();
}

class _TitlePosterState extends State<TitlePoster> {
  Dio get client => Dio(BaseOptions(responseType: ResponseType.bytes));

  late Future<Uint8List> _fetchedBytes;

  @override
  void initState() {
    super.initState();
    _fetchedBytes = _downloadImageBytes();
  }

  Future<Uint8List> _downloadImageBytes() async {
    try {
      final response = await client.get<Uint8List>(widget.posterUri.toString());

      return response.data!;
    } catch (e) {
      print('Failed in download');
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          context.goNamed('media', pathParameters: {'id': '${widget.id}'}),
      child: FutureBuilder(
        future: _fetchedBytes,
        builder: (context, snapshot) => switch ((
          snapshot.connectionState,
          snapshot.hasData,
          snapshot.hasError
        )) {
          (ConnectionState.done, true, _) => Image.memory(
              snapshot.data!,
              width: 185,
              height: 274,
            ),
          (ConnectionState.waiting, _, _) => const CircularProgressIndicator(),
          _ => const Text('An error occurred'),
        },
      ),
    );
  }
}
