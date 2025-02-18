import 'package:flutter/material.dart';

class MediaIcon extends StatelessWidget {
  const MediaIcon({super.key, required this.mimeType, this.size, this.color});

  final String? mimeType;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final IconData icon;
    if (mimeType?.startsWith('image/') ?? false) {
      icon = Icons.image;
    } else if (mimeType?.startsWith('video/') ?? false) {
      icon = Icons.movie;
    } else if (mimeType?.startsWith('audio/') ?? false) {
      icon = Icons.music_note;
    } else if ((mimeType?.endsWith('/csv') ?? false) ||
        (mimeType?.endsWith('/pdf') ?? false) ||
        (mimeType?.startsWith('text/') ?? false)) {
      icon = Icons.description;
    } else if (mimeType
        case 'application/zip' ||
            'application/x-cpio' ||
            'application/x-bzip' ||
            'application/x-bzip2' ||
            'application/java-archive' ||
            'application/x-rar-compressed' ||
            'application/x-tar' ||
            'application/gzip' ||
            'application/x-7z-compressed') {
      icon = Icons.folder_zip;
    } else {
      icon = Icons.insert_drive_file;
    }

    return Icon(icon, size: size, color: color);
  }
}
