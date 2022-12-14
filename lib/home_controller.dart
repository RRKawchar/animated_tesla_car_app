import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  int selectedBottomTab = 0;
  void onBottomNavigationTabChange(int index) {
    selectedBottomTab = index;
    notifyListeners();
  }

  bool isRightDoorLock = true;
  bool isLeftDoorLock = true;
  bool isBonnetLock = true;
  bool isTrunkLock = true;
  void updateRightDoorLock() {
    isRightDoorLock = !isRightDoorLock;
    notifyListeners();
  }

  void updateLeftDoorLock() {
    isLeftDoorLock = !isLeftDoorLock;
    notifyListeners();
  }

  void updateBonnetDoorLock() {
    isBonnetLock = !isBonnetLock;
    notifyListeners();
  }

  void updateTrunkLock() {
    isTrunkLock = !isTrunkLock;
    notifyListeners();
  }

  bool isCoolSelected = true;
  void updateCoolSelectedTab() {
    isCoolSelected = !isCoolSelected;
    notifyListeners();
  }

  bool isShowTyre=false;
  void showTyreController(int index){
    if(selectedBottomTab !=3 && index == 3){
      Future.delayed(const Duration(microseconds: 400),(){
        isShowTyre=true;
        notifyListeners();
      });
    }else{
      isShowTyre=false;
      notifyListeners();
    }
  }

  bool isShowTyreStatus=false;
  void tyreStatusController(int index) {

    if(selectedBottomTab!=3 && index == 3){
      isShowTyreStatus=true;
      notifyListeners();
    }else{
      isShowTyreStatus=false;
      notifyListeners();
    }
  }

}
