import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:radicant/app/theme/app_colors.dart';
import 'package:radicant/config/environment.dart';
import 'dashboard_card.dart';
import 'info_row.dart';

class RuntimeCard extends StatelessWidget {
  const RuntimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final config = Environment.config;

    return DashboardCard(
      icon: Icons.computer,
      title: 'Runtime Information',
      children: [
        InfoRow(
          label: 'Environment',
          valueWidget: _buildEnvironmentChip(context, config.environment.name),
        ),
        InfoRow(
          label: 'API Base URL',
          valueWidget: SelectableText(
            config.apiBaseUrl,
            style: const TextStyle(fontFamily: 'monospace', fontSize: 13),
          ),
        ),
        InfoRow(
          label: 'Platform',
          valueWidget: SelectableText(defaultTargetPlatform.name),
        ),
        InfoRow(
          label: 'Build Mode',
          valueWidget: SelectableText(
            kReleaseMode
                ? 'Release'
                : kProfileMode
                ? 'Profile'
                : 'Debug',
          ),
        ),
      ],
    );
  }

  Widget _buildEnvironmentChip(BuildContext context, String envName) {
    final envLower = envName.toLowerCase();
    Color chipColor = Colors.grey;
    Color textColor = Colors.white;

    if (envLower.contains('dev')) {
      chipColor = AppColors.success.withOpacity(0.15);
      textColor = AppColors.success;
    } else if (envLower.contains('stag')) {
      chipColor = Colors.orange.withOpacity(0.15);
      textColor = Colors.orange;
    } else if (envLower.contains('prod')) {
      chipColor = Colors.blue.withOpacity(0.15);
      textColor = Colors.blue;
    }

    return Chip(
      label: Text(
        envName.toUpperCase(),
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
      backgroundColor: chipColor,
      padding: EdgeInsets.zero,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }
}
