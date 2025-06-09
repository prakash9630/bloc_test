

class ApiResponse<T>{
  final T data;
  final int? totalPage;
   final int? currentPage;
  ApiResponse({required this.data, this.totalPage, this.currentPage});
}