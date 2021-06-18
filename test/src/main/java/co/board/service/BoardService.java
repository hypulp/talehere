package co.board.service;

import java.util.HashMap; 
import java.util.List;

public interface BoardService {
	public List<HashMap<String, Object>> getList();
	
	public int insert(HashMap<String, Object> param);
	
	public int boardNoMax();
	
	public HashMap<String , Object> login(HashMap<String , Object> param);
	
	public HashMap<String, Object> detail(int TH_BOARD_NO);
	
	public void delete(int TH_BOARD_NO);
	
	public void update(HashMap<String, Object> param);
	
	public int createUser(HashMap<String,Object> param);
}
