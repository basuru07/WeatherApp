import 'package:equatable/equatable.dart';
import 'package:weather/weather.dart';


sealed class WeatherState extends Equatable {
   WeatherState();

  @override
  List<Object> get props => [];
}

 class WeatherBlocInitial extends WeatherState {}

 class WeatherBlocLoading extends WeatherState {}
 class WeatherBlocFailure extends WeatherState {}
 class WeatherBlocSuccess extends WeatherState {
  final Weather weather;

   WeatherBlocSuccess(this.weather);

  @override
  List<Object> get props => [weather];
}