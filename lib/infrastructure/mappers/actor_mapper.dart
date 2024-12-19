import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToEntity(Cast actor) => Actor(
        id: actor.id,
        name: actor.name,
        profilePath: actor.profilePath != null
            ? 'https://image.tmdb.org/t/p/w500${actor.profilePath}'
            : 'https://static.thenounproject.com/png/354384-200.png',
        character: actor.character,
      );
}
