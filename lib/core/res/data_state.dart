import 'package:dio/dio.dart';

abstract class DataState<T>{
  final T? data;
  final DioException? dioException;
  final String? errorMessage;

  const DataState({this.data, this.dioException, this.errorMessage});
}

class DataSuccess<T> extends DataState<T>{
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T>{
  const DataFailed({DioException? error, String? errorMessage}) : super(dioException: error, errorMessage: errorMessage);
}