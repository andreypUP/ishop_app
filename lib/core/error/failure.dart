abstract class Failure {
  String get message;
}

class NotConnectedToInternetError extends Failure{
  @override
  final String message;

  NotConnectedToInternetError(this.message);

}

class ServerFailure extends Failure{
  @override
  final String message;

  ServerFailure(this.message);

}