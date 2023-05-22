import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  // dummy data
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'flutter course',
      amount: 19.50,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'flight',
      amount: 89.30,
      date: DateTime.now(),
      category: Category.travel,
    )
  ];

  void _openAddExpenseOverlay() {
    // context > gives widget meta information & information in
    // relation to other widgets in the widget tree
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const Text('modal bottom sheet data'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('the chart...'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
