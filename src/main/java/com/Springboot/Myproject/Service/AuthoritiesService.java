package com.Springboot.Myproject.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Springboot.Myproject.Dao.Authoritiesdao;
import com.Springboot.Myproject.Entity.Authorites;
import com.Springboot.Myproject.Entity.InsuranceModel;

@Service
public class AuthoritiesService {
	@Autowired
	private Authoritiesdao ad;

	public Authorites addAuthor(Authorites a) {
		return ad.save(a);
	}

	public Authorites viewAuthor(int Id) {
		try {
			
		Authorites a = ad.findById(Id).orElse(null);
		if (a != null ) {
			return a;
		}
		}
		catch(Exception e) {
		return null;
	}
		return null;
	}

	
	
	public String LoginUser(Authorites a) {
		if((a.getPassword().equals("JAVA@1991")))
		{
			return "Control.jsp";
		}
		
		return "Clientlogin.jsp";
	}

	public List<Authorites> viewAllAuthor() {
		return ad.findAll();
	}

	public Authorites updateAuthor(Authorites a) {
		for (Authorites a1 : ad.findAll()) {
			if (a.getId() == a1.getId()) {
				ad.deleteById(a.getId());
			}
		}
		ad.save(a);
		return a;
	}

	public String deleteAuthor(int Id) {
		for (Authorites a : ad.findAll()) {
			if (Id == a.getId()) {
				ad.deleteById(Id);
			}
		}
		return "User Not found !";
	}
}
