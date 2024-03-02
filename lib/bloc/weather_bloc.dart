import 'package:bloc/bloc.dart';
import 'package:weather/weather.dart';
import 'package:weatherapp/bloc/weather_event.dart';
import 'package:weatherapp/bloc/weather_state.dart';
import '../data/my_data.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherBlocInitial()) {
    on<FetchWeather>((event, emit) async {
      print('Fetching weather...');
      emit(WeatherBlocLoading());
      try {
        print('API Key: $API_KEY');
        WeatherFactory wf = WeatherFactory(API_KEY, language: Language.ENGLISH);

        Weather weather = await wf.currentWeatherByLocation(
          event.position.latitude,
          event.position.longitude,
        );
        print('Weather loaded successfully');
        emit(WeatherBlocSuccess(weather));
      } catch (e) {
        print('Error fetching weather: $e');
        emit(WeatherBlocFailure());
      }
    });
  }
}