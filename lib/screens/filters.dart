import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFilterSet = false;
  var _veganFilterSet = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: _glutenFreeFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _glutenFreeFilterSet = isChecked;
              });
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
            value: _lactoseFreeFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _lactoseFreeFilterSet = isChecked;
              });
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
            value: _vegetarianFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _vegetarianFilterSet = isChecked;
              });
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
            value: _veganFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _veganFilterSet = isChecked;
              });
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
