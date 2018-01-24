package com.memorynotfound.controller;

import com.memorynotfound.model.Emp;
import com.memorynotfound.dao.EmpDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
@Controller
public class EmpController {
    @Autowired
     EmpDao dao;//will inject dao from xml file






    @RequestMapping(value="/viewemp/{pageid}")
    public ModelAndView page(@PathVariable int pageid){
        int total=5;
        if(pageid==1){}
        else{
            pageid=(pageid-1)*total+1;
        }
        List<Emp> list=dao.getEmployeesByPage(pageid,total);

        return new ModelAndView("viewemp","list",list);
    }










    @RequestMapping("/empform")
    public ModelAndView showform(){
        return new ModelAndView("empform","command",new Emp());
    }


    @RequestMapping(value="/save",method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("emp") Emp emp){
        dao.save(emp);
        return new ModelAndView("redirect:/viewemp");//will redirect to viewemp request mapping
    }
    /* It provides list of employees in model object */
    @RequestMapping("/viewemp")
    public ModelAndView viewemp(){
        List<Emp> list=dao.getEmployees();
        return new ModelAndView("viewemp","list",list);
    }

    @RequestMapping(value="/editemp/{id}")
    public ModelAndView edit(@PathVariable int id){
        Emp emp=dao.getEmpById(id);
        return new ModelAndView("empeditform","command",emp);
    }
    /* It updates model object. */
    @RequestMapping(value="/editsave",method = RequestMethod.POST)
    public ModelAndView editsave(@ModelAttribute("emp") Emp emp){
        dao.update(emp);
        return new ModelAndView("redirect:/viewemp");
    }
    /* It deletes record for the given id in URL and redirects to /viewemp */
    @RequestMapping(value="/deleteemp/{id}",method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable int id){
        dao.delete(id);
        return new ModelAndView("redirect:/viewemp");
    }
}
