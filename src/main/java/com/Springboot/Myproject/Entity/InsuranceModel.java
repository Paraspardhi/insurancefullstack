package com.Springboot.Myproject.Entity;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class InsuranceModel {
	private static int count = 1;
	private String provider;
	@Id
	private String insuranceNumber;
	private Date validUpto;
	private String vehPlateNumber;
	private String vehLicenceNo;
	private String vehColor;
	private String vehModleNo;
	private String vehType;
	private Date vehRegDate;
	private String userName;
	private String userAddress;
	private String userEmail;
	private String userMobile;
	
	public InsuranceModel() {
		super();
	}

	public InsuranceModel(String provider, Date validUpto, String vehPlateNumber,
			String vehLicenceNo, String vehColor, String vehModleNo, String vehType, Date vehRegDate, String userName,
			String userAddress, String userEmail, String userMobile) {
		super();
		insuranceNumber = "CLARY" + count++;
		this.provider = provider;
		this.validUpto = validUpto;
		this.vehPlateNumber = vehPlateNumber;
		this.vehLicenceNo = vehLicenceNo;
		this.vehColor = vehColor;
		this.vehModleNo = vehModleNo;
		this.vehType = vehType;
		this.vehRegDate = vehRegDate;
		this.userName = userName;
		this.userAddress = userAddress;
		this.userEmail = userEmail;
		this.userMobile = userMobile;
	}
	
	

	public InsuranceModel(String provider, String insuranceNumber, Date validUpto, String vehPlateNumber,
			String vehLicenceNo, String vehColor, String vehModleNo, String vehType, Date vehRegDate, String userName,
			String userAddress, String userEmail, String userMobile) {
		super();
		this.provider = provider;
		this.insuranceNumber = insuranceNumber;
		this.validUpto = validUpto;
		this.vehPlateNumber = vehPlateNumber;
		this.vehLicenceNo = vehLicenceNo;
		this.vehColor = vehColor;
		this.vehModleNo = vehModleNo;
		this.vehType = vehType;
		this.vehRegDate = vehRegDate;
		this.userName = userName;
		this.userAddress = userAddress;
		this.userEmail = userEmail;
		this.userMobile = userMobile;
	}

	public String getInsuranceNumber() {
		return insuranceNumber;
	}

	public void setInsuranceNumber(String insuranceNumber) {
		this.insuranceNumber = insuranceNumber;
	}

	public String getProvider() {
		return provider;
	}

	public void setProvider(String provider) {
		this.provider = provider;
	}

	public Date getValidUpto() {
		return validUpto;
	}

	public void setValidUpto(Date validUpto) {
		this.validUpto = validUpto;
	}

	public String getVehPlateNumber() {
		return vehPlateNumber;
	}

	public void setVehPlateNumber(String vehPlateNumber) {
		this.vehPlateNumber = vehPlateNumber;
	}

	public String getVehLicenceNo() {
		return vehLicenceNo;
	}

	public void setVehLicenceNo(String vehLicenceNo) {
		this.vehLicenceNo = vehLicenceNo;
	}

	public String getVehColor() {
		return vehColor;
	}

	public void setVehColor(String vehColor) {
		this.vehColor = vehColor;
	}

	public String getVehModleNo() {
		return vehModleNo;
	}

	public void setVehModleNo(String vehModleNo) {
		this.vehModleNo = vehModleNo;
	}

	public String getVehType() {
		return vehType;
	}

	public void setVehType(String vehType) {
		this.vehType = vehType;
	}

	public Date getVehRegDate() {
		return vehRegDate;
	}

	public void setVehRegDate(Date vehRegDate) {
		this.vehRegDate = vehRegDate;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserMobile() {
		return userMobile;
	}

	public void setUserMobile(String userMobile) {
		this.userMobile = userMobile;
	}

	@Override
	public String toString() {
		return "InsuranceModel [provider=" + provider + ", insuranceNumber=" + insuranceNumber + ", validUpto="
				+ validUpto + ", vehPlateNumber=" + vehPlateNumber + ", vehLicenceNo=" + vehLicenceNo + ", vehColor="
				+ vehColor + ", vehModleNo=" + vehModleNo + ", vehType=" + vehType + ", vehRegDate=" + vehRegDate
				+ ", userName=" + userName + ", userAddress=" + userAddress + ", userEmail=" + userEmail
				+ ", userMobile=" + userMobile + "]";
	}
	
}