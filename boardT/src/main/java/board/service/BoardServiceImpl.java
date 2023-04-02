package board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.repository.Board;
import board.repository.BoardDao;

@Service // 비즈니스 로직계층에서 사용되는 애노테이션으로 해당 클래스가 Spring컨테이너에서 Bean으로 관리어 DI(Dependency Injection)을 받아 사용할수 있다.
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDao boardDao;
	// BoardDao 인터페이스를 구현한 BoardDaoImpl클래스의 객채를 생성하고 boardDao필드에 자동으로 주입해주는 역할
	
	@Override
	public List<Board> list(){
		List<Board> ls = boardDao.selectAll();
		return ls;
	}
	
	@Override
	public Board detail(long num) {
		Board board = boardDao.selectOne(num);
		return board;
	}

	@Override
	public void regist(Board board) {
		boardDao.insert(board);
	}

	@Override
	public void edit(Board board) {
		boardDao.update(board);
	}

	@Override
	public void remove(long num) {
		boardDao.delete(num);
	}

	@Override
	public void readCnt(long num) {
		boardDao.update(num);
	}

}
