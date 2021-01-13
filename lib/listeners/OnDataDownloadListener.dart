abstract class OnDataDownloadListener<T>{
  void onDownloadStarted();
  void onDownloadedData(T t);
  void onDownloadedDataList(List<T> lists);
  void onDownloadFinished();
}