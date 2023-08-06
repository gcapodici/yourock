import 'package:flutter/material.dart';

import '../../../Model/Section.dart';
import '../../Components/ProductListView.dart';
import 'Container/SectionContainer.dart';

class ProductSection extends StatelessWidget {
  Section section;
  ProductSection(this.section, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionContainer(
          title: section.title,
          subTitle: section.subtitle,
          color: section.color,
        ),
        ProductListView(section.list)
      ],
    );
  }
}
