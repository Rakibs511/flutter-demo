import 'package:demo/generated/strings.g.dart';
import 'package:demo/shared/assets/app_images.dart';
import 'package:demo/features/home/presentation/bloc/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final counterBlocprovider = BlocProvider.of<CounterCubit>(context);
    final t = Translations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(AppImages.logo, height: 80, fit: BoxFit.cover),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(t.save),
            BlocBuilder<CounterCubit, int>(
              bloc: counterBlocprovider,
              builder: (context, counter) {
                return Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                final currentLocale = LocaleSettings.currentLocale.languageCode;
                if (currentLocale == 'bn') {
                  LocaleSettings.setLocaleRaw('en');
                } else {
                  LocaleSettings.setLocaleRaw('bn');
                }
              },
              child: Text('Next Page'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        //   counterBlocprovider.increment();
            context.push('/nextPage');
        },
        tooltip: t.login.success,
        child: const Icon(Icons.add),
      ),
    );
  }
}
