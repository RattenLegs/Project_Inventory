package com.myProject.myapp.inventory.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myProject.myapp.inventory.mapper.IInventoryMapper;
import com.myProject.myapp.inventory.vo.InventoryVO;
import com.myProject.myapp.util.vo.PageVO;

@Service
public class InventoryService implements IInventoryService {

	@Autowired
	private IInventoryMapper mapper;
	
	@Override
	public void regist(InventoryVO vo) {
		mapper.regist(vo);
	}

	@Override
	public List<InventoryVO> getList(PageVO vo) {
		
		List<InventoryVO> list = mapper.getList(vo);
		
		for(InventoryVO article : list) {
			long now = System.currentTimeMillis();
			long regTime = article.getRegDate().getTime();
			
			if(now - regTime < 60 * 60 * 24 * 2 * 1000) {
				article.setNewMark(true);
			}
		}
		
		return list;
	}

	@Override
	public int getTotal(PageVO vo) {
		return mapper.getTotal(vo);
	}

	@Override
	public InventoryVO getContent(int bno) {
		return mapper.getContent(bno);
	}

	@Override
	public void update(InventoryVO vo) {
		mapper.update(vo);
	}

	@Override
	public void delete(int bno) {
		mapper.delete(bno);
	}
}