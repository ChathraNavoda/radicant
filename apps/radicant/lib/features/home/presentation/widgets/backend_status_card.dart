import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:radicant/app/theme/app_colors.dart';
import 'package:radicant/features/health/data/models/health_model.dart';
import 'dashboard_card.dart';
import 'info_row.dart';

class BackendStatusCard extends StatelessWidget {
  final AsyncSnapshot<HealthModel> snapshot;

  const BackendStatusCard({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Center(child: CircularProgressIndicator()),
        ),
      );
    }

    if (snapshot.hasError) {
      return DashboardCard(
        icon: Icons.cloud_off,
        title: 'Backend Health',
        children: [
          const Text(
            'Unable to connect to the backend.',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          SelectableText(
            snapshot.error.toString(),
            style: const TextStyle(color: AppColors.error),
          ),
        ],
      );
    }

    final data = snapshot.data!;

    return DashboardCard(
      icon: Icons.cloud_done,
      title: 'Backend Health',
      children: [
        InfoRow(
          label: 'Status',
          valueWidget: Chip(
            label: Text(
              data.status.toUpperCase(),
              style: const TextStyle(
                color: AppColors.success,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            backgroundColor: AppColors.success.withOpacity(0.15),
            side: BorderSide.none,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        InfoRow(label: 'Service', valueWidget: SelectableText(data.service)),
        InfoRow(
          label: 'Version',
          valueWidget: SelectableText(
            'v${data.version}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        InfoRow(
          label: 'Timestamp',
          valueWidget: SelectableText(
            _formatTimestamp(data.timestamp),
            textAlign: TextAlign.end,
            style: const TextStyle(fontFamily: 'monospace', fontSize: 13),
          ),
        ),
      ],
    );
  }

  String _formatTimestamp(String timestamp) {
    try {
      final parsed = DateTime.parse(timestamp).toLocal();
      final dateStr = DateFormat('dd MMM yyyy').format(parsed);
      final timeStr = DateFormat('hh:mm a').format(parsed);
      return '$dateStr\n$timeStr';
    } catch (_) {
      return timestamp;
    }
  }
}
