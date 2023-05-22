import '../../../modules.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';

abstract class IFetchPokemonDetailsUsecase {
  Future<Either<PokemonFailure, PokemonDetailsEntity>> call(
    PokemonEntity pokemom,
  );
}

class FetchPokemonDetailsUsecase implements IFetchPokemonDetailsUsecase {
  FetchPokemonDetailsUsecase({
    required IPokemomRepository repository,
  }) : _repository = repository;
  final IPokemomRepository _repository;

  @override
  Future<Either<PokemonFailure, PokemonDetailsEntity>> call(
    PokemonEntity pokemom,
  ) {
    return _repository.fetchPokemonDetails(pokemom);
  }
}
