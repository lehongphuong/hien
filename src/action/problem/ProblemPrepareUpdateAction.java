package action.problem;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Problem;
import model.bo.ProblemBO;
import model.bo.SubjectBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.problem.ProblemForm;

public class ProblemPrepareUpdateAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ProblemForm problemForm=(ProblemForm)form;
		String proId=request.getParameter("proId");
		
		ProblemBO problemBO=new ProblemBO();
		SubjectBO subjectBO=new SubjectBO();
		
		Problem problem=problemBO.getOneProblemById(proId);	
		
		problemForm.setProId(problem.getProId());
		problemForm.setSubId(problem.getSubId());
		problemForm.setDescription(problem.getDescription());		
		problemForm.setConstrain(problem.getConstrain());
		problemForm.setInputRequire(problem.getInputRequire());
		problemForm.setOutputRequire(problem.getOutputRequire());	
		
		problemForm.setInputTestCase(problem.getInputTestCase());		
		problemForm.setOutputTestCase(problem.getOutputTestCase());
		problemForm.setExplain(problem.getExplain());
		problemForm.setInputUser(problem.getInputUser());	
//set du lieu cho form
		problemForm.setSubjectList(subjectBO.getAllSubject());

		return mapping.findForward("thanhCong");
	}	
}
