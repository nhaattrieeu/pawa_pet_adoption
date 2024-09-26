import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pawa_pet_adoption/presentation/home/cubit/home_cubit.dart';
import 'package:pawa_pet_adoption/presentation/home/widgets/list_pet_shimmer_loading.dart';

import '../widgets/home_banner.dart';
import '../widgets/home_categories.dart';
import '../widgets/home_header.dart';
import '../widgets/list_pet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().getHomeData();

    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: HomeHeader(),
            floating: true,
          ),
          CupertinoSliverRefreshControl(
            onRefresh: () {
              return context.read<HomeCubit>().getHomeData();
            },
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const HomeBanner(),
                const Gap(18),
                const HomeCategories(),
                const Gap(18),
                BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    if (state.pets.isEmpty) {
                      return const Column(
                        children: [
                          ListPetShimmerLoading(title: "Pets near you"),
                          ListPetShimmerLoading(title: "Pets near you"),
                        ],
                      );
                    } else {
                      return Column(
                        children: [
                          ListPet(
                            title: "Pets near you",
                            pets: state.pets,
                          ),
                          ListPet(
                            title: "Based on your preference",
                            pets: state.pets,
                          ),
                        ],
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
