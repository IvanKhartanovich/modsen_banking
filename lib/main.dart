import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modsen_banking/features/account_page/pages/all_transactions.dart';
import 'package:modsen_banking/features/add_transaction_screen/pages/add_transaction_screen.dart';
import 'features/account_page/pages/account_page.dart';

// GoRouter configuration
final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const AccountPage(),
    ),
    GoRoute(
      path: '/transactions',
      builder: (context, state) => const AllTransactions(),
    ),
    GoRoute(
      path: '/addTransaction',
      builder: (context, state) => const AddTransactionScreen(),
    ),
  ],
);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
