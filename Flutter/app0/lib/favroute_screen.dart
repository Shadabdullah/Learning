import 'package:app0/providers/myapp_state.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 232, 187, 187),
      child: Consumer<MyappState>(
        builder: (context, value, child) {
          List<WordPair> favourites = value.favourites;
          if (favourites.isNotEmpty) {
            return ListView.builder(
              itemCount: favourites.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(favourites[index].asPascalCase),
                      SizedBox(
                        width: 40,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              favourites.remove(favourites[index]);
                            });
                            
                          },
                          child: Icon(Icons.delete_outline)),
                    ],
                  ),
                );
              },
            );
          }
          return Center(
            child: Container(
                color: const Color.fromARGB(255, 232, 187, 187),
                child: Text('Nothing In Favourite')),
          );
        },
      ),
    );
  }
}
