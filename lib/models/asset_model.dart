import 'package:linxwalletdemo/utils/constants.dart';

class AssetModel{
  final String assetIcon;
  final String assetName;
  final String assetSymbol;
  final String assetPrice;
  final String assetPercentage;

  AssetModel({required this.assetIcon, required this.assetName, required this.assetSymbol, required this.assetPrice, required this.assetPercentage});
}
List<AssetModel> assetList=[
  AssetModel(assetIcon: bitcoinIcon, assetName: 'Bitcoin', assetSymbol: 'BTC', assetPrice: '66,879.00', assetPercentage: '+2.34%'),
  AssetModel(assetIcon: solanaIcon, assetName: 'Solana', assetSymbol: 'SOL', assetPrice: '244.45', assetPercentage: '+13.09%'),
  AssetModel(assetIcon: tronIcon, assetName: 'Tron', assetSymbol: 'TRX', assetPrice: '26.45', assetPercentage: '-5.87%'),
];