# Adidas Shoe Store App

Welcome to the Adidas Shoe Store App! This app allows users to browse Adidas shoes, add them to their cart, check the cart, and delete items from the cart. The app also features a side drawer for easy navigation.

## Features

- **Side Drawer**: Easy access to different sections of the app.
- **Add to Cart**: Select your favorite shoes and add them to your cart.
- **Check Cart**: View the items in your cart at any time.
- **Delete from Cart**: Remove items from your cart with ease.

## Screenshots

[Include screenshots of the app's main screens to give users a visual overview.](https://github.com/user-attachments/assets/27272a4f-9778-4b4e-af56-ed878049d838)

## Getting Started

### Prerequisites

Ensure you have the following installed on your system:

- Flutter SDK
- Dart SDK

### Installation

1. **Clone the repository**:

    ```bash
    git clone https://github.com/mahabubulhasibshawon/adidas_store.git
    cd adidas-shoe-store-app
    ```

2. **Install dependencies**:

    ```bash
    flutter pub get
    ```

3. **Run the app**:

    ```bash
    flutter run
    ```

## Usage

### Side Drawer

The side drawer provides navigation options to different sections of the app.

```dart
Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // logo
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/Adidas_logo.png',
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
```

### Add to Cart

Users can add shoes to their cart by clicking the "Add to Cart" button.

```dart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
```

### Check Cart

Users can view the items in their cart by navigating to the cart screen.

```dart
Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'My Cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
          ),
          const SizedBox(height: 20,),

          Expanded(child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {

          //   get individual shoe
            Shoe individualShoe = value.getUserCart()[index];
          //   return the cart item
            return CartItem(shoe: individualShoe,);
          },
          ),
          )
        ],
      ),
    )
    );
```

### Delete from Cart

Users can delete items from their cart by clicking delete button.

```dart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
```

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, feel free to reach out to me at [mahabubulhasibshawon@gmail.com](mailto:mahabubulhasibshawon@gmail.com).

---

Happy shopping with the Adidas Shoe Store App! 🛍️👟

---

