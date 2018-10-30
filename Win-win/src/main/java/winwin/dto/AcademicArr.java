package winwin.dto;

import java.util.Arrays;

public class AcademicArr {
	
	private Academic[] acaArr;

	@Override
	public String toString() {
		return "AcademicArr [acaArr=" + Arrays.toString(acaArr) + "]";
	}

	public Academic[] getAcaArr() {
		return acaArr;
	}

	public void setAcaArr(Academic[] acaArr) {
		this.acaArr = acaArr;
	}
	
	

}
