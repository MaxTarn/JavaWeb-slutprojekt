package Model;

public class weatherBean {
	private String cityStr;
	private String countryStr;
	private String cloudsStr;
	private String lastUpdate;
	private String temperature;
	private String wind;

	public String getCityStr() {
		return cityStr;
	}
	public String getCountryStr() {
		return countryStr;
	}
	public String getCloudsStr() {return cloudsStr;}
	public void setCloudsStr(String cloudsStr) {this.cloudsStr = cloudsStr;}
	public String getLastUpdate(){return lastUpdate;}
	public void setLastUpdate(String lastUpdate){this.lastUpdate = lastUpdate;}
	public String getTemperature(){return temperature;}
	public void  setTemperature(String temperature){this.temperature = temperature;}
	public String getWind() {return wind;}
	public void setWind(String wind) {this.wind = wind;}

	public Integer getTemperatureAsInt(){
		double temp = Double.parseDouble(getTemperature()) - 273.15;
		return (int)Math.round(temp);
	}

	public weatherBean(String cityStr, String countryStr) {

		this.cityStr = cityStr;
		this.countryStr = countryStr;

	}

}





