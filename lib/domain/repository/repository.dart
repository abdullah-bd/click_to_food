import 'package:dartz/dartz.dart';
import 'package:ClickToFood/core/network/failure.dart';
import 'package:ClickToFood/data/model/dto/response/article_response_dto.dart';

abstract class Repository {
  Future<Either<Failure, List<ArticleResponseDto>>> getArticles();
}
