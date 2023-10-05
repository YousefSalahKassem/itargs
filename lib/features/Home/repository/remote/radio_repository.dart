import 'package:itargs/features/Home/model/audio.dart';
import 'package:dio/dio.dart';
import 'package:itargs/features/Home/repository/endpoints.dart';
import 'package:itargs/features/Home/repository/remote/i_radio_repository.dart';

class RadioRepository extends IRadioRepository {
  final Dio dio = Dio();

  RadioRepository();

  @override
  Future<Radio> getRadio() async {
    final response = await dio.get(EndPoints.getRadio);
    final audioFileData = response.data['audio_file'];
    final radio = Radio.fromJson(
      audioFileData,
    );
    return radio;
  }
}
