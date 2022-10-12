package com.Springboot.Myproject.Dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Springboot.Myproject.Entity.InsuranceModel;

public interface InsuranceModeldao extends JpaRepository<InsuranceModel,Integer>{

	public InsuranceModel findByVehPlateNumber (String vehPlateNumber) ;
	

}
