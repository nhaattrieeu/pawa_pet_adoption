import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pawa_pet_adoption/presentation/detail/cubit/detail_cubit.dart';
import 'package:pawa_pet_adoption/presentation/detail/widgets/detail_body.dart';
import 'package:pawa_pet_adoption/presentation/detail/widgets/detail_navigation.dart';
import 'package:pawa_pet_adoption/presentation/detail/widgets/detail_shimmer_loading.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  static String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    var petId = ModalRoute.of(context)!.settings.arguments as String;
    context.read<DetailCubit>().getDetailData(petId);

    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          children: [
            const DetailNavigation(),
            BlocBuilder<DetailCubit, DetailState>(
              builder: (context, state) {
                if (state is DetailSuccess) {
                  var petDetail = state.petDetail;
                  return DetailBody(petDetail: petDetail);
                } else {
                  return const DetailShimmerLoading();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
