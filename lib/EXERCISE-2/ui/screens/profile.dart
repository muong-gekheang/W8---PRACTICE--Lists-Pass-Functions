import 'package:flutter/material.dart';
import 'package:w7_lab/EXERCISE-2/model/profile_tile_model.dart';

import '../theme/theme.dart';

class ProfileApp extends StatefulWidget {
  final ProfileData profileData;
  final String? avatarUrl;
  const ProfileApp({super.key, required this.profileData, this.avatarUrl});

  @override
  State<ProfileApp> createState() => _ProfileAppState();
}

class _ProfileAppState extends State<ProfileApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary.withAlpha(100),
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'CADT student Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                  'assets/images/w8/aang.png'), 
            ),
            const SizedBox(height: 20),
            Text(
              widget.profileData.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            Text(
              widget.profileData.position,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(child: ListView.builder(
              itemCount: widget.profileData.tiles.length,
              itemBuilder: (context, index){
                return ProfileTile(tile: widget.profileData.tiles[index]);
                } 
              ),
            )
            
          ],
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  final TileData tile;
  const ProfileTile({super.key, required this.tile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: ListTile(
          leading: Icon(tile.icon, color: AppColors.primary),
          title: Text(tile.title),
          subtitle: Text(tile.value),
        ),
      ),
    );
  }
}
