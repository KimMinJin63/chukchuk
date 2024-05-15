import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Restaurant {
  final String cnt;
  final String OPENDATA_ID;
  final String GNG_CS;
  final String FD_CS;
  final String BZ_NM;
  final String TLNO;
  final String MBZ_HR;
  final String SEAT_CNT;
  final String PKPL;
  final String HP;
  final String PSB_FRN;
  final String BKN_YN;
  final String INFN_FCL;
  final String BRFT_YN;
  final String DSSRT_YN;
  final String MNU;
  final String SMPL_DESC;
  final String SBW;
  final String BUS;
  
  Restaurant({
    required this.cnt,
    required this.OPENDATA_ID,
    required this.GNG_CS,
    required this.FD_CS,
    required this.BZ_NM,
    required this.TLNO,
    required this.MBZ_HR,
    required this.SEAT_CNT,
    required this.PKPL,
    required this.HP,
    required this.PSB_FRN,
    required this.BKN_YN,
    required this.INFN_FCL,
    required this.BRFT_YN,
    required this.DSSRT_YN,
    required this.MNU,
    required this.SMPL_DESC,
    required this.SBW,
    required this.BUS,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cnt': cnt,
      'OPENDATA_ID': OPENDATA_ID,
      'GNG_CS': GNG_CS,
      'FD_CS': FD_CS,
      'BZ_NM': BZ_NM,
      'TLNO': TLNO,
      'MBZ_HR': MBZ_HR,
      'SEAT_CNT': SEAT_CNT,
      'PKPL': PKPL,
      'HP': HP,
      'PSB_FRN': PSB_FRN,
      'BKN_YN': BKN_YN,
      'INFN_FCL': INFN_FCL,
      'BRFT_YN': BRFT_YN,
      'DSSRT_YN': DSSRT_YN,
      'MNU': MNU,
      'SMPL_DESC': SMPL_DESC,
      'SBW': SBW,
      'BUS': BUS,
    };
  }

  factory Restaurant.fromMap(Map<String, dynamic> map) {
    return Restaurant(
      cnt: map['cnt'] as String,
      OPENDATA_ID: map['OPENDATA_ID'] as String,
      GNG_CS: map['GNG_CS'] as String,
      FD_CS: map['FD_CS'] as String,
      BZ_NM: map['BZ_NM'] as String,
      TLNO: map['TLNO'] as String,
      MBZ_HR: map['MBZ_HR'] as String,
      SEAT_CNT: map['SEAT_CNT'] as String,
      PKPL: map['PKPL'] as String,
      HP: map['HP'] as String,
      PSB_FRN: map['PSB_FRN'] as String,
      BKN_YN: map['BKN_YN'] as String,
      INFN_FCL: map['INFN_FCL'] as String,
      BRFT_YN: map['BRFT_YN'] as String,
      DSSRT_YN: map['DSSRT_YN'] as String,
      MNU: map['MNU'] as String,
      SMPL_DESC: map['SMPL_DESC'] as String,
      SBW: map['SBW'] as String,
      BUS: map['BUS'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Restaurant.fromJson(String source) => Restaurant.fromMap(json.decode(source) as Map<String, dynamic>);
}
