package model.domain;

public class movie1DTO {

	private String moviecd;
	private String date1;
	private String ranking;
	private String rankingFluc;
	private String movienm;
	private String opendt;
	private String profitDay;
	private String profitRate;
	private String profitDayFluc;
	private String profitDayRate;
	private String totalProfit;
	private String audnm;
	private String audnmFluc;
	private String andnmRate;
	private String totalAud;
	private String screenNm;
	private String showNm;
	
	public movie1DTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public movie1DTO(String moviecd, String date1, String ranking, String rankingFluc, String movienm, String opendt,
			String profitDay, String profitRate, String profitDayFluc, String profitDayRate, String totalProfit,
			String audnm, String audnmFluc, String andnmRate, String totalAud, String screenNm, String showNm) {
		super();
		this.moviecd = moviecd;
		this.date1 = date1;
		this.ranking = ranking;
		this.rankingFluc = rankingFluc;
		this.movienm = movienm;
		this.opendt = opendt;
		this.profitDay = profitDay;
		this.profitRate = profitRate;
		this.profitDayFluc = profitDayFluc;
		this.profitDayRate = profitDayRate;
		this.totalProfit = totalProfit;
		this.audnm = audnm;
		this.audnmFluc = audnmFluc;
		this.andnmRate = andnmRate;
		this.totalAud = totalAud;
		this.screenNm = screenNm;
		this.showNm = showNm;
	}

	public String getMoviecd() {
		return moviecd;
	}

	public void setMoviecd(String moviecd) {
		this.moviecd = moviecd;
	}

	public String getDate1() {
		return date1;
	}

	public void setDate1(String date1) {
		this.date1 = date1;
	}

	public String getRanking() {
		return ranking;
	}

	public void setRanking(String ranking) {
		this.ranking = ranking;
	}

	public String getRankingFluc() {
		return rankingFluc;
	}

	public void setRankingFluc(String rankingFluc) {
		this.rankingFluc = rankingFluc;
	}

	public String getMovienm() {
		return movienm;
	}

	public void setMovienm(String movienm) {
		this.movienm = movienm;
	}

	public String getOpendt() {
		return opendt;
	}

	public void setOpendt(String opendt) {
		this.opendt = opendt;
	}

	public String getProfitDay() {
		return profitDay;
	}

	public void setProfitDay(String profitDay) {
		this.profitDay = profitDay;
	}

	public String getProfitRate() {
		return profitRate;
	}

	public void setProfitRate(String profitRate) {
		this.profitRate = profitRate;
	}

	public String getProfitDayFluc() {
		return profitDayFluc;
	}

	public void setProfitDayFluc(String profitDayFluc) {
		this.profitDayFluc = profitDayFluc;
	}

	public String getProfitDayRate() {
		return profitDayRate;
	}

	public void setProfitDayRate(String profitDayRate) {
		this.profitDayRate = profitDayRate;
	}

	public String getTotalProfit() {
		return totalProfit;
	}

	public void setTotalProfit(String totalProfit) {
		this.totalProfit = totalProfit;
	}

	public String getAudnm() {
		return audnm;
	}

	public void setAudnm(String audnm) {
		this.audnm = audnm;
	}

	public String getAudnmFluc() {
		return audnmFluc;
	}

	public void setAudnmFluc(String audnmFluc) {
		this.audnmFluc = audnmFluc;
	}

	public String getAndnmRate() {
		return andnmRate;
	}

	public void setAndnmRate(String andnmRate) {
		this.andnmRate = andnmRate;
	}

	public String getTotalAud() {
		return totalAud;
	}

	public void setTotalAud(String totalAud) {
		this.totalAud = totalAud;
	}

	public String getScreenNm() {
		return screenNm;
	}

	public void setScreenNm(String screenNm) {
		this.screenNm = screenNm;
	}

	public String getShowNm() {
		return showNm;
	}

	public void setShowNm(String showNm) {
		this.showNm = showNm;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("movie1DTO [moviecd=");
		builder.append(moviecd);
		builder.append(", date1=");
		builder.append(date1);
		builder.append(", ranking=");
		builder.append(ranking);
		builder.append(", rankingFluc=");
		builder.append(rankingFluc);
		builder.append(", movienm=");
		builder.append(movienm);
		builder.append(", opendt=");
		builder.append(opendt);
		builder.append(", profitDay=");
		builder.append(profitDay);
		builder.append(", profitRate=");
		builder.append(profitRate);
		builder.append(", profitDayFluc=");
		builder.append(profitDayFluc);
		builder.append(", profitDayRate=");
		builder.append(profitDayRate);
		builder.append(", totalProfit=");
		builder.append(totalProfit);
		builder.append(", audnm=");
		builder.append(audnm);
		builder.append(", audnmFluc=");
		builder.append(audnmFluc);
		builder.append(", andnmRate=");
		builder.append(andnmRate);
		builder.append(", totalAud=");
		builder.append(totalAud);
		builder.append(", screenNm=");
		builder.append(screenNm);
		builder.append(", showNm=");
		builder.append(showNm);
		builder.append("]");
		return builder.toString();
	}
	
	
	
}
