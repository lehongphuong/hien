package action.problem;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Problem;
import model.bo.ProblemBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.problem.ProblemForm;

public class ProblemUpdateAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ProblemForm problemForm=(ProblemForm)form;
		String problemId=request.getParameter("proId");
		
		ProblemBO problemBO=new ProblemBO();
		
		Problem problem=new Problem();
		
		problem.setProId(problemForm.getProId());
		problem.setSubId(problemForm.getSubId());
		problem.setDescription(problemForm.getDescription());
		problem.setConstrain(problemForm.getConstrain());
		problem.setInputRequire(problemForm.getInputRequire());
		problem.setOutputRequire(problemForm.getOutputRequire());
		problem.setInputTestCase(problemForm.getInputTestCase());
		problem.setOutputTestCase(problemForm.getOutputTestCase());
		problem.setExplain(problemForm.getExplain());
		problem.setInputUser(problemForm.getInputUser());
		
		System.out.println("id "+problemId+" asdf "+problemForm.getConstrain());
		
		problemBO.updateProblem(problem);
		

		return mapping.findForward("thanhCong");
	}
}
