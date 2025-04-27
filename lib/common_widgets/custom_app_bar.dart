import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final isSmall = screenWidth < 600;

    return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Theme.of(context).colorScheme.tertiary,
    actions: isSmall
        ? [
      PopupMenuButton<String>(
        icon: const Icon(Icons.menu),
        onSelected: (value) {
          // Handle menu action
        },
        itemBuilder: (BuildContext context) => [
          const PopupMenuItem(value: 'sign_up', child: Text('Sign In')),
          const PopupMenuItem(value: 'login', child: Text('Login')),
        ],
      ),
      CircleAvatar(
        child: Icon(Icons.person_2_outlined) ,
      ),
    ]
        : [
      TextButton(
        onPressed: () {},
        child: const Text('Sign In', style: TextStyle(color: Colors.white)),
      ),
      TextButton(
        onPressed: () {},
        child: const Text('Login', style: TextStyle(color: Colors.white)),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.person),
      ),
    ],

    ) ;
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
