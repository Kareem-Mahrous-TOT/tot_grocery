// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_order_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerOrderResponseImpl _$$CustomerOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerOrderResponseImpl(
      totalCount: json['totalCount'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => CustomerOrderResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CustomerOrderResponseImplToJson(
        _$CustomerOrderResponseImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'results': instance.results,
    };

_$CustomerOrderResultImpl _$$CustomerOrderResultImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerOrderResultImpl(
      rowVersion: json['rowVersion'] as String?,
      customerId: json['customerId'] as String?,
      customerName: json['customerName'] as String?,
      channelId: json['channelId'] as String?,
      storeId: json['storeId'] as String?,
      storeName: json['storeName'] as String?,
      organizationId: json['organizationId'] as String?,
      organizationName: json['organizationName'] as String?,
      employeeId: json['employeeId'] as String?,
      employeeName: json['employeeName'] as String?,
      shoppingCartId: json['shoppingCartId'] as String?,
      isPrototype: json['isPrototype'] as bool?,
      purchaseOrderNumber: json['purchaseOrderNumber'] as String?,
      subscriptionNumber: json['subscriptionNumber'] as String?,
      subscriptionId: json['subscriptionId'] as String?,
      objectType: json['objectType'] as String?,
      addresses: json['addresses'] as List<dynamic>?,
      inPayments: json['inPayments'] as List<dynamic>?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      shipments: json['shipments'] as List<dynamic>?,
      feeDetails: json['feeDetails'] as List<dynamic>?,
      discounts: json['discounts'] as List<dynamic>?,
      discountAmount: (json['discountAmount'] as num?)?.toDouble(),
      taxDetails: json['taxDetails'] as List<dynamic>?,
      scopes: json['scopes'],
      total: (json['total'] as num?)?.toDouble(),
      subTotal: (json['subTotal'] as num?)?.toDouble(),
      subTotalWithTax: (json['subTotalWithTax'] as num?)?.toDouble(),
      subTotalDiscount: (json['subTotalDiscount'] as num?)?.toDouble(),
      subTotalDiscountWithTax:
          (json['subTotalDiscountWithTax'] as num?)?.toDouble(),
      subTotalTaxTotal: (json['subTotalTaxTotal'] as num?)?.toDouble(),
      shippingTotal: (json['shippingTotal'] as num?)?.toDouble(),
      shippingTotalWithTax: (json['shippingTotalWithTax'] as num?)?.toDouble(),
      shippingSubTotal: (json['shippingSubTotal'] as num?)?.toDouble(),
      shippingSubTotalWithTax:
          (json['shippingSubTotalWithTax'] as num?)?.toDouble(),
      shippingDiscountTotal:
          (json['shippingDiscountTotal'] as num?)?.toDouble(),
      shippingDiscountTotalWithTax:
          (json['shippingDiscountTotalWithTax'] as num?)?.toDouble(),
      shippingTaxTotal: (json['shippingTaxTotal'] as num?)?.toDouble(),
      paymentTotal: (json['paymentTotal'] as num?)?.toDouble(),
      paymentTotalWithTax: (json['paymentTotalWithTax'] as num?)?.toDouble(),
      paymentSubTotal: (json['paymentSubTotal'] as num?)?.toDouble(),
      paymentSubTotalWithTax:
          (json['paymentSubTotalWithTax'] as num?)?.toDouble(),
      paymentDiscountTotal: (json['paymentDiscountTotal'] as num?)?.toDouble(),
      paymentDiscountTotalWithTax:
          (json['paymentDiscountTotalWithTax'] as num?)?.toDouble(),
      paymentTaxTotal: (json['paymentTaxTotal'] as num?)?.toDouble(),
      discountTotal: (json['discountTotal'] as num?)?.toDouble(),
      discountTotalWithTax: (json['discountTotalWithTax'] as num?)?.toDouble(),
      fee: (json['fee'] as num?)?.toDouble(),
      feeWithTax: (json['feeWithTax'] as num?)?.toDouble(),
      feeTotal: (json['feeTotal'] as num?)?.toDouble(),
      feeTotalWithTax: (json['feeTotalWithTax'] as num?)?.toDouble(),
      handlingTotal: (json['handlingTotal'] as num?)?.toDouble(),
      handlingTotalWithTax: (json['handlingTotalWithTax'] as num?)?.toDouble(),
      taxType: json['taxType'] as String?,
      taxTotal: (json['taxTotal'] as num?)?.toDouble(),
      taxPercentRate: (json['taxPercentRate'] as num?)?.toDouble(),
      languageCode: json['languageCode'] as String?,
      operationType: json['operationType'] as String?,
      parentOperationId: json['parentOperationId'] as String?,
      number: json['number'] as String?,
      isApproved: json['isApproved'] as bool?,
      status: json['status'] as String?,
      comment: json['comment'],
      currency: json['currency'] as String?,
      sum: (json['sum'] as num?)?.toDouble(),
      outerId: json['outerId'],
      childrenOperations: json['childrenOperations'] as List<dynamic>?,
      cancelledState: json['cancelledState'] as String?,
      isCancelled: json['isCancelled'] as bool?,
      cancelledDate: json['cancelledDate'],
      cancelReason: json['cancelReason'],
      dynamicProperties: json['dynamicProperties'] as List<dynamic>?,
      operationsLog: json['operationsLog'],
      createdDate: json['createdDate'] as String?,
      modifiedDate: json['modifiedDate'] as String?,
      createdBy: json['createdBy'] as String?,
      modifiedBy: json['modifiedBy'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$CustomerOrderResultImplToJson(
        _$CustomerOrderResultImpl instance) =>
    <String, dynamic>{
      'rowVersion': instance.rowVersion,
      'customerId': instance.customerId,
      'customerName': instance.customerName,
      'channelId': instance.channelId,
      'storeId': instance.storeId,
      'storeName': instance.storeName,
      'organizationId': instance.organizationId,
      'organizationName': instance.organizationName,
      'employeeId': instance.employeeId,
      'employeeName': instance.employeeName,
      'shoppingCartId': instance.shoppingCartId,
      'isPrototype': instance.isPrototype,
      'purchaseOrderNumber': instance.purchaseOrderNumber,
      'subscriptionNumber': instance.subscriptionNumber,
      'subscriptionId': instance.subscriptionId,
      'objectType': instance.objectType,
      'addresses': instance.addresses,
      'inPayments': instance.inPayments,
      'items': instance.items,
      'shipments': instance.shipments,
      'feeDetails': instance.feeDetails,
      'discounts': instance.discounts,
      'discountAmount': instance.discountAmount,
      'taxDetails': instance.taxDetails,
      'scopes': instance.scopes,
      'total': instance.total,
      'subTotal': instance.subTotal,
      'subTotalWithTax': instance.subTotalWithTax,
      'subTotalDiscount': instance.subTotalDiscount,
      'subTotalDiscountWithTax': instance.subTotalDiscountWithTax,
      'subTotalTaxTotal': instance.subTotalTaxTotal,
      'shippingTotal': instance.shippingTotal,
      'shippingTotalWithTax': instance.shippingTotalWithTax,
      'shippingSubTotal': instance.shippingSubTotal,
      'shippingSubTotalWithTax': instance.shippingSubTotalWithTax,
      'shippingDiscountTotal': instance.shippingDiscountTotal,
      'shippingDiscountTotalWithTax': instance.shippingDiscountTotalWithTax,
      'shippingTaxTotal': instance.shippingTaxTotal,
      'paymentTotal': instance.paymentTotal,
      'paymentTotalWithTax': instance.paymentTotalWithTax,
      'paymentSubTotal': instance.paymentSubTotal,
      'paymentSubTotalWithTax': instance.paymentSubTotalWithTax,
      'paymentDiscountTotal': instance.paymentDiscountTotal,
      'paymentDiscountTotalWithTax': instance.paymentDiscountTotalWithTax,
      'paymentTaxTotal': instance.paymentTaxTotal,
      'discountTotal': instance.discountTotal,
      'discountTotalWithTax': instance.discountTotalWithTax,
      'fee': instance.fee,
      'feeWithTax': instance.feeWithTax,
      'feeTotal': instance.feeTotal,
      'feeTotalWithTax': instance.feeTotalWithTax,
      'handlingTotal': instance.handlingTotal,
      'handlingTotalWithTax': instance.handlingTotalWithTax,
      'taxType': instance.taxType,
      'taxTotal': instance.taxTotal,
      'taxPercentRate': instance.taxPercentRate,
      'languageCode': instance.languageCode,
      'operationType': instance.operationType,
      'parentOperationId': instance.parentOperationId,
      'number': instance.number,
      'isApproved': instance.isApproved,
      'status': instance.status,
      'comment': instance.comment,
      'currency': instance.currency,
      'sum': instance.sum,
      'outerId': instance.outerId,
      'childrenOperations': instance.childrenOperations,
      'cancelledState': instance.cancelledState,
      'isCancelled': instance.isCancelled,
      'cancelledDate': instance.cancelledDate,
      'cancelReason': instance.cancelReason,
      'dynamicProperties': instance.dynamicProperties,
      'operationsLog': instance.operationsLog,
      'createdDate': instance.createdDate,
      'modifiedDate': instance.modifiedDate,
      'createdBy': instance.createdBy,
      'modifiedBy': instance.modifiedBy,
      'id': instance.id,
    };

_$LineItemImpl _$$LineItemImplFromJson(Map<String, dynamic> json) =>
    _$LineItemImpl(
      priceId: json['priceId'] as String?,
      currency: json['currency'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      priceWithTax: (json['priceWithTax'] as num?)?.toDouble(),
      placedPrice: (json['placedPrice'] as num?)?.toDouble(),
      placedPriceWithTax: (json['placedPriceWithTax'] as num?)?.toDouble(),
      extendedPrice: (json['extendedPrice'] as num?)?.toDouble(),
      extendedPriceWithTax: (json['extendedPriceWithTax'] as num?)?.toDouble(),
      discountAmount: (json['discountAmount'] as num?)?.toDouble(),
      discountAmountWithTax:
          (json['discountAmountWithTax'] as num?)?.toDouble(),
      discountTotal: (json['discountTotal'] as num?)?.toDouble(),
      discountTotalWithTax: (json['discountTotalWithTax'] as num?)?.toDouble(),
      fee: (json['fee'] as num?)?.toDouble(),
      feeWithTax: (json['feeWithTax'] as num?)?.toDouble(),
      taxType: json['taxType'],
      taxTotal: (json['taxTotal'] as num?)?.toDouble(),
      taxPercentRate: (json['taxPercentRate'] as num?)?.toDouble(),
      reserveQuantity: json['reserveQuantity'] as int?,
      quantity: json['quantity'] as int?,
      productId: json['productId'] as String?,
      sku: json['sku'] as String?,
      productType: json['productType'],
      catalogId: json['catalogId'] as String?,
      categoryId: json['categoryId'],
      name: json['name'] as String?,
      comment: json['comment'],
      status: json['status'] as String?,
      imageUrl: json['imageUrl'],
      isGift: json['isGift'] as bool?,
      shippingMethodCode: json['shippingMethodCode'],
      fulfillmentLocationCode: json['fulfillmentLocationCode'],
      fulfillmentCenterId: json['fulfillmentCenterId'],
      fulfillmentCenterName: json['fulfillmentCenterName'],
      outerId: json['outerId'],
      feeDetails: json['feeDetails'] as List<dynamic>?,
      vendorId: json['vendorId'],
      weightUnit: json['weightUnit'],
      weight: json['weight'],
      measureUnit: json['measureUnit'],
      height: json['height'],
      length: json['length'],
      width: json['width'],
      isCancelled: json['isCancelled'] as bool?,
      cancelledDate: json['cancelledDate'],
      cancelReason: json['cancelReason'],
      objectType: json['objectType'] as String?,
      dynamicProperties: json['dynamicProperties'] as List<dynamic>?,
      discounts: json['discounts'] as List<dynamic>?,
      taxDetails: json['taxDetails'] as List<dynamic>?,
      createdDate: json['createdDate'] as String?,
      modifiedDate: json['modifiedDate'] as String?,
      createdBy: json['createdBy'] as String?,
      modifiedBy: json['modifiedBy'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$LineItemImplToJson(_$LineItemImpl instance) =>
    <String, dynamic>{
      'priceId': instance.priceId,
      'currency': instance.currency,
      'price': instance.price,
      'priceWithTax': instance.priceWithTax,
      'placedPrice': instance.placedPrice,
      'placedPriceWithTax': instance.placedPriceWithTax,
      'extendedPrice': instance.extendedPrice,
      'extendedPriceWithTax': instance.extendedPriceWithTax,
      'discountAmount': instance.discountAmount,
      'discountAmountWithTax': instance.discountAmountWithTax,
      'discountTotal': instance.discountTotal,
      'discountTotalWithTax': instance.discountTotalWithTax,
      'fee': instance.fee,
      'feeWithTax': instance.feeWithTax,
      'taxType': instance.taxType,
      'taxTotal': instance.taxTotal,
      'taxPercentRate': instance.taxPercentRate,
      'reserveQuantity': instance.reserveQuantity,
      'quantity': instance.quantity,
      'productId': instance.productId,
      'sku': instance.sku,
      'productType': instance.productType,
      'catalogId': instance.catalogId,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'comment': instance.comment,
      'status': instance.status,
      'imageUrl': instance.imageUrl,
      'isGift': instance.isGift,
      'shippingMethodCode': instance.shippingMethodCode,
      'fulfillmentLocationCode': instance.fulfillmentLocationCode,
      'fulfillmentCenterId': instance.fulfillmentCenterId,
      'fulfillmentCenterName': instance.fulfillmentCenterName,
      'outerId': instance.outerId,
      'feeDetails': instance.feeDetails,
      'vendorId': instance.vendorId,
      'weightUnit': instance.weightUnit,
      'weight': instance.weight,
      'measureUnit': instance.measureUnit,
      'height': instance.height,
      'length': instance.length,
      'width': instance.width,
      'isCancelled': instance.isCancelled,
      'cancelledDate': instance.cancelledDate,
      'cancelReason': instance.cancelReason,
      'objectType': instance.objectType,
      'dynamicProperties': instance.dynamicProperties,
      'discounts': instance.discounts,
      'taxDetails': instance.taxDetails,
      'createdDate': instance.createdDate,
      'modifiedDate': instance.modifiedDate,
      'createdBy': instance.createdBy,
      'modifiedBy': instance.modifiedBy,
      'id': instance.id,
    };
