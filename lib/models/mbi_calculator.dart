import 'dart:math';

class MBICalculator {
  final int height, weight, age;
  final bool isMale;
  bool _isHeightGood = true;
  double _mbiValue;
  MBICalculator({this.isMale, this.age, this.height, this.weight});

  String getMBIValue() {
    _mbiValue = weight / pow(height / 100, 2);
    return _mbiValue.toStringAsFixed(1);
  }

  String getMBIState() {
    if (_mbiValue < 15) {
      return 'Very severe weight loss';
    } else if (_mbiValue < 16) {
      return 'Acute deficiency';
    } else if (_mbiValue < 18.5) {
      return 'Weight loss';
    } else if (_mbiValue < 25) {
      return 'Normal';
    } else if (_mbiValue < 30) {
      return 'Increase in weight';
    } else if (_mbiValue < 35) {
      return 'Mild obesity';
    } else if (_mbiValue < 40) {
      return 'Medium obesity';
    }
    return 'Extreme obesity';
  }

  void getHeightState() {
    if (isMale) {
      switch (age) {
        case 1:
          {
            (height >= 76) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 2:
          {
            (height >= 88) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 3:
          {
            (height >= 95) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 4:
          {
            (height >= 103) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 5:
          {
            (height >= 110) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 6:
          {
            (height >= 116) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 7:
          {
            (height >= 121) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 8:
          {
            (height >= 127) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 9:
          {
            (height >= 132) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 10:
          {
            (height >= 137) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 11:
          {
            (height >= 143) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 12:
          {
            (height >= 150) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 13:
          {
            (height >= 156) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 14:
          {
            (height >= 163) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 15:
          {
            (height >= 169) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 16:
          {
            (height >= 173) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 17:
          {
            (height >= 174) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 18:
          {
            (height >= 177) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        default:
          {
            (height >= 177) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
      }
    } else {
      switch (age) {
        case 1:
          {
            (height >= 73) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 2:
          {
            (height >= 85) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 3:
          {
            (height >= 95) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 4:
          {
            (height >= 103) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 5:
          {
            (height >= 108) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 6:
          {
            (height >= 115) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 7:
          {
            (height >= 120) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 8:
          {
            (height >= 125) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 9:
          {
            (height >= 130) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 10:
          {
            (height >= 138) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 11:
          {
            (height >= 143) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 12:
          {
            (height >= 150) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 13:
          {
            (height >= 155) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 14:
          {
            (height >= 158) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 15:
          {
            (height >= 158) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 16:
          {
            (height >= 159) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        case 17:
          {
            (height >= 160) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
        default:
          {
            (height >= 160) ? _isHeightGood = true : _isHeightGood = false;
          }
          break;
      }
    }
  }

  String getLastFeedBack() {
    getHeightState();
    if (_isHeightGood) {
      if (getMBIState() == 'Very severe weight loss') {
        return 'Your height is good for your age but ' +
            'you have a very severe weight loss.\n' +
            'You should eat more.';
      } else if (getMBIState() == 'Acute deficiency') {
        return 'Your height is good for your age but ' +
            'you have an acute deficiency.\n' +
            'You should eat more.';
      } else if (getMBIState() == 'Weight loss') {
        return 'Your height is good for your age but ' +
            'you have a weight loss.\n' +
            'You should eat more.';
      } else if (getMBIState() == 'Normal') {
        return 'Your height is good for your age and ' +
            'you have a weight is perfect.\n' +
            'Good job!';
      } else if (getMBIState() == 'Increase in weight') {
        return 'Your height is good for your age but ' +
            'you have an increase in weight.\n' +
            'You must do sports exercises.';
      } else if (getMBIState() == 'Mild obesity') {
        return 'Your height is good for your age but ' +
            'you have a mild obesity (first-degree obesity).\n' +
            'You must do sports exercises.';
      } else if (getMBIState() == 'Medium obesity') {
        return 'Your height is good for your age but ' +
            'you have a medium obesity (second-degree obesity).\n' +
            'You must do sports exercises.';
      } else {
        return 'Your height is good for your age but ' +
            'you have a extreme obesity (third-degree obesity).\n' +
            'You must do sports exercises.';
      }
    } else {
      if (getMBIState() == 'Very severe weight loss') {
        return 'Your height is short for your age and ' +
            'you have a very severe weight loss.\n' +
            'You should eat more.';
      } else if (getMBIState() == 'Acute deficiency') {
        return 'Your height is short for your age and ' +
            'you have an acute deficiency.\n' +
            'You should eat more.';
      } else if (getMBIState() == 'Weight loss') {
        return 'Your height is short for your age and ' +
            'you have a weight loss.\n' +
            'You should eat more.';
      } else if (getMBIState() == 'Normal') {
        return 'Your height is short for your age but ' +
            'you have a weight is perfect.\n' +
            'You need to visit a doctor to increase your height!';
      } else if (getMBIState() == 'Increase in weight') {
        return 'Your height is short for your age and ' +
            'you have an increase in weight.\n' +
            'You must do sports exercises.';
      } else if (getMBIState() == 'Mild obesity') {
        return 'Your height is short for your age and ' +
            'you have a mild obesity (first-degree obesity).\n' +
            'You must do sports exercises.';
      } else if (getMBIState() == 'Medium obesity') {
        return 'Your height is short for your age and ' +
            'you have a medium obesity (second-degree obesity).\n' +
            'You must do sports exercises.';
      } else {
        return 'Your height is short for your age and ' +
            'you have a extreme obesity (third-degree obesity).\n' +
            'You must do sports exercises.';
      }
    }
  }
}
