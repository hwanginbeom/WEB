package model.domain;

public class AccidentDTO {
	private String Name; //경로에 대한 이름
	private float RiskRatio; //위험 순위
	private float RiskGrade; // 위험 등급
	private String Gu;      //구별
	private float Length; //도로길이
	private float Lane;    // 차로수
	private float AccidentNum; //사고 
	private float DeadNum; //사망자
	private float CriticalNum; //중상자
	private float StableNum; // 경상자
	private float ClaimantNum; // 부상자
	
	public AccidentDTO() {}
	
	public AccidentDTO(float riskRatio, float riskGrade, float accidentNum, float deadNum, float criticalNum, float stableNum, float claimantNum) {
		super();
		RiskRatio = riskRatio;
		RiskGrade = riskGrade;
		AccidentNum = accidentNum;
		DeadNum = deadNum;
		CriticalNum = criticalNum;
		StableNum = stableNum;
		ClaimantNum = claimantNum;
	}
	
	public AccidentDTO(String name, float riskRatio, float riskGrade, String gu, float length, float lane,
			float accidentNum, float deadNum, float criticalNum, float stableNum, float claimantNum) {
		super();
		Name = name;
		RiskRatio = riskRatio;
		RiskGrade = riskGrade;
		Gu = gu;
		Length = length;
		Lane = lane;
		AccidentNum = accidentNum;
		DeadNum = deadNum;
		CriticalNum = criticalNum;
		StableNum = stableNum;
		ClaimantNum = claimantNum;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public float getRiskRatio() {
		return RiskRatio;
	}
	public void setRiskRatio(float riskRatio) {
		RiskRatio = riskRatio;
	}
	public float getRiskGrade() {
		return RiskGrade;
	}
	public void setRiskGrade(float riskGrade) {
		RiskGrade = riskGrade;
	}
	public String getGu() {
		return Gu;
	}
	public void setGu(String gu) {
		Gu = gu;
	}
	public float getLength() {
		return Length;
	}
	public void setLength(float length) {
		Length = length;
	}
	public float getLane() {
		return Lane;
	}
	public void setLane(float lane) {
		Lane = lane;
	}
	public float getAccidentNum() {
		return AccidentNum;
	}
	public void setAccidentNum(float accidentNum) {
		AccidentNum = accidentNum;
	}
	public float getDeadNum() {
		return DeadNum;
	}
	public void setDeadNum(float deadNum) {
		DeadNum = deadNum;
	}
	public float getCriticalNum() {
		return CriticalNum;
	}
	public void setCriticalNum(float criticalNum) {
		CriticalNum = criticalNum;
	}
	public float getStableNum() {
		return StableNum;
	}
	public void setStableNum(float stableNum) {
		StableNum = stableNum;
	}
	public float getClaimantNum() {
		return ClaimantNum;
	}
	public void setClaimantNum(float claimantNum) {
		ClaimantNum = claimantNum;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("AccidentDTO [Name=");
		builder.append(Name);
		builder.append(", RiskRatio=");
		builder.append(RiskRatio);
		builder.append(", RiskGrade=");
		builder.append(RiskGrade);
		builder.append(", Gu=");
		builder.append(Gu);
		builder.append(", Length=");
		builder.append(Length);
		builder.append(", Lane=");
		builder.append(Lane);
		builder.append(", AccidentNum=");
		builder.append(AccidentNum);
		builder.append(", DeadNum=");
		builder.append(DeadNum);
		builder.append(", CriticalNum=");
		builder.append(CriticalNum);
		builder.append(", StableNum=");
		builder.append(StableNum);
		builder.append(", ClaimantNum=");
		builder.append(ClaimantNum);
		builder.append("]");
		return builder.toString();
	}
	
}
