import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final activeFilters = ref.watch(filtersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: activeFilters[Filter.glutenFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.glutenFree, isChecked);
            },
            title: Text(
              'Gluten-free',
              style: textTheme.titleLarge!.copyWith(
                color: colorScheme.onBackground,
              ),
            ),
            subtitle: Text(
              'Only include gluten-free meals.',
              style: textTheme.labelMedium!.copyWith(
                color: colorScheme.onBackground,
              ),
            ),
            activeColor: colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(
              left: 34,
              right: 22,
            ),
          ),
          SwitchListTile(
            value: activeFilters[Filter.lactoseFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.lactoseFree, isChecked);
            },
            title: Text(
              'Lactose-free',
              style: textTheme.titleLarge!.copyWith(
                color: colorScheme.onBackground,
              ),
            ),
            subtitle: Text(
              'Only include lactose-free meals.',
              style: textTheme.labelMedium!.copyWith(
                color: colorScheme.onBackground,
              ),
            ),
            activeColor: colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(
              left: 34,
              right: 22,
            ),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegetarian]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegetarian, isChecked);
            },
            title: Text(
              'Vegetarian',
              style: textTheme.titleLarge!.copyWith(
                color: colorScheme.onBackground,
              ),
            ),
            subtitle: Text(
              'Only include vegetarian meals.',
              style: textTheme.labelMedium!.copyWith(
                color: colorScheme.onBackground,
              ),
            ),
            activeColor: colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(
              left: 34,
              right: 22,
            ),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegan]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegan, isChecked);
            },
            title: Text(
              'Vegan',
              style: textTheme.titleLarge!.copyWith(
                color: colorScheme.onBackground,
              ),
            ),
            subtitle: Text(
              'Only include vegan meals.',
              style: textTheme.labelMedium!.copyWith(
                color: colorScheme.onBackground,
              ),
            ),
            activeColor: colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(
              left: 34,
              right: 22,
            ),
          ),
        ],
      ),
    );
  }
}
