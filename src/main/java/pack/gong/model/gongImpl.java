package pack.gong.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;


@Repository("gongImpl")
public class gongImpl extends SqlSessionDaoSupport implements gongInter{

	@Autowired
	public gongImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}
	
	public List<gongDto> selectList(HashMap<String, Object> map) throws DataAccessException {
		return getSqlSession().selectList("gong_SelectData",map);
	}
	
	public int Pagesu(HashMap<String, Object> map) throws DataAccessException {
		return getSqlSession().selectOne("gong_Pagesu",map);
	}
	
	public List<gongDto> selectMain() throws DataAccessException {
		return getSqlSession().selectList("gong_SelectDataMain");
	}
	
	public int register(gongDto dto) throws DataAccessException {
		return getSqlSession().insert("gong_register", dto);
	}
	
	public int maxNum() throws DataAccessException {
		try {
			return getSqlSession().selectOne("maxnum");
		} catch (NullPointerException e) {
			return 0;
		}
	}
	
	public gongDto detail(int num) throws DataAccessException {
		return getSqlSession().selectOne("gong_detail",num);
	}
	
	public int updateNum(int num) throws DataAccessException {
		return getSqlSession().update("gong_num_update",num);
	}
	
	public int delete(int num) throws DataAccessException {
		return getSqlSession().delete("gong_delete",num);
	}
	
	public int updateForm(gongDto dto) throws DataAccessException {
		return getSqlSession().update("gong_update_form",dto);
	}
	
}
