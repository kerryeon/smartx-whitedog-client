class StorageInfoColumn {
  final String title, svgSrc, amountOfFiles;
  final int numOfFiles;

  const StorageInfoColumn({
    required this.title,
    required this.svgSrc,
    required this.amountOfFiles,
    required this.numOfFiles,
  });
}

List<StorageInfoColumn> demoStorageInfos = const [
  StorageInfoColumn(
    svgSrc: 'assets/icons/Documents.svg',
    title: 'Documents Files',
    amountOfFiles: '1.3GB',
    numOfFiles: 1328,
  ),
  StorageInfoColumn(
    svgSrc: 'assets/icons/media.svg',
    title: 'Media Files',
    amountOfFiles: '15.3GB',
    numOfFiles: 1328,
  ),
  StorageInfoColumn(
    svgSrc: 'assets/icons/folder.svg',
    title: 'Other Files',
    amountOfFiles: '1.3GB',
    numOfFiles: 1328,
  ),
  StorageInfoColumn(
    svgSrc: 'assets/icons/unknown.svg',
    title: 'Unknown',
    amountOfFiles: '1.3GB',
    numOfFiles: 140,
  ),
];
