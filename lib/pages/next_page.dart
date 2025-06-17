import 'package:demo/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    final counterBlocprovider = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, int>(
              bloc: counterBlocprovider,
              builder: (context, counter) {
                return Column(
                  children: [
                    Text("Next Page $counter"),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Counter Value',
                        border: OutlineInputBorder(),
                      ),
                      controller: controller,
                      keyboardType: TextInputType.number,
                    ),
                  ],
                );
              },
            ),

            ElevatedButton(
              onPressed: () {
                controller.text.isNotEmpty
                    ? counterBlocprovider.updateCounter(
                        int.parse(controller.text),
                      )
                    : null;
              },
              child: const Text(
                'Update',
                textAlign: TextAlign.justify,
                softWrap: false,
                overflow: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
