import 'package:flutter/material.dart';
import 'package:linxwalletdemo/utils/constants.dart';

class PeriodFilter extends StatefulWidget {
  const PeriodFilter({super.key});

  @override
  State<PeriodFilter> createState() => _PeriodFilterState();
}

class _PeriodFilterState extends State<PeriodFilter> {
  String _selectedFilter=PeriodFilterSelection.oneday.name;
  setFilter({required String filter}){
   setState(() {
       _selectedFilter=filter;
   });
  }

_getFilterItem({required String label,required String filter}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: GestureDetector(
      onTap: (){
        setFilter(filter: filter);
      },
      child: _selectedFilter==filter?
      Container(
        padding: const EdgeInsets.all(15),
        decoration:const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.appDarkPurple
        ),
        child: Text(label,style:const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          
        ),),
      )
      :Text(label,style:const TextStyle(
        fontWeight: FontWeight.w600
      ),),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 70.0,
        width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: [
             _getFilterItem(label: '1D', filter: PeriodFilterSelection.oneday.name),
             _getFilterItem(label: '7D', filter: PeriodFilterSelection.sevendays.name),
             _getFilterItem(label: '1M', filter: PeriodFilterSelection.onemonth.name),
             _getFilterItem(label: '6M', filter: PeriodFilterSelection.sixmonths.name),
             _getFilterItem(label: '1Y', filter: PeriodFilterSelection.oneyear.name),
              ],
      ),
    );
  }
}