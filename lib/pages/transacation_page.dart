import 'package:aplikasi_travel/auth/transaction_cubit.dart';
import 'package:aplikasi_travel/widgets/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_travel/utils/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  void initState() {
    context.read<TransactionCubit>().fetchTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TransactionSuccess) {
          if (state.transactions.length == 0) {
            return const Center(
              child: Text('Transaksi Kosong'),
            );
          } else {
            return ListView.builder(
              itemCount: state.transactions.length,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              itemBuilder: (context, index) {
                return TransactionCard(
                  state.transactions[index],
                );
              },
            );
          }
        }

        return Center(
          child: Text(
            'tes',
            style: blackTextStyle,
          ),
        );
      },
    );
  }
}
