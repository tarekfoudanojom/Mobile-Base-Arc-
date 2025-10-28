import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/domain/entity/create_order_params.dart';
import 'package:flutter_tdd/features/orders/domain/repositories/order_repository.dart';

class CreateOrderController {
  // ObsValue for simple UI state
  final ObsValue<OrderModel?> createdOrderObs = ObsValue<OrderModel?>.withInit(null);
  final ObsValue<String?> errorMessageObs = ObsValue<String?>.withInit(null);
  final ObsValue<bool> isLoadingObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> isActiveButton = ObsValue<bool>.withInit(false);

  // Form controllers
  final TextEditingController customerNameController = TextEditingController();
  final TextEditingController customerEmailController = TextEditingController();
  final TextEditingController customerPhoneController = TextEditingController();
  final TextEditingController shippingAddressController = TextEditingController();
  final TextEditingController itemCountController = TextEditingController();
  final TextEditingController deliveryDateController = TextEditingController();
  final TextEditingController paymentMethodController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  // ObsValue for UI state
  final ObsValue<String> selectedPaymentMethodObs = ObsValue<String>.withInit('');
  final ObsValue<DateTime?> selectedDeliveryDateObs = ObsValue<DateTime?>.withInit(null);

  // Form validation
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Payment methods
  final List<String> paymentMethods = [
    'Credit Card',
    'Bank Transfer',
    'PayPal',
    'Cash on Delivery',
    'Apple Pay',
    'Google Pay',
  ];

  /// Initialize controller
  void initController(BuildContext context) {
    // No initialization needed for items
  }

  /// Notify form change to trigger UI updates
  void notifyFormChange() {
    if(isFormValid){
      isActiveButton.setValue(true);
    }else{
      isActiveButton.setValue(false);
    }
  }


  /// Set payment method
  void setPaymentMethod(String method) {
    selectedPaymentMethodObs.setValue(method);
    paymentMethodController.text = method;
  }

  /// Clear payment method
  void clearPaymentMethod() {
    selectedPaymentMethodObs.setValue('');
    paymentMethodController.clear();
  }

  /// Set delivery date
  void setDeliveryDate(DateTime? date) {
    selectedDeliveryDateObs.setValue(date);
    if (date != null) {
      deliveryDateController.text = '${date.day}/${date.month}/${date.year}';
    } else {
      deliveryDateController.clear();
    }
  }

  /// Clear delivery date
  void clearDeliveryDate() {
    selectedDeliveryDateObs.setValue(null);
    deliveryDateController.clear();
  }

  /// Validate customer name
  String? validateCustomerName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Customer name is required';
    }
    if (value.trim().length < 2) {
      return 'Customer name must be at least 2 characters';
    }
    return null;
  }

  /// Validate customer email
  String? validateCustomerEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Customer email is required';
    }
    if (!value.contains('@') || !value.contains('.')) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  /// Validate customer phone
  String? validateCustomerPhone(String? value) {
    if (value != null && value.trim().isNotEmpty) {
      if (value.trim().length < 10) {
        return 'Phone number must be at least 10 digits';
      }
    }
    return null;
  }

  /// Validate shipping address
  String? validateShippingAddress(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Shipping address is required';
    }
    if (value.trim().length < 10) {
      return 'Shipping address must be at least 10 characters';
    }
    return null;
  }

  /// Validate item count
  String? validateItemCount(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Item count is required';
    }
    final count = int.tryParse(value);
    if (count == null) {
      return 'Please enter a valid number';
    }
    if (count <= 0) {
      return 'Item count must be greater than 0';
    }
    return null;
  }


  /// Validate payment method
  String? validatePaymentMethod() {
    if (selectedPaymentMethodObs.getValue().isEmpty) {
      return 'Payment method is required';
    }
    return null;
  }


  /// Create order
  Future<void> createOrder(BuildContext context) async {
    // Clear previous errors
    errorMessageObs.setValue(null);
    
    // Validate form fields
    if (!formKey.currentState!.validate()) {
      return;
    }

    // Validate payment method
    final paymentMethodError = validatePaymentMethod();
    if (paymentMethodError != null) {
      errorMessageObs.setValue(paymentMethodError);
      return;
    }

    // Set loading state
    isLoadingObs.setValue(true);

    try {
      final itemCount = int.parse(itemCountController.text.trim());
      final params = CreateOrderParams(
        customerName: customerNameController.text.trim(),
        customerEmail: customerEmailController.text.trim(),
        customerPhone: customerPhoneController.text.trim().isEmpty 
            ? null 
            : customerPhoneController.text.trim(),
        shippingAddress: shippingAddressController.text.trim(),
        paymentMethod: selectedPaymentMethodObs.getValue(),
        notes: notesController.text.trim().isEmpty 
            ? null 
            : notesController.text.trim(),
        itemCount: itemCount,
        deliveryDate: selectedDeliveryDateObs.getValue()?.toIso8601String(),
      );

      final result = await getIt<OrderRepository>().createOrder(params);

      result.when(
        isSuccess: (order) {
          createdOrderObs.setValue(order);
          isLoadingObs.setValue(false);
          AppSnackBar.showSuccessSnackBar('Order created successfully');
          AutoRouter.of(context).maybePop();
        },
        isError: (error) {
          errorMessageObs.setValue(error.message);
          isLoadingObs.setValue(false);
        },
      );
    } catch (e) {
      errorMessageObs.setValue('An unexpected error occurred');
      isLoadingObs.setValue(false);
    }
  }

  /// Reset form
  void resetForm() {
    customerNameController.clear();
    customerEmailController.clear();
    customerPhoneController.clear();
    shippingAddressController.clear();
    itemCountController.clear();
    deliveryDateController.clear();
    paymentMethodController.clear();
    notesController.clear();
    selectedPaymentMethodObs.setValue('');
    selectedDeliveryDateObs.setValue(null);
    createdOrderObs.setValue(null);
    errorMessageObs.setValue(null);
    isLoadingObs.setValue(false);
  }


  /// Check if form is valid
  bool get isFormValid {
    return customerNameController.text.trim().isNotEmpty &&
        customerEmailController.text.trim().isNotEmpty &&
        shippingAddressController.text.trim().isNotEmpty &&
        itemCountController.text.trim().isNotEmpty &&
        selectedPaymentMethodObs.getValue().isNotEmpty &&
        int.tryParse(itemCountController.text.trim()) != null &&
        int.parse(itemCountController.text.trim()) > 0;
  }

  /// Dispose resources
  void dispose() {
    customerNameController.dispose();
    customerEmailController.dispose();
    customerPhoneController.dispose();
    shippingAddressController.dispose();
    itemCountController.dispose();
    deliveryDateController.dispose();
    paymentMethodController.dispose();
    notesController.dispose();
  }
}