// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'model/product.dart';
import 'model/products_repository.dart';
import 'supplemental/asymmetric_view.dart';
import 'colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      // TODO: Add app bar (102)
      appBar: AppBar(
        backgroundColor: kShrinePurple,
        leading: IconButton(
          onPressed: () {
            print('Menu Button');
          },
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
            color: Colors.white,
          ),
        ),
        title: const Text(
          'SHRINE',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              print('You`re Search');
            },
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'filter',
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      // TODO: Replace GridView with AsymmetricView (104)
      body: AsymmetricView(
        products: ProductsRepository.loadProducts(Category.all),
      ),
      resizeToAvoidBottomInset: false,
      // TODO: Set resizeToAvoidBottomInset (101)
    );
  }
}
