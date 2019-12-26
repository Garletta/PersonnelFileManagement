package com.jx.dao;

import com.jx.entity.Staff;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StaffDao {

    public List<Staff> queryAllFile();

    public List<Staff> queryFile(Staff staff);

    public int addFile(Staff staff);

    public int updateFile(Staff staff);

    public int deleteFile(String staffId);
}
