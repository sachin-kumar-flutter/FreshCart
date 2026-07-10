# 🥑 FreshCart — Grocery Delivery App

A grocery ordering app built with **Flutter** and **Provider**, focused on clean state management for cart operations — add/remove items, live price calculation, and a smooth checkout flow.

This project was built to move from *"I followed a tutorial"* to *"I understand state management."* Every line in the cart logic was rebuilt from scratch, without the tutorial open, until every `notifyListeners()` call made sense.

---

## 📱 Screens

| Onboarding | Home | Cart |
|---|---|---|
| Welcoming intro screen with a clear CTA | Categorized fresh items with pricing | Live cart with item removal and total calculation |

*<img width="540" height="945" alt="Screenshot 2026-07-10 133339" src="https://github.com/user-attachments/assets/a8fc89a1-5958-4923-a2c9-8ee60f328def" />
<img width="540" height="937" alt="Screenshot 2026-07-10 133355" src="https://github.com/user-attachments/assets/31e74514-e534-416a-8565-1a71c49d22ce" />
<img width="560" height="941" alt="Screenshot 2026-07-10 133407" src="https://github.com/user-attachments/assets/c598397c-539c-4975-89df-2d338a74de88" />


*

---

## ⚙️ Tech Stack

- **Flutter** — UI toolkit
- **Dart** — language
- **Provider** — state management (`ChangeNotifier`, `ChangeNotifierProvider`, `context.watch` / `context.read`)

---

## 🧠 What This Project Covers

- **Cart state management** using a single `CartModel extends ChangeNotifier`
- **Add / remove item logic** with real-time UI updates
- **Live total price calculation** derived from cart state — not manually tracked
- **Clean separation** between UI (Home, Cart screens) and business logic (CartModel)
- **`context.watch` vs `context.read`** used deliberately — watch for displaying state, read for triggering actions

---

## 🚀 What I Learned

- How `ChangeNotifier` + `notifyListeners()` actually propagates updates through the widget tree
- Why calling `context.watch()` inside `onPressed` throws an error, and why `context.read()` is the correct choice there
- How to structure state so the UI is a pure reflection of the model — no duplicate/stale values
- The practical difference between *following* a state management tutorial and *owning* the logic well enough to explain every design decision

---

## 🔮 Next Steps

- [ ] Rebuild the same app with **Riverpod** to compare state management approaches
- [ ] Rebuild again with **BLoC/Cubit**
- [ ] Add Firebase Auth + Firestore for persistent cart/order history
- [ ] Add quantity increment/decrement per item

---

## 🛠️ Getting Started

```bash
git clone https://github.com/sachin-kumar-flutter/grocery-app-provider.git
cd grocery-app-provider
flutter pub get
flutter run
```

---

## 👤 Author

**Sachin Kumar**
Flutter Developer | DSA Enthusiast (800+ LeetCode problems solved)
[GitHub](https://github.com/sachin-kumar-flutter) · [LinkedIn](https://linkedin.com/in/sachin-kumar-flutter)
