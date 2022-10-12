package com.Springboot.Myproject.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Springboot.Myproject.Dao.InsuranceModeldao;
import com.Springboot.Myproject.Entity.InsuranceModel;

@Service
public class InsuranceModelService {
	@Autowired
	private InsuranceModeldao imDao;

	public String addInsurance(InsuranceModel im) {
		imDao.save(im);
		return "Insurance Added";
	}

	public InsuranceModel viewInsurance(String vehPlateNumber) {
		InsuranceModel im = imDao.findByVehPlateNumber(vehPlateNumber);

		return im;
	}

	public List<InsuranceModel> viewAllInsurance() {
		return imDao.findAll();
	}

	public List<InsuranceModel> getInsuranceDetails(String provider){
		List<InsuranceModel> l1 = new ArrayList<InsuranceModel>();
		for(InsuranceModel i: imDao.findAll()) {
			if(i.getProvider().equals(provider)) {
				l1.add(i);
			}
		}
		return l1;
	}

	public String updateInsurance(InsuranceModel ism) {
		InsuranceModel im = imDao.findByVehPlateNumber(ism.getVehPlateNumber());
		imDao.delete(im);

		imDao.save(ism);
		return "Insurance Updated";
	}

	public String deleteInsurance(String insuranceNumber) {
		for (InsuranceModel im : imDao.findAll()) {
			if (insuranceNumber.equals(im.getInsuranceNumber())) {
				// is.deleteById(insuranceNumber);
				imDao.delete(im);
				return "Insurance Data Deleted";
			}
		}
		return "Insurance Not found !";
	}
}
