package com.myProject.myapp.inventory;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InventoryController {
	
	public InventoryController(){
		System.out.println("InventoryController 생성");

	}

	@RequestMapping(path = "/inventoryboard/inventoryList", method = RequestMethod.GET)
	  public String repairList() { return "/inventoryboard/inventoryList"; }
	
}
