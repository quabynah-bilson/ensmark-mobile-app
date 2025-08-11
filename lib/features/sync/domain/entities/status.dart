enum SyncStatus {
  pending('Pending'),
  processing('Processing'),
  synced('Synced'),
  failed('Failed');

  final String label;

  const SyncStatus(this.label);
}
