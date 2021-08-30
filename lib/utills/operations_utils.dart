class OperationsUtils {
  static double generateOverallScorePlace(List<double> scores) {
    return scores.reduce((a, b) => a + b) / scores.length;
  }
}