package com.jx.controller;

import com.jx.entity.Staff;
import com.jx.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class StaffController {

    @Autowired
    private StaffService staffService;

    @RequestMapping(value = "/queryAllFile", method = RequestMethod.GET)
    public String queryAll(Model model) {
        List<Staff> staffs = staffService.queryAllFile();
        model.addAttribute("staffs", staffs);
        return "/showPersonnelFile";
    }

    @RequestMapping(value = "/queryFile", method = RequestMethod.POST)
    public String queryFile(Staff staff, Model model) {
        List<Staff> staffs = staffService.queryFile(staff);
        model.addAttribute("staffs",staffs);
        return "/showPersonnelFile";
    }

    @RequestMapping(value = "/addFile", method = RequestMethod.POST)
    public String addFile(Staff staff) {
        int isAdd = staffService.addFile(staff);
        return "/success";
    }

    @RequestMapping(value = "/updateFile", method = RequestMethod.POST)
    public String updateFile(Staff staff) {
        int isUpdate = staffService.updateFile(staff);
        return "/success";
    }

    @RequestMapping(value = "/deleteFile", method = RequestMethod.GET)
    public String deleteFile(@RequestParam(value = "id") String id) {
        int isDelete = staffService.deleteFile(id);
        return "/success";
    }

    @RequestMapping(value = "/toHome")
    public String returnHome() {
        return "/home";
    }

    @RequestMapping(value = "/toAddFile")
    public String toAddFile() {
        return "/addPersonnelFile";
    }

    @RequestMapping(value = "/toUpdateFile", method = RequestMethod.POST)
    public String toUpdateHome(Staff staff, Model model) {
        model.addAttribute("staff",staff);
        return "/updatePersonnelFile";
    }

    @RequestMapping(value = "/toQueryFile")
    public String toQueryFile() {
        return "/queryPersonnelFile";
    }
}
