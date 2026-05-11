import 'package:flutter/material.dart';
import './models/data_layer.dart';
import './views/plan_screen.dart';
import './views/plan_provider.dart';
import './views/plan_creator_screen.dart';

void main() => runApp(const MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        title: 'State management app',
        theme: ThemeData(primarySwatch: Colors.purple),

        // Mengganti ini 
        home: const PlanCreatorScreen(),
      ),
    );
  }
}