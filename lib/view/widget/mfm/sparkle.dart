import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Sparkle extends HookWidget {
  const Sparkle({
    this.opacity = 1.0,
    required this.child,
  });

  final double opacity;
  final Widget child;

  static final random = Random();
  static const colors = [
    Color(0xFFFF1493),
    Color(0xFF00FFFF),
    Color(0xFFFFE202),
    Color(0xFFFFE202),
    Color(0xFFFFE202),
  ];

  _Particle createParticle(Size size) {
    final position = Offset(
      random.nextDouble() * size.width,
      random.nextDouble() * size.height,
    );
    final sizeFactor = random.nextDouble();
    return _Particle(
      color: colors[random.nextInt(colors.length)].withValues(alpha: opacity),
      position: position,
      size: (0.2 + sizeFactor / 10.0 * 3.0) * 32.0,
      duration: Duration(milliseconds: 1000 + (sizeFactor * 1000).toInt()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller =
        useAnimationController(duration: const Duration(hours: 1));
    final particles = useState(<_Particle>[]);
    final updatedAt = useState(DateTime.now());
    Timer? timer;
    useEffect(
      () {
        final animation = Tween(begin: 0.0, end: 1.0).animate(controller);
        controller.repeat();
        animation.addListener(() {
          final now = DateTime.now();
          final diff = now.difference(updatedAt.value);
          for (final particle in particles.value) {
            particle.update(diff);
          }
          particles.value = particles.value
              .where((particle) => particle.timeAlive <= particle.duration)
              .toList();
          if (timer == null || !timer!.isActive) {
            timer = Timer(
              Duration(milliseconds: 500 + random.nextInt(500)),
              () {
                if (!context.mounted) return;
                final renderBox = context.findRenderObject();
                if (renderBox is RenderBox) {
                  final particle = createParticle(renderBox.size);
                  particles.value = [...particles.value, particle];
                }
              },
            );
          }
          updatedAt.value = now;
        });
        return timer?.cancel;
      },
      [],
    );

    return RepaintBoundary(
      child: CustomPaint(
        foregroundPainter: _ParticlePainter(particles: particles.value),
        child: child,
      ),
    );
  }
}

class _Particle {
  _Particle({
    required this.color,
    required this.position,
    required this.size,
    required this.duration,
  }) : path = drawStar(size);

  final Color color;
  final Offset position;
  final double size;
  final Path path;
  double scale = 0;
  double angle = 0;
  final Duration duration;
  Duration timeAlive = Duration.zero;

  void update(Duration diff) {
    timeAlive += diff;
    final div = timeAlive.inMilliseconds / duration.inMilliseconds;
    scale = (1.0 - (div - 0.5).abs()) * 2;
    angle = 2 * pi * div;
  }

  static Path drawStar(double size) {
    const numberOfPoints = 4;
    final externalRadius = size * 0.5;
    final internalRadius = externalRadius * 0.3;
    const degreesPerStep = 2 * pi / numberOfPoints;
    const halfDegreesPerStep = degreesPerStep / 2;
    final path = Path();
    const fullAngle = 2 * pi;
    path.moveTo(externalRadius, 0);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path.lineTo(
        externalRadius * cos(step),
        externalRadius * sin(step),
      );
      path.lineTo(
        internalRadius * cos(step + halfDegreesPerStep),
        internalRadius * sin(step + halfDegreesPerStep),
      );
    }
    path.close();
    return path;
  }
}

class _ParticlePainter extends CustomPainter {
  _ParticlePainter({required this.particles});

  final List<_Particle> particles;
  final particlePaint = Paint()..style = PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Size size) {
    for (final particle in particles) {
      final matrix = Matrix4.identity()
        ..translate(particle.position.dx, particle.position.dy)
        ..scale(particle.scale, particle.scale)
        ..rotateZ(particle.angle);
      canvas.drawPath(
        particle.path.transform(matrix.storage),
        particlePaint..color = particle.color,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
