/**
 * Copyright (c) 2015 云智盛世
 * Created with LeaveDaoImpl.
 */
package top.gabin.oa.web.dao;

import org.springframework.stereotype.Repository;
import top.gabin.oa.web.entity.Leave;
import top.gabin.oa.web.entity.LeaveImpl;

import javax.persistence.Query;

/**
 * @author linjiabin  on  15/12/14
 */
@Repository("leaveDao")
public class LeaveDaoImpl extends CommonBaseDaoImpl<Leave, LeaveImpl> implements LeaveDao {
    @Override
    public void clearMonth(String month) {
        Query query = em.createNativeQuery("delete from edy_leave where begin_date like '" + month + "%'");
        query.executeUpdate();
    }
}
