import 'package:flutter/material.dart';
import 'package:mockup_shop/core/data.dart';
import 'package:shimmer/shimmer.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Roboto');
class DetailPage extends StatefulWidget {
  final Data data;

  const DetailPage({super.key, required this.data});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 100.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        ImageSection(
                          imageAsset: widget.data.image[selectedImageIndex],
                          rating: widget.data.rating,
                        ),
                        const SizedBox(height: 5),
                        ImageGallery(
                          imageUrls: widget.data.image,
                          onImageTap: (index) {
                            setState(() {
                              selectedImageIndex = index;
                            });
                          },
                        ),
                        TitleSection(
                          name: widget.data.name,
                          size: widget.data.size,
                          price: widget.data.price,
                          category: widget.data.category,
                        ),
                        DescriptionSection(description: widget.data.desc),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          _buildAppBar(context),
          _buildAddToBagButton(),
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: Colors.orange,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            const FavoriteButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildAddToBagButton() {
    return Positioned(
      bottom: 16,
      left: 16,
      right: 16,
      child: SizedBox(
        height: 50,
        child: ElevatedButton.icon(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Fitur belum tersedia")),
            );
          },
          icon: const Icon(Icons.shopping_bag, color: Colors.white),
          label: const Text(
            "Add to bag",
            style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}


class ImageGallery extends StatelessWidget {
  final List<String> imageUrls;
  final Function(int) onImageTap;

  const ImageGallery({Key? key, required this.imageUrls, required this.onImageTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: imageUrls.asMap().entries.map((entry) {
          int index = entry.key;
          String url = entry.value;
          return GestureDetector(
            onTap: () => onImageTap(index),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(color: Colors.grey, width: 100, height: 150),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Center(child: Text('Failed to load image: ${error.toString()}'));
                  },
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  final String imageAsset;
  final num rating;

  const ImageSection({Key? key, required this.imageAsset, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.zero,
          child: Image.network(
            imageAsset,
            fit: BoxFit.cover,
            loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(color: Colors.grey, width: double.infinity, height: 250),
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return Center(child: Text('Failed to load image: ${error.toString()}'));
            },
          ),
        ),
        Positioned(
          left: 20,
          bottom: 20,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4.0,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              children: [
                const Icon(Icons.star, color: Colors.orange),
                Text(
                  '$rating',
                  style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TitleSection extends StatelessWidget {
  final String name;
  final String size;
  final String price;
  final String category;

  const TitleSection({
    Key? key,
    required this.name,
    required this.size,
    required this.price,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(name, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text("Size: $size", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text("Harga: $price", style: const TextStyle(fontSize: 16)),
          Text("Tipe: $category", style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 15),
          const Text(
            "Deskripsi Produk:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  final String description;

  const DescriptionSection({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          description,
          textAlign: TextAlign.justify,
          style: const TextStyle(fontSize: 16.0, fontFamily: 'Roboto'),
        ),
      ),
    );
  }
}
class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
        size: 35,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

