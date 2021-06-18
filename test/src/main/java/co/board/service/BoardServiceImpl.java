package co.board.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.board.mapper.BoardMapper;

@Service 
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardMapper mapper;
	
	@Override
	public List<HashMap<String, Object>> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	@Override
	public int insert(HashMap<String, Object> param) {
		// TODO Auto-generated method stub
		return mapper.insert(param);
	}

	@Override
	public int boardNoMax() {
		// TODO Auto-generated method stub
		return mapper.boardNoMax();
	}

	@Override
	public HashMap<String , Object> login(HashMap<String, Object> param) {
		// TODO Auto-generated method stub
		return mapper.login(param);
	}

	@Override
	public HashMap<String, Object> detail(int TH_BOARD_NO) {
		// TODO Auto-generated method stub
		return mapper.detail(TH_BOARD_NO);
	}

	@Override
	public void delete(int TH_BOARD_NO) {
		// TODO Auto-generated method stub
		mapper.delete(TH_BOARD_NO);
	}

	@Override
	public void update(HashMap<String, Object> param) {
		// TODO Auto-generated method stub
		mapper.update(param);
	}

	@Override
	public int createUser(HashMap<String, Object> param) {
		// TODO Auto-generated method stub
		return mapper.createUser(param);
	}
}