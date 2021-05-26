package pack.mainpage.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.BadSqlGrammarException;
import org.springframework.stereotype.Repository;

import org.springframework.web.util.NestedServletException;
import pack.mainpage.controller.SeatBean;

@Repository("seatInterImpl")
public class SeatInterImpl extends SqlSessionDaoSupport implements SeatInter{

	@Autowired
	public SeatInterImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}
	
	public int seat_insertData(Map<String, Object> map) {
		return getSqlSession().insert("seat_insertData", map);
	}
	
	public List<SeatDto> seat_getData(String air_name){
		return getSqlSession().selectList("seat_getData", air_name);
	}
	
	public List<CheckinDto> checkin_selectCheckinData(Map<String, Object> map2) {
		return getSqlSession().selectList("checkin_selectCheckinData", map2);
	}

	// 테이블 만드는데 자꾸 abcd가 붙어서, 반복문 하나를 주석처리함
	// 테이블이 존재하면 아무것도 리턴하지 않게 설정함
	public int seat_createTable() {
		try {
			Map<String, Object> map = new HashMap<>();
			int cnt = 0;
			for (int i = 1; i <= 9; i++) {
				for (int j = 1; j <= 9; j++) {
//				for(char add=65; add<=68; add++) {
					String sql = "create table BA";
//					sql+=i+"0"+j+add;
					sql += i + "0" + j;
					sql += "(s_no varchar(10) not null, t_no varchar(20) not null, b_name varchar(20) not null, b_pp varchar(20) not null, g_id varchar(20) not null) charset=utf8";
					map.put("sql", sql);
					cnt += getSqlSession().insert("seat_createTable", map);
//				}
				}
			}
			return cnt;
		} catch (BadSqlGrammarException e) {
			return 0;
		}
	}
}
