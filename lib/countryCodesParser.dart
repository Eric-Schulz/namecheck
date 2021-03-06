import 'Probability.dart';
import 'country.dart';

class CountryCodesParser {
  String _name;
  String _alpha2;

  List<Country> _countryList = [
    Country(name: "Afghanistan", alpha2: "AF"),
    Country(name: "Albania", alpha2: "AL"),
    Country(name: "Algeria", alpha2: "DZ"),
    Country(name: "AmericanSamoa", alpha2: "AS"),
    Country(name: "Andorra", alpha2: "AD"),
    Country(name: "Angola", alpha2: "AO"),
    Country(name: "Anguilla", alpha2: "AI"),
    Country(name: "Antarctica", alpha2: "AQ"),
    Country(name: "AntiguaandBarbuda", alpha2: "AG"),
    Country(name: "Argentina", alpha2: "AR"),
    Country(name: "Armenia", alpha2: "AM"),
    Country(name: "Aruba", alpha2: "AW"),
    Country(name: "Australia", alpha2: "AU"),
    Country(name: "Austria", alpha2: "AT"),
    Country(name: "Azerbaijan", alpha2: "AZ"),
    Country(name: "Bahamas", alpha2: "BS"),
    Country(name: "Bahrain", alpha2: "BH"),
    Country(name: "Bangladesh", alpha2: "BD"),
    Country(name: "Barbados", alpha2: "BB"),
    Country(name: "Belarus", alpha2: "BY"),
    Country(name: "Belgium", alpha2: "BE"),
    Country(name: "Belize", alpha2: "BZ"),
    Country(name: "Benin", alpha2: "BJ"),
    Country(name: "Bermuda", alpha2: "BM"),
    Country(name: "Bhutan", alpha2: "BT"),
    Country(name: "Bolivia(PlurinationalStateof)", alpha2: "BO"),
    Country(name: "Bonaire,SintEustatiusandSaba", alpha2: "BQ"),
    Country(name: "BosniaandHerzegovina", alpha2: "BA"),
    Country(name: "Botswana", alpha2: "BW"),
    Country(name: "BouvetIsland", alpha2: "BV"),
    Country(name: "Brazil", alpha2: "BR"),
    Country(name: "BritishIndianOceanTerritory", alpha2: "IO"),
    Country(name: "BruneiDarussalam", alpha2: "BN"),
    Country(name: "Bulgaria", alpha2: "BG"),
    Country(name: "BurkinaFaso", alpha2: "BF"),
    Country(name: "Burundi", alpha2: "BI"),
    Country(name: "CaboVerde", alpha2: "CV"),
    Country(name: "Cambodia", alpha2: "KH"),
    Country(name: "Cameroon", alpha2: "CM"),
    Country(name: "Canada", alpha2: "CA"),
    Country(name: "CaymanIslands", alpha2: "KY"),
    Country(name: "CentralAfricanRepublic", alpha2: "CF"),
    Country(name: "Chad", alpha2: "TD"),
    Country(name: "Chile", alpha2: "CL"),
    Country(name: "China", alpha2: "CN"),
    Country(name: "ChristmasIsland", alpha2: "CX"),
    Country(name: "Cocos(Keeling)Islands", alpha2: "CC"),
    Country(name: "Colombia", alpha2: "CO"),
    Country(name: "Comoros", alpha2: "KM"),
    Country(name: "Congo(theDemocraticRepublicof", alpha2: "CD"),
    Country(name: "Congo", alpha2: "CG"),
    Country(name: "CookIslands", alpha2: "CK"),
    Country(name: "CostaRica", alpha2: "CR"),
    Country(name: "Croatia", alpha2: "HR"),
    Country(name: "Cuba", alpha2: "CU"),
    Country(name: "Curaçao", alpha2: "CW"),
    Country(name: "Cyprus", alpha2: "CY"),
    Country(name: "Czechia", alpha2: "CZ"),
    Country(name: "Côted'Ivoire", alpha2: "CI"),
    Country(name: "Denmark", alpha2: "DK"),
    Country(name: "Djibouti", alpha2: "DJ"),
    Country(name: "Dominica", alpha2: "DM"),
    Country(name: "DominicanRepublic", alpha2: "DO"),
    Country(name: "Ecuador", alpha2: "EC"),
    Country(name: "Egypt", alpha2: "EG"),
    Country(name: "ElSalvador", alpha2: "SV"),
    Country(name: "EquatorialGuinea", alpha2: "GQ"),
    Country(name: "Eritrea", alpha2: "ER"),
    Country(name: "Estonia", alpha2: "EE"),
    Country(name: "Eswatini", alpha2: "SZ"),
    Country(name: "Ethiopia", alpha2: "ET"),
    Country(name: "FalklandIslands", alpha2: "FK"),
    Country(name: "FaroeIslands", alpha2: "FO"),
    Country(name: "Fiji", alpha2: "FJ"),
    Country(name: "Finland", alpha2: "FI"),
    Country(name: "France", alpha2: "FR"),
    Country(name: "FrenchGuiana", alpha2: "GF"),
    Country(name: "FrenchPolynesia", alpha2: "PF"),
    Country(name: "FrenchSouthernTerritories", alpha2: "TF"),
    Country(name: "Gabon", alpha2: "GA"),
    Country(name: "Gambia", alpha2: "GM"),
    Country(name: "Georgia", alpha2: "GE"),
    Country(name: "Germany", alpha2: "DE"),
    Country(name: "Ghana", alpha2: "GH"),
    Country(name: "Gibraltar", alpha2: "GI"),
    Country(name: "Greece", alpha2: "GR"),
    Country(name: "Greenland", alpha2: "GL"),
    Country(name: "Grenada", alpha2: "GD"),
    Country(name: "Guadeloupe", alpha2: "GP"),
    Country(name: "Guam", alpha2: "GU"),
    Country(name: "Guatemala", alpha2: "GT"),
    Country(name: "Guernsey", alpha2: "GG"),
    Country(name: "Guinea", alpha2: "GN"),
    Country(name: "Guinea-Bissau", alpha2: "GW"),
    Country(name: "Guyana", alpha2: "GY"),
    Country(name: "Haiti", alpha2: "HT"),
    Country(name: "HeardIslandandMcDonaldIslands", alpha2: "HM"),
    Country(name: "HolySee", alpha2: "VA"),
    Country(name: "Honduras", alpha2: "HN"),
    Country(name: "HongKong", alpha2: "HK"),
    Country(name: "Hungary", alpha2: "HU"),
    Country(name: "Iceland", alpha2: "IS"),
    Country(name: "India", alpha2: "IN"),
    Country(name: "Indonesia", alpha2: "ID"),
    Country(name: "Iran(IslamicRepublicof)", alpha2: "IR"),
    Country(name: "Iraq", alpha2: "IQ"),
    Country(name: "Ireland", alpha2: "IE"),
    Country(name: "IsleofMan", alpha2: "IM"),
    Country(name: "Israel", alpha2: "IL"),
    Country(name: "Italy", alpha2: "IT"),
    Country(name: "Jamaica", alpha2: "JM"),
    Country(name: "Japan", alpha2: "JP"),
    Country(name: "Jersey", alpha2: "JE"),
    Country(name: "Jordan", alpha2: "JO"),
    Country(name: "Kazakhstan", alpha2: "KZ"),
    Country(name: "Kenya", alpha2: "KE"),
    Country(name: "Kiribati", alpha2: "KI"),
    Country(name: "Korea(theDemocraticPeople'sRepublicof)", alpha2: "KP"),
    Country(name: "Korea(theRepublicof)", alpha2: "KR"),
    Country(name: "Kuwait", alpha2: "KW"),
    Country(name: "Kyrgyzstan", alpha2: "KG"),
    Country(name: "LaoPeople'sDemocraticRepublic", alpha2: "LA"),
    Country(name: "Latvia", alpha2: "LV"),
    Country(name: "Lebanon", alpha2: "LB"),
    Country(name: "Lesotho", alpha2: "LS"),
    Country(name: "Liberia", alpha2: "LR"),
    Country(name: "Libya", alpha2: "LY"),
    Country(name: "Liechtenstein", alpha2: "LI"),
    Country(name: "Lithuania", alpha2: "LT"),
    Country(name: "Luxembourg", alpha2: "LU"),
    Country(name: "Macao", alpha2: "MO"),
    Country(name: "Madagascar", alpha2: "MG"),
    Country(name: "Malawi", alpha2: "MW"),
    Country(name: "Malaysia", alpha2: "MY"),
    Country(name: "Maldives", alpha2: "MV"),
    Country(name: "Mali", alpha2: "ML"),
    Country(name: "Malta", alpha2: "MT"),
    Country(name: "MarshallIslands", alpha2: "MH"),
    Country(name: "Martinique", alpha2: "MQ"),
    Country(name: "Mauritania", alpha2: "MR"),
    Country(name: "Mauritius", alpha2: "MU"),
    Country(name: "Mayotte", alpha2: "YT"),
    Country(name: "Mexico", alpha2: "MX"),
    Country(name: "Micronesia(FederatedStatesof)", alpha2: "FM"),
    Country(name: "Moldova(theRepublicof)", alpha2: "MD"),
    Country(name: "Monaco", alpha2: "MC"),
    Country(name: "Mongolia", alpha2: "MN"),
    Country(name: "Montenegro", alpha2: "ME"),
    Country(name: "Montserrat", alpha2: "MS"),
    Country(name: "Morocco", alpha2: "MA"),
    Country(name: "Mozambique", alpha2: "MZ"),
    Country(name: "Myanmar", alpha2: "MM"),
    Country(name: "Namibia", alpha2: "NA"),
    Country(name: "Nauru", alpha2: "NR"),
    Country(name: "Nepal", alpha2: "NP"),
    Country(name: "Netherlands", alpha2: "NL"),
    Country(name: "NewCaledonia", alpha2: "NC"),
    Country(name: "NewZealand", alpha2: "NZ"),
    Country(name: "Nicaragua", alpha2: "NI"),
    Country(name: "Niger", alpha2: "NE"),
    Country(name: "Nigeria", alpha2: "NG"),
    Country(name: "Niue", alpha2: "NU"),
    Country(name: "NorfolkIsland", alpha2: "NF"),
    Country(name: "NorthernMarianaIslands", alpha2: "MP"),
    Country(name: "Norway", alpha2: "NO"),
    Country(name: "Oman", alpha2: "OM"),
    Country(name: "Pakistan", alpha2: "PK"),
    Country(name: "Palau", alpha2: "PW"),
    Country(name: "Palestine,Stateof", alpha2: "PS"),
    Country(name: "Panama", alpha2: "PA"),
    Country(name: "PapuaNewGuinea", alpha2: "PG"),
    Country(name: "Paraguay", alpha2: "PY"),
    Country(name: "Peru", alpha2: "PE"),
    Country(name: "Philippines", alpha2: "PH"),
    Country(name: "Pitcairn", alpha2: "PN"),
    Country(name: "Poland", alpha2: "PL"),
    Country(name: "Portugal", alpha2: "PT"),
    Country(name: "PuertoRico", alpha2: "PR"),
    Country(name: "Qatar", alpha2: "QA"),
    Country(name: "RepublicofNorthMacedonia", alpha2: "MK"),
    Country(name: "Romania", alpha2: "RO"),
    Country(name: "RussianFederation", alpha2: "RU"),
    Country(name: "Rwanda", alpha2: "RW"),
    Country(name: "Réunion", alpha2: "RE"),
    Country(name: "SaintBarthélemy", alpha2: "BL"),
    Country(name: "SaintHelena,AscensionandTristandaCunha", alpha2: "SH"),
    Country(name: "SaintKittsandNevis", alpha2: "KN"),
    Country(name: "SaintLucia", alpha2: "LC"),
    Country(name: "SaintMartin(Frenchpart)", alpha2: "MF"),
    Country(name: "SaintPierreandMiquelon", alpha2: "PM"),
    Country(name: "SaintVincentandtheGrenadines", alpha2: "VC"),
    Country(name: "Samoa", alpha2: "WS"),
    Country(name: "SanMarino", alpha2: "SM"),
    Country(name: "SaoTomeandPrincipe", alpha2: "ST"),
    Country(name: "SaudiArabia", alpha2: "SA"),
    Country(name: "Senegal", alpha2: "SN"),
    Country(name: "Serbia", alpha2: "RS"),
    Country(name: "Seychelles", alpha2: "SC"),
    Country(name: "SierraLeone", alpha2: "SL"),
    Country(name: "Singapore", alpha2: "SG"),
    Country(name: "SintMaarten(Dutchpart)", alpha2: "SX"),
    Country(name: "Slovakia", alpha2: "SK"),
    Country(name: "Slovenia", alpha2: "SI"),
    Country(name: "SolomonIslands", alpha2: "SB"),
    Country(name: "Somalia", alpha2: "SO"),
    Country(name: "SouthAfrica", alpha2: "ZA"),
    Country(name: "SouthGeorgiaandtheSouthSandwichIslands", alpha2: "GS"),
    Country(name: "SouthSudan", alpha2: "SS"),
    Country(name: "Spain", alpha2: "ES"),
    Country(name: "SriLanka", alpha2: "LK"),
    Country(name: "Sudan", alpha2: "SD"),
    Country(name: "Suriname", alpha2: "SR"),
    Country(name: "SvalbardandJanMayen", alpha2: "SJ"),
    Country(name: "Sweden", alpha2: "SE"),
    Country(name: "Switzerland", alpha2: "CH"),
    Country(name: "SyrianArabRepublic", alpha2: "SY"),
    Country(name: "Taiwan(ProvinceofChina)", alpha2: "TW"),
    Country(name: "Tajikistan", alpha2: "TJ"),
    Country(name: "Tanzania,UnitedRepublicof", alpha2: "TZ"),
    Country(name: "Thailand", alpha2: "TH"),
    Country(name: "Timor-Leste", alpha2: "TL"),
    Country(name: "Togo", alpha2: "TG"),
    Country(name: "Tokelau", alpha2: "TK"),
    Country(name: "Tonga", alpha2: "TO"),
    Country(name: "TrinidadandTobago", alpha2: "TT"),
    Country(name: "Tunisia", alpha2: "TN"),
    Country(name: "Turkey", alpha2: "TR"),
    Country(name: "Turkmenistan", alpha2: "TM"),
    Country(name: "TurksandCaicosIslands", alpha2: "TC"),
    Country(name: "Tuvalu", alpha2: "TV"),
    Country(name: "Uganda", alpha2: "UG"),
    Country(name: "Ukraine", alpha2: "UA"),
    Country(name: "UnitedArabEmirates", alpha2: "AE"),
    Country(
        name: "UnitedKingdomofGreatBritainandNorthernIreland", alpha2: "GB"),
    Country(name: "UnitedStatesMinorOutlyingIslands", alpha2: "UM"),
    Country(name: "UnitedStatesofAmerica", alpha2: "US"),
    Country(name: "Uruguay", alpha2: "UY"),
    Country(name: "Uzbekistan", alpha2: "UZ"),
    Country(name: "Vanuatu", alpha2: "VU"),
    Country(name: "Venezuela(BolivarianRepublicof)", alpha2: "VE"),
    Country(name: "VietNam", alpha2: "VN"),
    Country(name: "VirginIslands(British)", alpha2: "VG"),
    Country(name: "VirginIslands(U.S.)", alpha2: "VI"),
    Country(name: "WallisandFutuna", alpha2: "WF"),
    Country(name: "WesternSahara", alpha2: "EH"),
    Country(name: "Yemen", alpha2: "YE"),
    Country(name: "Zambia", alpha2: "ZM"),
    Country(name: "Zimbabwe", alpha2: "ZW"),
    Country(name: "ÅlandIslands", alpha2: "AX"),
  ];

  String parseName(String alpha2) {
    _name = "name";
    print(alpha2);
    for (int i = 0; i < _countryList.length; i++) {
      if (_countryList[i].alpha2 == alpha2) {
        _name = _countryList[i].name;
        return _name;
      }
    }
  }

  String parseAlpha2(String name) {
    for (int i = 0; i < _countryList.length; i++) {
      if (_countryList[i].name == name) {
        _alpha2 = _countryList[i].alpha2;
        return _alpha2;
      }
    }
  }

  String getTest(String s) {
    List<Country> list = [
      Country(name: " Turkmenistan ", alpha2: " TM "),
      Country(name: " Turks and Caicos Islands ", alpha2: " TC "),
      Country(name: " Tuvalu ", alpha2: " TV "),
      Country(name: "United States of America", alpha2: " US "),
    ];

    for (int i = 0; i < _countryList.length; i++) {
      if (_countryList[i].alpha2 == "US") {
        return "HEUREKA";
      }
    }
  }
}
