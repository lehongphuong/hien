package action.problem;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.bean.Problem;
import model.bo.ProblemBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.problem.ProblemForm;

public class ProblemListAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ProblemForm problemForm=(ProblemForm)form;
		
		
		ProblemBO problemBO=new ProblemBO();
		
		ArrayList<Problem> problemList=problemBO.getAllProblem();
		
		
		problemForm.setProblemList(problemList);
		 
		
		return mapping.findForward("thanhCong");
	}


}
