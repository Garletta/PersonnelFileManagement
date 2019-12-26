package com.jx.service.impl;

import com.jx.dao.StaffDao;
import com.jx.entity.Staff;
import com.jx.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StaffServiceImpl implements StaffService {

    @Autowired
    private StaffDao staffDao;

    @Override
    public List<Staff> queryAllFile() {
        return staffDao.queryAllFile();
    }

    @Override
    public List<Staff> queryFile(Staff staff) {
        return staffDao.queryFile(staff);
    }

    @Override
    public int addFile(Staff staff) {
        return staffDao.addFile(staff);
    }

    @Override
    public int updateFile(Staff staff) {
        return staffDao.updateFile(staff);
    }

    @Override
    public int deleteFile(String staffId) {
        return staffDao.deleteFile(staffId);
    }

}
