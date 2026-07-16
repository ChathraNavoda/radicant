import 'package:flutter/material.dart';
import 'package:radicant/app/theme/app_colors.dart';

class DashboardHeader extends StatelessWidget {
  final bool connected;

  const DashboardHeader({super.key, required this.connected});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 1. Wrap the title in Expanded to prevent it from pushing the Chip off-screen
                Expanded(
                  child: Text(
                    '🌱 Radicant',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // 2. Add a explicit minimum gap so they don't collide
                const SizedBox(width: 8),
                Chip(
                  avatar: Icon(
                    connected ? Icons.cloud_done : Icons.cloud_off,
                    size: 18,
                    color: connected ? AppColors.success : AppColors.error,
                  ),
                  label: Text(
                    connected ? 'Backend Online' : 'Backend Offline',
                    style: TextStyle(
                      color: connected ? AppColors.success : AppColors.error,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  backgroundColor: connected
                      ? AppColors.success.withOpacity(0.1)
                      : AppColors.error.withOpacity(0.1),
                  side: BorderSide.none,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'Engineering starts here.',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Developer Dashboard',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              'Monitor the current application and backend status.',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
