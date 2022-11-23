// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'orders_admin_bloc.dart';

class OrdersAdminState extends Equatable {
  final String errorMessage;
  final OrdersAdminModel? ordersAdminModel;
  final OrdersAdminRequestStatues ordersAdminRequestStatues;
  final OrdersAdminRequestStatues ordersAdminDeleteRequestStatues;
  const OrdersAdminState(
      {this.errorMessage = '',
      this.ordersAdminModel,
      this.ordersAdminDeleteRequestStatues = OrdersAdminRequestStatues.loading,
      this.ordersAdminRequestStatues = OrdersAdminRequestStatues.loading});

  OrdersAdminState copyWith({
    OrdersAdminRequestStatues? ordersAdminDeleteRequestStatues,
    String? errorMessage,
    OrdersAdminModel? ordersAdminModel,
    OrdersAdminRequestStatues? ordersAdminRequestStatues,
  }) {
    return OrdersAdminState(
      ordersAdminDeleteRequestStatues: ordersAdminDeleteRequestStatues ??
          this.ordersAdminDeleteRequestStatues,
      errorMessage: errorMessage ?? this.errorMessage,
      ordersAdminModel: ordersAdminModel ?? this.ordersAdminModel,
      ordersAdminRequestStatues:
          ordersAdminRequestStatues ?? this.ordersAdminRequestStatues,
    );
  }

  @override
  List<Object?> get props => [
        errorMessage,
        ordersAdminModel,
        ordersAdminRequestStatues,
        ordersAdminDeleteRequestStatues
      ];
}
