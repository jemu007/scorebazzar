class MatchDataModel {
  String results;
  String matches;
}

class Match {
  int t1wk;
  int totalprediction;
  int team2Id;
  bool tispterWinnderDeclared;
  String matchName;
  int t2wk;
  String matchKey;
  String t1over;
  int type;
  String t1Flag;
  int startTime;
  String team1Name;
  int t1run;
  String t2over;
  int t2run;
  String header;
  int team1Id;
  int id;
  String team2Name;
  String t2Flag;
  int status;

  Match(
      {this.t1wk,
      this.totalprediction,
      this.team2Id,
      this.tispterWinnderDeclared,
      this.matchName,
      this.t2wk,
      this.matchKey,
      this.t1over,
      this.type,
      this.t1Flag,
      this.startTime,
      this.team1Name,
      this.t1run,
      this.t2over,
      this.t2run,
      this.header,
      this.team1Id,
      this.id,
      this.team2Name,
      this.t2Flag,
      this.status});
}
