class ApiResponse<T> {
  late T data;
  late Status status;
  late String message;

  ApiResponse.success(this.data) : status = Status.COMPLETED;
  ApiResponse.error(this.message) : status = Status.ERROR;
}

enum Status { COMPLETED, ERROR }
