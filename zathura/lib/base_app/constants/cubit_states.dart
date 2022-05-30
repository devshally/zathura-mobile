import 'package:core/core.dart';
import 'package:zathura/base_app/presentation/state/base_app_cubit.dart';

getProviders(GetIt instance) {
  return <BlocProviderSingleChildWidget>[
    BlocProvider<BaseAppCubit>(
      create: (context) => instance<BaseAppCubit>(),
    ),
  ];
}
