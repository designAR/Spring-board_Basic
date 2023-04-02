package board.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository // @Controller, @Service는 springFramework에서 사용되는 애노테이션으로 
			// 데이터 접근계층, 요청처리계층, 비즈니스 로직 계층에서 사용한다.
			// @Repository 데이터 접근계층, 데이터베이스와 상호작용을 담당하는 DAO(Data Access Object)클래스에 사용된다.
public class BoardDaoImpl implements BoardDao{
	
	@Autowired
	private SqlSessionTemplate sst;
	// SqlSessionTemplate는 MyBatis프레임워크에서 SqlSession객체를 감싸고 있는 spring클래스로 SQL실행 및 데이터베이스
	// 트랜잭션 관리를 담당한다. @Autowired, @Resource등의 어노태이션을 사용하여 의존성 주입을 받아 사용한다.
	
	private static final String mapperNamespace = "board.repository.board.";
	// mapperNamespace 상수는 board.repository.board문자열 값을 가지며 매퍼 파일에서 사용될 네임스페이스를 나타낸다. 
	// 이 mappserNamespace를 사용하여 상수와 SQL문 ID를 조합하여 전체 ID를 구상할수 있고 코드작성시 실수를 줄이고 유지보수성을 높일 수 있다.
	
	// Board객체를 조회하여 리스트로 반환한다.
	@Override // selectAll메소드가 상위 클래스나 인터페이스의 메소드를 오버라이드한것
	public List<Board> selectAll(){
		return sst.selectList(mapperNamespace + "selectAll", Board.class);
	} // SqlSessionNamespace를 사용해 MyBatis의 selectList메소드를 호출한다.
	  // BoardMapper.xml에서 정의한 selectAll SQL문을 실행하여 조회한 결과를 List<Board>형태로 반환하는 역할
	
	@Override
	public Board selectOne(long num) {
		return sst.selectOne(mapperNamespace + "selectOne", num);
	}// 게시글번호인 num을 이용해 게시글을 조회하여 Board객체를 반환한다. 
	 // selectOne메소드를 호출해 BoardMapper.xml에 정의한 selectOne SQL문을 실행하여 조회결과를 Board형태고 반환한다.
	
	@Override
	public void insert(Board board) {
		sst.insert(mapperNamespace + "insert", board);
	}
	
	@Override
	public void update(Board board) {
		sst.update(mapperNamespace + "update", board);
	}
	
	@Override
	public void delete(long num) {
		sst.delete(mapperNamespace+"delete", num);
	}
	
	@Override
	public void update(long num) {
		sst.update(mapperNamespace + "updateCnt", num);
	}
	
}
