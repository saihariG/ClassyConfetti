# ClassyConfetti

[![CI நிலை](https://img.shields.io/travis/saihariG/ClassyConfetti.svg?style=flat)](https://travis-ci.org/saihariG/ClassyConfetti)
[![பதிப்பு](https://img.shields.io/cocoapods/v/ClassyConfetti.svg?style=flat)](https://cocoapods.org/pods/ClassyConfetti)
[![MIT உரிமம்](https://img.shields.io/apm/l/atomic-design-ui.svg?)](https://github.com/tterb/atomic-design-ui/blob/master/LICENSEs)
[![Platform](https://img.shields.io/cocoapods/p/ClassyConfetti.svg?style=flat)](https://cocoapods.org/pods/ClassyConfetti)

<p align="center">
<a href="/README.md" target="_blank"> English </a> | <a href="/README_TA.md" target="_blank"> தமிழ் </a>
</p>

# ஸ்கிரீன்ஷாட்கள் / Gif

<p float="left">
  <img src="https://user-images.githubusercontent.com/52252342/180391729-f2fb28e4-1648-4c4d-a37d-9681305daf38.gif" width="150" />
  <img src="https://user-images.githubusercontent.com/52252342/180391760-ff2d2861-f06c-4c70-8813-f85a887a7ad7.gif" width="150" />
  <img src="https://user-images.githubusercontent.com/52252342/180391773-98ddeebb-9b0b-447d-8a43-2da7a5d204b2.gif" width="150" />
  <img src="https://user-images.githubusercontent.com/52252342/180391781-afa562e6-ff4f-49bd-a208-5fe9bfc42d4d.gif" width="150" />
</p>

## உதாரணமாக

உதாரணத் திட்டத்தை இயக்க, ரெப்போவை குளோன் செய்து, முதலில் எடுத்துக்காட்டு கோப்பகத்தில் இருந்து `pod install` ஐ இயக்கவும்.

## தேவைகள்

- iOS 10.0 அல்லது அதற்குப் பிறகு
- ஸ்விஃப்ட் 5+
- Xcode 10+

## நிறுவல்

ClassyConfetti ஆனது [CocoaPods](https://cocoapods.org) மூலம் கிடைக்கிறது. நிறுவுவதற்கு
அது, உங்கள் Podfile இல் பின்வரும் வரியைச் சேர்க்கவும்:

``` ரூபி
pod 'ClassyConfetti'
```
### கைமுறை நிறுவல்

உங்கள் திட்டப்பணியில் ```Confetti.swift``` கோப்பை வைக்கவும்

## பயன்பாடு

உங்கள் வியூகண்ட்ரோலரில் தொகுதியை இறக்குமதி செய்யவும்
- ```import ClassyConfetti```

வகுப்பின் உதாரணத்தை உருவாக்கவும்
- ```let confetti = classyConfetti()```

``` emit(in view : UIView,with position : Position,for duration : CFTimeInterval = 1)``` செயல்பாட்டை அழைப்பதன் மூலம் கான்ஃபெட்டி அனிமேஷனை உருவாக்கவும்
- ```confetti.emit(in: view, with: .fromTop)```

emit செயல்பாடு ஒரு விருப்ப கால அளவுருவைக் கொண்டுள்ளது, இது அனிமேஷனின் கால அளவைக் குறிப்பிடுகிறது
- ```confetti.emit(in: view, with: .fromTop, for: 2)```

### மாறிலிகள்

உடன்: நிலை

- மேலே இருந்து
- அப்பால் இருந்து
- மேல் இடதுபுறத்தில் இருந்து
- மேல் வலதுபுறத்தில் இருந்து
- கீழே இருந்து
- கீழே இடதுபுறத்தில் இருந்து
- கீழ் வலதுபுறத்தில் இருந்து
- மையத்திலிருந்து

## நூலாசிரியர்

saihariG, krishnansaihari@gmail.com

## உரிமம்

ClassyConfetti MIT உரிமத்தின் கீழ் கிடைக்கிறது. மேலும் தகவலுக்கு LICENSE கோப்பைப் பார்க்கவும்.
